<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Facades\DB;

class RemarkController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('remarks.index');
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
          $this->validate($request ,[
            'remarks' => 'required|string',
        
            
        ]);
        $formdata=array(
            'remarks' => $request->remarks,
          

        );
        
        DB::table('remark')->insert($formdata);

        return response()->json([
            'success' => true,
            'message' => 'Remark Added'
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
      
            $data =DB::table('remark')->find($id);
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
            'remarks' => 'required|string',
        
            
        ]);
        $formdata=array(
            'remarks' => $request->remarks,
          

        );
        
        DB::table('remark')->where('id','=',$id)->update($formdata);

        return response()->json([
            'success' => true,
            'message' => 'Remark updated'
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
        DB::table('remark')->where('id', '=', $id)->delete();

        return response()->json([
            'success'    => true,
            'message'    => 'remarks Deleted'
        ]);
    }
    public function apiRemark(){
        $remark=DB::table('remark')
        ->get();
       
        return Datatables::of($remark)
          
            ->addColumn('action', function($remark){
                return 
                    '<a onclick="editForm('. $remark->id .')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' .
                    '<a onclick="deleteData('. $remark->id .')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
            })
            ->rawColumns(['category_name','show_photo','action'])->make(true);
    
        }
}
