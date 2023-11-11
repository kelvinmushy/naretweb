@extends('layouts.casual_labour.master')

@section('top')
@endsection

@section('content')
@if(\Auth::user()->name=='User')
<!-- Small boxes (Stat box) -->
<div class="row">
 
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-green">
            <div class="inner">
            <p><strong>Customer(s)</strong></p>
                <h5><strong>{{$sum_customer}}</strong></h5>
            </div>
            <div class="icon">
                <i class="fa fa-list"></i>
            </div>
         
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-yellow">
            <div class="inner">
            <p><strong>Open Invoice(s)</strong></p>
                <h5>{{$invoice_open_count}}=:Tsh<strong>{{$invoice_open_sum}}</strong></h5>
            </div>
            <div class="icon">
                <i class="fa fa-cubes"></i>
            </div>
           
        </div>
    </div>
    <!-- ./col -->
 
    <div class="col-lg-3 col-xs-6">
<div class="small-box bg-teal">
            <div class="inner">
            <p><strong>Invoice Due to Pay</strong></p>
                <h5>{{$invoice_due_count}}=Tsh:<strong>{{$invoice_due}}</strong></h5>
            </div>
            <div class="icon">
                <i class="ion ion-stats-bars"></i>
            </div>
         
        </div>
        </div>
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-navy">
            <div class="inner">
                <p><strong>Pending Invoice(s)</strong></p>

                <h5>{{$invoice_pending_count}}Tsh:<strong>{{$invoice_pending_sum}}</strong></h5>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
        
        </div>
    </div>
    <!-- ./col -->
</div>



<div class="row">

    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-teal">
            <div class="inner">
            <p><strong>Invoice(s) Waiting</strong></p>
                <h5>{{$invoice_wait_count}}=Tsh:<strong>{{$invoice_wait_sum}}</strong></h5>
            </div>
            <div class="icon">
                <i class="ion ion-stats-bars"></i>
            </div>
         
        </div>
    </div>
 
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-gray">
            <div class="inner">
            <p><strong>Today Cloesed Invoice(s)</strong></p>
            <h5><strong>{{$invoice_dayclose_count}}</strong>-Tsh:{{$invoice_dayclose_sum}}</h5>
            </div>
            <div class="icon">
                <i class="fa fa-minus"></i>
            </div>
          
        </div>
    </div>
      <!-- ./col -->
      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-red">
            <div class="inner">
            <p><strong>Today Expenses</strong></p>
                <h5>Tsh:<strong>{{$sum_today_expensive}}</strong></h5>
            </div>
            <div class="icon">
                <i class="fa fa-users"></i>
            </div>
        </div>
    </div>
    <!-- ./col -->
    
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-teal">
            <div class="inner">
            <p><strong>Today Income</strong></p>
                <h5>Tsh:<strong>{{$invoice_today_pay}}</strong></h5>
            </div>
            <div class="icon">
                <i class="ion ion-stats-bars"></i>
            </div>
         
        </div>
    </div>
    <!-- ./col -->
       <!-- ./col -->
       <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-maroon">
            <!-- <div class="inner">
            <p><strong>Total Closed Invoice(s)</strong></p>
                <h3>-Tsh:<strong></strong></h3>
             
            </div>
            <div class="icon">
                <i class="fa fa-plus"></i>
            </div> -->
        </div>
    </div>
  
<!-- Small boxes (Stat box) -->
<div class="row">
  
</div>
<div class="row">
 
 
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <!-- <div class="small-box bg-gray">
            <div class="inner">
            <p><strong>Today Cloesed Invoice(s)</strong></p>
            <h3><strong>{{$invoice_dayclose_count}}</strong>-Tsh:{{$invoice_dayclose_sum}}</h3>
            </div>
            <div class="icon">
                <i class="fa fa-minus"></i>
            </div> -->
          
        </div>
    </div>
    <!-- ./col -->
       <!-- ./col -->
       <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-maroon">
            <!-- <div class="inner">
            <p><strong>Total Invoice(s)</strong></p>
                <h3>-Tsh:<strong></strong></h3>
             
            </div>
            <div class="icon">
                <i class="fa fa-plus"></i>
            </div> -->
        </div>
    </div>
    <!-- ./col -->
    <div id="container" class=" col-xs-6"></div>
