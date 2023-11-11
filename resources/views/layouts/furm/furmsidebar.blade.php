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
        @if(\Auth::user()->name=='Superadministrator')
        <!-- Sidebar Menu -->
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">Menus</li>
            <!-- Optionally, you can add icons to the links -->
            <li class="active"><a href="{{ url('/homefurm') }}"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
            <li class="active"><a href="{{ url('/company_info1') }}"><i class="fa fa-list"></i> <span>Customer</span></a></li>
            <li class="active"><a href="{{url('/suppliers1')}}"><i class="fa fa-truck"></i> <span>Suppliers</span></a></li>

            <li class="active"><a href="{{ url('/invoice1') }}"><i class="fa fa-list"></i> <span>Invoices</span></a></li>
            <li class="active"><a href="{{url('/purchase_invoice1')}}"><i class="fa fa-list"></i> <span>Purchase Invoices</span></a></li>
            <li class="active"><a href="{{ url('/sales') }}"><i class="fa fa-list"></i> <span>Sales</span></a></li>
            <li class="active"><a href="{{url('/labour1')}}"><i class="fa fa-history"></i> <span>Labour Payment</span></a></li>
            <li class="active"><a href="{{url('/purchase_history1')}}"><i class="fa fa-history"></i> <span>Purchase Payment History</span></a></li>
            <li class="active"><a href="{{url('/payment1')}}"><i class="fa fa-history"></i> <span>Receivable History</span></a></li>
            <li class="active"><a href="{{url('/fumExpensive')}}"><i class="fa fa-cubes"></i> <span>Other Purchases</span></a></li>
            <li class="active"><a href="{{url('/fumAccount')}}"><i class="fa fa-cubes"></i> <span>Accounts</span></a></li>
            <li class="active"><a href="{{url('/deposite_furm')}}"><i class="fa fa-history"></i> <span>Deposite History</span></a></li>
            <!-- <li class="active"><a href="{{url('/transfer1')}}"><i class="fa fa-history"></i> <span>Transfer History</span></a></li> -->

            <li class="active"><a href="{{url('/equipment')}}"><i class="fa fa-cubes"></i> <span>Equipments</span></a></li>
         
            

        </ul>
        @endif
              <!-- /.search form -->
              @if(\Auth::user()->name=='Administrator')
          <!-- Sidebar Menu -->
          <ul class="sidebar-menu" data-widget="tree">
            <li class="header">Menus</li>
            <!-- Optionally, you can add icons to the links -->
            <li class="active"><a href="{{ url('/homefurm') }}"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
            <li class="active"><a href="{{ url('/company_info1') }}"><i class="fa fa-list"></i> <span>Customer</span></a></li>
            <li class="active"><a href="{{url('/suppliers1')}}"><i class="fa fa-truck"></i> <span>Suppliers</span></a></li>

            <li class="active"><a href="{{ url('/invoice1') }}"><i class="fa fa-list"></i> <span>Invoices</span></a></li>
            <li class="active"><a href="{{url('/purchase_invoice1')}}"><i class="fa fa-list"></i> <span>Purchase Invoices</span></a></li>
            <li class="active"><a href="{{ url('/sales') }}"><i class="fa fa-list"></i> <span>Sales</span></a></li>
            <li class="active"><a href="{{url('/labour1')}}"><i class="fa fa-history"></i> <span>Labour Payment</span></a></li>
            <li class="active"><a href="{{url('/purchase_history1')}}"><i class="fa fa-history"></i> <span>Purchase Payment History</span></a></li>
            <li class="active"><a href="{{url('/payment1')}}"><i class="fa fa-history"></i> <span>Receivable History</span></a></li>
            <li class="active"><a href="{{url('/fumExpensive')}}"><i class="fa fa-cubes"></i> <span>Other Purchases</span></a></li>
            <li class="active"><a href="{{url('/fumAccount')}}"><i class="fa fa-cubes"></i> <span>Accounts</span></a></li>
            <li class="active"><a href="{{url('/deposite_furm')}}"><i class="fa fa-history"></i> <span>Deposite History</span></a></li>
            <!-- <li class="active"><a href="{{url('/transfer1')}}"><i class="fa fa-history"></i> <span>Transfer History</span></a></li> -->

            <li class="active"><a href="{{url('/equipment')}}"><i class="fa fa-cubes"></i> <span>Equipments</span></a></li>
         
            
        @endif
        @if(\Auth::user()->name=='User')
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">Menus</li>
            <!-- Optionally, you can add icons to the links -->
            <li class="active"><a href="{{ url('/homefurm') }}"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
            <li class="active"><a href="{{ url('/company_info1') }}"><i class="fa fa-list"></i> <span>Customer</span></a></li>
            <li class="active"><a href="{{url('/suppliers1')}}"><i class="fa fa-truck"></i> <span>Suppliers</span></a></li>
            <li class="active"><a href="{{url('/purchase_invoice1')}}"><i class="fa fa-list"></i> <span>Purchase Invoices</span></a></li>
            <li class="active"><a href="{{ url('/invoice1') }}"><i class="fa fa-list"></i> <span>Invoices</span></a></li>
            <li class="active"><a href="{{ url('/sales') }}"><i class="fa fa-list"></i> <span>Sales</span></a></li>
            <li class="active"><a href="{{url('/purchase_history')}}"><i class="fa fa-history"></i> <span>Purchase Payment History</span></a></li>
            <li class="active"><a href="{{url('/payment1')}}"><i class="fa fa-history"></i> <span>Receivable History</span></a></li>
            <!-- <li class="active"><a href="{{url('/labour1')}}"><i class="fa fa-history"></i> <span>Labour Payment</span></a></li>
             -->
            <li class="active"><a href="{{url('/fumExpensive')}}"><i class="fa fa-cubes"></i> <span>Other Purchase</span></a></li>
            <!-- <li class="active"><a href="{{url('/fumAccount')}}"><i class="fa fa-cubes"></i> <span>Accounts</span></a></li>
            <li class="active"><a href="{{url('/deposite_furm')}}"><i class="fa fa-history"></i> <span>Deposite History</span></a></li>
            <li class="active"><a href="{{url('/transfer1')}}"><i class="fa fa-history"></i> <span>Transfer History</span></a></li>

            <li class="active"><a href="{{url('/equipment')}}"><i class="fa fa-cubes"></i> <span>Equipments</span></a></li> -->
         
            

        </ul>
        @endif
        <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>
