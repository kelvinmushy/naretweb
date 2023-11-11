<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Facades\DB;
class CompanyProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('cprofile.index');
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
            'location'    => 'required',
            'email'     => 'required|unique:customers',
            'phone'   => 'required',
        ]);
        $formdata=array(
            'name' => $request->name,
            'location' => $request->location,
            'tin_number' => $request->tin_number,
            'email' => $request->email,
            'phone' => $request->phone,
           
        );
          DB::table('owner')->insert($formdata);

        return response()->json([
            'success'    => true,
            'message'    => 'Profile Created'
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
         
            $data=DB::table('owner')->find($id);
           
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
      
      $this->validate($request, [
        'name'      => 'required',
        'location'    => 'required',
        'email'     => 'required|unique:customers',
        'phone'   => 'required',
    ]);
    $formdata=array(
        'name' => $request->name,
        'location' => $request->location,
        'tin_number' => $request->tin_number,
        'email' => $request->email,
        'phone' => $request->phone,
       
    );
        DB::table('owner')->where('id','=',$id)->update($formdata);
        return response()->json([
            'success'    => true,
            'message'    => 'Details Updated'
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
        DB::table('owner')->where('id', '=', $id)->delete();

        return response()->json([
            'success'    => true,
            'message'    => 'Company Profile Deleted'
        ]);
    }
    public function apiProfile()
    {
        $owner= DB::table('owner')->get();

        return Datatables::of($owner)
            ->addColumn('action', function($owner){
                return '<a href="#" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-eye-open"></i> Show</a> ' .
                    '<a onclick="editForm('. $owner->id .')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' .
                    '<a onclick="deleteData('. $owner->id .')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
            })
            ->rawColumns(['action'])->make(true);
    }
}
