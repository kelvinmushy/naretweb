<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Models\ProductModel;
use App\Http\Models\ProductInModel;
use App\Http\Models\ProductOutModel;
use App\Http\Models\User;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
class HomeAsaliController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
   

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $date=Carbon::now()->format('Y-m-d');
        $sum_stock=DB::table('products')->sum('tlitre');
        $pin_count=DB::table('product_in')->sum('tlitre');
        $sum_sales=DB::table('product_out')->sum('tprice');
        $sum_purchase=DB::table('product_in')->sum('tprice');
        $pout_count=DB::table('product_out')->sum('tlitre');
        $user_count=DB::table('users')->count();
        //incomes will be here
        $sum_income=DB::table('account_staff')
                    ->where('staff_type','=','asali')
                    ->sum('account_balance');
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
     
        return view('homeAsali',compact('sum_income','today_income','sum_expensive','sum_today_expensive','pout_count','pin_count','sum_stock','sum_purchase','sum_sales','get_profit','user_count'));
    }
}
