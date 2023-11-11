
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
            <!-- Optionally, you can add icons to the links -->     
           
            <li class="active"><a href="{{ url('/asali') }}"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
            <li class="active"><a href="{{ url('/products') }}"><i class="fa fa-cubes"></i> <span>Stock</span></a></li>
           <li class="active"><a href="{{ url('/productsOut') }}"><i class="fa fa-minus"></i> <span>Product Out</span></a></li>
            <li class="active"><a href="{{ url('productsIn') }}"><i class="fa fa-plus"></i> <span>Product In</span></a></li>
            <li class="active"><a href="{{ url('/asaliAccount') }}"><i class="fa fa-list"></i> <span>Account</span></a></li>
            <li class="active"><a href="{{url('/deposite_asali')}}"><i class="fa fa-history"></i> <span>Deposite History</span></a></li>
            <!-- <li class="active"><a href="{{url('/transfer2')}}"><i class="fa fa-history"></i> <span>Transfer Money History</span></a></li> -->
            <li class="active"><a href="{{ url('/asaliExpensive') }}"><i class="fa fa-list"></i> <span>Expensive</span></a></li>
            
             @endif
             @if(\Auth::user()->name=='Administrator')
             <ul class="sidebar-menu" data-widget="tree">
            <li class="header">Menus</li>
            <!-- Optionally, you can add icons to the links -->     

            <li class="active"><a href="{{ url('/asali') }}"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
            <li class="active"><a href="{{ url('/products') }}"><i class="fa fa-cubes"></i> <span>Stock</span></a></li>
            <li class="active"><a href="{{ url('/user') }}"><i class="fa fa-users"></i> <span>Users</span></a></li>
           <li class="active"><a href="{{ url('/productsOut') }}"><i class="fa fa-minus"></i> <span>Product Out</span></a></li>
            <li class="active"><a href="{{ url('productsIn') }}"><i class="fa fa-plus"></i> <span>Product In</span></a></li>
            <li class="active"><a href="{{ url('/asaliAccount') }}"><i class="fa fa-list"></i> <span>Account</span></a></li>
            <li class="active"><a href="{{url('/deposite_asali')}}"><i class="fa fa-history"></i> <span>Deposite History</span></a></li>
            <!-- <li class="active"><a href="{{url('/transfer2')}}"><i class="fa fa-history"></i> <span>Transfer Money History</span></a></li> -->
            <li class="active"><a href="{{ url('/asaliExpensive') }}"><i class="fa fa-list"></i> <span>Expensive</span></a></li>
            
             @endif
             @if(\Auth::user()->name=='User')
             <ul class="sidebar-menu" data-widget="tree">
            <li class="header">Menus</li>
            <!-- Optionally, you can add icons to the links -->  
            <li class="active"><a href="{{ url('/asali') }}"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>   
            <li class="active"><a href="{{ url('/products') }}"><i class="fa fa-cubes"></i> <span>Stock</span></a></li>
            <!-- <li class="active"><a href="{{ url('/user') }}"><i class="fa fa-users"></i> <span>Users</span></a></li> -->
           <li class="active"><a href="{{ url('/productsOut') }}"><i class="fa fa-minus"></i> <span>Product Out</span></a></li>
            <li class="active"><a href="{{ url('productsIn') }}"><i class="fa fa-plus"></i> <span>Product In</span></a></li>
            <li class="active"><a href="{{ url('/asaliExpensive') }}"><i class="fa fa-list"></i> <span>Expensive</span></a></li>
          
             -->  
             @endif

        </ul>
        <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>
