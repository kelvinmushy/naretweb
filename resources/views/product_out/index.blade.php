@extends('layouts.master')


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
            <h3 class="box-title">Sales</h3>
        </div>

        <div class="box-header">
            <a onclick="addForm()" class="btn btn-primary">Sales</a>
            <!-- <a href="exportProduct_outAll" class="btn btn-danger">Export PDF</a>
            <a href="exportProduct_outAllExcel" class="btn btn-success">Export Excel</a> -->
        </div>

        <!-- /.box-header -->
        <div class="box-body">
            <table id="products-out-table" class="table table-striped">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Products</th>   
                    <th>QTY</th>
                    <th>Price</th>
                    <th>Total Price</th>
                   
                    <th>Date Out</th>
                    <th>Sell By</th>
                    <th></th>
                </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
        <!-- /.box-body -->
    </div>



    <div class="box col-md-6">

       

        {{--<div class="box-header">--}}
            {{--<a onclick="addForm()" class="btn btn-primary" >Add Products Out</a>--}}
            <!-- {{--<a href="" class="btn btn-danger">Export PDF</a>--}}
            {{--<a href="" class="btn btn-success">Export Excel</a>--}} -->
        {{--</div>--}}

        <!-- /.box-header -->
     

    @include('product_out.form')

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

    <script>
    $(function () {
    // $('#items-table').DataTable()
    $('#invoice').DataTable({
    'paging'      : true,
    'lengthChange': false,
    'searching'   : false,
    'ordering'    : true,
    'info'        : true,
    'autoWidth'   : false,
    'processing'  : true,
    // 'serverSide'  : true
    })
    })
    </script>

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
        var table = $('#products-out-table').DataTable({
            processing: true,
            serverSide: true,
            ajax: "{{ url('/apiProducts_out') }}",
            columns: [
                {data: 'id', name: 'id'},
                {data: 'products_name', name: 'products_name'},
                {data: 'qty', name: 'qty'},
                {data: 'price', name: 'price'},
                {data: 'tprice', name: 'tprice'},
             
                {data: 'date_out', name: 'date_out'},
                {data: 'adds', name: 'adds'},
                {data: 'action', name: 'action', orderable: false, searchable: false}
            ]
        });

        function addForm() {
            save_method = "add";
            $('#modal-form form')[0].reset();
            $('input[name=_method]').val('POST');
            $('#modal-form').modal('show');
        
            $('.modal-title').text('Add Products');
            $("#tlitre").val(Number($("#litre").val())*Number($("#qty").val()));
            var id=$('#product_id').val();
              $.ajax({
                       url :'get_litre/'+id,
                       success : function(html) { 
                       $('#litre').val(html.data[0].litre)
                       $("#tlitre").val(Number($("#litre").val())*Number($("#qty").val()));
                       $("#tlitre").val(Number($("#litre").val())*Number($("#qty").val()));
                        },
                  
                   });
       
        }

        function editForm(id) {
            save_method = 'edit';
            $('input[name=_method]').val('PATCH');
            $('#modal-form form')[0].reset();
            $.ajax({
                url: "{{ url('productsOut') }}" + '/' + id + "/edit",
                type: "GET",
                dataType: "JSON",
                success: function(html) {
                    $('#modal-form').modal('show');
                    $('.modal-title').text('Edit Products');
                    $('#id').val(html.data.id);
                    $('#product_id').val(html.data.product_id);
                    $('#qty').val(html.data.qty);
                   
                    $('#price').val(html.data.price);
                    $('#tprice').val(html.data.tprice);
                    $('#date_out').val(html.data.date_out);
                },
                error : function() {
                    alert("Nothing Data");
                }
            });
        }
        $('#product_id').on("keyup change",function(){
            var id=$('#product_id').val();
            //   $.ajax({
            //            url :'get_litre/'+id,
            //            success : function(html) { 
            //            $('#litre').val(html.data[0].litre)
            //            $("#tlitre").val(Number($("#litre").val())*Number($("#qty").val()));
            //            $("#tlitre").val(Number($("#litre").val())*Number($("#qty").val()));
            //             },
                  
            //        });
        })
      
        $("#price").keyup(function(){
       
       $("#tprice").val(Number($("#price").val())*Number($("#qty").val()));
   
       });
 
       $("#product_id").change(function(){ 
     
          $("#tlitre").val(Number($("#litre").val())*Number($("#qty").val()));
       }); 
 
     //    $(document).on('click','#product_id',function(){ 
     //     $("#tlitre").html('');
     //     $("#tlitre").val(Number($("#litre").val())*Number($("#qty").val()));
     //      }); 
 
 
     //   $("#product_id").keyup(function(){ 
     // //  $("#tlitre").html(''); 
     
     //   }); 
 
 
     //   $("#product_id").change(function(){ 
     //     // $("#tlitre").html(''); 
     //   $("#tlitre").val(Number($("#litre").val())*Number($("#qty").val()));
     //   }); 
 
       $("#qty").keyup(function(){ 
        
       $("#tprice").val(Number($("#price").val())*Number($("#qty").val()));
       $("#tlitre").val(Number($("#litre").val())*Number($("#qty").val()));
       }); 
 
       $("#qty").change(function(){ 
       $("#tprice").val(Number($("#price").val())*Number($("#qty").val()));
       $("#tlitre").val(Number($("#litre").val())*Number($("#qty").val()));
       });  
        function deleteData(id){
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
                    url : "{{ url('productsOut') }}" + '/' + id,
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
                    if (save_method == 'add') url = "{{ url('productsOut') }}";
                    else url = "{{ url('productsOut') . '/' }}" + id;

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
