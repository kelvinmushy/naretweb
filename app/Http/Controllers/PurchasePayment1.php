<?php

namespace App\Http\Controllers;
use Yajra\DataTables\DataTables;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Auth;
use PDF;

class PurchasePayment1 extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('fumigation.purchase_payment.index');
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
        $date=Carbon::now()->format('Y-m-d');
        $id=$request->purchase_id2;
        $check_invoice = DB::table('purchase_invoice1')
        ->where('id','=',$id)
        ->get();
        $payment_status=$check_invoice[0]->payment_status;

      
        //
    
            $this->validate($request ,[
                'amount_paid'=> 'required|string',
                'payment_date'        => 'required',
                'payment_method'          => 'required',
                'purchase_id2'          => 'required',
                
            ]);
            $get_id=$request->purchase_id2;
            $amount_paid=$request->amount_paid;
            $payment_form=array(
                'purchase2_id'=>$request->purchase_id2,
                'amount_paid'=>$request->amount_paid,
                'payment_date'=>$request->payment_date,
                'payment_method'=>$request->payment_method,
                'staff_type'=>$request->staff_type,
                'adds'=>$request->user,
           );
           $get_balance=DB::table('account_staff')->where('id','=',$request->account_id)->get();
           $balance=$get_balance[0]->account_balance;
           $sum_amount=$balance-$request->amount_paid;
       
            $form_update=array(
                'account_balance'=>$sum_amount,
               
            );
            $get_balance=DB::table('account_staff')->where('id','=',$request->account_id)->update($form_update);
       

           $get_amount_due=DB::table('purchase_invoice1')
           ->select('amount_due','amount_paid','payment_status')
           ->where('id','=',$get_id)
           ->get();
           $amount_due=$get_amount_due[0]->amount_due;
           $amount_paidd=$get_amount_due[0]->amount_paid;
           $update_amount_due= $amount_due-$amount_paid;
           $update_amount_paid=$amount_paidd+$amount_paid;
           if($get_amount_due[0]->amount_due < $amount_paid){
              return response()->json([
                'success' => true,
                'message' => 'Failed to record Paid Amount is Greater'
              ]);
           }
          if($get_amount_due[0]->payment_status=="Paid"){
            return response()->json([
              'success' => true,
             'message' => 'Payment already Completed'
            ]);
            }
            $due_amount_form=array(
                'amount_due'=>$update_amount_due,
                'amount_paid'=>$update_amount_paid,
            );
           $updated= DB::table('purchase_invoice1')->where('id','=',$get_id)
           ->update($due_amount_form);
           $payment=DB::table('purchase_payment')->insert($payment_form);
           $get_amount_due=DB::table('purchase_invoice1')
           ->select('amount_due','amount_paid','net_total')
           ->where('id','=',$get_id)
           ->get();
    
           $amount_due=$get_amount_due[0]->amount_due;
        
           $amount_paid=$get_amount_due[0]->amount_paid;
           $net_total=$get_amount_due[0]->net_total;
           if($amount_due==0){
              $payment_status='paid';
              $payment_status='closed';
             }
             if($amount_paid>0&$amount_paid<$net_total){
                $payment_status='partial paid';
                
             }
            $select_all_method=DB::table('purchase_payment')
            ->where('purchase2_id','=',$get_id)
            ->get();
          
            $status_form=array(
                'payment_status'=>$payment_status,
                'payment_status'=>$payment_status,
            
             
            );
            DB::table('purchase_invoice1')->where('id','=',$get_id)
            ->update($status_form);

            
            // $get_balance=DB::table('account_staff')->where('id','=',$request->account_id)->get();
            // $balance=$get_balance[0]->account_balance;
            // $sum_amount=$balance+$request->amount_due;
            //  $form_update=array(
            //      'account_balance'=>$sum_amount
            //  );
            //  $get_balance=DB::table('account_staff')->where('id','=',$request->account_id)->update($form_update);
            //  return $get_balance;
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
        DB::table('purchase_payment')->where('id', '=', $id)->delete();
        return response()->json([
            'success' => true,
            'message' => 'Payment history Deleted'
        ]);
    }


    public function apiPurchaseHistory(){
        $pay_hist =DB::table('purchase_invoice1')
        ->join('purchase_payment','purchase_invoice1.id','=','purchase_payment.purchase2_id')
        ->join('suppliers','purchase_invoice1.suppliers_id','=','suppliers.id')
        ->where('purchase_payment.staff_type','=','fumigation')
        ->select('purchase_payment.*','purchase_invoice1.purchase_invoice1','purchase_invoice1.date_in','purchase_payment.payment_method','purchase_payment.amount_paid',
        'purchase_payment.payment_date',
        'suppliers.name')
        ->get();
         return Datatables::of($pay_hist)
            ->addColumn('action', function($pay_hist){
                return  '<a onclick="deleteData('.$pay_hist->id .')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
                   
            })
            ->rawColumns(['category_name','show_photo','action'])->make(true);

    }
}