</div>
@endif
@if(\Auth::user()->name=='Administrator')
<!-- Small boxes (Stat box) -->
<div class="row">
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-aqua">
            <div class="inner">
                <h3>Users</h3>

                <h5><strong>{{$sum_user}}</strong></h5>
            </div>
            <div class="icon">
                <i class="ion ion-person"></i>
            </div>
        
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-green">
            <div class="inner">
            <p><strong>Customer(s)</strong></p>
                <h5><strong>{{$sum_customer}}</strong></h5>
            </div>
            <div class="icon">
                <i class="fa fa-list"></i>
            </div>
         
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-yellow">
            <div class="inner">
            <p><strong>Open Invoice(s)</strong></p>
                <h5>{{$invoice_open_count}}=:Tsh<strong>{{$invoice_open_sum}}</strong></h5>
            </div>
            <div class="icon">
                <i class="fa fa-cubes"></i>
            </div>
           
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-red">
            <div class="inner">
            <p><strong>Closed Invoice(s)</strong></p>
                <h5>{{$close_invoice_count}}=Tsh:<strong>{{$close_invoice_sum}}</strong></h5>
            </div>
            <div class="icon">
                <i class="fa fa-users"></i>
            </div>
        </div>
    </div>
    <!-- ./col -->
</div>



<div class="row">
<div class="col-lg-3 col-xs-6">
<div class="small-box bg-teal">
            <div class="inner">
            <p><strong>Invoice Due to Pay</strong></p>
                <h5>{{$invoice_due_count}}=Tsh:<strong>{{$invoice_due}}</strong></h5>
            </div>
            <div class="icon">
                <i class="ion ion-stats-bars"></i>
            </div>
         
        </div>
        </div>
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-navy">
            <div class="inner">
                <p><strong>Pending Invoice(s)</strong></p>

                <h5>{{$invoice_pending_count}}Tsh:<strong>{{$invoice_pending_sum}}</strong></h5>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
        
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-teal">
            <div class="inner">
            <p><strong>Invoice(s) Waiting</strong></p>
                <h5>{{$invoice_wait_count}}=Tsh:<strong>{{$invoice_wait_sum}}</strong></h5>
            </div>
            <div class="icon">
                <i class="ion ion-stats-bars"></i>
            </div>
         
        </div>
    </div>
 
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-gray">
            <div class="inner">
            <p><strong>Today Cloesed Invoice(s)</strong></p>
            <h5><strong>{{$invoice_dayclose_count}}</strong>-Tsh:{{$invoice_dayclose_sum}}</h5>
            </div>
            <div class="icon">
                <i class="fa fa-minus"></i>
            </div>
          
        </div>
    </div>
    <!-- ./col -->
       <!-- ./col -->
       <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-maroon">
            <!-- <div class="inner">
            <p><strong>Total Closed Invoice(s)</strong></p>
                <h3>-Tsh:<strong></strong></h3>
             
            </div>
            <div class="icon">
                <i class="fa fa-plus"></i>
            </div> -->
        </div>
    </div>
    <!-- ./col -->
    <div id="container" class=" col-xs-6"></div>
</div>
<!-- Small boxes (Stat box) -->
<div class="row">
   
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-green">
            <div class="inner">
            <p><strong>Today Deposite(s)</strong></p>
                <h5>Tsh:<strong>{{$sum_today_deposite}}</strong></h5>
            </div>
            <div class="icon">
                <i class="fa fa-list"></i>
            </div>
         
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-yellow">
            <div class="inner">
            <p><strong>Expense</strong></p>
                <h5>Tsh:<strong>{{$sum_expensive}}</strong></h5>
            </div>
            <div class="icon">
                <i class="fa fa-cubes"></i>
            </div>
           
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-red">
            <div class="inner">
            <p><strong>Today Expenses</strong></p>
                <h5>Tsh:<strong>{{$sum_today_expensive}}</strong></h5>
            </div>
            <div class="icon">
                <i class="fa fa-users"></i>
            </div>
        </div>
    </div>
    <!-- ./col -->
</div>
<div class="row">
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-navy">
            <div class="inner">
                <p><strong>Balance(s)</strong></p>
                <h5>Tsh:<strong>{{$sum_income}}</strong></h5>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
        
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-teal">
            <div class="inner">
            <p><strong>Today Income</strong></p>
                <h5>Tsh:<strong>{{$invoice_today_pay}}</strong></h5>
            </div>
            <div class="icon">
                <i class="ion ion-stats-bars"></i>
            </div>
         
        </div>
    </div>
 

</div>
<div class="row">

<div class="col-md-6">
<div class="card card-body">
@include('a');
</div>
</div>
<div class="col-md-6">
<div class="card card-body">
@include('casual.purchase_vat');
</div>
</div>

