<aside class="main-sidebar">
<!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="{{ asset('user.png') }} " class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>{{ \Auth::user()->name  }}</p>
                <!-- Status -->
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- search form (Optional) -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
                <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
            </div>
        </form>
        <!-- /.search form -->

        <!-- Sidebar Menu -->
        @if(\Auth::user()->name=='Superadministrator')
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">Menus</li>
            <li class="active"><a href="{{ url('/homecasual') }}"><i class="fas fa-tachometer-alt"></i> <span>Dashboard</span></a></li>
            <li class="active"><a href="{{ url('/cprofile') }}"><i class="fa fa-list"></i> <span>Company Profile</span></a></li>
            <li class="active"><a href="{{ url('/user') }}"><i class="fa fa-users"></i> <span>Users</span></a></li>
            <li class="active"><a href="{{ url('/company_info') }}"><i class="fa fa-list"></i> <span>Customer</span></a></li>
            <li class="active"><a href="{{ route('suppliers.index') }}"><i class="fa fa-truck"></i> <span>Supplier</span></a></li>
            <li class="active"><a href="{{url('/staffing')}}"><i class="fas fa-file-invoice"></i> <span>Invoices</span></a></li>
            <li class="active"><a href="{{url('/purchase_invoice')}}"><i class="fas fa-file-invoice"></i> <span>Purchase Invoices</span></a></li>
            <li class="active"><a href="{{url('/invoice')}}"><i class="fa fa-cubes"></i> <span>All Sales</span></a></li>
            <li class="active"><a href="{{url('/labour')}}"><i class="fa fa-history"></i> <span>Labour Payment</span></a></li>
            <li class="active"><a href="{{url('/payment_history')}}"><i class="fa fa-history"></i> <span>Receivable History</span></a></li>
            <li class="active"><a href="{{url('/expensive_staff')}}"><i class="fa fa-history"></i> <span>Other Purchase</span></a></li>
            <li class="active"><a href="{{url('/account_staff')}}"><i class="fa fa-cubes"></i> <span>Account</span></a></li>
            <li class="active"><a href="{{url('/purchase_history')}}"><i class="fa fa-history"></i> <span>Purchase Payment History</span></a></li>
            <li class="active"><a href="{{url('/deposite_history')}}"><i class="fa fa-history"></i> <span>Deposite History</span></a></li>
       
            <li class="active"><a href="{{url('/payment_info')}}"><i class="fa fa-cubes"></i> <span>Payment Information</span></a></li>
            <li class="active"><a href="{{url('/remarks')}}"><i class="fa fa-cubes"></i> <span>Remarks</span></a></li>
            <li class="active"><a href="{{url('/backup')}}"><i class="fa fa-database"></i> <span>Database Backup</span></a></li>
        </ul>
        @endif

        
        <!-- Sidebar Menu -->
        @if(\Auth::user()->name=='Administrator')
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">Menus</li>
            <li class="active"><a href="{{ url('/homecasual') }}"><i class="fas fa-tachometer-alt"></i> <span>Dashboard</span></a></li>
            <li class="active"><a href="{{ url('/company_info') }}"><i class="fa fa-list"></i> <span>Customer</span></a></li>
            <li class="active"><a href="{{ route('suppliers.index') }}"><i class="fa fa-truck"></i> <span>Supplier</span></a></li>
            <li class="active"><a href="{{url('/staffing')}}"><i class="fas fa-file-invoice"></i> <span>Invoices</span></a></li>
            <li class="active"><a href="{{url('/purchase_invoice')}}"><i class="fas fa-file-invoice"></i> <span>Purchase Invoices</span></a></li>
            <li class="active"><a href="{{url('/invoice')}}"><i class="fa fa-cubes"></i> <span>All Sales</span></a></li>
            <li class="active"><a href="{{url('/labour')}}"><i class="fa fa-history"></i> <span>Labour Payment</span></a></li>
            <li class="active"><a href="{{url('/purchase_history')}}"><i class="fa fa-history"></i> <span>Purchase Payment History</span></a></li>
            <li class="active"><a href="{{url('/payment_history')}}"><i class="fa fa-history"></i> <span>Receivable History</span></a></li>
            <li class="active"><a href="{{url('/expensive_staff')}}"><i class="fa fa-history"></i> <span>Expenses</span></a></li>
            <li class="active"><a href="{{url('/account_staff')}}"><i class="fa fa-cubes"></i> <span>Account</span></a></li>
            <li class="active"><a href="{{url('/deposite_history')}}"><i class="fa fa-history"></i> <span>Deposite History</span></a></li>
       
            <li class="active"><a href="{{url('/payment_info')}}"><i class="fa fa-cubes"></i> <span>Payment Information</span></a></li>
            <li class="active"><a href="{{url('/remarks')}}"><i class="fa fa-cubes"></i> <span>Remarks</span></a></li>
            <li class="active"><a href="{{url('/backup')}}"><i class="fa fa-database"></i> <span>Database Backup</span></a></li>
        </ul>
        @endif

        @if(\Auth::user()->name=='User')
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">Menus</li>
   
            <li class="active"><a href="{{ url('/homecasual') }}"><i class="fas fa-tachometer-alt"></i> <span>Dashboard</span></a></li>

            <li class="active"><a href="{{ url('/company_info') }}"><i class="fa fa-list"></i> <span>Customer</span></a></li>
            <li class="active"><a href="{{ route('suppliers.index') }}"><i class="fa fa-truck"></i> <span>Supplier</span></a></li>
            <li class="active"><a href="{{url('/staffing')}}"><i class="fas fa-file-invoice"></i> <span>Invoices</span></a></li>
            <li class="active"><a href="{{url('/purchase_invoice')}}"><i class="fas fa-file-invoice"></i> <span>Purchase Invoices</span></a></li>
            <li class="active"><a href="{{url('/expensive_staff')}}"><i class="fa fa-history"></i> <span>Other Purchase</span></a></li>
            <li class="active"><a href="{{url('/invoice')}}"><i class="fa fa-cubes"></i> <span>All Sales</span></a></li>
            <!-- <li class="active"><a href="{{url('/labour')}}"><i class="fa fa-history"></i> <span>Labour Payment</span></a></li> -->
            <li class="active"><a href="{{url('/purchase_history')}}"><i class="fa fa-history"></i> <span>Purchase Payment History</span></a></li>
            <li class="active"><a href="{{url('/payment_history')}}"><i class="fa fa-history"></i> <span>Receivable History</span></a></li>
            <li class="active"><a href="{{url('/expensive_staff')}}"><i class="fa fa-history"></i> <span>Other Purchase</span></a></li>
            <li class="active"><a href="{{url('/backup')}}"><i class="fa fa-database"></i> <span>Database Backup</span></a></li>
            <!-- <li class="active"><a href="{{url('/account_staff')}}"><i class="fa fa-cubes"></i> <span>Account</span></a></li>
            <li class="active"><a href="{{url('/deposite_history')}}"><i class="fa fa-history"></i> <span>Deposite History</span></a></li>
       
            <li class="active"><a href="{{url('/payment_info')}}"><i class="fa fa-cubes"></i> <span>Payment Information</span></a></li>
            <li class="active"><a href="{{url('/remarks')}}"><i class="fa fa-cubes"></i> <span>Remarks</span></a></li> -->
        </ul>
        @endif
        <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>
