{{--<!doctype html>--}}
{{--<html lang="en">--}}
{{--<head>--}}
{{--<meta charset="UTF-8">--}}
{{--<meta name="viewport"--}}
{{--content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">--}}
{{--<meta http-equiv="X-UA-Compatible" content="ie=edge">--}}
{{--<link rel="stylesheet" href="{{ asset('assets/bower_components/bootstrap/dist/css/bootstrap.min.css ')}}">--}}
{{--<!-- Font Awesome -->--}}
{{--<link rel="stylesheet" href="{{ asset('assets/bower_components/font-awesome/css/font-awesome.min.css')}} ">--}}
{{--<!-- Ionicons -->--}}
{{--<link rel="stylesheet" href="{{ asset('assets/bower_components/Ionicons/css/ionicons.min.css')}} ">--}}

{{--<title>Product out Exports All PDF</title>--}}
{{--</head>--}}
{{--<body>--}}
<style>
    #product-out {
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

    #product-out td, #product-out th {
        border: 1px solid #ddd;
        padding: 8px;
    }

    #product-out tr:nth-child(even){background-color: #f2f2f2;}

    #product-out tr:hover {background-color: #ddd;}

    #product-out th {
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: left;
        background-color: #4CAF50;
        color: white;
    }
</style>

<table id="product-out" width="100%">
        <thead>
        <tr>
         
            <td>Product</td>
            <td>Quantity</td>
            <td>Unit Cost</td>
            <td>Total Cost</td>
            <td>Litre</td>
            <td>Total Litre</td>
            <td>Date of Purchase</td>
            
        </tr>
        </thead>
        @foreach($product_out  as $p)
            <tbody>
            <tr>
              
                <td>{{ $p->product_name}}</td>
                <td>{{ $p->qty }}</td>
                <td>{{ $p->price}}</td>
                <td>{{ $p->tprice}}</td>
                <td>{{ $p->litre}}</td>
                <td>{{ $p->tlitre}}</td>
                <td>{{ $p->date_out}}</td>
            </tr>
            </tbody>
        @endforeach
        <tr>
        <td>Total:</td>
         <td>{{$sum_qty}}</td>
         <td>{{$sum_price}}</td>
         <td>{{$sum_tprice}}</td>
         <td>{{$sum_litre}}</td>
         <td>{{$sum_tlitre}}</td>
         <td></td>
       
         
     </tr>

    </table>

{{--<!-- jQuery 3 -->--}}
{{--<script src="{{  asset('assets/bower_components/jquery/dist/jquery.min.js') }} "></script>--}}
{{--<!-- Bootstrap 3.3.7 -->--}}
{{--<script src="{{  asset('assets/bower_components/bootstrap/dist/js/bootstrap.min.js') }} "></script>--}}
{{--<!-- AdminLTE App -->--}}
{{--<script src="{{  asset('assets/dist/js/adminlte.min.js') }}"></script>--}}
{{--</body>--}}
{{--</html>--}}


