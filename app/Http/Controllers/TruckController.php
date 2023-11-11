<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use App\Http\Models\CompanyInfModel;
use App\Http\Models\TruckModel;
use Illuminate\Support\Facades\DB;
class TruckController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $comp=DB::table('company_infor')->get();
        return view('casual.truck.index',compact('comp'));
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
            'company_id'     => 'required',
            'truck_name'          => 'required',
            'truck_number'         => 'required',
  
        
        ]);
        $form_datas = array(
            'company_id' => $request->company_id,
            'truck_name' => $request->truck_name,
            'truck_number' => $request->truck_number,
    
        );
        DB::table('truck')->insert($form_datas);
        return response()->json([
            'success'    => true,
            'message'    => 'Truck Information Added'
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
      
            $data =DB::table('truck')->find($id);
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
            'company_id'     => 'required',
            'truck_name'          => 'required',
            'truck_number'         => 'required',
  
        
        ]);
        $form_datas = array(
            'company_id' => $request->company_id,
            'truck_name)' => $request->truck_name,
            'truck_number' => $request->truck_number,
         
     
    
        );
        DB::table('truck')->where('id','=',$id)->update($form_datas);
        return response()->json([
            'success'    => true,
            'message'    => 'Truck Information Edited'
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
    }
    public function apiTruck(){
        $truck=DB::table('company_infor')->join('truck','truck.company_id','=','company_infor.id')
        ->select('truck.*','company_infor.name')
        ->get();

        return Datatables::of($truck)
            ->addColumn('name', function ($truck){
                return $truck->name;
            })

            ->addColumn('action', function($truck){
                return '<a href="#" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-eye-open"></i> Show</a> ' .
                    '<a onclick="editForm('. $truck->id .')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' .
                    '<a onclick="deleteData('. $truck->id .')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a> ';
            })
            ->rawColumns(['products_name','supplier_name','action'])->make(true);

    }
   
}
