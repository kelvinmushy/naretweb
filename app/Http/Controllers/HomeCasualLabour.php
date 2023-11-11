<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;


class HomeCasualLabour extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
       {
         //
           
         $date=Carbon::now()->format('Y-m-d');
         $sum_customer=DB::table('company_infor')
         ->where('staff_type','=','staffing')
         ->distinct('phone')->count('phone');
         $sum_user=DB::table('users')
         ->count();
         $invoice_open_count=DB::table('staffing')
         ->where('invoice_status','=','open')
         ->count('amount_paid');
 
         $invoice_open_sum=DB::table('staffing')
         ->where('invoice_status','=','open')
         ->sum('amount_paid');
 
         $invoice_dayopen_count=DB::table('staffing')
         ->where('created_at','=',$date)
         ->where('invoice_status','=','closed')
         ->count();
            
         $invoice_dayopen_sum=DB::table('staffing')
         ->where('created_at','=',$date)
         ->where('invoice_status','=','closed')
         ->sum('amount_paid');
 
         $invoice_dayclose_sum=DB::table('staffing')
         ->where('invoice_status','=','closed')
         ->where('close_date','=',$date)
         ->sum('amount_paid');
 
         $invoice_dayclose_count=DB::table('staffing')
         ->where('close_date','=',$date)
         ->where('invoice_status','=','closed')
         ->count();
 
         $invoice_pending_count=DB::table('staffing')
         ->where('invoice_status','=','pending')
         ->count();
 
         $invoice_pending_sum=DB::table('staffing')
         ->where('invoice_status','=','pending')
         ->sum('amount_due');
 
         $invoice_wait_count=DB::table('staffing')
         ->where('invoice_status','=','waiting')
         ->count();
 
         $invoice_wait_sum=DB::table('staffing')
         ->where('invoice_status','=','waiting')
         ->sum('amount_due');
         $invoice_today_pay=DB::table('payment')
         ->where('payment_date','=',$date)
         ->sum('amount_paid');
         $invoice_today_close=DB::table('staffing')
         ->where('invoice_status','=','closed')
         ->sum('amount_paid');
 
          $close_invoice_count=DB::table('staffing')
         ->where('invoice_status','=','closed')
         ->count();
 
         $close_invoice_sum=DB::table('staffing')
         ->where('invoice_status','=','closed')
         ->sum('amount_paid');
 
         $invoice_paid=DB::table('staffing')
         ->where('payment_status','=','paid')
         ->count();
 
         // $invoice_sum1=DB::table('staffing')
         // ->where('payment_status','=','paid')
         // ->sum('amount_paid');
         // $invoice_sum2=DB::table('staffing')
         // ->whereNotIn('payment_status',['paid'])
         // ->sum('amount_due');
 
         $invoice_count=DB::table('staffing') 
         ->count();
         // $invoice_sum=$invoice_sum1+$invoice_sum2;
          //sum expensive 
          $sum_expensive=DB::table('expensive_staff')
          ->where('staff_type','=','staffing')
          ->sum('amount');
          $sum_today_expensive=DB::table('expensive_staff')
          ->where('created_at','=',$date)
          ->where('staff_type','=','staffing')
          ->sum('amount');
           //sum Deposite
               $sum_deposite=DB::table('account_staff')
               ->whereNotIn('account_group',['Income'])
               ->where('staff_type','=','staffing')
               ->sum('account_balance');
  
               $sum_today_deposite=DB::table('deposite')
               ->where('created_at','=',$date)
               ->sum('amount');
  
            $sum_income=DB::table('account_staff')
             ->sum('account_balance');
         $labour_pay=DB::table('labour')
         ->where('staff_type','=','staffing')
         ->sum('amount_paid');
         $labour_day_pay=DB::table('labour')
         ->where('staff_type','=','staffing')
         ->where('created_at',$date)->sum('amount_paid');
         $invoice_due=DB::table('staffing')->sum('amount_due');
         $invoice_paid=DB::table('staffing')->sum('amount_paid');
         $vat=DB::table('staffing')
         ->select(DB::raw("sum(vat) as vat,sum(amount_paid) as paid,date_format(date_in, '%Y-%M') as months"))
         ->orderBy('vat')
         ->groupBy('months')
        
         ->get();
         $vats=DB::table('purchase_invoice')
         ->select(DB::raw("sum(vat) as vat,date_format(date_in, '%Y-%M') as months"))
         ->groupBy('months')
         ->orderBy('vat')
         ->get();
         $invoice_due_count=DB::table('staffing')->whereNotIn('payment_status',['paid'])->count();
         return view('casual.home',compact('vat','sum_customer','invoice_dayopen_sum',
         'invoice_dayopen_count','invoice_pending_count','invoice_pending_sum',
         'invoice_wait_count','invoice_today_pay','invoice_wait_sum','invoice_today_close','invoice_open_sum',
         'close_invoice_count','close_invoice_sum','invoice_paid','invoice_due','labour_pay',
         'labour_day_pay','invoice_due_count','invoice_open_count','invoice_dayclose_count',
         'invoice_dayclose_sum','sum_deposite','sum_today_deposite','sum_income','sum_expensive',
         'sum_today_expensive',
         'invoice_count','sum_customer','sum_user','vats'));

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
}
