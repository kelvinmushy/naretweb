<?php
namespace App\Http\Controllers;
use App\Http\Models\CompanyInfModel;
use App\Http\Models\TruckModel;
use App\Http\Models\StaffingModel;
use App\Http\Models\PaymentModel;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
class PaymentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $container=DB::table('container')->get();
        return view('casual.payment.index',compact('container'));

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
        $id=$request->staffing_id;
        $check_invoice = DB::table('staffing')
        ->where('id','=',$id)
        ->get();
        $invoice_status=$check_invoice[0]->invoice_status;
        //
    
            $this->validate($request ,[
                'amount_paid'=> 'required|string',
                'payment_date'        => 'required',
                'payment_method'          => 'required',
                'staffing_id'          => 'required',
                
            ]);
            $get_id=$request->staffing_id;
            $amount_paid=$request->amount_paid;
            $payment_form=array(
                'staffing_id'=>$request->staffing_id,
                'amount_paid'=>$request->amount_paid,
                'payment_date'=>$request->payment_date,
                'payment_method'=>$request->payment_method,
                'staff_type'=>$request->staff_type,
                'adds'=>$request->user,
           );
           $get_balance=DB::table('account_staff')->where('id','=',$request->account_id)->get();
           $balance=$get_balance[0]->account_balance;
           $sum_amount=$balance+$request->amount_paid;
       
            $form_update=array(
                'account_balance'=>$sum_amount,
                'invoice_id'=>$request->staffing_id
            );
            $get_balance=DB::table('account_staff')->where('id','=',$request->account_id)->update($form_update);
       

           $get_amount_due=DB::table('staffing')
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
           $updated= DB::table('staffing')->where('id','=',$get_id)
           ->update($due_amount_form);
           $payment=DB::table('payment')->insert($payment_form);
           $get_amount_due=DB::table('staffing')
           ->select('amount_due','amount_paid','net_total')
           ->where('id','=',$get_id)
           ->get();
    
           $amount_due=$get_amount_due[0]->amount_due;
           $amount_paid=$get_amount_due[0]->amount_paid;
           $net_total=$get_amount_due[0]->net_total;
           if($amount_due==0){
              $payment_status='paid';
              $invoice_status='closed';
             }
             if($amount_paid>0&$amount_paid<$net_total){
                $payment_status='partial paid';
                $invoice_status='open';  
             }
            $select_all_method=DB::table('payment')
            ->where('staffing_id','=',$get_id)
            ->get();
          
            $status_form=array(
                'payment_status'=>$payment_status,
                'invoice_status'=>$invoice_status,
                'close_date'=>$date,
             
            );
            DB::table('staffing')->where('id','=',$get_id)
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
        DB::table('payment')->where('id', '=', $id)->delete();
        return response()->json([
            'success' => true,
            'message' => 'Payment history Deleted'
        ]);
    }
    public function apiPayment(){
        $pay_hist =DB::table('staffing')
        ->join('payment','staffing.id','=','payment.staffing_id')
        ->join('company_infor','staffing.company_id','=','company_infor.id')
        ->where('payment.staff_type','=','staffing')
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
