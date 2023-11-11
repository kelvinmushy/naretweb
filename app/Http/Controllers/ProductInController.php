<?php
namespace App\Http\Controllers;
use App\Exports\ExportProdukMasuk;
use App\Http\Models\ProductModel;
use App\Http\Models\SupplierModel;
use App\Http\Models\ProductInModel;
use PDF;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Facades\DB;
class ProductInController extends Controller

{
    public function __construct()
    {
      
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = DB::table('products')->get();
        $invoice_data =DB::table('product_in')->get();
        return view('product_in.index', compact('products','invoice_data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'product_id'     => 'required',
            'qty'            => 'required',
            'price'          => 'required',
            'tprice'         => 'required',
            'date_in'        => 'required'
        ]);
        
        $date=Carbon::now()->format('Y-m-d');
        $form_datas = array(
            'product_id' => $request->product_id,
            'qty' => $request->qty,
            'price' => $request->price,
            'tprice' => $request->tprice,
            'date_in' => $request->date_in,
            'created_at' =>$date,
            'adds'=>$request->user,
    
        );
         DB::table('product_in')->insert($form_datas);

        $product =DB::table('products')->where('id','=',$request->product_id)->get();
        
        $x=$request->tlitre;
        $form_data = array(
            'qty'=>$product[0]->qty + $request->qty, 
        
        );
        $product =DB::table('products')->where('id','=',$request->product_id)->update($form_data);

        return response()->json([
            'success'    => true,
            'message'    => 'Products In Created'
        ]);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if(request()->ajax()){
      
            $data =DB::table('product_in')->find($id);
            return response()->json(['data' => $data]);   
           }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'product_id'     => 'required',
            'qty'            => 'required',
            'price'          => 'required',
            'tprice'         => 'required',
            'tlitre'         => 'required',
            'date_in'        => 'required'
        ]);
        $form_datas = array(
            'product_id' => $request->product_id,
            'qty' => $request->qty,
            'price' => $request->price,
            'tprice' => $request->tprice,
            'tlitre' => '1',
            'date_in' => $request->date_in,
    
        );
        $product_inV=DB::table('product_in')->select('qty','price','tprice','tlitre')->where('id','=',$id)->get();
        $product=DB::table('products')->select('qty','tlitre')->where('id','=',$request->product_id)
        ->get();
        $x=$product[0]->qty-$product_inV[0]->qty;
        $tlitre=$product[0]->tlitre-$product_inV[0]->tlitre;
        $y= $request->qty+=$x;
        $mylitre=90;
        $tlitre_update=$mylitre+=$tlitre;
            $product_in=DB::table('product_in')
            ->where('id','=',$id)
            ->update($form_datas);
      
            //$x=$product_in->qty-$product->qty; 
             $myform_data = array(
                 'qty'=>$y,
                 'tlitre'=>$tlitre_update,
             );
       
             DB::table('products')
             ->where('id','=',$request->product_id)->update($myform_data);
             
             return response()->json([
                 'success'    => true,
                 'message'    => 'Product In Updated'
             ]);
        

    
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        
    //     $mydata= DB::table('product_in')->find($id);
    //     $qty=$mydata->qty;
    //     $tlitre=$mydata->tlitre;
    //     $product_id=$mydata->product_id;

    //     $getdata=DB::table('products')->where('id','=',$product_id)->get();
    //     $qtys=$getdata[0]->qty;
    
    //     $tlitre_prod=$getdata[0]->tlitre;
     
    //      $remain_qty= $qtys- $qty;
      
    //      $z=$tlitre_prod- $tlitre;
        
    //     $upform=array(
    //         'qty'=>$remain_qty,
    //         'tlitre'=>$z,
            
    //     );
        
    //    DB::table('products')->where('id', '=',$product_id)->update($upform);
      

        DB::table('product_in')->where('id', '=', $id)->delete();
   


        return response()->json([
            'success'    => true,
            'message'    => 'Products In Deleted'
        ]);
    }
    public function apiProducts_in(){
        $products=DB::table('products')->join('product_in','product_in.product_id','=','products.id')
        ->select('product_in.*','products.product_name')
        ->get();

        return Datatables::of($products)
            ->addColumn('products_name', function ($products){
                return $products->product_name;
            })
           
            ->addColumn('action', function($products){
                return
                    '<a onclick="deleteData('. $products->id .')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a> ';



            })
            ->rawColumns(['products_name','supplier_name','action'])->make(true);

    }

    public function exportProduct_inAll()
    {
        $product_in=DB::table('products')->join('product_in','product_in.product_id','=','products.id')
        ->select('product_in.*','products.product_name','products.litre')
        ->get();
        $pdf = PDF::loadView('product_in.productinAllPDF',compact('product_in'));
        return $pdf->download('product_in.pdf');
    }

    public function exportProductMasuk($id)
    {
        $product_masuk = Product_Masuk::findOrFail($id);
        $pdf = PDF::loadView('product_masuk.productMasukPDF', compact('product_masuk'));
        return $pdf->download($product_masuk->id.'_product_masuk.pdf');
    }

    public function exportExcel()
    {
        return (new ExportProdukMasuk)->download('product_in.xlsx');
    }

    public function  get_litre($id){
        $data=DB::table('products')->where('id','=',$id)
       ->get();
       return response()->json([
           'data'    =>$data,
      
       ]);
 
   }
}
