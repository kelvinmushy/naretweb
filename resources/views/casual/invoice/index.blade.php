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

        <div class="box-header">
            <h3 class="box-title">All Sales Information</h3>
        </div>
    
        <!-- /.box-header -->
        <div class="box-body">
            <table id="invoice-table" class="table table-striped">
                <thead>
                <tr>
                <th>ID</th>
                   <th>Invoice Number:</th>
                    <th>Company Name:</th>
                    <th>Description:</th>
                    <th>Qty</th>
                    <th>Price</th>
                    <th>Unity Cost</th>
                    <th>Currency</th>
                    <th>Date</th>
                    <th></th>
               
                </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
        <!-- /.box-body -->
    </div>

    @include('casual.invoice.form')

@endsection

@section('bot')
@include('casual.labour.form')

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

    {{--<script>--}}
    {{--$(function () {--}}
    {{--$('#items-table').DataTable()--}}
    {{--$('#example2').DataTable({--}}
    {{--'paging'      : true,--}}
    {{--'lengthChange': false,--}}
    {{--'searching'   : false,--}}
    {{--'ordering'    : true,--}}
    {{--'info'        : true,--}}
    {{--'autoWidth'   : false--}}
    {{--})--}}
    {{--})--}}
    {{--</script>--}}

    <script>
        $(function () {
            //Date picker
            $('#tanggal').datepicker({
                autoclose: true,
                // dateFormat: 'yyyy-mm-dd'
            })
            //Colorpicker
            $('.my-colorpicker1').colorpicker()
            //color picker with addon
            $('.my-colorpicker2').colorpicker()

            //Timepicker
            $('.timepicker').timepicker({
                showInputs: false
            })
        })
    </script>

    <script type="text/javascript">
        var table = $('#invoice-table').DataTable({
            processing: true,
            serverSide: true,
            ajax:  "{{ url('apiInvoice')}}",
            columns: [
                {data: 'id', name: 'id'},
                {data: 'invoice_number', name: 'invoice_number'},
                {data: 'name', name: 'name'},
                {data: 'description', name: 'description'},
                {data: 'qty', name: 'qty'},
                {data: 'price', name: 'cost'},
                {data: 'amt', name: 'amt'},
                {data: 'currency', name: 'currency'},
                {data: 'date_in', name: 'date_in'},
                {data: 'action', name: 'action', orderable: false, searchable: false}
            ]
        });
        function addForm() {
            $('#invoice').html('');
            save_method = "add";
            $('input[name=_method]').val('POST');
            $('#modal-form').modal('show');
            $('#modal-form form')[0].reset();
            $('.modal-title').text('Staffing and Distaffing Form');
            add_staffing_row();
        }
    var count_charge = 0;
    $(document).on('click', '#more_charge', function(){
     count_charge = count_charge+ 1;
     add_staffing_row(count_charge);
     });
     $(document).on('click', '.remove', function(){
    var row_no = $(this).attr("id");
     $('#row'+row_no).remove();
     });

        function editForm(id) {
      
            save_method = 'edit';
            $('#invoice').html('');
            count_charge=''; 
            $('input[name=_method]').val('PATCH');
            $('#modal-form form')[0].reset();
            $.ajax({
                url: "{{ url('invoice') }}" + '/' + id + "/edit",
                type: "GET",
                dataType: "JSON",
                success: function(html) {
                    
                    $('#modal-form').modal('show');
                    $('.modal-title').text('Edit invoice Information');
                    $('#id').val(html.data.id);
                    $('#invoice_from').val(html.data.invoice_from);
                    $('#invoice_to').val(html.data.invoice_to);
                    $('#invoice_cost').val(html.data.invoice_cost);
                    $('#admistration_office').val(html.data.admistration_office);
                    $('#date_in').val(html.data.date_in);
                    $('#staffing_id').val(html.data.staffing_id);
                    $('#pay_date').val(html.data.pay_date);
                    $('#pay_status').val(html.data.pay_status);
                    
                 
                },
                error : function() {
                    alert("Nothing Data");
                }
            });
        }
       $(document).on('click','.paylabour',function(){
        $('#form-labour')[0].reset();
        var id=$(this).attr("id");
          $('#invoice_id').val(id);
          $('#modal-labour').modal('show');
          save_method = "add";
          $('input[name=_method]').val('POST');
          $('.modal-title').text('Labour Payment');
          });
          
          $(document).change('#account_id',function(){
            var account_id=$('#account_id').val();
            $.ajax({
                url:"check_balance/"+account_id,
                cache:false,
                success: function(html) {            
                $('#account_balance').val('');
                $('#account_balance').val(html.data[0].account_balance);
              }
     
           })
         });
          $(function(){
            $('#form-labour').validator().on('submit', function (e) {
                if (!e.isDefaultPrevented()){
                 
                    if (save_method == 'add') url = "{{ url('labour') }}";
                    $.ajax({
                        url : url,
                        type : "POST",
                        //hanya untuk input data tanpa dokumen
//                      data : $('#modal-form form').serialize(),
                        data: new FormData($("#form-labour")[0]),
                        contentType: false,
                        processData: false,
                        success : function(data) {
                            $('#modal-labour').modal('hide');
                            table.ajax.reload();
                            swal({
                                title: 'Success!',
                                text: data.message,
                                type: 'success',
                                timer: '1500'
                            })
                        },
                        error : function(data){
                            swal({
                                title: 'Oops...',
                                text: data.message,
                                type: 'error',
                                timer: '1500'
                            })
                        }
                    });
                    return false;
                }
            });
      });

        function deleteData(id){
            alert(id);
            var csrf_token = $('meta[name="csrf-token"]').attr('content');
            swal({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                type: 'warning',
                showCancelButton: true,
                cancelButtonColor: '#d33',
                confirmButtonColor: '#3085d6',
                confirmButtonText: 'Yes, delete it!'
            }).then(function () {
                $.ajax({
                    url : "{{ url('invoice') }}" + '/' + id,
                    type : "POST",
                    data : {'_method' : 'DELETE', '_token' : csrf_token},
                    success : function(data) {
                        table.ajax.reload();
                        swal({
                            title: 'Success!',
                            text: data.message,
                            type: 'success',
                            timer: '1500'
                        })
                    },
                    error : function () {
                        swal({
                            title: 'Oops...',
                            text: data.message,
                            type: 'error',
                            timer: '1500'
                        })
                    }
                });
            });
        }

        $(function(){
            $('#modal-form form').validator().on('submit', function (e) {
                if (!e.isDefaultPrevented()){
                    var id = $('#id').val();
                    if (save_method == 'add') url = "{{ url('invoice') }}";
                    else url = "{{ url('invoice') . '/' }}" + id;

                    $.ajax({
                        url : url,
                        type : "POST",
                        //hanya untuk input data tanpa dokumen
//                      data : $('#modal-form form').serialize(),
                        data: new FormData($("#modal-form form")[0]),
                        contentType: false,
                        processData: false,
                        success : function(data) {
                            $('#modal-form').modal('hide');
                            table.ajax.reload();
                            swal({
                                title: 'Success!',
                                text: data.message,
                                type: 'success',
                                timer: '1500'
                            })
                        },
                        error : function(data){
                            swal({
                                title: 'Oops...',
                                text: data.message,
                                type: 'error',
                                timer: '1500'
                            })
                        }
                    });
                    return false;
                }
            });
        });
    </script>

@endsection
