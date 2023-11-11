<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Models\CompanyInfModel;
use App\Http\Models\TruckModel;
use App\Http\Models\StaffingModel;
use App\Http\Models\PaymentModel;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Facades\DB;
class ContainersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $account=DB::table('account_staff')
        ->where('status','=','active')
        ->where('staff_type','=','staffing')
        ->get(); 
        $container=DB::table('container')->get();
        return view('casual.invoice.index',compact('container','account'));
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
           $data =DB::table('container')
            ->find($id);
            return response()->json(['data' => $data]);
                
                
               
    
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
        $this->validate($request, [
            'pay_status'     => 'required',
            'pay_date'  => 'required',
           ]);

           $form_pay_status=array(
               'pay_status'=>$request->pay_status,
               'date_pay'=>$request->pay_date,

           );
         
        DB::table('container')
        ->where('id','=',$id)->update($form_pay_status);

        return response()->json([
            'success'    => true,
            'message'    => 'payment information Updated'
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
        DB::table('container')->where('id', '=', $id)->delete();
         
        return response()->json([
            'success' => true,
            'message' => 'Container information Deleted'
        ]);
    }
    public function apiInvoice(){
        $invoice =DB::table('staffing')
        ->join('invoice','staffing.id','=','invoice.staff_id')
        ->join('company_infor','staffing.company_id','=','company_infor.id')
        ->select('invoice.*','staffing.invoice_number','staffing.currency',
        'company_infor.name')
        ->get();
         return Datatables::of($invoice)
            ->addColumn('action', function($invoice){
                return '     
                 <div class="btn-group" style="width:100%">
                   <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                       Action <span class="caret"></span>
                   </button>
                   <ul class="dropdown-menu">
                       <li><a href="#" class="btn btn-warning btn-xs paylabour" style="color:white" id="'.$invoice->id.'"><i class="fas fa-money" style="color:white"></i>Labour Payment</a></li>
                   </ul>
               </div> ';
            })
            ->rawColumns(['category_name','show_photo','action'])->make(true);

    
}
}
