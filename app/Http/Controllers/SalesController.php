<?php

namespace App\Http\Controllers;
use App\Http\Models\CompanyInfModel;
use App\Http\Models\TruckModel;
use App\Http\Models\StaffingModel;
use App\Http\Models\PaymentModel;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class SalesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $account=DB::table('account_staff')->get(); 
        $container=DB::table('container')->get();
        return view('fumigation.sales.index',compact('container','account'));
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
    }
    public function apiSales(){
        $invoice =DB::table('invoice_fumigation')
        ->join('invoice','invoice_fumigation.id','=','invoice.invoice_fumigation')
        ->join('company_infor','invoice_fumigation.company_id','=','company_infor.id')
        ->select('invoice.*','invoice_fumigation.invoice_number','company_infor.name','invoice_fumigation.currency'
        ,'company_infor.name')
        ->get();
         return Datatables::of($invoice)
            // ->addColumn('action', function($invoice){
            //     return '     
            //      <div class="btn-group" style="width:100%">
            //        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            //            Action <span class="caret"></span>
            //        </button>
            //        <ul class="dropdown-menu">
            //            <li><a href="#" class="btn btn-warning btn-xs paylabour" style="color:white" id="'.$invoice->id.'"><i class="fas fa-money" style="color:white"></i>Labour Payment</a></li>
            //        </ul>
            //    </div> ';
            // })
            ->rawColumns(['category_name','show_photo','action'])->make(true);

    
}
}
