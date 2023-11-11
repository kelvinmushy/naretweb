<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Facades\DB;
class LabourController extends Controller
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
        ->whereNotIn('account_group',['Income'])
        ->where('status','=','active')
        ->get(); 
        $container=DB::table('container')->get();
        return view('casual.labour.index',compact('container','account'));
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
             //
             $this->validate($request ,[
                'amount_paid'=> 'required|string',
                'payment_date'        => 'required',
                'invoice_id'          => 'required',
                
            ]);
     
            $payment_form=array(
                'invoice_id'=>$request->invoice_id,
                'account_id'=>$request->account_id,
                'amount_paid'=>$request->amount_paid,
                'payment_date'=>$request->payment_date,
                'staff_type'=>$request->staff_type,
              
             
           );
           $get_balance=DB::table('account_staff')
           ->where('id','=',$request->account_id)
           ->get();
             $balance=$get_balance[0]->account_balance;
       

               if($balance=="0"){
               return response()->json([
              'success' => true,
               'message' => 'Please Account has no money',
                ]); 
                 }
               if($request->amount>$balance){
              return response()->json([
                  'success' => true,
                  'message' => 'Please Account has no Enough money',
                  ]); 
                       }
               $remain_money=$balance-$request->amount_paid;
            
              $remain_form=array(
                 'account_balance'=>$remain_money,
                  );

              DB::table('account_staff')
             ->where('id','=',$request->account_id)
             ->update($remain_form); 
             
           $payment=DB::table('labour')->insert($payment_form);
           return response()->json([
            'success' => true,
            'message' => 'Successfuly Paid'
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
         DB::table('labour')->where('id', '=', $id)->delete();
         return response()->json([
             'success' => true,
             'message' => 'Labour Payment history Deleted'
         ]);
    }
    public function apiLabour(){
        $pay_hist =DB::table('invoice')
        ->join('staffing','staffing.id','=','invoice.staff_id')
        ->join('company_infor','staffing.company_id','=','company_infor.id')
        ->join('labour','labour.invoice_id','=','invoice.id')
        ->select('labour.*','staffing.invoice_number','invoice.description','staffing.date_in',
        'company_infor.name')
        ->get();
         return Datatables::of($pay_hist)
            ->addColumn('action', function($pay_hist){
                return  '<a onclick="deleteData('.$pay_hist->id .')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
                   
            })
            ->rawColumns(['category_name','show_photo','action'])->make(true);

}
}
