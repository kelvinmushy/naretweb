<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use App\Http\Models\CompanyInfModel;
use Carbon\Carbon;
use Auth ;
use DOMDocument;
use PDF;
class CompanyFumController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $company_infor=DB::table('company_infor')
        ->where('staff_type','=','fumigation')
        ->get();
        return view('fumigation.campony.index',compact('company_infor'));
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
            'name'     => 'required',
            'tin_number'     => 'required',
            'phone'          => 'required',
            'email'         => 'required',
            'location'            => 'required',
        
        ]);
        $form_datas = array(
            'name' => $request->name,
            'tin_number' => $request->tin_number,
            'phone' => $request->phone,
            'email' => $request->email,
            'location'  =>$request->location,
            'staff_type'  =>$request->staff_type,
            'vrn'  =>$request->vrn,
            'status'  =>$request->status,
            'adds'  =>$request->user,
     
    
        );
        DB::table('company_infor')->insert($form_datas);
        return response()->json([
            'success'    => true,
            'message'    => 'Company Information Added'
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
        if(request()->ajax()){
      
            $data =DB::table('company_infor')->find($id);
            return response()->json(['data' => $data]);   
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
        //
        $this->validate($request, [
            'name'     => 'required',
            'tin_number'     => 'required',
            'phone'          => 'required',
            'email'         => 'required',
            'location'            => 'required',
        
        ]);
        $form_datas = array(
            'name' => $request->name,
            'tin_number' => $request->tin_number,
            'vrn' => $request->vrn,
            'phone' => $request->phone,
            'email' => $request->email,
            'location'  =>$request->location,
            'adds'  =>$request->user,
            'status'  =>$request->status,
     
    
        );
        DB::table('company_infor')->where('id','=',$id)->update($form_datas);
        return response()->json([
            'success'    => true,
            'message'    => 'Company Information Edited'
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
        DB::table('company_infor')->where('id', '=', $id)->delete();

        return response()->json([
            'success'    => true,
            'message'    => 'Comapny information Deleted'
        ]);
    }
    public  function apiCompany_info(){
        $company_infor=DB::table('company_infor')
        ->where('staff_type','=','fumigation')
        ->get();
       
        return Datatables::of($company_infor)
          
            ->addColumn('action', function($company_infor){
                return
                    '<a onclick="editForm('. $company_infor->id .')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' .
                    '<a href="view_company_fumigation/'.$company_infor->id.'" class="btn btn-success btn-xs"><i class="glyphicon glyphicon-eye-open"></i>Show</a> ' .
                    '<a onclick="deleteData('. $company_infor->id .')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
            })
            ->rawColumns(['category_name','show_photo','action'])->make(true);
    }

  public function  view_company_fumigation($id){
    $closed_invoice=DB::table('invoice_fumigation')->join('company_infor','invoice_fumigation.company_id','=','company_infor.id')
        ->select('invoice_fumigation.*','company_infor.name')
        ->where('company_infor.id',$id)
        //->where('invoice_status','=',$status)
        ->get();
        if($closed_invoice->isEmpty()) {
            return back()->withErrors(['msg', 'The Message']);
            }
            else{
              return view('fumigation.company_details',compact('closed_invoice'));
            }
  
      }

    public function exportCustomerInvoice(Request $request)
    {

       $paid_status=$request->paid_status;
       $id=$request->id;
       $startDate=$request->from;
       $endDate=$request->to;
       if($paid_status=="all"){
        $invoice_fumigation_invoice = DB::table('invoice_fumigation')
        ->join('company_infor','company_infor.id','=','invoice_fumigation.company_id')
        ->select('invoice_fumigation.*','company_infor.*')
        ->where('invoice_fumigation.company_id','=',$id)
        ->whereBetween('invoice_fumigation.date_in', [$startDate, $endDate])
        ->get();
         }
         else{
            $invoice_fumigation_invoice = DB::table('invoice_fumigation')
            ->join('company_infor','company_infor.id','=','invoice_fumigation.company_id')
            ->select('invoice_fumigation.*','company_infor.*')
            ->where('invoice_fumigation.company_id','=',$id)
            ->where('invoice_fumigation.payment_status','=',$paid_status)
            ->whereBetween('invoice_fumigation.date_in', [$startDate, $endDate])
            ->get();
         }
       
       if($invoice_fumigation_invoice->isEmpty()) {
        return back()->withErrors(['msg', 'The Message']);
        }
        else{
          $pdf = PDF::loadView('fum_report.grouped_report', compact('invoice_fumigation_invoice'));
        return $pdf->stream($invoice_fumigation_invoice[0]->invoice_number.'_invoice.pdf');   
        }
          
         
    }
}
