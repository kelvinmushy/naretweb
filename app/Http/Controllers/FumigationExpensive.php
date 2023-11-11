<?php
namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use Carbon\Carbon;
use PDF;
use App\Http\Models\CompanyInfModel;

class FumigationExpensive extends Controller
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
                ->where('status','=','active')
                ->get(); 
        return view('fumigation.expensive.index',compact('account'));
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
            'account_id' => 'required',
            'description' => 'required',
            'amount' => 'required',
         
        ]);
        $date=Carbon::now()->format('Y-m-d');
            $account_balance='0';
            $form_data = array(
                'account_id'=>$request->account_id,
                'description'=>$request->description,
                'amount' =>$request->amount,
                'staff_type' =>$request->staff_type,
                'created_at'=>$date,
                'adds'=>$request->user,
          
            );
        $get_balance=DB::table('account_staff')
                     ->where('id','=',$request->account_id)
                     ->get();
         $balance=$get_balance[0]->account_balance;

         if($balance=="0"){
            return response()->json([
                'success' => true,
                'message' => 'Please Account has no money',
            ]); 
         }
         if($request->amount>$balance){
            return response()->json([
                'success' => true,
                'message' => 'Please Account has no Enough money',
            ]); 
         }
          $remain_money=$balance-$request->amount;
          $remain_form=array(
              'account_balance'=>$remain_money,
          );

          DB::table('account_staff')
                     ->where('id','=',$request->account_id)
                     ->update($remain_form);


        DB::table('expensive_staff')->insert($form_data);
        return response()->json([
            'success' => true,
            'message' => 'Expensive Created',
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
           //
           if(request()->ajax()){
            $data =DB::table('expensive_staff')->find($id);
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
            'account_type' => 'required', 
        ]);

            $updated_at= Carbon::now();
    
            $form_data = array(

                'account_name'=>$request->account_name,
                'account_group'=>$request->account_group,
                'account_type' =>$request->account_type,
            
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
            //
           $get_amount= DB::table('expensive_staff')->where('id','=',$id)->get();
             $amount=$get_amount[0]->amount;
           $account_id=$get_amount[0]->account_id;

           $get_account_balance_sum=DB::table('account_staff')
           ->where('id','=',$account_id)
           ->sum('account_balance');
           $remain_balance=$get_account_balance_sum-$amount;

           $remain_form=array(
               'account_balance'=>$remain_balance,
           );
           DB::table('account_staff')->where('id', '=', $account_id)
           ->update($remain_form);
            DB::table('expensive_staff')->where('id', '=', $id)->delete();
            return response()->json([
                'success' => true,
                'message' => 'Expensive  Deleted'
            ]);
    }
    public function apiFumExpensive() {
        $account = DB::table('account_staff')
         ->join('expensive_staff','account_staff.id','=','expensive_staff.account_id')
         ->where('expensive_staff.staff_type','=','fumigation')
         ->select('expensive_staff.*','account_staff.account_name')
         ->get();

        return Datatables::of($account)
            ->addColumn('action', function ($account) {
                return  '<a onclick="deleteData(' . $account->id . ')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
            })
            ->rawColumns(['action'])->make(true);
    }
}
