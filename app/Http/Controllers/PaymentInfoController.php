<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Facades\DB;

class PaymentInfoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       return view('payment_info.index');
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
        //
        $this->validate($request ,[
            'method' => 'required|string',
            'acc_name'        => 'required',
            'acc_number'          => 'required',
            
        ]);
        $formdata=array(
            'method' => $request->method,
            'acc_number' => $request->acc_number,
            'acc_name' => $request->acc_name,

        );
       DB::table('payment_info')->insert($formdata);

        return response()->json([
            'success' => true,
            'message' => 'Payment Infor Added'
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
        //
        if(request()->ajax()){
      
            $data =DB::table('payment_info')->find($id);
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
        //   //
        $this->validate($request ,[
            'method' => 'required|string',
            'acc_name'        => 'required',
            'acc_number'          => 'required',
            
        ]);
        $formdata=array(
            'method' => $request->method,
            'acc_number' => $request->acc_number,
            'acc_name' => $request->acc_name,

        );
        
        DB::table('payment_info')->where('id','=',$id)->update($formdata);

        return response()->json([
            'success' => true,
            'message' => 'Payment Information updated'
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
        //
        DB::table('payment_info')->where('id', '=', $id)->delete();

        return response()->json([
            'success'    => true,
            'message'    => 'Expensive Deleted'
        ]);
    }

   public function apiPayInfo(){
    $payment_info=DB::table('payment_info')
    ->get();
   
    return Datatables::of($payment_info)
      
        ->addColumn('action', function($payment_info){
            return 
                '<a onclick="editForm('. $payment_info->id .')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' .
                '<a onclick="deleteData('. $payment_info->id .')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
        })
        ->rawColumns(['category_name','show_photo','action'])->make(true);

    }
}
