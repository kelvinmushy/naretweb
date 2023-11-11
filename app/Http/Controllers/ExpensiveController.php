<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Facades\DB;
class ExpensiveController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('furm.expensive.expensive');
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
        $this->validate($request ,[
            'name'       => 'required|string',
            'cost'       => 'required',
            'date_exp'   => 'required',
            
        ]);
        $formdata=array(
            'name' => $request->name,
            'cost' => $request->cost,
            'date_exp' => $request->date_exp,
            'adds'=>$request->user,

        );

       DB::table('expensive')->insert($formdata);

        return response()->json([
            'success' => true,
            'message' => 'Products Created'
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
        if(request()->ajax()){
      
            $data =DB::table('expensive')->find($id);
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
        $this->validate($request ,[
            'name' => 'required|string',
            'cost'        => 'required',
            'date_exp'          => 'required',
            
        ]);
        
        $formdata=array(
            'name' => $request->name,
            'cost' => $request->cost,
            'date_exp' => $request->date_exp,

        );

        DB::table('expensive')->where('id','=',$id)->update($formdata);
        return response()->json([
            'success'    => true,
            'message'    => 'Expensive Updated'
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
        
        DB::table('expensive')->where('id', '=', $id)->delete();

        return response()->json([
            'success'    => true,
            'message'    => 'Expensive Deleted'
        ]);
    }

    public function apiExpensive(){
        $expensive=DB::table('expensive')
        ->get();
       
        return Datatables::of($expensive)
          
            ->addColumn('action', function($expensive){
                return '<a href="#" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-eye-open"></i> Show</a> ' .
                    '<a onclick="editForm('. $expensive->id .')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' .
                    '<a onclick="deleteData('. $expensive->id .')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
            })
            ->rawColumns(['category_name','show_photo','action'])->make(true);


    }
}
