<?php

namespace App\Http\Controllers;
use Yajra\DataTables\DataTables;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class FumigationAccount extends Controller
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
        ->where('account_group','=','Expenses')
        ->where('staff_type','=','staffing')
        ->get();
        return view('fumigation.account.index',compact('account'));
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
            // 'account_type' => 'required', 
        ]);

            $created_at=Carbon::now()->format('Y-m-d').'%';
            $account_balance='0';
            $form_data = array(
                'account_name'=>$request->account_name,
                // 'account_group'=>$request->account_group,
                // 'account_type' =>$request->account_type,
                'account_balance' =>$account_balance,
                'staff_type' =>$request->staff_type,
                'status' =>'active',
                'created_at'=>$created_at,
          
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
             'account_group' => 'required',
            // 'account_type' => 'required', 
        ]);

            $updated_at= Carbon::now();
    
            $form_data = array(

                'account_name'=>$request->account_name,
               'account_group'=>$request->account_group,
               'staff_type'=>$request->staff_type,
                // 'account_type' =>$request->account_type,
            
               'updated_at'=>$updated_at,
          
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
        //
        $update_status_active=array(
            'status'=>'inactive',
        );
        $update_status_inactive=array(
            'status'=>'active',
        );
        $get_status=DB::table('account_staff')
        ->where('id', '=', $id)
        ->select('status')->get();
        $status=$get_status[0]->status;
        if($status=='active'){
            DB::table('account_staff')
            ->where('id', '=', $id)
            ->update($update_status_active);
        }

        if($status=='inactive'){
            DB::table('account_staff')
            ->where('id', '=', $id)
            ->update($update_status_inactive);
        }


        return response()->json([
            'success' => true,
            'message' => 'Account Deleted'
        ]);
        
    }
    public function apiFumigation() {
        $account = DB::table('account_staff')
                    //   ->where('account_group',['Income'])
                    //   ->where('staff_type','=','fumigation')
                      ->get();

        return Datatables::of($account)
        ->editColumn('action', function($account){
            
        })
              ->escapeColumns([])
            ->rawColumns(['action'])->make(true);
    }
}
//         return
//'<a onclick="editForm(' . $account->id . ')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' .
//'<a onclick="deleteData(' . $account->id . ')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i>activate&deactivate</a>'.
