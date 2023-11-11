<?php

namespace App\Http\Controllers;

use App\Category;
use App\Modals\ProductModal;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class ProductController extends Controller
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
        $category=DB::table('categories')->get();
        $producs =DB::table('products')->get();
        return view('products.index', ['category'=>$category]);
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
        $date=Carbon::now()->format('Y-m-d');
        $this->validate($request , [
            'product_name' => 'required|string',
          
        ]);

        $qty='0';
        $bags='0';
        $tbags='0';
        $formdata=array(
            'product_name' => $request->product_name,
            
            'qty'=>$qty,
            'created_at'=>$date,
            'adds'=>$request->user,
        );
        
        DB::table('products')->insert($formdata);

        return response()->json([
            'success' => true,
            'message' => 'Products Created'
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
      
         $data =DB::table('products')->find($id);
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
        $this->validate($request , [
            'product_name'          => 'required|string',
        ]);
        
        $formdata=array(
            'product_name' =>$request->product_name,
        );
      

          DB::table('products')->where('id','=',$id)->update($formdata);
       

        return response()->json([
            'success' => true,
            'message' => 'Products Update'
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
        DB::table('products')->where('id', '=', $id)->delete();

        return response()->json([
            'success' => true,
            'message' => 'Products Deleted'
        ]);
    }

    public function apiProducts(){
        $product=DB::table('products')
        ->get();
       
        return Datatables::of($product)
            ->addColumn('action', function($product){
                return '<a href="#" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-eye-open"></i> Show</a> ' .
                    '<a onclick="editForm('. $product->id .')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' .
                    '<a onclick="deleteData('. $product->id .')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
            })
            ->rawColumns(['category_name','show_photo','action'])
            ->editColumn('qty', function($product){
               if($product->qty >=50){
                    return '<div class="qty50">'.$product->qty.'</div>';
                }
                elseif($product->qty<=30){
                    return '<div class="qty0">'.$product->qty.'</div>';
                }
                return '<div class="qty50">'.$product->qty.'</div>';
            })
            ->escapeColumns([])
            ->make(true);

    }
}
