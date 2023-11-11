<?php

namespace App\Http\Controllers;
use Yajra\DataTables\DataTables;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class AccountController extends Controller
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
        ->where('staff_type','=','staffing')
        ->get();
        return view('casual.account.index',compact('account'));
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
            'account_name' => 'required',
            // 'account_group' => 'required',
            'staff_type' => 'required',
        ]);

            $created_at= Carbon::now();
            $account_balance='0';
            $form_data = array(
                'account_name'=>$request->account_name,
                // 'account_group'=>$request->account_group,
                'staff_type'=>$request->staff_type,
                'account_balance' =>$account_balance,
                'created_at'=>$created_at,
                'status'=>$request->status,
          
            );
        DB::table('account_staff')->insert($form_data);

        return response()->json([
            'success' => true,
            'message' => 'Account Created',
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
         $this->validate($request, [
            'account_name' => 'required',
            // 'account_group' => 'required',
          
        ]);

            $updated_at= Carbon::now();
    
            $form_data = array(

                'account_name'=>$request->account_name,
                // 'account_group'=>$request->account_group,
                 'updated_at'=>$updated_at,
                 'status'=>$request->status,
          
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
        DB::table('account_staff')->where('id', '=', $id)->delete();
		return response()->json([
			'success' => true,
			'message' => 'Account Delete',
		]);

      
        
    }
    public function accountApi() {
        $account = DB::table('account_staff')
        ->where('staff_type','=','staffing')
         ->get();

        return Datatables::of($account)
             ->editColumn('action', function($account){
              if($account->account_group=="Income"){
                return
                '<a onclick="editForm(' . $account->id . ')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' .
                '<a onclick="deleteData(' . $account->id . ')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i>activate&deactivate</a>'.
                '<a href="#" class="btn btn-success btn-xs transfer" style="color:white" id="'.$account->id.'"><i class="fa fa-money" style="color:white"></i>Transfer Money</a>';
              }
              else{
                return
                '<a onclick="editForm(' . $account->id . ')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' .
                '<a onclick="deleteData(' . $account->id . ')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i>delete</a>'.
                '<a href="#" class="btn btn-warning btn-xs deposite" style="color:white" id="'.$account->id.'"><i class="fa fa-money" style="color:white"></i>Deposite</a>';
                
              }
               
            })
            ->rawColumns(['action'])
            ->escapeColumns([])
            ->make(true);
    }
}
