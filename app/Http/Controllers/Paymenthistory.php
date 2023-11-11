<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Facades\DB;
class Paymenthistory extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $container=DB::table('payment')
        ->where('staff_type','=','staffing')
        ->get();
        return view('casual.paymenthist.index',compact('container'));
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
        //
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
           //
           DB::table('payment')->where('id', '=', $id)->delete();
           return response()->json([
               'success' => true,
               'message' => 'Payment history Deleted'
           ]);
    }
    public function apiPaymenthist(){
        $pay_hist =DB::table('staffing')
        ->join('payment','staffing.id','=','payment.staffing_id')
        ->join('company_infor','staffing.company_id','=','company_infor.id')
        ->where('staffing.staff_type','=','fumigation')
        ->select('payment.*','staffing.invoice_number','staffing.date_in','payment.payment_method','payment.amount_paid',
        'payment.payment_date',
        'company_infor.name')
        ->get();
         return Datatables::of($pay_hist)
            ->addColumn('action', function($pay_hist){
                return  '<a onclick="deleteData('.$pay_hist->id .')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
                   
            })
            ->rawColumns(['category_name','show_photo','action'])->make(true);

}
}
