<?php

namespace App\Http\Controllers;

use Yajra\DataTables\DataTables;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Auth;
use PDF;


class PurchaseInvoice extends Controller
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
        ->get();
        $supplier=DB::table('suppliers')
        ->where('staff_type','=','staffing')
        ->where('status','=','active')
        ->get();
        $purchase=DB::table('purchase_invoice')
        ->join('suppliers','purchase_invoice.suppliers_id','=','suppliers.id')
        ->select('purchase_invoice.*','suppliers.tin_number','suppliers.name')
        ->where('staff_type','=','staffing')
        ->where('purchase_invoice.payment_status','=','closed')
        ->get();
        
        return view('casual.purchase_invoice.index',compact('supplier','account','purchase'));
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
       
        $this->validate($request, [
           
             'date_in'=>'required',
             'vat'=>'required',
             'sub_total'=>'required',
             'discount'=>'required',
             'net_total'=>'required',
             
         
        ]);
        
        $date=Carbon::now()->format('Y-m-d');
        $due_date="pending";
        $start_date="pending";
        $invoice_status="pending";
        $record= DB::table('purchase_invoice')->orderBy('id', 'DESC')->first();
        if(!$record)
        {
                 //check first day in a year
        if ( date('l',strtotime(date('Y-01-01'))) ){
           $nextInvoiceNumber = date('Y').'-0001';
          }
        }
       if($record){
          
      $expNum = explode('-', $record->purchase_invoice);
      $increments=($expNum[1]+1);
       //increase 1 with last invoice number
         $nextInvoiceNumber = $expNum[0].'-'.sprintf("%04d",$increments);
     
       }
         $amount_paid='0';
         $item_name=$request->item_name;
         $date_in=$request->date_in;
         $qty=$request->qty;
         $price=$request->price;
         $amt=$request->amt;
         $amount_due=round($request->amount_due,2);
         $discount=round($request->discount,2);
         $vat=round($request->vat,2);
         $net_total=round($request->net_total,2);
         $subtotal=round($request->sub_total,2);
         $staff_type=$request->staff_type;
         $invoice_number=$nextInvoiceNumber;
         $form_datas=array(
            'suppliers_id'=>$request->suppliers_id,
            'date_in'=>$date_in,
            'amount_due'=>$amount_due,
            'amount_paid'=>$amount_paid,
            'vat'=>$vat,
            'net_total'=>$net_total,
            'discount'=>$discount,
            'sub_total'=>$subtotal,
            'purchase_invoice'=>$invoice_number,
            'created_at'=>$date,
            'payment_status'=>'not Paid',
            'adds'=>$request->user,    
            
        );

         $get_id=DB::table('purchase_invoice')->insertGetId($form_datas);
         
         for($count=0; $count < count($qty);$count++){
            $form_data[]= array(
                'item_name' =>$item_name[$count],
                'qty'  =>$qty[$count],
                'price'  =>round($price[$count],2),
                'amt'=>round($price[$count]*$qty[$count],2),
               
                'purchase_id'=>$get_id,
                'date_in'  =>$date_in,
                'staff_type'=>$staff_type,
            );
 
        }
        
     
        // //  $get_balance=DB::table('account_staff')->where('id','=',$request->account_id)->update($form_update);
        //  return $get_balance;
         $invoice=DB::table('all_purchase')->insert($form_data);




        return response()->json([
            'success'    => true,
            'message'    => 'Informatio successfuly added'
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
         //
         if(request()->ajax()){
            $data =DB::table('suppliers')
            ->join('purchase_invoice','suppliers.id','=','purchase_invoice.suppliers_id')
        
            ->join('all_purchase','purchase_invoice.id','=','all_purchase.purchase_id')
            ->select('purchase_invoice.*','all_purchase.item_name','all_purchase.qty',
            'all_purchase.price','all_purchase.purchase_id','suppliers.tin_number',
             'all_purchase.amt')
            ->where('purchase_invoice.id','=',$id)
            ->get();
             if($data){  
                return response()->json(['data' => $data]);
                }
                return view('casual.staffing.index',comapact('data'));
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
             
        $this->validate($request, [
          
            'date_in'=>'required',
            'vat'=>'required',
            'sub_total'=>'required',
            'discount'=>'required',
            'net_total'=>'required',
            'amount_due'=>'required',
        
       ]);
       // $startDate = Carbon::today();
       // $endDate = Carbon::today()->addDays(7);
       
       $date=Carbon::now()->format('Y-m-d');

       $date_in=$request->date_in;
       $qty=$request->qty;
       $price=$request->price;
       $item_name=$request->item_name;
       $amt=$request->amt;
       $payment_method=$request->payment_method;
       $amount_paid='0';
       $amount_due=$request->amount_due;
       $vat=$request->vat;
       $discount=$request->discount;
       $net_total=$request->net_total;
       $subtotal=$request->sub_total;
       $staff_type=$request->staff_type;
       $payment_status='Not paid';
      //  $prove="Not approved";
      
       $form_datas=array(
           'date_in'=>$date_in,
           'amount_paid'=>round($amount_paid,2),
           'amount_due'=>round($amount_due,2),
           'payment_status'=>$payment_status,
           'vat'=>round($vat,2),
           'net_total'=>round($net_total,2),
           'discount'=>round($discount,2),
           'sub_total'=>round($subtotal,2),
           'created_at'=>$date,
           'payment_status'=>'not Paid',
           'adds'=>$request->user,
          
          // 'prove_status'=>$prove,  
       );
   
       DB::table('purchase_invoice')
       ->where('id','=',$id)
       ->update($form_datas);

       for($count=0; $count < count($qty);$count++){
          $form_data[]= array(
           'item_name' =>$item_name[$count],
           'qty'  =>$qty[$count],
           'price'  =>round($price[$count],2),
           'amt'=>round($price[$count]*$qty[$count],2),
           'purchase_id'=>$id,
           'date_in'  =>$date_in,
           'staff_type'=>$staff_type,
          );

      }
      
     DB::table('all_purchase')
      ->where('purchase_id','=',$id)
      ->delete();
     
     
     DB::table('all_purchase')
   
      ->insert($form_data);

      return response()->json([
          'success'    => true,
          'message'    => 'Informatio successfuly Updated'
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
        DB::table('purchase_invoice')->where('id', '=', $id)->delete();

        return response()->json([
            'success' => true,
            'message' => 'Invoice Deleted'
        ]);
    }
       
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function approve($id)

    {
        //
        $status=array(
            'prove_status'=>"Approved",
        );
        DB::table('invoice_fumigation')->where('id', '=', $id)->update($status);

        return response()->json([
            'success' => true,
            'message' => 'Approved'
        ]);
    }
         //    <li><a href="#" class="btn btn-warning btn-xs paylabour" style="color:white" id="'.$purchase->id.'"><i class="fas fa-money" style="color:white"></i>Labour Payment</a></li>
    public function apiPurchase(){
        $purchase=DB::table('purchase_invoice')
        ->join('suppliers','purchase_invoice.suppliers_id','=','suppliers.id')
        ->select('purchase_invoice.*','suppliers.tin_number','suppliers.name')
        ->where('staff_type','=','staffing')
        ->whereNotIn('purchase_invoice.payment_status',['closed'])
        ->get();
        
        return Datatables::of($purchase)
            ->addColumn('action', function($purchase){
                if(Auth::user()->name=="User"){
                    
                        return '
                        <div class="btn-group" style="width:100%">
                           <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                               Action <span class="caret"></span>
                           </button>
                           <ul class="dropdown-menu">
                           <li><a href="exportCasual/'.$purchase->id .'" class="btn btn-info btn-xs invoice_print" style="color:white" ><i class="fas fa-file-invoice" style="color:white"></i>Invoice</a></li>
                           <li><a href="#" class="btn btn-info btn-xs views" style="color:white" id="'.$purchase->id.'" ><i class="glyphicon glyphicon-eye-open" style="color:white"></i> Show</a></li>
                           <li><a onclick=" editForm('. $purchase->id .')" class="btn btn-success btn-xs" style="color:white"><i class="glyphicon glyphicon-pencil" style="color:white"></i> Edit</a></li>
                           <li><a href="#" class="btn btn-warning btn-xs confirm_pay" style="color:white" id="'.$purchase->id.'"><i class="fa fa-money" style="color:white"></i>Confirm Payment</a></li>
                           <li><a onclick="deleteData('. $purchase->id .')" class="btn btn-danger btn-xs" style="color:white"><i class="glyphicon glyphicon-trash" style="color:white"></i> Delete</a></li>
                       </ul>
                       </div> ';
                    
                }
                // <li><a href="#" class="btn btn-success btn-xs paylabour" style="color:white" id="'.$purchase->id.'"><i class="fa fa-money" style="color:white"></i>Labour Payment</a></li>
                if(Auth::user()->name=="Superadministrator"){
                    return '
                    <div class="btn-group" style="width:100%">
                       <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           Action <span class="caret"></span>
                       </button>
                       <ul class="dropdown-menu">
                          
                           <li><a href="#" class="btn btn-info btn-xs views" style="color:white" id="'.$purchase->id.'" ><i class="glyphicon glyphicon-eye-open" style="color:white"></i> Show</a></li>
                           <li><a onclick=" editForm('. $purchase->id .')" class="btn btn-success btn-xs" style="color:white"><i class="glyphicon glyphicon-pencil" style="color:white"></i> Edit</a></li>
                           <li><a onclick="deleteData('. $purchase->id .')" class="btn btn-danger btn-xs" style="color:white"><i class="glyphicon glyphicon-trash" style="color:white"></i> Delete</a></li>
                           <li><a href="#" class="btn btn-warning btn-xs confirm_pay" style="color:white" id="'.$purchase->id.'"><i class="fa fa-money" style="color:white"></i>Confirm Payment</a></li>

                       </ul>
                   </div> ';

                }
                if(Auth::user()->name=="Administrator"){
                    return '
                    <div class="btn-group" style="width:100%">
                       <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           Action <span class="caret"></span>
                       </button>
                       <ul class="dropdown-menu">
                          
                           <li><a href="#" class="btn btn-info btn-xs views" style="color:white" id="'.$purchase->id.'" ><i class="glyphicon glyphicon-eye-open" style="color:white"></i> Show</a></li>
                           <li><a onclick=" editForm('. $purchase->id .')" class="btn btn-success btn-xs" style="color:white"><i class="glyphicon glyphicon-pencil" style="color:white"></i> Edit</a></li>
                           <li><a onclick="deleteData('. $purchase->id .')" class="btn btn-danger btn-xs" style="color:white"><i class="glyphicon glyphicon-trash" style="color:white"></i> Delete</a></li>
                           <li><a href="#" class="btn btn-warning btn-xs confirm_pay" style="color:white" id="'.$purchase->id.'"><i class="fa fa-money" style="color:white"></i>Confirm Payment</a></li>
                           </ul>
                   </div> ';

                }
             
            })
               //    <li><a href="#" class="btn btn-info btn-xs view" style="color:white" id="'.$purchase->id.'" ><i class="glyphicon glyphicon-eye-open" style="color:white"></i> Show</a></li>
                    //    <li><a onclick="editForm('.  $purchase->id .')" class="btn btn-primary btn-xs" style="color:white"><i class="glyphicon glyphicon-edit" style="color:white"></i> Edit</a></li>
            
                    //  
      ->rawColumns(['category_name','show_photo','action'])
    
      ->make(true);
        }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
        
    public function exportStaffing($id)
    {
      
        $date_invo=Carbon::now()->format('Y-m-d');
         $purchase_invoice =DB::table('suppliers')
         ->join('purchase_invoice','suppliers.id','=','purchase_invoice.suppliers_id')
         ->join('account_staff','account_staff.id','=','purchase_invoice.account_id')
         ->join('all_purchase','purchase_invoice.id','=','all_purchase.purchase_id')
         ->select('purchase_invoice.*','all_purchase.item_name','all_purchase.qty',
         'all_purchase.price','all_purchase.purchase_id','suppliers.tin_number','suppliers.name',
         'suppliers.address','suppliers.vrn','suppliers.phone','suppliers.email',
         'account_name','all_purchase.amt')
         ->where('purchase_invoice.id','=',$id)
         ->get();
        $owner=DB::table('owner')->get();
     
        $pdf = PDF::loadView('casual_purchase.purchase', compact('purchase_invoice','owner','date_invo'));
        if($pdf){
         return $pdf->download($purchase_invoice[0]->id.'staffingAndDistaffing.pdf');
        }
    
       
    }
    public function proformaInvoice($id)
    {
       

        $check_invoice = DB::table('invoice_fumigation')
        ->where('id','=',$id)
        ->get();
        
        $invoice_status=$check_invoice[0]->invoice_status;
        if($invoice_status!='pending'){
            return redirect('/furm');
         }
       if($invoice_status=='pending'){
        $invoice_status='draft';
        $update_invoice_status=array(
            'invoice_status'=>$invoice_status,
        );
        DB::table('invoice_fumigation')->where('id','=',$id)->update($update_invoice_status);
        $date_invo=Carbon::now();
        $date_due=Carbon::today()->addDays(7);
         $staffing_invoice = DB::table('invoice_fumigation')
        ->join('company_infor','company_infor.id','=','invoice_fumigation.company_id')
        ->join('invoice','invoice_fumigation.id','=','invoice.invoice_fumigation')
        ->select('invoice_fumigation.*','company_infor.*','invoice.description','invoice.title','invoice.qty','invoice.price','invoice.amt')
        ->where('invoice_fumigation.id','=',$id)
        ->get();
        $remark=DB::table('remark')->get();
        $owner=DB::table('owner')->get();
        $pay_method=DB::table('payment_info')->get();
        $pdf = PDF::loadView('fum_report.proforma', compact('staffing_invoice','owner','pay_method','remark','date_invo','date_due'));
       if($pdf){
        return $pdf->download('proforma_invoice.pdf');
        } 
       }

        
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function exportPDF(Request $request){
        $from_date=$request->from;
        $to_date=$request->to;
      
        $purchase_report = DB::table('suppliers')
        ->join('purchase_invoice','purchase_invoice.suppliers_id','=','suppliers.id')
        ->join('all_purchase','all_purchase.purchase_id','=','purchase_invoice.id')
        ->select('purchase_invoice.*','suppliers.name','suppliers.vrn','purchase_invoice.date_in',
          'all_purchase.item_name'
         )
         ->whereBetween('purchase_invoice.date_in',[$request->from,$request->to])
         ->where('suppliers.staff_type','=','staffing')
        ->get();
        $items= DB::table('suppliers')
        ->join('purchase_invoice','purchase_invoice.suppliers_id','=','suppliers.id')
        ->join('all_purchase','all_purchase.purchase_id','=','purchase_invoice.id')
        ->select('purchase_invoice.*','suppliers.name','suppliers.vrn','purchase_invoice.date_in',
          'all_purchase.item_name'
         )
         ->where('suppliers.staff_type','=','staffing')
         ->whereBetween('purchase_invoice.date_in',[$request->from,$request->to])
        ->get();
       
         if(is_null($purchase_report)){
             echo 'Data available';
         }
    
        $pdf = PDF::loadView('fum_purchase.purchase', compact('items','purchase_report','from_date','to_date'));
        return $pdf->download('purchase_report.pdf');
     
       
      
    }
}
