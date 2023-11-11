<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Naret Campony Limited</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/logo/favicon.png">
    <link href="{{ asset('assets/website/css/bootstrap.min.css ') }}" rel="stylesheet" />
    <link href="{{ asset('assets/website/css/fontawesome.min.css ') }}" rel="stylesheet" />
    <link href="{{ asset(' assets/website/css/themify-icons.css ') }}" rel="stylesheet" />
    <link href="{{ asset('assets/website/css/icofont.min.css ') }}" rel="stylesheet" />
    <link href="{{ asset('assets/website/css/flaticon.css ') }}" rel="stylesheet" />
    <link href="{{ asset(' assets/website/css/magnific-popup.css ') }}" rel="stylesheet" />
    <link href="{{ asset('assets/website/css/owl.carousel.min.css ') }}" rel="stylesheet" />
    <link href="{{ asset('assets/website/css/owl.theme.default.min.css ') }}" rel="stylesheet" />
    <link href="{{ asset('assets/website/css/animate.min.css ') }}" rel="stylesheet" />
    <link href="{{ asset('assets/website/css/style.css ') }}" rel="stylesheet">

    @yield('top')

    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<body>

    <div class="preloader">
        <div class="loader">
            <div class="loader-box-1"></div>
            <div class="loader-box-2"></div>
        </div>
    </div>
 @include('website.layouts.partial.header')

 @yield('content')

    <script src="{{ asset('assets/website/dist/js/adminlte.min.js') }}"></script>
    <script src="{{ asset('assets/website/js/jquery-3.6.0.min.js') }}"></script>
    <script src="{{ asset('assets/website/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('assets/website/js/jquery.easing.min.js') }}"></script>
    <script src="{{ asset('assets/website/js/jquery.appear.js') }}"></script>
    <script src="{{ asset('assets/website/js/modernizr.min.js') }}"></script>
    <script src="{{ asset('assets/website/js/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('assets/website/js/jquery.magnific-popup.min.js') }}"></script>
    <script src="{{ asset('assets/website/js/isotope.pkgd.min.js') }}"></script>
    <script src="{{ asset('assets/website/js/imagesloaded.pkgd.min.js') }}"></script>
    <script src="{{ asset('assets/website/js/wow.min.js') }}"></script>
    <script src="{{ asset('assets/website/js/count-to.js') }}"></script>
    <script src="{{ asset('assets/website/js/beforeafter.min.js') }}"></script>
    <script src="{{ asset('assets/website/js/main.js') }}"></script>

    @yield('bot')
</body>

</html>
<script></script>
