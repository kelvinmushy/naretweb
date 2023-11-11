<?php

namespace App\Http\Controllers;

use App\Exports\ExportSuppliers;
use App\Imports\SuppliersImport;
use App\Supplier;
use Excel;
use Illuminate\Http\Request;
use PDF;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Facades\DB;

class SupplierFumController extends Controller {
	public function __construct() {
		
	}
	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index() {
		$suppliers =DB::table('suppliers')
		->where('status','=','active')
		->where('staff_type','=','fumigation')
		->get();
		return view('suppliers_fum.index');
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function create() {
		//
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(Request $request) {
		$this->validate($request, [
			'name' => 'required',
			'address' => 'required',
			'email' => 'required',
			'phone' => 'required',
		]);
          $formdata=([
			'name' => $request->name,
            'address' => $request->address,
            'email' => $request->email,
            'phone' => $request->phone,
			'tin_number' => $request->tin_number,
			'staff_type' => $request->staff_type,
			'vrn' => $request->vrn,
			'status' => $request->status,
		  ]);
		  DB::table('suppliers')->insert($formdata);

		return response()->json([
			'success' => true,
			'message' => 'Suppliers Created',
		]);

	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function show($id) {
		//
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function edit($id) {
		if(request()->ajax()){
         
            $data=DB::table('suppliers')->find($id);
           
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
	public function update(Request $request, $id) {
		$this->validate($request, [
			'name' => 'required',
			'address' => 'required',
			'email' => 'required|unique:suppliers,email,'. $id .'|max:255',
			'phone' => 'required',
		]);
          $formdata=([
			'name' => $request->name,
            'address' => $request->address,
            'email' => $request->email,
            'phone' => $request->phone,
			'tin_number' => $request->tin_number,
			'vrn' => $request->vrn,
			'status' => $request->status,
		  ]);
       DB::table('suppliers')->where('id','=',$id)->update($formdata);
		return response()->json([
			'success' => true,
			'message' => 'Supplier Updated',
		]);
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function destroy($id) {
	
    
        DB::table('suppliers')->where('id', '=', $id)->delete();

		return response()->json([
			'success' => true,
			'message' => 'Supplier Delete',
		]);
	}

	public function apiSuppliers() {
		$suppliers =DB::table('suppliers')
		                ->where('staff_type','=','fumigation')
						->get();

		return Datatables::of($suppliers)
			->addColumn('action', function ($suppliers) {
				return '<a href="#" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-eye-open"></i> Show</a> ' .
				'<a onclick="editForm(' . $suppliers->id . ')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' .
				'<a onclick="deleteData(' . $suppliers->id . ')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
			})
			->rawColumns(['action'])->make(true);
	}

	public function ImportExcel(Request $request) {
		//Validasi
		$this->validate($request, [
			'file' => 'required|mimes:xls,xlsx',
		]);

		if ($request->hasFile('file')) {
			//UPLOAD FILE
			$file = $request->file('file'); //GET FILE
			Excel::import(new SuppliersImport, $file); //IMPORT FILE
			return redirect()->back()->with(['success' => 'Upload file data suppliers !']);
		}

		return redirect()->back()->with(['error' => 'Please choose file before!']);
	}

	public function exportSuppliersAll() {
		$suppliers = Supplier::all();
		$pdf = PDF::loadView('suppliers.SuppliersAllPDF', compact('suppliers'));
		return $pdf->download('suppliers.pdf');
	}

	public function exportExcel() {
		return (new ExportSuppliers)->download('suppliers.xlsx');
	}
}
