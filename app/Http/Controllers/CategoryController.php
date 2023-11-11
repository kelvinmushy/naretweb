<?php

namespace App\Http\Controllers;

use App\Category;
use App\Exports\ExportCategories;
use Illuminate\Http\Request;
use Yajra\DataTables\Datatables;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;
use App\Models\CategoryModal;
use Illuminate\Support\Facades\DB;
use PDF;

class CategoryController extends Controller
{
    public function __construct()
    {
       
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
          $category=DB::table('categories')->get();
         return view('categories.index',['category'=>$category]);
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
        $this->validate(request(), [
            'cat_name' => 'required|unique:categories|max:255'
 
            ]);
    
        $form_data = array(
            'cat_name' => $request->cat_name,
    
        );

        DB::table('categories')->insert($form_data);
        return response()->json([
           'success'    => true,
           'message'    => 'Categories Created'
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
         
            $data=DB::table('categories')->find($id);
           
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
            'cat_name' => 'required|unique:categories,cat_name,'. $id .'|max:255',
        ]);
        $formdata=array(
            'cat_name' => $request->cat_name,

        );
        $data= DB::table('categories')->where('id',$request->id)->update($formdata);

        return response()->json([
            'success'    => true,
            'message'    => 'Categories Update'
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
      
        DB::table('categories')->where('id', '=', $id)->delete();
        return response()->json([
            'success'    => true,
            'message'    => 'Categories Delete'
        ]);
    }

    public function apiCategories()
    {
        $categories = DB::table('categories')->get();

        return Datatables::of($categories)
            ->addColumn('action', function($categories){
                return '<a href="#" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-eye-open"></i> Show</a> ' .
                    '<a onclick="editForm('. $categories->id .')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' .
                    '<a onclick="deleteData('. $categories->id .')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
            })
            ->rawColumns(['action'])->make(true);
    }

    public function exportCategoriesAll()
    {
        $categories = Category::all();
        $pdf = PDF::loadView('categories.CategoriesAllPDF',compact('categories'));
        return $pdf->download('categories.pdf');
    }

    public function exportExcel()
    {
        return (new ExportCategories())->download('categories.xlsx');
    }
}
