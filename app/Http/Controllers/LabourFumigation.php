<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Facades\DB;


class LabourFumigation extends Controller
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
        return view('fumigation.labour.index',compact('account'));
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
            
                'payment_date'        => 'required',
                
            ]);
     
            $payment_form=array(
                'invoice2_id'=>$request->invoices2_id,
                'account_id'=>$request->account1_id,
                'amount_paid'=>$request->amount_paid1,
                'payment_date'=>$request->payment_date,
                'staff_type'=>$request->staff_type,
              
             
           );
           $get_balance=DB::table('account_staff')
           ->where('id','=',$request->account1_id)
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
             ->where('id','=',$request->account1_id)
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
        DB::table('labour')->where('id', '=', $id)->delete();
        return response()->json([
            'success' => true,
            'message' => 'Labour Payment history Deleted'
        ]);
    }
    public function labourApi1(){
        $pay_hist =DB::table('invoice')
        ->join('invoice_fumigation','invoice_fumigation.id','=','invoice.invoice_fumigation')
        ->join('company_infor','invoice_fumigation.company_id','=','company_infor.id')
        ->join('labour','labour.invoice2_id','=','invoice_fumigation.id')
        ->where('labour.staff_type','=','fumigation')
        ->select('labour.*','invoice_fumigation.invoice_number','invoice.description','invoice_fumigation.date_in',
        'company_infor.name')
        ->get();
         return Datatables::of($pay_hist)
            ->addColumn('action', function($pay_hist){
                return  '<a onclick="deleteData('.$pay_hist->id .')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
                   
            })
            ->rawColumns(['category_name','show_photo','action'])->make(true);

}
}
