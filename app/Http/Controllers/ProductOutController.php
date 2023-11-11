<?php

namespace App\Http\Controllers;

use App\Category;
use App\Customer;
use App\Exports\ExportProductOut;
use App\Product;
use App\Product_Keluar;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use PDF;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use App\Http\Models\ProductModel;
use App\Http\Models\ProductOutModel;
use App\Http\Models\CustomerModel;
class ProductOutController extends Controller
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
        $account=DB::table('account_staff')
        ->where('status','=','active')
        ->where('staff_type','=','staffing')
        ->where('account_name','=',"Bank")
        ->get();
        $customers = DB::table('customers')->get();
        $invoice_data=DB::table('products')->join('product_out','product_out.product_id','=','products.id')
      
        ->select('product_out.*','products.product_name')
        ->get();
        $products = DB::table('products')->get();
        return view('product_out.index', compact('products','account','customers', 'invoice_data'));
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
            'date_out'        => 'required'
        ]);
        $date=Carbon::now()->format('Y-m-d').'%';
        $form_datas = array(
            'product_id' => $request->product_id,
            'qty' => $request->qty,
            'price' => $request->price,
            'tprice' => $request->tprice, 
            'date_out' => $request->date_out,
            'created_at' =>$date,
            'adds'=>$request->user,
    
        ); 
        $get_balance=DB::table('account_staff')->where('id','=',$request->account_id)->get();
        $balance=$get_balance[0]->account_balance;
        $sum_amount=$balance+$request->tprice;
    
         $form_update=array(
             'account_balance'=>$sum_amount,
             'product_id' => $request->product_id,
         );
         $get_balance=DB::table('account_staff')->where('id','=',$request->account_id)->update($form_update);
         
     
        $product =DB::table('products')->where('id',$request->product_id)->get();
        $check_qty=$product[0]->qty;
        if($check_qty=='0'){
            return response()->json([
                'success'    => true,
                'message'    => 'Stock is empty'
            ]);  
        }
        if($check_qty<$request->qty){
            return response()->json([
                'success'    => true,
                'message'    => 'Stock is less than '
            ]);  
        }
        DB::table('product_out')->insert($form_datas);
        $form_data = array(
            'qty'=>$product[0]->qty -= $request->qty,
            

        );
        $product_update =DB::table('products')->where('id','=',$request->product_id)
    
        ->update($form_data);
        if($product_update){
            // $get_update=DB::table('products')->get();
         
               
            $get_qty=DB::table('products')->get();
                $xx=$get_qty[0]->qty;
              if($xx==0){
                $form_check_qty = array(
                    
                     'qty'=>0,

                );
                
                DB::table('products')->where('id','=',$request->product_id)
                ->update($form_check_qty);
                return response()->json([
                    'success'    => true,
                    'message'    => 'Products Out Created'
                ]);
              }
            

        }
     
     

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
      
            $data =DB::table('product_out')->find($id);
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
           
            'date_out'        => 'required'
        ]);  
        $form_datas = array(
            'product_id' => $request->product_id,
            'qty' => $request->qty,
            'price' => $request->price,
            'tprice' => $request->tprice,
      
            'date_out' => $request->date_out,
    
        );
        $product_outV=DB::table('product_out')->select('qty','price','tprice','tlitre')->where('id','=',$id)->get();
        $product=DB::table('products')->select('qty','price','tprice','litre','tlitre')->where('litre','=',$request->litre)
        ->get();
        $x=$product[0]->qty+$product_outV[0]->qty;
        $price= $product[0]->price+$product_outV[0]->price;
        $tprice=$product[0]->tprice+$product_outV[0]->tprice;
    
        $y= $x-$request->qty;
        $price_update=$price= $product[0]->price;
        $tprice_update=  $price_update*$y;
     
     
            $product_in=DB::table('product_out')->where('id','=',$id)
        
            ->update($form_datas);
      
            //$x=$product_in->qty-$product->qty;
            $product =DB::table('products')->where('id',$request->product_id)->get();
            $check_qty=$product[0]->qty;
            if($check_qty=='0'){
                return response()->json([
                    'success'    => true,
                    'message'    => 'Stock is empty'
                ]);  
            }
            if($check_qty<$request->qty){
                return response()->json([
                    'success'    => true,
                    'message'    => 'Stock is less than '
                ]);  
            }
             $myform_data = array(
                 'qty'=>$y,
                 'litre' => $request->litre,
                 'tlitre'=>$tlitre_update,
                 'tprice'=>$tprice_update

             );
             DB::table('products')
             ->where('litre','=',$request->litre)->update($myform_data);
             
            $get_qty=DB::table('products')->get();
            $xx=$get_qty[0]->qty;
          if($xx==0){
            $form_check_qty = array(
                'tlitre'=>0,
                'tprice'=>0,
                'price'=>0,
                 'qty'=>0,

            );
            $product_update_out_qty =DB::table('products')->where('litre','=',$request->litre)
            ->where('litre','=',$request->litre)
            ->update($form_check_qty);
        }
            
    
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
    //     $mydata= DB::table('product_out')->find($id);
    //     $qty=$mydata->qty;
    //     $product_id=$mydata->product_id;
    //     $litre=$mydata->litre;
    //     $getdata=DB::table('products')->where('id','=',$product_id)->get();
    //     $qtys=$getdata[0]->qty;
    //     $update_qty= $qtys+$qty;
        
    //     $update_tlitre=$mydata->litre*$update_qty;
    //     $update_litre=$mydata->litre;

    //     $upform=array(
    //         'qty'=>$update_qty,
    //         'tlitre'=>$update_tlitre,
            
    //     );
        
    //    DB::table('products')->where('id', '=',$product_id)->update($upform);
      

        DB::table('product_out')->where('id', '=', $id)->delete();

        return response()->json([
            'success'    => true,
            'message'    => 'Products Delete Deleted'
        ]);
    }



    public function apiProducts_out(){
        $product=DB::table('products')->join('product_out','product_out.product_id','=','products.id')
        ->select('product_out.*','products.product_name')
        ->get();

        return Datatables::of($product)
            ->addColumn('products_name', function ($product){
                return $product->product_name;
            })
         
            ->addColumn('action', function($product){
                return   '<a onclick="deleteData('. $product->id .')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
            })
            ->rawColumns(['products_name','customer_name','action'])->make(true);

    }

    public function exportProduct_OutAll()
    {
        
        $product_out=DB::table('products')->join('product_out','product_out.product_id','=','products.id')
        ->select('product_out.*','products.product_name')
        ->get();
        
        $sum_qty=DB::table('product_out')->sum('qty');
        $sum_tlitre=DB::table('product_out')->sum('tlitre');
        $sum_tprice=DB::table('product_out')->sum('tprice');
        $sum_price=DB::table('product_out')->sum('price');
        $sum_litre=DB::table('product_out')->sum('litre');
        $pdf = PDF::loadView('product_out.productOutAllPDF',
        compact('product_out','sum_qty','sum_tprice','sum_price','sum_litre','sum_tlitre'));


        return $pdf->download('product_out.pdf');
    }

    public function exportProductKeluar($id)
    {
        $product_keluar = Product_Keluar::findOrFail($id);
        $pdf = PDF::loadView('product_keluar.productKeluarPDF', compact('product_keluar'));
        return $pdf->download($product_keluar->id.'_product_keluar.pdf');
    }

    public function exportExcel()
    {
        return (new ExportProductOut)->download('product_out.xlsx');
    }
}
