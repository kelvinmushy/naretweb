@extends('layouts.master')
@section('top')
    <!-- DataTables -->
    <link rel="stylesheet" href="{{ asset('assets/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css') }}">
@endsection
@section('content')
    <div class="box">
        <!-- /.box-header -->
        <div class="box-body">
        <div class="box-header">
            <a onclick="addForm()" class="btn btn-primary" >Add</a>
            <!-- <a href="exportProduct_inAll" class="btn btn-danger">Export PDF</a>
            <a href="exportProduct_inAllExcel" class="btn btn-success">Export Excel</a> -->
        </div>
            <table id="products-table" class="table table-striped">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>QTY</th>
                    <th></th>
                </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
        <!-- /.box-body -->
    </div>

    @include('products.form')

@endsection

@section('bot')

    <!-- DataTables -->
    <script src=" {{ asset('assets/bower_components/datatables.net/js/jquery.dataTables.min.js') }} "></script>
    <script src="{{ asset('assets/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js') }} "></script>

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
    <script type="text/javascript">
        var table = $('#products-table').DataTable({
            processing: true,
            serverSide: true,
            ajax: "{{ url('/apiProducts') }}",
            columns: [
                {data: 'id', name: 'id'},
                {data: 'product_name', name: 'product_name'},
                {data: 'qty', name: 'qty'},
                {data: 'action', name: 'action', orderable: false, searchable: false}
              
            ]
        });

        function addForm() {
            save_method = "add";
            $('input[name=_method]').val('POST');
            $('#modal-stock').modal('show');
            $('#modal-stock form')[0].reset();
            $('.modal-title').text('Add Products');
        }

      $("#price").keyup(function(){  
      $("#tprice").val(Number($("#price").val())*Number($("#qty").val()));
  
      });
      $("#litre").keyup(function(){  
      $("#tlitre").val(Number($("#litre").val())*Number($("#qty").val()));
      }); 
      $("#qty").keyup(function(){  
      $("#tprice").val(Number($("#price").val())*Number($("#qty").val()));
      $("#tlitre").val(Number($("#litre").val())*Number($("#qty").val()));
      }); 
     
        function editForm(id) {
            save_method = 'edit';
          
            $('input[name=_method]').val('PATCH');
            $('#form-item')[0].reset();
            $.ajax({
                url: "{{ url('products') }}" + '/' + id + "/edit",
                success: function(html) {
                    $('#modal-stock').modal('show');
                    $('.modal-title').text('Edit Products');
                    $('#id').val(html.data.id);
                    $('#qty').val(html.data.qty);
                    $('#liter').val(html.data.litre);
                    $('#tlitre').val(html.data.tlitre);
                    $('#price').val(html.data.price);
                    $('#tprice').val(html.data.tprice);
                    $('#product_name').val(html.data.product_name);
             
                    $('#category_id').val(html.data.category_id);
                },
                error : function() {
                    alert("Nothing Data");
                }
            });
        }

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
                    url : "{{ url('products') }}" + '/' + id,
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
            $('#modal-stock form').validator().on('submit', function (e) {
                if (!e.isDefaultPrevented()){
                    var id = $('#id').val();
                    if (save_method == 'add') url = "{{ url('products') }}";
                    else url = "{{ url('products') . '/' }}" + id;

                    $.ajax({
                        url : url,
                        type : "POST",
                        //hanya untuk input data tanpa dokumen
//                      data : $('#modal-stock form').serialize(),
                        data: new FormData($("#modal-stock form")[0]),
                        contentType: false,
                        processData: false,
                        success : function(data) {
                            $('#modal-stock').modal('hide');
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
