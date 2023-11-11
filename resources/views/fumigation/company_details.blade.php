@extends('layouts.casual_labour.master')
@section('top')
    <!-- DataTables -->
    <link rel="stylesheet" href="{{ asset('assets/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css') }}">

    <!-- daterange picker -->
    <link rel="stylesheet" href="{{ asset('assets/bower_components/bootstrap-daterangepicker/daterangepicker.css') }}">
    <!-- bootstrap datepicker -->
    <link rel="stylesheet" href="{{ asset('assets/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css') }}">
@endsection
@section('content')
    <div class="box">
        <!-- /.box-body -->
        <br>
                         
       <div class="box-body">
       @if($errors->any())
        <center> <span class="text-danger">Invoice(s) Not Found</span></center>
        @endif
      <table class="table table-striped" >
          <thead>
          <h3 class="text-info">Customer Invoice History-- <span style="color:red">{{$closed_invoice[0]->name}}</span></h3>
          <form action="/exportCustomerInvoiceF" method="POST" enctype="multipart/form-data">
                             {{ csrf_field() }} 
                              <div class="row">
                              <div class="col-md-3">
                                <input type="hidden" name="id" value="{{$closed_invoice[0]->company_id}}">
                              <label for="from" class="col-form-label">From</label>
                             <input type="date" class="form-control input-sm" id="from" name="from" required>
                             </div>
                              <div class="col-md-3">
                              <label for="from" class="col-form-label">To</label>
                              <input type="date" class="form-control input-sm" id="to" name="to"  required>
                              </div>
                                <div class="col-md-3">
                                  <label for="from" class="col-form-label">By</label>
                                 <select class="form-control input-sm" id="paid_status" name="paid_status"  >
                                  <option disabled >--select Loans Status--</option>
                                  <option value="all" >All</option>
                                  <option value="paid" >paid</option>
                                  <option value="partial paid" >Partial Paid</option>
                                  <option value="Not paid">Not Paid</option>
                              </select>
                              </div>
                                
                    
                              <div class="col-md-3" style="margin-top:28px;">
                            <button type="submit" class="btn btn-primary btn-sm" name="search" >Export Report</button>

                             </div>
                
                              </div>
                                </form>
                                <br>
          <tr>
                  <th>Date:</th>
                  <th>Invoice Number:</th>
                  <th>Total Inclusive of Vat</th>
                  <th>VAT</th>
                  <th>DisCount</th>
                  <th>Total Exclusive of Vat</th>
                  <th>Amount Paid</th>
                  <th>Amount due</th>
                  <th>Payment status</th>
                  <th>Start Date</th>
                  <th>Due Date</th>
                  <th>Created By</th>
          </tr>
          </thead>
          @foreach($closed_invoice as $i)
              <tbody>
              <td>{{ $i->date_in}}</td>
              <td>{{ $i->invoice_number}}</td>
              <td>{{ $i->sub_total}}</td>
              <td>{{ $i->vat}}</td>
              <td>{{ $i->discount}}</td>
              <td>{{ $i->net_total}}</td>
              <td>{{ $i->amount_paid}}</td>
              <td>{{ $i->amount_due}}</td>
              <td>{{ $i->payment_status}}</td>
              <td>{{ $i->start_date}}</td>
              <td>{{ $i->due_date}}</td>
              <td>{{ $i->adds}}</td>
            
             {{--  <td>
                  <a href="" class="btn btn-sm btn-info"><i class="glyphicon glyphicon-eye-open"></i>View</a>
              </td>--}}
              </tbody>
          @endforeach 
     
      </table>
  </div>
    </div>
    <div class="box col-md-6">
    {{--<div class="box-header">--}}
    {{--<a onclick="addForm()" class="btn btn-primary" >New Invoice</a>--}}
    <!-- {{--<a href="" class="btn btn-danger">Export PDF</a>--}}
    {{--<a href="" class="btn btn-success">Export Excel</a>--}} -->
    {{--</div>--}}   
    </div>
  
@endsection

@section('bot')

    <!-- DataTables -->
    <script src=" {{ asset('assets/bower_components/datatables.net/js/jquery.dataTables.min.js') }} "></script>
    <script src="{{ asset('assets/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js') }} "></script>


    <!-- InputMask -->
    <script src="{{ asset('assets/plugins/input-mask/jquery.inputmask.js') }}"></script>
    <script src="{{ asset('assets/plugins/input-mask/jquery.inputmask.date.extensions.js') }}"></script>
    <script src="{{ asset('assets/plugins/input-mask/jquery.inputmask.extensions.js') }}"></script>
    <!-- date-range-picker -->
    <script src="{{ asset('assets/bower_components/moment/min/moment.min.js') }}"></script>
    <script src="{{ asset('assets/bower_components/bootstrap-daterangepicker/daterangepicker.js') }}"></script>
    <!-- bootstrap datepicker -->
    <script src="{{ asset('assets/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js') }}"></script>
    <!-- bootstrap color picker -->
    <script src="{{ asset('assets/bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js') }}"></script>
    <!-- bootstrap time picker -->
    <script src="{{ asset('assets/plugins/timepicker/bootstrap-timepicker.min.js') }}"></script>
    {{-- Validator --}}
    <script src="{{ asset('assets/validator/validator.min.js') }}"></script>


    
@endSection