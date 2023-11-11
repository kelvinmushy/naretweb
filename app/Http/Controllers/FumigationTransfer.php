<?php

namespace App\Http\Controllers;
use Yajra\DataTables\DataTables;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class FumigationTransfer extends Controller
{  
   
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('fumigation.transfer.index');
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
          
         $get_money=DB::table('account_staff')
                    ->where('staff_type','=','staffing')
                    ->where('id','=',$request->account_id)
                    ->get();
         $bal=$get_money[0]->account_balance;
         $to_where=$get_money[0]->account_name;
      
         $sum=$bal+$request->amount1;
         $created_at=Carbon::now()->format('Y-m-d');
            $form_data = array(
                'amount'=>$request->amount1,
                'account_id'=>$request->accounts_id,
                'created_at'=>$created_at,
                'staff_type'=>$request->staffs_type,
                'to_where'=>$to_where,  
            );

        $update_balance=array(
            'account_balance'=>$sum,
        );
        $get_balance=DB::table('account_staff')->where('id','=',$request->account_id)->update($update_balance);
        $form_update=array(
            'account_balance'=>$request->remain
        );
        $get_balance=DB::table('account_staff')->where('id','=',$request->accounts_id)->update($form_update);
        DB::table('transfer')->insert($form_data);
        return response()->json([
            'success' => true,
            'message' => 'Ammont Transfer Successful',
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
        DB::table('transfer')->where('id', '=', $id)->delete();
        return response()->json([
          'success'    => true,
           'message'    => 'Trannsfer History Deleted'
       ]);
    }
    public function apiTransfer(){
  $transfer=DB::table('transfer')
    ->join('account_staff','account_staff.id','=','transfer.account_id')
    ->where('transfer.staff_type','=','fumigation')
    ->select('transfer.*','account_staff.account_name','account_staff.account_group')
  
    // ->where('account_staff.staff_type','=','staffing')
    ->get();
     return Datatables::of($transfer)
        ->addColumn('action', function($transfer){
            return '<a onclick="deleteData('.$transfer->id .')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
               
        })
        ->rawColumns(['category_name','show_photo','action'])->make(true);
}

}