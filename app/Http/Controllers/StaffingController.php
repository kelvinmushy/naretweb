<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Models\CompanyInfModel;
use App\Http\Models\TruckModel;
use App\Http\Models\StaffingModel;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Facades\DB;
use App\Console\Commands\UpdateInvoiceStatus;
use Carbon\Carbon;
use Auth ;
use PDF;

class StaffingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $status='closed';
        $comp=DB::table('company_infor')
             ->where('staff_type','=','staffing')
             ->where('status','=','active')
             ->whereNotIn('tin_number',[""])
             ->get(); 
         $account=DB::table('account_staff')
              ->where('status','=','active')
              ->where('staff_type','=','staffing')
              ->get();   
        $staffing=DB::table('staffing')->join('company_infor','staffing.company_id','=','company_infor.id')
        ->select('staffing.*','company_infor.name')
        ->get();
        $closed_invoice=DB::table('staffing')->join('company_infor','staffing.company_id','=','company_infor.id')
        ->select('staffing.*','company_infor.name')
        ->where('invoice_status','=',$status)
        ->get();
      
    //     $vat=DB::table('staffing')
    //           ->where("date_in")
    //           ->select('vat')
    //           ->get();
       
    //    $chart = Charts::database($vat, 'bar', 'highcharts')
    //     ->title("Monthly Vat Record")
    //     ->elementLabel("Total Vat")
    //     ->dimensions(1000, 500)
    //     ->responsive(false)
    //     ->groupByMonth(date('Y'), true);
      
 
        // $invoice=DB::table('staffing')->join('company_infor','staffing.company_id','=','company_infor.id')
      
        // // ->select('staffing.*','company_infor.name','company_infor.phone')
        // // ->where('staffing.pay_method','=','Invoice')
        // // ->get();
        return view('casual.staffing.index',compact('comp','staffing','closed_invoice','account'));
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
        
        $this->validate($request, [
            'company_id'=> 'required',
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
        $due_date=Carbon::now()->format('Y-m-d');
        $start_date=Carbon::today()->addDays(7);
        
        $invoice_status="pending";
        $record= DB::table('staffing')->orderBy('id', 'DESC')->first();
        if(!$record)
        {
                 //check first day in a year
        if ( date('l',strtotime(date('Y-01-01'))) ){
           $nextInvoiceNumber = date('Y').'-0001';
          }
        }
       if($record){
          
      $expNum = explode('-', $record->invoice_number);
      $increments=($expNum[1]+1);
       //increase 1 with last invoice number
         $nextInvoiceNumber =now()->year.'-'.sprintf("%04d",$increments);
     
       }

       if($request->company_id=="normal"){
        if($request->currency=="USD"){
            $current_value=$request->current_value;
        $form_datas = array(
            'normal' => $request->company_id,
            'name' => $request->customer_name,
            'phone' => $request->phone_number,
            'location'  =>$request->location,
            'staff_type'=>$request->staff_type,
        );
        $company_id = DB::table('company_infor')->insertGetId($form_datas);
    
        $description=$request->description;
        $date_in=$request->date_in;
        $qty=$request->qty;
        $price=$request->price;
        $amt=$request->amt;
        $payment_method=$request->payment_method;
        $amount_paid='0';
        $amount_due=$request->amount_due*$current_value;
        $discount=$request->discount*$current_value;
        $net_total=$request->net_total*$current_value;
        $vat=$request->vat* $current_value;
        $title=$request->title;
        $subtotal=$request->sub_total*$current_value;
        $staff_type=$request->staff_type;
        $invoice_number=$nextInvoiceNumber;
        $withhold=$request->withhold;
        $withhold_amount=$request->withhold_amount;
        $payment_status='Not paid';
       //  $prove="Not approved";
       
        $form_datas=array(
            'company_id'=>$company_id,
            'date_in'=>$date_in,
            'amount_paid'=>round($amount_paid,2),
            'amount_due'=>round($amount_due,2),
            'payment_status'=>$payment_status,
            'vat'=>round($vat,2),
            'net_total'=>round($net_total,2),
            'discount'=>round($discount,2),
            'sub_total'=>round($subtotal,2),
            'invoice_number'=>$invoice_number,
            'created_at'=>$date,
            'invoice_status'=>$invoice_status,
            'start_date'=>$start_date,
            'due_date'=>$due_date,
            'adds'=>$request->user,
            'withhold1'=>$withhold,
            'withhold_amount1'=>round($withhold_amount,2),
            'currency'=>$request->currency,
            'current_value'=>$current_value,

           'discount1'=>round($request->discount,2),
           'tax_inclusive'=>round($request->sub_total,2),
           'tax_exclusive'=>round($request->net_total,2),
           'tax'=>round($request->vat,2),
           'amount_due1'=>round($request->amount_due,2),
           // 'prove_status'=>$prove,
           
           
       );
        $get_id=DB::table('staffing')->insertGetId($form_datas);
        
        for($count=0; $count < count($qty);$count++){
           $form_data[]= array(
            'description' =>$description[$count],
            'qty'  =>$qty[$count],
            'price'  =>round($price[$count],2),
            'title'  =>$title[$count],
            'amt'=>round($price[$count]*$qty[$count],2),
            'company_id'=>$company_id,
            'date_in'  =>$date_in,
            'staff_id'=>$get_id,
            'staff_type'=>$staff_type,
           );

       }
       
       // //  $get_balance=DB::table('account_staff')->where('id','=',$request->account_id)->update($form_update);
       //  return $get_balance;
        $invoice=DB::table('invoice')->insert($form_data);
       return response()->json([
           'success'    => true,
           'message'    => 'Informatio successfuly added'
       ]);
       }
       if($request->currency!="USD"){
        $form_datas = array(
            'normal' => $request->company_id,
            'name' => $request->customer_name,
            'phone' => $request->phone_number,
            'location'  =>$request->location,
            'staff_type'=>$request->staff_type,
        );
        $company_id = DB::table('company_infor')->insertGetId($form_datas);
        $description=$request->description;
        $date_in=$request->date_in;
        $qty=$request->qty;
        $price=$request->price;
        $amt=$request->amt;
        $payment_method=$request->payment_method;
        $amount_paid='0';
        $withhold=$request->withhold;
        $withhold_amount=$request->withhold_amount;
        $amount_due=$request->amount_due;
        $discount=$request->discount;
        $net_total=$request->net_total;
        $vat=$request->vat;
        $vat_status=$request->vat1;
        $current_value=$request->current_value;
        $title=$request->title;
        $subtotal=$request->sub_total;
        $staff_type=$request->staff_type;
        $invoice_number=$nextInvoiceNumber;
        $payment_status='Not paid';
       //  $prove="Not approved";
       
        $form_datas=array(
            'company_id'=>$company_id,
            'date_in'=>$date_in,
            'amount_paid'=>round($amount_paid,2),
            'amount_due'=>round($amount_due,2),
            'payment_status'=>$payment_status,
            'vat'=>round($vat,2),
            'vat_status'=>$vat_status,
            'net_total'=>round($net_total,2),
            'discount'=>round($discount,2),
            'sub_total'=>round($subtotal,2),
            'invoice_number'=>$invoice_number,
            'withhold'=>$withhold,
            'withhold_amount'=>round($withhold_amount,2),
            'created_at'=>$date,
            'invoice_status'=>$invoice_status,
            'start_date'=>$start_date,
            'due_date'=>$due_date,
            'adds'=>$request->user,
            'currency'=>$request->currency,
            'current_value'=>$current_value,
          
           // 'prove_status'=>$prove,
           
           
       );
        $get_id=DB::table('staffing')->insertGetId($form_datas);
        
        for($count=0; $count < count($qty);$count++){
           $form_data[]= array(
            'description' =>$description[$count],
            'qty'  =>$qty[$count],
            'price'  =>round($price[$count],2),
            'title'  =>$title[$count],
            'amt'=>round($price[$count]*$qty[$count],2),
            'company_id'=>$company_id,
            'date_in'  =>$date_in,
            'staff_id'=>$get_id,
            'staff_type'=>$staff_type,
           );

       }
       
       // //  $get_balance=DB::table('account_staff')->where('id','=',$request->account_id)->update($form_update);
       //  return $get_balance;
        $invoice=DB::table('invoice')->insert($form_data);




       return response()->json([
           'success'    => true,
           'message'    => 'Informatio successfuly added'
       ]);

       }

       }
       if($request->company_id!="normal"){
        
        if($request->currency=="USD"){
           $current_value=$request->current_value;
           $amount_due=$request->amount_due;
            $description=$request->description;
            $date_in=$request->date_in;

            $withhold=$request->withhold;
            $withhold_amount=$request->withhold_amount;

            $qty=$request->qty;
            $price=$request->price;
            $amt=$request->amt;
            $payment_method=$request->payment_method;
            $amount_paid='0';
            $amount_due=$amount_due*$current_value;
            $discount=$request->discount*$current_value;
            $net_total=$request->net_total*$current_value;
            $vat=$request->vat*$current_value;
            $vat_status=$request->vat1;
            $title=$request->title;
            $subtotal=$request->sub_total* $current_value;
            $staff_type=$request->staff_type;
            $invoice_number=$nextInvoiceNumber;
            $payment_status='Not paid';
           //  $prove="Not approved";
           
            $form_datas=array(
               'company_id'=>$request->company_id,
               'date_in'=>$date_in,
               'amount_paid'=>round($amount_paid,2),
               'amount_due'=>round($amount_due,2),
               'payment_status'=>$payment_status,
               'vat'=>round($vat,2),
               'vat_status'=>$vat_status,
               'net_total'=>round($net_total,2),
               'discount'=>round($discount,2),
               'sub_total'=>round($subtotal,2),
               'invoice_number'=>$invoice_number,
               'created_at'=>$date,
               'invoice_status'=>$invoice_status,
               'start_date'=>$start_date,
               'due_date'=>$due_date,

               'withhold1'=>$withhold,
               'withhold_amount1'=>round($withhold_amount,2),

               'adds'=>$request->user,
               'currency'=>$request->currency,
               'current_value'=>$current_value,
               
                
             'discount1'=>round($request->discount,2),
             'tax_inclusive'=>round($request->sub_total,2),
             'tax_exclusive'=>round($request->net_total,2),
             'tax'=>round($request->vat,2),
              'amount_due1'=>round($request->amount_due,2),
               // 'prove_status'=>$prove,
               
               
           );
            $get_id=DB::table('staffing')->insertGetId($form_datas);
            
            for($count=0; $count < count($qty);$count++){
               $form_data[]= array(
                   'description' =>$description[$count],
                   'qty'  =>$qty[$count],
                   'price'  =>round($price[$count],2),
                   'title'  =>$title[$count],
                   'amt'=>round($price[$count]*$qty[$count],2),
                   'company_id'=>$request->company_id,
                   'date_in'  =>$date_in,
                   'staff_id'=>$get_id,
                   'staff_type'=>$staff_type,
               );
    
           }
           
           // //  $get_balance=DB::table('account_staff')->where('id','=',$request->account_id)->update($form_update);
           //  return $get_balance;
            $invoice=DB::table('invoice')->insert($form_data);
    
    
    
    
           return response()->json([
               'success'    => true,
               'message'    => 'Informatio successfuly added'
           ]);
        }
        if($request->currency!="USD"){
            $description=$request->description;
            $date_in=$request->date_in;
            $qty=$request->qty;
            $price=$request->price;
            $amt=$request->amt;
            $payment_method=$request->payment_method;
            $amount_paid='0';
            $amount_due=$request->amount_due;
            $discount=$request->discount;
            $net_total=$request->net_total;
            $vat=$request->vat;
            $vat_status=$request->vat1;
            $current_value=$request->current_value;
            $title=$request->title;
            $subtotal=$request->sub_total;
            $staff_type=$request->staff_type;
            $invoice_number=$nextInvoiceNumber;

            $withhold=$request->withhold;
            $withhold_amount=$request->withhold_amount;
            $payment_status='Not paid';
            //  $prove="Not approved";
            
             $form_datas=array(
                'company_id'=>$request->company_id,
                'date_in'=>$date_in,
                'amount_paid'=>round($amount_paid,2),
                'amount_due'=>round($amount_due,2),
                'payment_status'=>$payment_status,
                'vat'=>round($vat,2),
                'vat_status'=>$vat_status,
                'net_total'=>round($net_total,2),
                'discount'=>round($discount,2),
                'sub_total'=>round($subtotal,2),
                'invoice_number'=>$invoice_number,
                'created_at'=>$date,
                'invoice_status'=>$invoice_status,
                'withhold'=>$withhold,
                'withhold_amount'=>round($withhold_amount,2),
                'start_date'=>$start_date,
                'due_date'=>$due_date,
                'adds'=>$request->user,
                'currency'=>$request->currency,
                'current_value'=>$current_value,
                // 'prove_status'=>$prove,
                
                
            );
             $get_id=DB::table('staffing')->insertGetId($form_datas);
             
             for($count=0; $count < count($qty);$count++){
                $form_data[]= array(
                    'description' =>$description[$count],
                    'qty'  =>$qty[$count],
                    'price'  =>round($price[$count],2),
                    'title'  =>$title[$count],
                    'amt'=>round($price[$count]*$qty[$count],2),
                    'company_id'=>$request->company_id,
                    'date_in'  =>$date_in,
                    'staff_id'=>$get_id,
                    'staff_type'=>$staff_type,
                );
     
            }
            
            // //  $get_balance=DB::table('account_staff')->where('id','=',$request->account_id)->update($form_update);
            //  return $get_balance;
             $invoice=DB::table('invoice')->insert($form_data);
     
     
     
     
            return response()->json([
                'success'    => true,
                'message'    => 'Informatio successfuly added'
            ]);
         }

       }
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
             
      
            $data =DB::table('staffing')
            ->join('company_infor','staffing.company_id','=','company_infor.id')
            ->join('invoice','staffing.id','=','invoice.staff_id')
            ->select('staffing.*','invoice.description','invoice.qty','invoice.price','invoice.amt','invoice.title','invoice.date_in','company_infor.name','company_infor.phone','company_infor.location',
               'company_infor.tin_number','company_infor.normal')
            ->where('staffing.id','=',$id)
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
       
     
        
        $invoice_status="pending";
     

       if($request->normal=="normal"){
        if($request->currency=="USD"){
            $current_value=$request->current_value;
        $form_datas = array(
            'normal' => $request->normal,
            'name' => $request->customer_name,
            'phone' => $request->phone_number,
            'location'  =>$request->location,
            'staff_type'=>$request->staff_type,
        );
        DB::table('company_infor')
        ->where('id','=',$request->company_id1)
        ->update($form_datas);
       // $company_id = DB::table('company_infor')->insertGetId($form_datas);
        $company_id=$request->company_id1;
        $description=$request->description;
        $date_in=$request->date_in;
        $qty=$request->qty;
        $price=$request->price;
        $amt=$request->amt;
        $payment_method=$request->payment_method;
        $amount_paid='0';
        $amount_due=$request->amount_due*$current_value;
        $discount=$request->discount*$current_value;
        $net_total=$request->net_total*$current_value;
        $vat=$request->vat* $current_value;
        $vat_status=$request->vat1;
        $title=$request->title;
        $subtotal=$request->sub_total*$current_value;
        $staff_type=$request->staff_type;
        $withhold=$request->withhold;
        $withhold_amount=$request->withhold_amount;
        $payment_status='Not paid';
       //  $prove="Not approved";
       
        $form_datas=array(
            'company_id'=>$company_id,
            'date_in'=>$date_in,
            'amount_paid'=>round($amount_paid,2),
            'amount_due'=>round($amount_due,2),
            'payment_status'=>$payment_status,
            'vat'=>round($vat,2),
            'vat_status'=>$vat_status,
            'net_total'=>round($net_total,2),
            'discount'=>round($discount,2),
            'sub_total'=>round($subtotal,2),
            'withhold1'=>$withhold,
            'withhold_amount1'=>round($withhold_amount,2),
            'created_at'=>$date,
            'invoice_status'=>$invoice_status,
         
            'adds'=>$request->user,
            'currency'=>$request->currency,
            'current_value'=>$current_value,

           'discount1'=>round($request->discount,2),
           'tax_inclusive'=>round($request->sub_total,2),
           'tax_exclusive'=>round($request->net_total,2),
           'tax'=>round($request->vat,2),
           'amount_due1'=>round($request->amount_due,2),
           // 'prove_status'=>$prove,  
        );
    
        DB::table('staffing')
        ->where('id','=',$id)
        ->update($form_datas);

        for($count=0; $count < count($qty);$count++){
           $form_data[]= array(
            'description' =>$description[$count],
            'qty'  =>$qty[$count],
            'price'  =>round($price[$count],2),
            'title'  =>$title[$count],
            'amt'=>round($price[$count]*$qty[$count],2),
            'company_id'=>$company_id,
            'date_in'  =>$date_in,
            'staff_id'=>$request->id,
            'staff_type'=>$staff_type,
           );

       }
       
       $invoice1=DB::table('invoice')
       ->where('staff_id','=',$id)
       ->delete();
      
      
       $invoice=DB::table('invoice')
       ->insert($form_data);

       return response()->json([
           'success'    => true,
           'message'    => 'Informatio successfuly Updated'
       ]);
       }
       if($request->currency!="USD"){
        $current_value=$request->current_value;
        $form_datas = array(
            'normal' => $request->normal,
            'name' => $request->customer_name,
            'phone' => $request->phone_number,
            'location'  =>$request->location,
            'staff_type'=>$request->staff_type,
        );
        DB::table('company_infor')
        ->where('id','=',$request->company_id1)
        ->update($form_datas);
       
        $company_id1=$request->company_id1;
      
        $description=$request->description;
        $date_in=$request->date_in;
        $qty=$request->qty;
        $price=$request->price;
        $amt=$request->amt;
        $payment_method=$request->payment_method;
        $amount_paid='0';
        $amount_due=$request->amount_due;
        $discount=$request->discount;
        $net_total=$request->net_total;
        $vat=$request->vat* $current_value;
        $vat_status=$request->vat1;
        $title=$request->title;
        $withhold=$request->withhold;
        $withhold_amount=$request->withhold_amount;
        $subtotal=$request->sub_total;
        $staff_type=$request->staff_type;
      
        $payment_status='Not paid';
       //  $prove="Not approved";
       
        $form_datas=array(
            'company_id'=>$request->company_id1,
            'date_in'=>$date_in,
            'amount_paid'=>round($amount_paid,2),
            'amount_due'=>round($amount_due,2),
            'withhold'=>$withhold,
            'withhold_amount'=>round($withhold_amount,2),
            'payment_status'=>$payment_status,
            'vat'=>round($vat,2),
            'vat_status'=>$vat_status,
            'net_total'=>round($net_total,2),
            'discount'=>round($discount,2),
            'sub_total'=>$subtotal,
          
            'created_at'=>$date,
            'invoice_status'=>$invoice_status,
           
            'adds'=>$request->user,
            'currency'=>$request->currency,
            'current_value'=>$current_value,

           'discount1'=>round($request->discount,2),
           'tax_inclusive'=>round($request->sub_total,2),
           'tax_exclusive'=>round($request->net_total,2),
           'tax'=>round($request->vat,2),
           'amount_due1'=>round($request->amount_due,2),
           // 'prove_status'=>$prove,  
        );
        // return $request->company_id1;
        DB::table('staffing')
        ->where('id','=',$id)
        ->update($form_datas);

        for($count=0; $count < count($qty);$count++){
           $form_data[]= array(
            'description' =>$description[$count],
            'qty'  =>$qty[$count],
            'price'  =>round($price[$count],2),
            'title'  =>$title[$count],
            'amt'=>round($price[$count]*$qty[$count],2),
            'company_id'=>$request->company_id1,
            'date_in'  =>$date_in,
            'staff_id'=>$request->id,
            'staff_type'=>$staff_type,
           );

       }
 
       $invoice1=DB::table('invoice')
       ->where('staff_id','=',$id)
       ->delete();
      
      
       $invoice=DB::table('invoice')
       ->insert($form_data);

       return response()->json([
           'success'    => true,
           'message'    => 'Informatio successfuly Updated'
       ]);
       }

       }
       if($request->company_id!="normal"){
        
        if($request->currency=="USD"){
           $current_value=$request->current_value;
           $amount_due=$request->amount_due;
            $description=$request->description;
            $date_in=$request->date_in;
            $qty=$request->qty;
            $price=$request->price;
            $amt=$request->amt;
            $payment_method=$request->payment_method;
            $amount_paid='0';
            $amount_due=$amount_due*$current_value;
            $discount=$request->discount*$current_value;
            $net_total=$request->net_total*$current_value;
            $vat=$request->vat*$current_value;
            $vat_status=$request->vat1;
            $title=$request->title;
            $subtotal=$request->sub_total* $current_value;
            $staff_type=$request->staff_type;
            $withhold=$request->withhold;
            $withhold_amount=$request->withhold_amount;
          
            $payment_status='Not paid';
           //  $prove="Not approved";
           
            $form_datas=array(
               'company_id'=>$request->company_id,
               'date_in'=>$date_in,
               'amount_paid'=>round($amount_paid,2),
               'amount_due'=>round($amount_due,2),
               'payment_status'=>$payment_status,
               'vat'=>round($vat,2),
               'vat_status'=>$vat_status,
               'net_total'=>round($net_total,2),
               'discount'=>round($discount,2),
               'sub_total'=>round($subtotal,2),
             
               'created_at'=>$date,
               'withhold_amount1'=>round($withhold_amount,2),
             
               'withhold1'=>$withhold,
               'invoice_status'=>$invoice_status,
               
               'adds'=>$request->user,
               'currency'=>$request->currency,
               'current_value'=>$current_value,
               
                
             'discount1'=>round($request->discount,2),
             'tax_inclusive'=>round($request->sub_total,2),
             'tax_exclusive'=>round($request->net_total,2),
             'tax'=>round($request->vat,2),
              'amount_due1'=>round($request->amount_due,2),
               // 'prove_status'=>$prove,
               
               
           );
             DB::table('staffing')
             ->where('id','=',$id)
             ->update($form_datas);
            
            for($count=0; $count < count($qty);$count++){
               $form_data[]= array(
                   'description' =>$description[$count],
                   'qty'  =>$qty[$count],
                   'price'  =>round($price[$count],2),
                   'title'  =>$title[$count],
                   'amt'=>round($price[$count]*$qty[$count],2),
                   'company_id'=>$request->company_id,
                   'date_in'  =>$date_in,
                   'staff_id'=>$id,
                   'staff_type'=>$staff_type,
               );
    
           }
           
          
           $invoice1=DB::table('invoice')
           ->where('staff_id','=',$id)
           ->delete();
          
          
           $invoice=DB::table('invoice')
           ->insert($form_data);
    
    
           return response()->json([
               'success'    => true,
               'message'    => 'Informatio successfuly updated'
           ]);
        }
        if($request->currency!="USD"){
            $description=$request->description;
            $date_in=$request->date_in;
            $qty=$request->qty;
            $price=$request->price;
            $amt=$request->amt;
            $payment_method=$request->payment_method;
            $amount_paid='0';
            $amount_due=$request->amount_due;
            $discount=$request->discount;
            $net_total=$request->net_total;
            $vat=$request->vat;
            $vat_status=$request->vat1;
            $title=$request->title;
            $subtotal=$request->sub_total;
            $staff_type=$request->staff_type;
            $current_value=$request->current_value;
            $withhold=$request->withhold;
            $withhold_amount=$request->withhold_amount;
            $payment_status='Not paid';
            //  $prove="Not approved";
            
             $form_datas=array(
                'company_id'=>$request->company_id,
                'date_in'=>$date_in,
                'amount_paid'=>round($amount_paid,2),
                'amount_due'=>round($amount_due,2),
                'payment_status'=>$payment_status,
                'vat'=>round($vat,2),
                'vat_status'=>$vat_status,
                'net_total'=>round($net_total,2),
                'discount'=>round($discount,2),
                'sub_total'=>round($subtotal,2),
                'withhold_amount'=>round($withhold_amount,2),
             
                'withhold'=>$withhold,
                'created_at'=>$date,
                'invoice_status'=>$invoice_status,
              
                'adds'=>$request->user,
                'currency'=>$request->currency,
                'current_value'=>$current_value,
                // 'prove_status'=>$prove,
                
                
            );
             DB::table('staffing')
             ->where('id','=',$id)
             ->update($form_datas);
             
             for($count=0; $count < count($qty);$count++){
                
                $form_data[]= array(
                    'description' =>$description[$count],
                    'qty'  =>$qty[$count],
                    'price'  =>$price[$count],
                    'title'  =>$title[$count],
                    'amt'=>$price[$count]*$qty[$count],
                    'company_id'=>$request->company_id,
                    'date_in'  =>$date_in,
                    'staff_id'=>$request->id,
                    'staff_type'=>$staff_type,
                );
     
            }
            
            // //  $get_balance=DB::table('account_staff')->where('id','=',$request->account_id)->update($form_update);
            //  return $get_balance;
            $invoice1=DB::table('invoice')
            ->where('staff_id','=',$id)
            ->delete();

           
            $invoice=DB::table('invoice')
            ->insert($form_data);
     
     
     
     
            return response()->json([
                'success'    => true,
                'message'    => 'Informatio successfuly Updated'
            ]);
         }

       }
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
        DB::table('staffing')->where('id', '=', $id)->delete();

        return response()->json([
            'success' => true,
            'message' => ' Details Deleted'
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
        DB::table('staffing')->where('id', '=', $id)->update($status);

        return response()->json([
            'success' => true,
            'message' => 'Approved'
        ]);
    }
    public function apiStaffing(){
        $staffing_get=DB::table('staffing')
        ->join('company_infor','staffing.company_id','=','company_infor.id')
      
        ->select('staffing.*','company_infor.name','company_infor.tin_number','company_infor.phone','company_infor.location')
        ->whereNotIn('invoice_status',['closed'])
        ->get();
        
        return Datatables::of($staffing_get)
            ->addColumn('action', function($staffing_get){
                if(Auth::user()->name=="User"){
                
                        return '
                        <div class="btn-group" style="width:100%">
                           <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                               Action <span class="caret"></span>
                           </button>
                           <ul class="dropdown-menu">
                           <li>
                          
                               <li><a href="exportProforma/'.$staffing_get->id .'" class="btn btn-warning btn-xs pro_invoice" style="color:white" ><i class="fas fa-file-invoice" style="color:white"></i>Proforma Invoice</a></li>
                               <li><a href="exportStaffing/'.$staffing_get->id .'" class="btn btn-info btn-xs invoice_print" style="color:white" ><i class="fas fa-file-invoice" style="color:white"></i>Invoice</a></li>
                               <li><a href="#" class="btn btn-warning btn-xs pay" style="color:white" id="'.$staffing_get->id.'"><i class="fa fa-money" style="color:white"></i>Receive Payment</a></li>
                               <li><a onclick=" editForm('. $staffing_get->id .')" class="btn btn-success btn-xs" style="color:white"><i class="glyphicon glyphicon-pencil" style="color:white"></i> Edit</a></li>
                               <li><a href="#" class="btn btn-info btn-xs view" style="color:white" id="'.$staffing_get->id.'" ><i class="glyphicon glyphicon-eye-open" style="color:white"></i> Show</a></li>
                     
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
                       <li>
                       <li><a href="#" class="btn btn-primary btn-xs prove" style="color:white" id="'.$staffing_get->id.'" ><i class="fas fa-check" style="color:white"></i>Prove invoice</a></li>
                           <li><a href="exportProforma/'.$staffing_get->id .'" class="btn btn-warning btn-xs pro_invoice" style="color:white" ><i class="fas fa-file-invoice" style="color:white"></i>Proforma Invoice</a></li>
                           <li><a href="exportStaffing/'.$staffing_get->id .'" class="btn btn-info btn-xs invoice_print" style="color:white" ><i class="fas fa-file-invoice" style="color:white"></i>Invoice</a></li>
                           <li><a href="#" class="btn btn-warning btn-xs pay" style="color:white" id="'.$staffing_get->id.'"><i class="fa fa-money" style="color:white"></i>Receive Payment</a></li>
                           <li><a onclick=" editForm('. $staffing_get->id .')" class="btn btn-success btn-xs" style="color:white"><i class="glyphicon glyphicon-pencil" style="color:white"></i> Edit</a></li>
                           <li><a href="#" class="btn btn-info btn-xs view" style="color:white" id="'.$staffing_get->id.'" ><i class="glyphicon glyphicon-eye-open" style="color:white"></i> Show</a></li>
                          <li><a onclick="deleteData('. $staffing_get->id .')" class="btn btn-danger btn-xs" style="color:white"><i class="glyphicon glyphicon-trash" style="color:white"></i> Delete</a></li>
                       </ul>
                   </div> ';
                }
                if(Auth::user()->name=="Superadministrator"){
                    return '
                    <div class="btn-group" style="width:100%">
                       <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           Action <span class="caret"></span>
                       </button>
                       <ul class="dropdown-menu">
                       <li>
                           <li><a href="exportProforma/'.$staffing_get->id .'" class="btn btn-warning btn-xs pro_invoice" style="color:white" ><i class="fas fa-file-invoice" style="color:white"></i>Proforma Invoice</a></li>
                           <li><a href="exportStaffing/'.$staffing_get->id .'" class="btn btn-info btn-xs invoice_print" style="color:white" ><i class="fas fa-file-invoice" style="color:white"></i>Invoice</a></li>
                           <li><a href="#" class="btn btn-warning btn-xs pay" style="color:white" id="'.$staffing_get->id.'"><i class="fa fa-money" style="color:white"></i>Receive Payment</a></li>
                           <li><a onclick=" editForm('. $staffing_get->id .')" class="btn btn-success btn-xs" style="color:white"><i class="glyphicon glyphicon-pencil" style="color:white"></i> Edit</a></li>
                           <li><a href="#" class="btn btn-info btn-xs view" style="color:white" id="'.$staffing_get->id.'" ><i class="glyphicon glyphicon-eye-open" style="color:white"></i> Show</a></li>
                          <li><a onclick="deleteData('. $staffing_get->id .')" class="btn btn-danger btn-xs" style="color:white"><i class="glyphicon glyphicon-trash" style="color:white"></i> Delete</a></li>
                       </ul>
                   </div> ';
                }
              
            }
            )
            ->addColumn('newaction', function($staffing_get){
                if(Auth::user()->name=="User"){
                
                        return '
                        <div class="btn-group" style="width:100%">
                           <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                               Action <span class="caret"></span>
                           </button>
                           <ul class="dropdown-menu">
                           <li>
                          
                               <li><a href="exportProformaLim/'.$staffing_get->id .'" class="btn btn-warning btn-xs pro_invoice" style="color:white" ><i class="fas fa-file-invoice" style="color:white"></i>Proforma Invoice</a></li>
                               <li><a href="exportStaffingLim/'.$staffing_get->id .'" class="btn btn-info btn-xs invoice_print" style="color:white" ><i class="fas fa-file-invoice" style="color:white"></i>Invoice</a></li>
                               
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
                       <li>
                    
                           <li><a href="exportProformaLim/'.$staffing_get->id .'" class="btn btn-warning btn-xs pro_invoice" style="color:white" ><i class="fas fa-file-invoice" style="color:white"></i>Proforma Invoice</a></li>
                           <li><a href="exportStaffingLim/'.$staffing_get->id .'" class="btn btn-info btn-xs invoice_print" style="color:white" ><i class="fas fa-file-invoice" style="color:white"></i>Invoice</a></li>
                           
                       </ul>
                   </div> ';
                }
                if(Auth::user()->name=="Superadministrator"){
                    return '
                    <div class="btn-group" style="width:100%">
                       <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           Action <span class="caret"></span>
                       </button>
                       <ul class="dropdown-menu">
                       <li>
                           <li><a href="exportProformaLim/'.$staffing_get->id .'" class="btn btn-warning btn-xs pro_invoice" style="color:white" ><i class="fas fa-file-invoice" style="color:white"></i>Proforma Invoice</a></li>
                           <li><a href="exportStaffingLim/'.$staffing_get->id .'" class="btn btn-info btn-xs invoice_print" style="color:white" ><i class="fas fa-file-invoice" style="color:white"></i>Invoice</a></li>
                          
                       </ul>
                   </div> ';
                }
              
            }
            )
            
      ->rawColumns(['category_name','show_photo','action'])
      ->editColumn('invoice_status', function($staffing_get){
        if($staffing_get->invoice_status=='waiting'){
            return '<div class="text-waiting">'.$staffing_get->invoice_status.'</div>';
        }
        elseif($staffing_get->invoice_status=='draft'){
            return '<div class="text-draft">'.$staffing_get->invoice_status.'</div>';
        }
        elseif($staffing_get->invoice_status=='pending'){
            return '<div class="text-pending">'.$staffing_get->invoice_status.'</div>';
        }
        elseif($staffing_get->invoice_status=='open'){
            return '<div class="text-open">'.$staffing_get->invoice_status.'</div>';
        }
        return $staffing_get->invoice_status;
    })
    ->editColumn('payment_status', function($staffing_get){
        if($staffing_get->payment_status=='Not paid'){
            return '<div class="not-paid">'.$staffing_get->payment_status.'</div>';
        }
        elseif($staffing_get->payment_status=='partial paid'){
            return '<div class="partial-paid">'.$staffing_get->payment_status.'</div>';
        }
        return $staffing_get->payment_status;
    })
  
    ->editColumn('amount_paid', function($staffing_get){
        if($staffing_get->amount_paid==0){
            return '<div class="not-paid">'.$staffing_get->amount_paid.'</div>';
        }
        elseif($staffing_get->amount_paid>0){
            return '<div class="partial-paid">'.$staffing_get->amount_paid.'</div>';
        }
        return $staffing_get->amount_paid;
    })
    ->editColumn('amount_due', function($staffing_get){
        if($staffing_get->amount_due==0){
            return '<div class="amount-due">'.$staffing_get->amount_due.'</div>';
        }
        return '<div class="partial-due">'.$staffing_get->amount_due.'</div>';
    })
    ->editColumn('due_date', function($staffing_get){
      
        return '<div class="not-paid">'.$staffing_get->due_date.'</div>';
    })
    ->editColumn('start_date', function($staffing_get){
     
        return '<div class="text-waiting">'.$staffing_get->start_date.'</div>';
    })
    ->editColumn('vat', function($staffing_get){
     
        return '<div class="text-waiting1">'.$staffing_get->vat.'</div>';
    })
    ->editColumn('discount', function($staffing_get){
     
        return '<div class="text-waiting1">'.$staffing_get->discount.'</div>';
    })
    ->editColumn('name', function($staffing_get){
     
        return '<div class="text-waiting1">'.$staffing_get->name.'</div>';
    })
    ->editColumn('date_in', function($staffing_get){
     
        return '<div class="text-waiting1">'.$staffing_get->date_in.'</div>';
    })
    ->editColumn('sub_total', function($staffing_get){
     
        return '<div class="text-waiting1">'.$staffing_get->sub_total.'</div>';
    })
    ->editColumn('invoice_number', function($staffing_get){
     
        return '<div class="text-waiting1">'.$staffing_get->invoice_number.'</div>';
    })
    ->editColumn('net_total', function($staffing_get){
     
        return '<div class="text-waiting1">'.$staffing_get->net_total.'</div>';
    })



    ->escapeColumns([])
      ->make(true);
        }
        //        <li><a onclick="editForm('.  $staffing_get->id .')" class="btn btn-primary btn-xs" style="color:white"><i class="glyphicon glyphicon-edit" style="color:white"></i> Edit</a></li>
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
        
    public function exportStaffing($id)
    {
      
        $check_invoice = DB::table('staffing')
        ->where('id','=',$id)
        ->get();
        if($check_invoice[0]->currency=="USD"){
            $invoice_status=$check_invoice[0]->invoice_status;
            //  if($invoice_status!='draft'){
            //     return redirect('/staffing');
            //  }
        
            $invoice_status='waiting';
            $startDate = Carbon::today();
            $endDate = Carbon::today()->addDays(7);
            $update_invoice_status=array(
                'invoice_status'=>$invoice_status,
                'start_date'=>$startDate,
                'due_date'=>$endDate
            );
            DB::table('staffing')->where('id','=',$id)->update($update_invoice_status);
            $date_invo=Carbon::now();
            $date_due=$endDate; 
             $staffing_invoice = DB::table('staffing')
            ->join('company_infor','company_infor.id','=','staffing.company_id')
            ->join('invoice','staffing.id','=','invoice.staff_id')
            ->select('staffing.*','company_infor.*','invoice.description','invoice.title','invoice.qty','invoice.price','invoice.amt')
            ->where('staffing.id','=',$id)
            ->get();
            $remark=DB::table('remark')->get();
            $owner=DB::table('owner')->get();
           
            $pay_method=DB::table('payment_info')->get();
            $pdf = PDF::loadView('casual_report_usd.staffingPDF', compact('staffing_invoice','owner','pay_method','remark','date_invo','date_due'));
            return $pdf->stream($staffing_invoice[0]->invoice_number.'_invoice.pdf');   
        }
       
        if($check_invoice[0]->currency!="USD"){
            $invoice_status=$check_invoice[0]->invoice_status;
            //  if($invoice_status!='draft'){
            //     return redirect('/staffing');
            //  }
        
            $invoice_status='waiting';
            $startDate = Carbon::today();
            $endDate = Carbon::today()->addDays(7);
            $update_invoice_status=array(
                'invoice_status'=>$invoice_status,
                'start_date'=>$startDate,
                'due_date'=>$endDate
            );
            DB::table('staffing')->where('id','=',$id)->update($update_invoice_status);
            $date_invo=Carbon::now();
            $date_due=$endDate; 
             $staffing_invoice = DB::table('staffing')
            ->join('company_infor','company_infor.id','=','staffing.company_id')
            ->join('invoice','staffing.id','=','invoice.staff_id')
            ->select('staffing.*','company_infor.*','invoice.description','invoice.title','invoice.qty','invoice.price','invoice.amt')
            ->where('staffing.id','=',$id)
            ->get();
  
            $remark=DB::table('remark')->get();
            $owner=DB::table('owner')->get();
            $pay_method=DB::table('payment_info')->get();
            $pdf = PDF::loadView('casual_report.staffingPDF', compact('staffing_invoice','owner','pay_method','remark','date_invo','date_due'));
            return $pdf->stream($staffing_invoice[0]->invoice_number.'_invoice.pdf');   
        }
       

       
    }
    public function exportStaffingLim($id)
    {
      
        $check_invoice = DB::table('staffing')
        ->where('id','=',$id)
        ->get();
        if($check_invoice[0]->currency=="USD"){
            $invoice_status=$check_invoice[0]->invoice_status;
            //  if($invoice_status!='draft'){
            //     return redirect('/staffing');
            //  }
        
            $invoice_status='waiting';
            $startDate = Carbon::today();
            $endDate = Carbon::today()->addDays(7);
            $update_invoice_status=array(
                'invoice_status'=>$invoice_status,
                'start_date'=>$startDate,
                'due_date'=>$endDate
            );
            DB::table('staffing')->where('id','=',$id)->update($update_invoice_status);
            $date_invo=Carbon::now();
            $date_due=$endDate; 
             $staffing_invoice = DB::table('staffing')
            ->join('company_infor','company_infor.id','=','staffing.company_id')
            ->join('invoice','staffing.id','=','invoice.staff_id')
            ->select('staffing.*','company_infor.*','invoice.description','invoice.title','invoice.qty','invoice.price','invoice.amt')
            ->where('staffing.id','=',$id)
            ->get();
            $remark=DB::table('remark')->get();
            $owner=DB::table('owner')->get();
           
            $pay_method=DB::table('payment_info')->get();
            $pdf = PDF::loadView('casual_report_usd_lm.staffingPDF', compact('staffing_invoice','owner','pay_method','remark','date_invo','date_due'));
            return $pdf->stream($staffing_invoice[0]->invoice_number.'_invoice.pdf');   
        }
       
        if($check_invoice[0]->currency!="USD"){
            $invoice_status=$check_invoice[0]->invoice_status;
            //  if($invoice_status!='draft'){
            //     return redirect('/staffing');
            //  }
        
            $invoice_status='waiting';
            $startDate = Carbon::today();
            $endDate = Carbon::today()->addDays(7);
            $update_invoice_status=array(
                'invoice_status'=>$invoice_status,
                'start_date'=>$startDate,
                'due_date'=>$endDate
            );
            DB::table('staffing')->where('id','=',$id)->update($update_invoice_status);
            $date_invo=Carbon::now();
            $date_due=$endDate; 
             $staffing_invoice = DB::table('staffing')
            ->join('company_infor','company_infor.id','=','staffing.company_id')
            ->join('invoice','staffing.id','=','invoice.staff_id')
            ->select('staffing.*','company_infor.*','invoice.description','invoice.title','invoice.qty','invoice.price','invoice.amt')
            ->where('staffing.id','=',$id)
            ->get();
  
            $remark=DB::table('remark')->get();
            $owner=DB::table('owner')->get();
            $pay_method=DB::table('payment_info')->get();
            $pdf = PDF::loadView('casual_report_lm.staffingPDF', compact('staffing_invoice','owner','pay_method','remark','date_invo','date_due'));
            return $pdf->stream($staffing_invoice[0]->invoice_number.'_invoice.pdf');   
        }
       

       
    }
    public function proformaInvoice($id)
    {
        $check_invoice = DB::table('staffing')
        ->where('id','=',$id)
        ->get();
        if($check_invoice[0]->currency=="USD"){
            $invoice_status=$check_invoice[0]->invoice_status;
            //  if($invoice_status!='draft'){
            //     return redirect('/staffing');
            //  }
        
            $invoice_status='waiting';
            $startDate = Carbon::today();
            $endDate = Carbon::today()->addDays(7);
            $update_invoice_status=array(
                'invoice_status'=>$invoice_status,
                'start_date'=>$startDate,
                'due_date'=>$endDate
            );
            DB::table('staffing')->where('id','=',$id)->update($update_invoice_status);
            $date_invo=Carbon::now();
            $date_due=$endDate; 
             $staffing_invoice = DB::table('staffing')
            ->join('company_infor','company_infor.id','=','staffing.company_id')
            ->join('invoice','staffing.id','=','invoice.staff_id')
            ->select('staffing.*','company_infor.*','invoice.description','invoice.title','invoice.qty','invoice.price','invoice.amt')
            ->where('staffing.id','=',$id)
            ->get();
            $remark=DB::table('remark')->get();
            $owner=DB::table('owner')->get();
           
            $pay_method=DB::table('payment_info')->get();
            $pdf = PDF::loadView('casual_report_usd.proforma', compact('staffing_invoice','owner','pay_method','remark','date_invo','date_due'));
            return $pdf->stream($staffing_invoice[0]->invoice_number.'_proforma.pdf');   
        }
       
        if($check_invoice[0]->currency!="USD"){
            $invoice_status=$check_invoice[0]->invoice_status;
            //  if($invoice_status!='draft'){
            //     return redirect('/staffing');
            //  }
        
            $invoice_status='waiting';
            $startDate = Carbon::today();
            $endDate = Carbon::today()->addDays(7);
            $update_invoice_status=array(
                'invoice_status'=>$invoice_status,
                'start_date'=>$startDate,
                'due_date'=>$endDate
            );
            DB::table('staffing')->where('id','=',$id)->update($update_invoice_status);
            $date_invo=Carbon::now();
            $date_due=$endDate; 
             $staffing_invoice = DB::table('staffing')
            ->join('company_infor','company_infor.id','=','staffing.company_id')
            ->join('invoice','staffing.id','=','invoice.staff_id')
            ->select('staffing.*','company_infor.*','invoice.description','invoice.title','invoice.qty','invoice.price','invoice.amt')
            ->where('staffing.id','=',$id)
            ->get();
  
            $remark=DB::table('remark')->get();
            $owner=DB::table('owner')->get();
            $pay_method=DB::table('payment_info')->get();
            $pdf = PDF::loadView('casual_report.proforma', compact('staffing_invoice','owner','pay_method','remark','date_invo','date_due'));
            return $pdf->stream($staffing_invoice[0]->invoice_number.'_proforma.pdf');   
        }
       

       

        
    }
    public function proformaInvoiceLim($id)
    {
        $check_invoice = DB::table('staffing')
        ->where('id','=',$id)
        ->get();
        if($check_invoice[0]->currency=="USD"){
            $invoice_status=$check_invoice[0]->invoice_status;
            //  if($invoice_status!='draft'){
            //     return redirect('/staffing');
            //  }
        
            $invoice_status='waiting';
            $startDate = Carbon::today();
            $endDate = Carbon::today()->addDays(7);
            $update_invoice_status=array(
                'invoice_status'=>$invoice_status,
                'start_date'=>$startDate,
                'due_date'=>$endDate
            );
            DB::table('staffing')->where('id','=',$id)->update($update_invoice_status);
            $date_invo=Carbon::now();
            $date_due=$endDate; 
             $staffing_invoice = DB::table('staffing')
            ->join('company_infor','company_infor.id','=','staffing.company_id')
            ->join('invoice','staffing.id','=','invoice.staff_id')
            ->select('staffing.*','company_infor.*','invoice.description','invoice.title','invoice.qty','invoice.price','invoice.amt')
            ->where('staffing.id','=',$id)
            ->get();
            $remark=DB::table('remark')->get();
            $owner=DB::table('owner')->get();
           
            $pay_method=DB::table('payment_info')->get();
            $pdf = PDF::loadView('casual_report_usd_lm.proforma', compact('staffing_invoice','owner','pay_method','remark','date_invo','date_due'));
            return $pdf->stream($staffing_invoice[0]->invoice_number.'_proforma.pdf');   
        }
       
        if($check_invoice[0]->currency!="USD"){
            $invoice_status=$check_invoice[0]->invoice_status;
            //  if($invoice_status!='draft'){
            //     return redirect('/staffing');
            //  }
        
            $invoice_status='waiting';
            $startDate = Carbon::today();
            $endDate = Carbon::today()->addDays(7);
            $update_invoice_status=array(
                'invoice_status'=>$invoice_status,
                'start_date'=>$startDate,
                'due_date'=>$endDate
            );
            DB::table('staffing')->where('id','=',$id)->update($update_invoice_status);
            $date_invo=Carbon::now();
            $date_due=$endDate; 
             $staffing_invoice = DB::table('staffing')
            ->join('company_infor','company_infor.id','=','staffing.company_id')
            ->join('invoice','staffing.id','=','invoice.staff_id')
            ->select('staffing.*','company_infor.*','invoice.description','invoice.title','invoice.qty','invoice.price','invoice.amt')
            ->where('staffing.id','=',$id)
            ->get();
  
            $remark=DB::table('remark')->get();
            $owner=DB::table('owner')->get();
            $pay_method=DB::table('payment_info')->get();
            $pdf = PDF::loadView('casual_report_lm.proforma', compact('staffing_invoice','owner','pay_method','remark','date_invo','date_due'));
            return $pdf->stream($staffing_invoice[0]->invoice_number.'_proforma.pdf');   
        }
       

       

        
    }
    public function apiCloseStaffing(){
        $staffing_get=DB::table('staffing')
        ->join('company_infor','staffing.company_id','=','company_infor.id')
      
        ->select('staffing.*','company_infor.name','company_infor.tin_number','company_infor.phone','company_infor.location')
        ->where('invoice_status','closed')
        ->get();
        
        return Datatables::of($staffing_get)
            ->addColumn('action', function($staffing_get){
                if(Auth::user()->name=="User"){
                
                        return '
                        <div class="btn-group" style="width:100%">
                           <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                               Action <span class="caret"></span>
                           </button>
                           <ul class="dropdown-menu">
                           <li>
                               <li><a href="exportStaffing/'.$staffing_get->id .'" class="btn btn-info btn-xs invoice_print" style="color:white" ><i class="fas fa-file-invoice" style="color:white"></i>Invoice</a></li>

                               <li><a href="#" class="btn btn-info btn-xs view" style="color:white" id="'.$staffing_get->id.'" ><i class="glyphicon glyphicon-eye-open" style="color:white"></i> Show</a></li>
                     
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
                       <li>

                           <li><a href="exportStaffing/'.$staffing_get->id .'" class="btn btn-info btn-xs invoice_print" style="color:white" ><i class="fas fa-file-invoice" style="color:white"></i>Invoice</a></li>
                           <li><a href="#" class="btn btn-info btn-xs view" style="color:white" id="'.$staffing_get->id.'" ><i class="glyphicon glyphicon-eye-open" style="color:white"></i> Show</a></li>
 
                       </ul>
                   </div> ';
                }
                if(Auth::user()->name=="Superadministrator"){
                    return '
                    <div class="btn-group" style="width:100%">
                       <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           Action <span class="caret"></span>
                       </button>
                       <ul class="dropdown-menu">
                       <li>
                         
                           <li><a href="exportStaffing/'.$staffing_get->id .'" class="btn btn-info btn-xs invoice_print" style="color:white" ><i class="fas fa-file-invoice" style="color:white"></i>Invoice</a></li>
                           <li><a href="#" class="btn btn-info btn-xs view" style="color:white" id="'.$staffing_get->id.'" ><i class="glyphicon glyphicon-eye-open" style="color:white"></i> Show</a></li>

                       </ul>
                   </div> ';
                }
              
            })
            ->addColumn('newaction', function($staffing_get){
                if(Auth::user()->name=="User"){
                
                        return '
                        <div class="btn-group" style="width:100%">
                           <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                               Action <span class="caret"></span>
                           </button>
                           <ul class="dropdown-menu">
                           <li>
                          
                               <li><a href="exportProforma_lm/'.$staffing_get->id .'" class="btn btn-warning btn-xs pro_invoice" style="color:white" ><i class="fas fa-file-invoice" style="color:white"></i>Proforma Invoice</a></li>
                               <li><a href="exportStaffing_lm/'.$staffing_get->id .'" class="btn btn-info btn-xs invoice_print" style="color:white" ><i class="fas fa-file-invoice" style="color:white"></i>Invoice</a></li>
                           
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
                       <li>
                       <li><a href="#" class="btn btn-primary btn-xs prove" style="color:white" id="'.$staffing_get->id.'" ><i class="fas fa-check" style="color:white"></i>Prove invoice</a></li>
                           <li><a href="exportProforma_lm/'.$staffing_get->id .'" class="btn btn-warning btn-xs pro_invoice" style="color:white" ><i class="fas fa-file-invoice" style="color:white"></i>Proforma Invoice</a></li>
                           <li><a href="exportStaffing_lm/'.$staffing_get->id .'" class="btn btn-info btn-xs invoice_print" style="color:white" ><i class="fas fa-file-invoice" style="color:white"></i>Invoice</a></li>

                       </ul>
                   </div> ';
                }
                if(Auth::user()->name=="Superadministrator"){
                    return '
                    <div class="btn-group" style="width:100%">
                       <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           Action <span class="caret"></span>
                       </button>
                       <ul class="dropdown-menu">
                       <li>
                           <li><a href="exportProforma_lm/'.$staffing_get->id .'" class="btn btn-warning btn-xs pro_invoice" style="color:white" ><i class="fas fa-file-invoice" style="color:white"></i>Proforma Invoice</a></li>
                           <li><a href="exportStaffing_lm/'.$staffing_get->id .'" class="btn btn-info btn-xs invoice_print" style="color:white" ><i class="fas fa-file-invoice" style="color:white"></i>Invoice</a></li>
                          
                       </ul>
                   </div> ';
                }
              
            }
            )
      ->rawColumns(['category_name','show_photo','action'])
      ->editColumn('invoice_status', function($staffing_get){
        if($staffing_get->invoice_status=='waiting'){
            return '<div class="text-waiting">'.$staffing_get->invoice_status.'</div>';
        }
        elseif($staffing_get->invoice_status=='draft'){
            return '<div class="text-draft">'.$staffing_get->invoice_status.'</div>';
        }
        elseif($staffing_get->invoice_status=='pending'){
            return '<div class="text-pending">'.$staffing_get->invoice_status.'</div>';
        }
        elseif($staffing_get->invoice_status=='open'){
            return '<div class="text-open">'.$staffing_get->invoice_status.'</div>';
        }
        return $staffing_get->invoice_status;
    })
    ->editColumn('payment_status', function($staffing_get){
        if($staffing_get->payment_status=='Not paid'){
            return '<div class="not-paid">'.$staffing_get->payment_status.'</div>';
        }
        elseif($staffing_get->payment_status=='partial paid'){
            return '<div class="partial-paid">'.$staffing_get->payment_status.'</div>';
        }
        return $staffing_get->payment_status;
    })
  
    ->editColumn('amount_paid', function($staffing_get){
        if($staffing_get->amount_paid==0){
            return '<div class="not-paid">'.$staffing_get->amount_paid.'</div>';
        }
        elseif($staffing_get->amount_paid>0){
            return '<div class="partial-paid">'.$staffing_get->amount_paid.'</div>';
        }
        return $staffing_get->amount_paid;
    })
    ->editColumn('amount_due', function($staffing_get){
        if($staffing_get->amount_due==0){
            return '<div class="amount-due">'.$staffing_get->amount_due.'</div>';
        }
        return '<div class="partial-due">'.$staffing_get->amount_due.'</div>';
    })
    ->editColumn('due_date', function($staffing_get){
      
        return '<div class="not-paid">'.$staffing_get->due_date.'</div>';
    })
    ->editColumn('start_date', function($staffing_get){
     
        return '<div class="text-waiting">'.$staffing_get->start_date.'</div>';
    })
    ->editColumn('vat', function($staffing_get){
     
        return '<div class="text-waiting1">'.$staffing_get->vat.'</div>';
    })
    ->editColumn('discount', function($staffing_get){
     
        return '<div class="text-waiting1">'.$staffing_get->discount.'</div>';
    })
    ->editColumn('name', function($staffing_get){
     
        return '<div class="text-waiting1">'.$staffing_get->name.'</div>';
    })
    ->editColumn('date_in', function($staffing_get){
     
        return '<div class="text-waiting1">'.$staffing_get->date_in.'</div>';
    })
    ->editColumn('sub_total', function($staffing_get){
     
        return '<div class="text-waiting1">'.$staffing_get->sub_total.'</div>';
    })
    ->editColumn('invoice_number', function($staffing_get){
     
        return '<div class="text-waiting1">'.$staffing_get->invoice_number.'</div>';
    })
    ->editColumn('net_total', function($staffing_get){
     
        return '<div class="text-waiting1">'.$staffing_get->net_total.'</div>';
    })



    ->escapeColumns([])
      ->make(true);
        }
}
