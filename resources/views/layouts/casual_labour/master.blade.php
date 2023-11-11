<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Naret</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="{{ asset('assets/bower_components/bootstrap/dist/css/bootstrap.min.css ')}}">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{ asset('assets/bower_components/font-awesome/css/font-awesome.min.css')}} ">
    <!-- Ionicons -->
    <link rel="stylesheet" href="{{ asset('assets/bower_components/Ionicons/css/ionicons.min.css')}} ">
  
    <script src="{{  asset('assets/plugins/jquery/loader.min.js') }} "></script>
    <link rel="stylesheet" href="{{ asset('assets/bower_components/Ionicons/css/ionicons.min.css')}} ">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    {{-- SweetAlert2 --}}
    <script src="{{ asset('assets/sweetalert2/sweetalert2.min.js') }}"></script>
    <link href="{{ asset('assets/sweetalert2/sweetalert2.min.css') }}" rel="stylesheet">


    <!-- Theme style -->
    <link rel="stylesheet" href="{{ asset('assets/dist/css/AdminLTE.min.css')}} ">
    <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
          page. However, you can choose any other skin. Make sure you
          apply the skin class to the body tag so the changes take effect. -->
    <link rel="stylesheet" href="{{ asset('assets/dist/css/skins/skin-blue.min.css')}} ">

@yield('top')

    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
                    
    <style>
      .text-waiting1{
        color:#000; font-family: 'Raleway',sans-serif; font-size: 15px; font-weight: 100; line-height: 12px; margin: 0 0 24px; text-align: center; text-transform: uppercase;   
     }
     .text-waiting{
        color:green; font-family: 'Raleway',sans-serif; font-size: 15px; font-weight:100; line-height:12px; margin: 0 0 24px; text-align: center; text-transform: uppercase;   
     }
     .text-draft
     {
        color:red; font-family: 'Raleway',sans-serif; font-size: 15px; font-weight:100; line-height:12px; margin: 0 0 24px; text-align: center; text-transform: uppercase;   
     }
     .text-pending
     {
        color:#FF33C7; font-family: 'Raleway',sans-serif; font-size: 15px; font-weight:100; line-height:12px; margin: 0 0 24px; text-align: center; text-transform: uppercase;   
     }
     .text-open
     {
        color:#33BEFF; font-family: 'Raleway',sans-serif; font-size: 15px; font-weight:100; line-height:12px; margin: 0 0 24px; text-align: center; text-transform: uppercase;   
     }
     .not-paid
     {
        color:red; font-family: 'Raleway',sans-serif; font-size: 15px; font-weight:100; line-height:12px; margin: 0 0 24px; text-align: center; text-transform: uppercase;   
     }
     .partial-paid{
        color:green; font-family: 'Raleway',sans-serif; font-size: 15px; font-weight:100; line-height:12px; margin: 0 0 24px; text-align: center; text-transform: uppercase;   
     }
     .amount-due{
        color:green; font-family: 'Raleway',sans-serif; font-size: 15px; font-weight:100; line-height:12px; margin: 0 0 24px; text-align: center; text-transform: uppercase;   
      }
      .partial-due{
        color:#8633FF ; font-family: 'Raleway',sans-serif; font-size: 15px; font-weight:100; line-height:12px; margin: 0 0 24px; text-align: center; text-transform: uppercase;   

      }
    </style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <!-- Main Header -->
    <header class="main-header">

        <!-- Logo -->
        <a href="index2.html" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>A</b>LT</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg">{{ \Auth::user()->name  }}</span>
        </a>

        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                 <li class="nav-item d-none d-sm-inline-block">
                   <a href="homecasual" class="nav-link">Stuffing and Distuffing</a>
                      </li>
                   <li class="nav-item d-none d-sm-inline-block">
                    <a href="homefurm" class="nav-link">Fumigation and General Cleaness</a>
                            </li>
                     <li class="nav-item d-none d-sm-inline-block">
                   <a href="asali" class="nav-link">Dry Bags</a>
                           </li>
                    <!-- Messages: style can be found in dropdown.less-->
                    <!-- User Account Menu -->
                    <li class="dropdown user user-menu">
                        <!-- Menu Toggle Button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <!-- The user image in the navbar-->
                            <img src="{{ asset('user.png') }}" class="user-image" alt="User Image">
                            <!-- hidden-xs hides the username on small devices so only the image appears. -->
                            <span class="hidden-xs">   {{ \Auth::user()->name  }}</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- The user image in the menu -->
                            <li class="user-header">
                                <img src="{{ asset('user.png') }} " class="img-circle" alt="User Image">
                             
                                <p>
                                    {{ \Auth::user()->name  }}
                                    <small>{{ \Auth::user()->email  }}</small>
                                </p>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                {{--<div class="pull-left">--}}
                                {{--<a href="#" class="btn btn-default btn-flat">Profile</a>--}}
                                {{--</div>--}}
                                <div class="pull-right">
                                    <a class="btn btn-default btn-flat" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
@include('layouts.casual_labour.casualsidebar')

    <div class="content-wrapper">
        <section class="content container-fluid">

            @yield('content')


        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Main Footer -->
    <footer class="main-footer">
        <!-- To the right -->
        <div class="pull-right hidden-xs">
            Anything you want
        </div>
        <!-- Default to the left -->
        <?php $date = date('Y')?>
        <strong>Copyright &copy; {{$date}} <a href="#">Revan</a>.</strong> All rights reserved.
    </footer>

    <!-- Control Sidebar -->

    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
    immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 3 -->
<script src="{{  asset('assets/bower_components/jquery/dist/jquery.min.js') }} "></script>
<!-- Bootstrap 3.3.7 -->
<script src="{{  asset('assets/bower_components/bootstrap/dist/js/bootstrap.min.js') }} "></script>
<!-- AdminLTE App -->
<script src="{{  asset('assets/dist/js/adminlte.min.js') }}"></script>

@yield('bot')
</body>
</html>
<script>
</script>