</div>
@endif
@if(\Auth::user()->name=='Superadministrator')
<!-- Small boxes (Stat box) -->
<div class="row">
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-aqua">
            <div class="inner">
                <h3>Users</h3>

                <h5><strong>{{$sum_user}}</strong></h5>
            </div>
            <div class="icon">
                <i class="ion ion-person"></i>
            </div>
        
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-green">
            <div class="inner">
            <p><strong>Customer(s)</strong></p>
                <h5><strong>{{$sum_customer}}</strong></h5>
            </div>
            <div class="icon">
                <i class="fa fa-list"></i>
            </div>
         
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-yellow">
            <div class="inner">
            <p><strong>Open Invoice(s)</strong></p>
                <h5>{{$invoice_open_count}}=:Tsh<strong>{{$invoice_open_sum}}</strong></h5>
            </div>
            <div class="icon">
                <i class="fa fa-cubes"></i>
            </div>
           
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-red">
            <div class="inner">
            <p><strong>Closed Invoice(s)</strong></p>
                <h5>{{$close_invoice_count}}=Tsh:<strong>{{$close_invoice_sum}}</strong></h5>
            </div>
            <div class="icon">
                <i class="fa fa-users"></i>
            </div>
        </div>
    </div>
    <!-- ./col -->
</div>



<div class="row">
<div class="col-lg-3 col-xs-6">
<div class="small-box bg-teal">
            <div class="inner">
            <p><strong>Invoice Due to Pay</strong></p>
                <h5>{{$invoice_due_count}}=Tsh:<strong>{{$invoice_due}}</strong></h5>
            </div>
            <div class="icon">
                <i class="ion ion-stats-bars"></i>
            </div>
         
        </div>
        </div>
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-navy">
            <div class="inner">
                <p><strong>Pending Invoice(s)</strong></p>

                <h5>{{$invoice_pending_count}}Tsh:<strong>{{$invoice_pending_sum}}</strong></h5>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
        
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-teal">
            <div class="inner">
            <p><strong>Invoice(s) Waiting</strong></p>
                <h5>{{$invoice_wait_count}}=Tsh:<strong>{{$invoice_wait_sum}}</strong></h5>
            </div>
            <div class="icon">
                <i class="ion ion-stats-bars"></i>
            </div>
         
        </div>
    </div>
 
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-gray">
            <div class="inner">
            <p><strong>Today Cloesed Invoice(s)</strong></p>
            <h5><strong>{{$invoice_dayclose_count}}</strong>-Tsh:{{$invoice_dayclose_sum}}</h5>
            </div>
            <div class="icon">
                <i class="fa fa-minus"></i>
            </div>
          
        </div>
    </div>
    <!-- ./col -->
       <!-- ./col -->
       <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-maroon">
            <!-- <div class="inner">
            <p><strong>Total Closed Invoice(s)</strong></p>
                <h3>-Tsh:<strong></strong></h3>
             
            </div>
            <div class="icon">
                <i class="fa fa-plus"></i>
            </div> -->
        </div>
    </div>
    <!-- ./col -->
    <div id="container" class=" col-xs-6"></div>
</div>
<!-- Small boxes (Stat box) -->
<div class="row">

    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-green">
            <div class="inner">
            <p><strong>Today Deposite(s)</strong></p>
                <h5>Tsh:<strong>{{$sum_today_deposite}}</strong></h5>
            </div>
            <div class="icon">
                <i class="fa fa-list"></i>
            </div>
         
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-yellow">
            <div class="inner">
            <p><strong>Expense</strong></p>
                <h5>Tsh:<strong>{{$sum_expensive}}</strong></h>
            </div>
            <div class="icon">
                <i class="fa fa-cubes"></i>
            </div>
           
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-red">
            <div class="inner">
            <p><strong>Today Expenses</strong></p>
                <h5>Tsh:<strong>{{$sum_today_expensive}}</strong></h5>
            </div>
            <div class="icon">
                <i class="fa fa-users"></i>
            </div>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-navy">
            <div class="inner">
                <p><strong>Balance(s)</strong></p>
                <h5>Tsh:<strong>{{$sum_income}}</strong></h5>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
        
        </div>
    </div>
</div>
<div class="row">
  
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-teal">
            <div class="inner">
            <p><strong>Today Income</strong></p>
                <h5>Tsh:<strong>{{$invoice_today_pay}}</strong></h5>
            </div>
            <div class="icon">
                <i class="ion ion-stats-bars"></i>
            </div>
         
        </div>
    </div> 
    
</div>
<div class="row">

<div class="col-md-6">
<div class="card card-body">
@include('a');
</div>
</div>
<div class="col-md-6">
<div class="card card-body">
@include('casual.purchase_vat');
</div>
</div>

</div>

    <!-- right col (We are only adding the ID to make the widgets sortable)-->
    
@endif
@endsection

@section('top')
@endsection


