<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Facades\DB;
class EquipmentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view ('fumigation.equipment.equipment');
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
            'name'      => 'required',
            'qty'    => 'required',
          
        ]);
        $formdata=array(
            'name' => $request->name,
            'qty' => $request->qty,
            
        );
          DB::table('equipment')->insert($formdata);

        return response()->json([
            'success'    => true,
            'message'    => 'Equipment Added'
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
         
            $data=DB::table('equipment')->find($id);
           
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
            'name'      => 'required',
            'qty'    => 'required',
          
        ]);
        $formdata=array(
            'name' => $request->name,
            'qty' => $request->qty,
            
        );

        DB::table('equipment')->where('id','=',$id)->update($formdata);
        return response()->json([
            'success'    => true,
            'message'    => 'Customer Updated'
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
        DB::table('equipment')->where('id', '=', $id)->delete();

        return response()->json([
            'success'    => true,
            'message'    => 'Customer Delete'
        ]);
    }
    
    public function apiEquipment(){
        $equipment=DB::table('equipment')
        ->get();
       
        return Datatables::of($equipment)
          
            ->addColumn('action', function($equipment){
                return '<a href="#" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-eye-open"></i> Show</a> ' .
                    '<a onclick="editForm('. $equipment->id .')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' .
                    '<a onclick="deleteData('. $equipment->id .')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
            })
            ->rawColumns(['category_name','show_photo','action'])->make(true);


    }
}
