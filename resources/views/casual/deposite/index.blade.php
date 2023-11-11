@extends('layouts.casual_labour.master')


@section('top')
    <!-- DataTables -->
    <link rel="stylesheet" href="{{ asset('assets/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css') }}">
@endsection

@section('content')
    <div class="box">
        <!-- /.box-header -->
        <div class="box-body">
            <table id="user-table" class="table table-striped">
                <thead>
                <tr>
                    <th>Account Name</th>
                    <th>From</th>
                    <th>Amount</th>
                    <th>Deposite Date</th>
                    <th></th>
                    <!-- <th>Account Type</th> -->
                 
                </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
        <!-- /.box-body -->
    </div>

@endsection
@include('casual.deposite.deposite')
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
        var table = $('#user-table').DataTable({
            processing: true,
            serverSide: true,
            ajax: "{{ url('/apiDeposite') }}",
            columns: [
                {data: 'account_name', name: 'account_name'},
                {data: 'from_where', name: 'from_where'},
                {data: 'amount', name: 'amount'},
                {data: 'created_at', name: 'created_at'},
                {data: 'action', name: 'action', orderable: false, searchable: false}
              
            ]
        });

        function addForm() {
            save_method = "add";
            $('input[name=_method]').val('POST');
            $('#modal-account-form').modal('show');
            $('#form-account')[0].reset();
            $('.modal-title').text('Add Accounts');
        }
        function editForm(id) {
            save_method = 'edit';
            $('input[name=_method]').val('PATCH');
            $('#form-account')[0].reset();
            $.ajax({
                url: "{{ url('account_staff') }}" + '/' + id + "/edit",
                type: "GET",
                dataType: "JSON",
                success: function(html) { 
                   $('#modal-account-form').modal('show');
                    $('.modal-title').text('Edit Account');
                    $('#id').val(html.data.id);
                    $('#account_name').val(html.data.account_name);
                 
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
                text: "You won't able to revert this!",
                type: 'warning',
                showCancelButton: true,
                cancelButtonColor: '#d33',
                confirmButtonColor: '#3085d6',
                confirmButtonText: 'Yes, i want to delete!'
            }).then(function () {
                $.ajax({
                    url : "{{ url('deposite_history') }}" + '/' + id,
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
        $(document).on('click','.deposite',function(){
            $('#form-deposite')[0].reset();
            save_method = "add";
             $('input[name=_method]').val('POST'); 
            var id=$(this).attr("id");
            $.ajax({
                url:"check_account/"+id,
                cache:false,
                success: function(html) {
                   if(html.data=="Income"){
                    $('#modal-deposite').modal('hide');
                    alert("you can't Deposite in this Account");
                   }
                   if(html.data!="Income"){
                    $('#modal-deposite').modal('show');
                    $('#account_id').val(id);
                   }
                }
            });
         
          
        })
//         $(function(){
//             $('#form-deposite').validator().on('submit', function (e) {
//                 if (!e.isDefaultPrevented()){
//                     var id = $('#id').val();
//                     if (save_method == 'add') url = "{{ url('account_staff') }}";
//                     else url = "{{ url('account_staff') . '/' }}" + id;

//                     $.ajax({
//                         url : url,
//                         type : "POST",
//                         //hanya untuk input data tanpa dokumen
// //                      data : $('#form-account').serialize(),
//                         data: new FormData($("#form-deposite")[0]),
//                         contentType: false,
//                         processData: false,
//                         success : function(data) {
//                             $('#modal-deposite').modal('hide');
//                             table.ajax.reload();
//                             swal({
//                                 title: 'Success!',
//                                 text: data.message,
//                                 type: 'success',
//                                 timer: '1500'
//                             })
//                         },
//                         error : function(data){
//                             swal({
//                                 title: 'Oops...',
//                                 text: data.message,
//                                 type: 'error',
//                                 timer: '1500'
//                             })
//                         }
//                     });
//                     return false;
//                 }
//             });
//         })
            $(function(){
            $('#form-deposite').validator().on('submit', function (e) {
                if (!e.isDefaultPrevented()){
                    var id = $('#id').val();
                    if (save_method == 'add') url = "{{ url('deposite') }}";
                    else url = "{{ url('deposite') . '/' }}" + id;
                    $.ajax({
                        url : url,
                        type : "POST",
                        //hanya untuk input data tanpa dokumen
//                      data : $('#form-account').serialize(),
                        data: new FormData($("#form-deposite")[0]),
                        contentType: false,
                        processData: false,
                        success : function(data) {
                            $('#modal-deposite').modal('hide');
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
        $(function(){
            $('#form-account').validator().on('submit', function (e) {
                if (!e.isDefaultPrevented()){
                    var id = $('#id').val();
                    if (save_method == 'add') url = "{{ url('account_staff') }}";
                    else url = "{{ url('account_staff') . '/' }}" + id;

                    $.ajax({
                        url : url,
                        type : "POST",
                        //hanya untuk input data tanpa dokumen
//                      data : $('#form-account').serialize(),
                        data: new FormData($("#form-account")[0]),
                        contentType: false,
                        processData: false,
                        success : function(data) {
                            $('#modal-account-form').modal('hide');
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
