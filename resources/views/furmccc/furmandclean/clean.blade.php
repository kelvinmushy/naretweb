@extends('layouts.furm.master')


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
            <h3 class="box-title">Furmigation and Cleanness</h3>


        </div>

        <div class="box-header">
            <button class='btn btn-primary' id='add_btn'>Add</button>
            <a href="exportProduct_inAll" class="btn btn-danger">Export PDF</a>
            <a href="exportProduct_inAllExcel" class="btn btn-success">Export Excel</a>
        </div>




        <!-- /.box-header -->
        <div class="box-body">
            <table id="expensive-table" class="table table-striped">
                <thead>
                <tr>
                <th>ID</th>
                    <th>Name</th>
                    <th>Starting Date:</th>
           
                    <th>Task Cost</th>
                    <th>Profit</th>
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
    {{--<a onclick="addForm()" class="btn btn-primary" >Add Task</a>--}}
    {{--<a href="" class="btn btn-danger">Export PDF</a>--}}
    {{--<a href="" class="btn btn-success">Export Excel</a>--}}
    {{--</div>--}}

      
    </div>
  
    @include('furm.furmandclean.form');


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
        var table = $('#expensive-table').DataTable({
            processing: true,
            serverSide: true,
            ajax:  "{{ url('apiFurm') }}",
            columns: [
                {data: 'id', name: 'id'},
                {data: 'name', name: 'name'},
                {data: 'start_date', name: 'start_date'},
                
                {data: 'task_cost', name: 'task_cost'},
                {data: 'task_profit', name: 'task_profit'},
                {data: 'action', name: 'action', orderable: false, searchable: false}
            ]
        });

     $(document).on('click','#add_btn',function(){
    
         
          save_method = "add";
       
          $('input[name=_method]').val('POST');
          $('#modal-form').modal('show');
          $('#modal-form form')[0].reset();
          $('.modal-title').text('Task Information');
          $('#expensive').html('');
          add_expensive_row();
     
     });
    function add_expensive_row(count_charge = ''){
     var html = '';
      html += '<span id="row'+count_charge +'"><div class="row">';
      html += '<div class="col-md-4">';
      html += '<input type="text" name="exp_name[]" id="exp_name'+count_charge+'" class="form-control selectpicker" data-live-search="true" required  placeholder="name">';
      html += '</div>';
      html += '<div class="col-md-4">';
      html += '<input type="text" name="exp_cost[]"  id="exp_cost" class="form-control" required placeholder="cost"/>';
      html += '</div>';
      html += '<div class="col-md-4">';
      if(count_charge == '')
      {
        html += '<button type="button" name="more_charge" id="more_charge" class="btn btn-success btn-xs">+</button>';
      }
      else
      {
        html += '<button type="button" name="remove" id="'+count_charge +'" class="btn btn-danger btn-xs remove">-</button>';
      }
      html += '</div>';
      html += '</div></div><br /></span>';
      $('#expensive').append(html);
        }
        var count_charge = 0;

    $(document).on('click', '#more_charge', function(){
     count_charge = count_charge+ 1;
    add_expensive_row(count_charge);
     });
     $(document).on('click', '.remove', function(){
    var row_no = $(this).attr("id");
     $('#row'+row_no).remove();
     });

  function editForm(id) {
            save_method = 'edit';
            $('input[name=_method]').val('PATCH');
            $('#modal-form form')[0].reset();
            $('#expensive').html('');
            count_charge=''; 
            $.ajax({
                url: "{{ url('/furm') }}" + '/' + id + "/edit",
                type: "GET",
                dataType: "JSON",
                success: function(html) {
                    $('#modal-form').modal('show');
                    $('.modal-title').text('Edit Task Information');
                    $('#id').val(html.data[0].id);
                    $('#task_id').val(html.data[0].task_id);
                    $('#start_date').val(html.data[0].start_date);
                    $('#end_date').val(html.data[0].end_date);
                    $('#task_cost').val(html.data[0].task_cost);
                    $('#location').val(html.data[0].location);
                    $('#cname').val(html.data[0].cname);
                    $('#labour_qty').val(html.data[0].qty);
                    $('#labour_cost').val(html.data[0].cost);
                    $('#labour_tcost').val(html.data[0].tcost);
                    $('#contact').val(html.data[0].contact);
                    $('#task_profit').val(html.data[0].task_profit);
                    $('#task_duration').val(html.data[0].task_duration);
                     
                   $.each(html.data, function(i, item){
                
                  html_form=''; 
                  html_form+= '<span id="row'+count_charge +'"><div class="row">';
                  html_form+= '<div class="col-md-4">';
                  html_form += '<input type="text" name="exp_name[]" id="exp_name'+count_charge+'" value="'+html.data[i].exp_name+'" class="form-control selectpicker" data-live-search="true" required  placeholder="name">';
                  html_form += '</div>';
                  html_form += '<div class="col-md-4">';
                  html_form+= '<input type="text" name="exp_cost[]"  id="exp_cost"  value="'+html.data[i].exp_cost+'" class="form-control" required placeholder="cost"/>';
                  html_form += '</div>';
                  html_form+= '<div  class="col-md-4">';
               if(count_charge == '')
                {
                html_form += '<button type="button" name="more_charge" id="more_charge" class="btn btn-success btn-xs">+</button>';
                }
               else
               {
                html_form += '<button type="button" name="remove" id="'+count_charge +'" class="btn btn-danger btn-xs remove">-</button>';
               }
               html_form += '</div>';
               html_form+= '</div></div><br /></span>';
               $.isNumeric(count_charge)
               count_charge=0;
               count_charge=count_charge+1;
             $('#expensive').append(html_form);
                    });

             
                  
             
                },
                error : function() {
                    alert("Nothing Data");
                }
            });
        }
         $(document).on('click','.view',function(){
             var id=$(this).attr("id");
             save_method = 'edit';
            $('#modal-form').modal('show');
            $('#btn').remove();
            $('#btn_submit').remove();
            $('#task_id').prop('disabled ',true);
            $('#task_cost').prop('disabled',true);
            $('#labour_cost').prop('disabled',true);
            $('#labour_qty').prop('disabled',true);
            $('#contact').prop('disabled',true);
            $('#cname').prop('disabled',true);
            $('#start_date').prop('disabled',true);
            $('#location').prop('disabled',true);
            $('#exp_name').prop('disabled',true);
            $('#exp_cost').prop('disabled',true);
           
            $.ajax({
                url:"view/"+id,
                cache:false,
                success: function(html) {
                    $('#modal-form').modal('show');
                    $('.modal-title').text('Edit Task Information');
                    $('#id').val(html.data[0].id);
                    $('#task_id').val(html.data[0].task_id);
                    $('#start_date').val(html.data[0].start_date);
                    $('#end_date').val(html.data[0].end_date);
                    $('#task_cost').val(html.data[0].task_cost);
                    $('#location').val(html.data[0].location);
                    $('#cname').val(html.data[0].cname);
                    $('#labour_qty').val(html.data[0].qty);
                    $('#labour_cost').val(html.data[0].cost);
                 
                    $('#labour_tcost').val(html.data[0].tcost);
                    $('#contact').val(html.data[0].contact);
                    $('#task_profit').val(html.data[0].task_profit);
                    $('#task_duration').val(html.data[0].task_duration);
                     
                   $.each(html.data, function(i, item){
                
                  html_form=''; 
                  html_form+= '<span id="row'+count_charge +'"><div class="row">';
                  html_form+= '<div class="col-md-4">';
                  html_form += '<input type="text" name="exp_name[]" id="exp_name'+count_charge+'" value="'+html.data[i].exp_name+'" class="form-control selectpicker" data-live-search="true" required  placeholder="name">';
                  html_form += '</div>';
                  html_form += '<div class="col-md-4">';
                  html_form+= '<input type="text" name="exp_cost[]"  id="exp_cost"  value="'+html.data[i].exp_cost+'" class="form-control" required placeholder="cost"/>';
                  html_form += '</div>';
                  html_form+= '<div  class="col-md-4">';
               if(count_charge == '')
                {
                html_form += '<button type="button" name="more_charge" id="more_charge" class="btn btn-success btn-xs">+</button>';
                }
               else
               {
                html_form += '<button type="button" name="remove" id="'+count_charge +'" class="btn btn-danger btn-xs remove">-</button>';
               }
               html_form += '</div>';
               html_form+= '</div></div><br /></span>';
               $.isNumeric(count_charge)
               count_charge=0;
               count_charge=count_charge+1;
             $('#expensive').append(html_form);
                   
                
                  
                    });

             
                  
             
                },
                error : function() {
                    alert("Nothing Data");
                }
            });



         })



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
                    url : "{{ url('furm') }}" + '/' + id,
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
                    if (save_method == 'add') url = "{{ url('furm') }}";
                    else url = "{{ url('furm') . '/' }}" + id;

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
         $("#labour_cost").blur(function(){
             alet("yes kelvin")  
         $("#labour_tcost").val(Number($("#labour_qty").val())*Number($("#labour_cost").val()));
         });
         $("#labour_qty").keyup(function(){  
         $("#labour_tcost").val(Number($("#labour_qty").val())*Number($("#labour_cost").val()));
         });
         $("#labour_qty").keyup(function(){  
         $("#labour_tcost").val(Number($("#labour_qty").val())*Number($("#labour_cost").val()));
         
         });
       

 
        });
    </script>

@endsection
