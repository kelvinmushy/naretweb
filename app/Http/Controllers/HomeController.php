<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Models\ProductModel;
use App\Http\Models\ProductInModel;
use App\Http\Models\ProductOutModel;
use App\Http\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {     

         
        $date=Carbon::now()->format('Y-m-d');
        $stock=DB::table('products')
                   ->sum('qty');
        $product_out=DB::table('product_out')
                   ->sum('qty');
         $income=DB::table('account_staff')
                   ->sum('account_balance');
        $product_in=DB::table('product_in')
                   ->sum('qty');
        $pin_count=DB::table('product_in')->sum('tbags');
        $sum_sales=DB::table('product_out')->sum('tprice');
        $sum_purchase=DB::table('product_in')->sum('tprice');
      
        $user_count=DB::table('users')->count();
        //incomes will be here
    
        //today income
        $today_income=DB::table('product_out')
                     ->where('created_at','=',$date)
                    ->sum('tprice');

        $get_profit=$sum_sales-$sum_purchase;
        $sum_expensive=DB::table('expensive_staff')
        ->where('staff_type','=','asali')
        ->sum('amount');
        $sum_today_expensive=DB::table('expensive_staff')
        ->where('created_at','=',$date)
        ->where('staff_type','=','asali')
        ->sum('amount');
     
        return view('home',compact('product_out','income','product_in','stock','today_income','sum_expensive','sum_today_expensive','pin_count','sum_purchase','sum_sales','get_profit','user_count'));
    }
       
}
