<?php

namespace App\Http\Controllers;
use Yajra\DataTables\DataTables;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class AsaliDepositeController extends Controller
{
    
        /**
         * Display a listing of the resource.
         *
         * @return \Illuminate\Http\Response
         */
        public function index()
    
        {
            //
            return view('deposite.index');
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
                'amount' => 'required',
             
                'from_where' => 'required',
                'deposite_date' => 'required',
             
            ]);
                $created_at=Carbon::now()->format('Y-m-d').'%';
                $form_data = array(
                    'amount'=>$request->amount,
                    'account_id'=>$request->account_id,
                    'deposite_date'=>$request->deposite_date,
                    'staff_type'=>$request->staff_type,
                    'created_at'=>$created_at,
                    'from_where'=>$request->from_where,
                );
           $get_balance=DB::table('account_staff')->where('id','=',$request->account_id)->get();
           $balance=$get_balance[0]->account_balance;
           $sum_amount=$balance+$request->amount;
            $form_update=array(
                'account_balance'=>$sum_amount
            );
            $get_balance=DB::table('account_staff')->where('id','=',$request->account_id)->update($form_update);
            DB::table('deposite')->insert($form_data);
            return response()->json([
                'success' => true,
                'message' => 'Ammont Deposte Successful',
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
                $data =DB::table('account_staff')->find($id);
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
                 //
             //
             $this->validate($request, [
                'account_name' => 'required',
                'account_group' => 'required',
              
            ]);
    
                $updated_at= Carbon::now();
        
                $form_data = array(
    
                    'account_name'=>$request->account_name,
                    'account_group'=>$request->account_group,
                     'updated_at'=>$updated_at,
                     'status'=>'active',
              
                );
    
            DB::table('account_staff')->where('id','=',$id)->update($form_data);
            return response()->json([
                'success' => true,
                'message' => 'Account Updated',
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
            // //]
            // $get_deposite=DB::table('deposite')->where('id','=',$id);
            // $account_id=$get_deposite[0]->account_id;
    
            // $get_balance=DB::table('account_staff')->where('id','=',$account_id)
            //              ->get();
            //  $account_balance=$get_balance[0]->account_balance;
            //  $deposite_amount=$get_deposite[0]->amount;
    
            //  $normal_balance=$account_balance-$deposite_amount;
    
            //    $form_update=array(
            //      'account_balance'=>$normal_balance,
            //    );
            //   DB::table('account_staff')->where('id', '=',   $account_id)->update($form_update);
    
              DB::table('deposite')->where('id', '=', $id)->delete();
              return response()->json([
                'success'    => true,
                 'message'    => 'Deposite Deleted'
             ]);
        }
          /**
         * Remove the specified resource from storage.
         *
         * @param  int  $id
         * @return \Illuminate\Http\Response
         */
        public function check_account($id)
        {
            //
              if(request()->ajax()){
                $data =DB::table('account_staff')
                ->where('id','=',$id)
                ->get();
                $check=$data[0]->account_group;
                if($check=="Income"){
                    return response()->json(['data' => $check]); 
                }
                //  
               }
        }
          /**
         * Remove the specified resource from storage.
         *
         * @param  int  $id
         * @return \Illuminate\Http\Response
         */
        public function  check_balance($id)
        {
            //
              if(request()->ajax()){
                $data =DB::table('account_staff')
                ->where('id','=',$id)
                ->get();
                return response()->json(['data' => $data]); 
             
                //  
               }
        }
        public function asaliDepositeApi(){
            $pay_hist =DB::table('deposite')
            ->join('account_staff','account_staff.id','=','deposite.account_id')
            ->select('deposite.*','account_staff.account_name','account_staff.account_group')
         
            ->get();
             return Datatables::of($pay_hist)
                ->addColumn('action', function($pay_hist){
                    return '<a onclick="deleteData('.$pay_hist->id .')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
                       
                })
                ->rawColumns(['category_name','show_photo','action'])->make(true);
    
    }
     
    }
    