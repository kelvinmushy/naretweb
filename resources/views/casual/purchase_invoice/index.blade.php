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
            <h3 class="box-title">Purchase Invoices</h3>
        </div>

        <div class="box-header">
            <button class='btn btn-primary' id='add_btn'>by supplier</button>
            <button class='btn btn-primary' id='add_btns'>other</button>
        
        </div>
        <!-- /.box-header -->
        <div class="box-body">
     
            <!-- <form action="exportPDF" method="POST" enctype="multipart/form-data">
            {{ csrf_field() }} {{ method_field('POST') }}
                <div class="container">
                <div class="row">
                    <div class="col-md-2">
                    <label for="from" class="col-form-label">From</label>
                    <input type="date" class="form-control input-sm" id="from" name="from">
                    </div>
                  
                    <div class="col-md-2">
                    <label for="from" class="col-form-label">To</label>
                        <input type="date" class="form-control input-sm" id="to" name="to">
                    </div>
                    
                    <div class="col-md-2">
                        <div class="btz" style="margin-top:24px">
                        <button type="submit" class="btn btn-warning btn-sm" name="search" >PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2" >
                       <div class="btz" style="margin-top:24px">
                        <button type="submit" class="btn btn-success btn-sm" name="search" >EXCELL</button>
                      </div>
                    </div>
                </div>
            </div>
            </form>
            <br></br> -->
        <div class="table-responsive">
              <table id="purchase-table" class="table table-striped">
                <thead>
                <tr>
                <th>Name</th>
                <th>Tin Number</th>
                <th>Invoice Number</th>
                <th>Date:</th>
                <th>Total Inclusive of Vat</th>
                <th>VAT</th>
                <th>DisCount</th>
                <th>Total Exclusive of Vat</th>
                <th>Amount Due</th>
                <th>Amount Paid</th>
                <th>Payment status</th>
                <th>Created By</th>
                <th></th>
                </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
        </div>
        
    </div>

            <!-- /.box-body -->
            <div class="box-body">
      
      <table class="table table-striped" >
          <thead>
          <h3 class="text-info">Closed Purchase</h3>
          <tr>
                <th>Name</th>
                <th>Tin Number</th>
                <th>Invoice Number</th>
                <th>Date:</th>
                <th>Total Inclusive of Vat</th>
                <th>VAT</th>
                <th>DisCount</th>
                <th>Total Exclusive of Vat</th>
                <th>Amount Due</th>
                <th>Amount Paid</th>
                <th>Payment status</th>
                <th>Created By</th>
                <th></th>
          </tr>
          </thead>
          @foreach($purchase as $i)
              <tbody>
              <td>{{ $i->name}}</td>
              <td>{{ $i->tin_number}}</td>
              <td>{{ $i->purchase_invoice}}</td>
              <td>{{ $i->date_in}}</td>
              <td>{{ $i->sub_total}}</td>
              <td>{{ $i->vat}}</td>
              <td>{{ $i->discount}}</td>
              <td>{{ $i->net_total}}</td>
              <td>{{ $i->amount_due}}</td>
              <td>{{ $i->amount_paid}}</td>
              <td style="color:green; font-family: 'Raleway',sans-serif; font-size: 15px; font-weight:100; line-height:12px; margin: 0 0 24px; text-align: center; text-transform: uppercase;">{{ $i->payment_status}}</td>
          
              <td>{{ $i->adds}}</td>
            
              <td>
                  <a href="" class="btn btn-sm btn-info"><i class="glyphicon glyphicon-eye-open"></i>View</a>
              </td>
              </tbody>
          @endforeach
     
      </table>

    </div>
    <div class="box col-md-6">
    {{--<div class="box-header">--}}
    {{--<a onclick="addForm()" class="btn btn-primary" >New Invoice</a>--}}
    <!-- {{--<a href="" class="btn btn-danger">Export PDF</a>--}}
    {{--<a href="" class="btn btn-success">Export Excel</a>--}} -->
    {{--</div>--}}   
    </div>
    @include('casual.purchase_invoice.form');
    @include('casual.purchase_payment.pay');
@endsection

@section('bot')
@include('casual.expensive.form');
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
         var table = $('#purchase-table').DataTable({
            processing: true,
            serverSide: true,
            ajax:  "{{ url('apiPurchase') }}",
            columns: [
                {data: 'name', name: 'name'},
                {data: 'tin_number', name: 'tin_number'},
                {data: 'purchase_invoice', name: 'purchase_invoice'},
                {data: 'date_in', name: 'date_in'},
                {data: 'sub_total', name: 'sub_total'},
                {data: 'vat', name: 'vat'},
                {data: 'discount', name: 'discount'}, 
                {data: 'net_total', name: 'net_total'},
                {data: 'amount_due', name: 'amount_due'},
                {data: 'amount_paid', name: 'amount_paid'},
                {data: 'payment_status', name: 'payment_status'},
                {data: 'adds', name: 'adds'},  
                {data: 'action', name: 'action', orderable: false, searchable: false}
               
            ]
        });
     $(document).on('click','#add_btn',function(){
          save_method = "add";
          $('input[name=_method]').val('POST');
          $('#modal-form').modal('show');
          $('#modal-form form')[0].reset();
          $('.modal-title').text('New Invoice');
          $('#expensive').html('');
          add_expensive_row();
          calculate(0,0);
  
        });
        $(document).on('click','#add_btns',function(){
          save_method = "add";
          $('input[name=_method]').val('POST');
          $('#modal-expensive').modal('show');
          $('.modal-title').text('New Purchase');
  
        });
        $(document).change('#account_exp_id',function(){
            var account_id=$('#account_exp_id').val();
            $.ajax({
                url:"check_balance/"+account_id,
                cache:false,
                success: function(html) {            
                $('#account_balance').val('');
                $('#account_balance').val(html.data[0].account_balance);
              }
     
           })
         });
  



/*Order Accepting*/
 function add_expensive_row(count_charge = ''){
   var tr = $(this).parent().parent();
     var html = '';
      html += '<span id="row'+count_charge +'"><div class="row">';
    //   html += '<div class="col-md-3">';
    //   html += '<input type="text" name="title[]" id="title'+count_charge+'" class="form-control selectpicker" data-live-search="true" required  placeholder="title"></textarea>';
    //   html += '</div>';
      html += '<div class="col-md-4">';
      html += '<input type="text" name="item_name[]" id="item_name'+count_charge+'" class="form-control selectpicker" data-live-search="true" required  placeholder="Item name"/>';
      html += '</div>';
      html += '<div class="col-md-3">';
      html += '<input type="text" name="qty[]"  id="qty" class="form-control" required placeholder="qty" value="1"/>';
      html += '</div>';
      html += '<div class="col-md-2">';
      html += '<input type="text" name="price[]"  id="price" class="form-control" required placeholder="cost" value="0"/>';
      html += '</div>';
      html += '<div class="col-md-2">';

      html += '<span class="amt" >0</span>';
      html += '</div>';
      html += '<div class="col-md-1">';
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

      tr.find(".amt").html( tr.find("#qty").val() * tr.find("#price").val() );
				calculate(0,0);
        }
     
       
   var count_charge = 0;

$(document).on('click', '#more_charge', function(){
    $("#net_total").val("");
    $("#amount_due").val("");
    $("#discount").val("");
    $("#vat").val("");
 count_charge = count_charge+ 1;
add_expensive_row(count_charge);
var tr = $(this).parent().parent();
tr.find(".amt").html( tr.find("#qty").val() * tr.find("#price").val() );
            calculate(0,0);

 });
 $(document).on('click', '.remove', function(){
    
    $("#net_total").val("");
    $("#amount_due").val("");
    $("#discount").val("");
    $("#vat").val("");

    var tr = $(this).parent().parent();
    // tr.find(".amt").html( tr.find("#qty").val() * tr.find("#price").val() );
    // calculate(0,0);
var row_no = $(this).attr("id");
 $('#row'+row_no).remove();
 tr.find(".amt").html( tr.find("#qty").val() * tr.find("#price").val() );
    calculate(0,0);
 });


   
 $("#expensive").delegate("#qty","keyup",function(){
var tr = $(this).parent().parent();
var qty = $('#qty').val();
var price=$('#price').val();

$("#discount").val("");

$("#net_total").val("");

 $("#amount_due").val("");
tr.find(".amt").html( tr.find("#qty").val() * tr.find("#price").val() );
            calculate(0,0);

 
})
$("#expensive").delegate("#price","keyup",function(){
var tr = $(this).parent().parent();
var qty = $('#vat').val("");

$("#discount").val("");

$("#net_total").val("");

 $("#amount_due").val("");
// tr.find("#amt").html(qty.val() * tr.find(".price").val());
tr.find(".amt").html( tr.find("#qty").val() * tr.find("#price").val() );
            calculate(0,0);
 
})



function calculate(dis,paid){
var sub_total = 0;
var gst = 0;
var net_total = 0;
var discount = dis;
var paid_amt = paid;
var due = 0;
$(".amt").each(function(){
    sub_total = sub_total + ($(this).html() * 1);
  
})
$("#sub_total").val(sub_total);
$("#discount").val(discount);
net_total = net_total - discount;

}

$("#discount").keyup(function(){
var discount = $(this).val();
if(discount==''){ 
  sub=Number($('#sub_total').val()); 
  vat=Number($('#vat').val()); 
 $("#net_total").val(sub-vat)
 $("#amount_due").val(sub+vat)  
}
 sub=Number($('#sub_total').val()); 
  vat=Number($('#vat').val()); 

 var y=Number($("#discount").val());

  Number($("#net_total").val(sub-vat)) 

  $("#amount_due").val(sub-y);

})

$("#amount_paid").keyup(function(){
var paid = $(this).val();
var discount = $("#discount").val();

calculate(discount,paid);
})
$('#vat1').change(function(){
var vat1= $(this).val();
$('#discount').val("0"); 
var sub=$('#sub_total').val();
var vat=(sub*vat1).toFixed(2);
$('#vat').val(vat);
var net=(sub-vat).toFixed(2);
$('#net_total').val(net);
 $('#amount_due').val(sub); 


});





  function editForm(id) {
            save_method = 'edit';
            $('input[name=_method]').val('PATCH');
            $('#modal-form form')[0].reset();
            $('#expensive').html('');
            count_charge=''; 
            $.ajax({
                url: "{{ url('/purchase_invoice') }}" + '/' + id + "/edit",
                type: "GET",
                dataType: "JSON",
                success: function(html) {
                    $('#modal-form').modal('show');
                    $('.modal-title').text('Edit Task Information');
                    $('#id').val(html.data[0].id);
                    $('#company_id').val(html.data[0].company_id); 
                    $('#date_in').val(html.data[0].date_in);
                    $('#sub_total').val(html.data[0].sub_total);
                    $('#vat').val(html.data[0].vat); 
                    $('#net_total').val(html.data[0].net_total);
                    $('#amount_due').val(html.data[0].amount_due);
                    $('#discount').val(html.data[0].discount); 
                   $.each(html.data, function(i, item){
                   html_form=''; 
                   html_form+= '<span id="row'+count_charge +'"><div class="row">';
                 
                   html_form+= '<div class="col-md-4">';
                   html_form += '<input type="text" name="item_name[]" id="item_name'+count_charge+'" value="'+html.data[i].item_name+'" class="form-control selectpicker" data-live-search="true" required  placeholder="name">';
                   html_form += '</div>';
                   html_form += '<div class="col-md-3">';
                   html_form+= '<input type="text" name="qty[]"  id="qty"  value="'+html.data[i].qty+'" class="form-control" required placeholder="cost"/>';
                   html_form += '</div>';
                   html_form += '<div class="col-md-2">';
                   html_form+= '<input type="text" name="price[]"  id="price"  value="'+html.data[i].price+'" class="form-control" required placeholder="cost"/>';
                   html_form += '</div>';
                   html_form += '<div class="col-md-2">';
                   html_form += '<span class="amt" >'+html.data[i].amt+'</span>';
                   html_form += '</div>';
                   html_form+= '<div  class="col-md-1">';
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
             
         $(document).on('click','.confirm_pay',function(){
        
         $('#form-item-payment')[0].reset();
          var id=$(this).attr("id");
          var payment_status=$(this).attr("payment_status");
        
          $('#purchase_id').val(id);
          save_method = "add";
          $('#modal_payment').modal('show');
          var id=$(this).attr("id");
          $('input[name=_method]').val('POST');
          $('.modal-title').text('Payment Information');
         
          });

          $(document).on('click','.prove',function(){
            var id=$(this).attr("id");
            alert(id);
            swal({
                title: 'Are you sure?',
                text: "Approve Invoice",
                type: 'success',
                showCancelButton: true,
                cancelButtonColor: '#d33',
                confirmButtonColor: '#3085d6',
                confirmButtonText: 'Yes,Approve It!'
            }).then(function () {
                $.ajax({
                    url : "{{ url('approve') }}" + '/' + id,
                 
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
         
          });
     


         $(document).on('click','.views',function(){
            $('#expensive').html('');
             var id=$(this).attr("id");
            $.ajax({
                url:"view_detail/"+id,
                cache:false,
                success: function(html) {
                    $('#modal-form').modal('show');
                    $('.modal-title').text('Details');
                    $('#id').val(html.data[0].id);
                    $('#supplier_id').val(html.data[0].suppliers_id); 
                    $('#date_in').val(html.data[0].date_in);
                    $('#sub_total').val(html.data[0].sub_total);
                    $('#vat').val(html.data[0].vat); 
                    $('#net_total').val(html.data[0].net_total);
                    $('#amount_paid').val(html.data[0].amount_paid);
                    $('#amount_due').val(html.data[0].amount_due);
                    $('#discount').val(html.data[0].discount);
                    $('#account_id').val(html.data[0].account_id);
                    $.each(html.data, function(i, item){
                   html_form=''; 
                   html_form+= '<span id="row'+count_charge +'"><div class="row">';
                   html_form+= '<div class="col-md-3">';
                   html_form += '<label>Item Name</label>';
                   html_form += '<input type="text" name="item_name[]"  value="'+html.data[i].item_name+'" class="form-control selectpicker" data-live-search="true" required  placeholder="name">';
                   html_form += '</div>';
                   html_form += '<div class="col-md-3">';
                   html_form += '<label>Qty</label>';
                   html_form+= '<input type="text"   value="'+html.data[i].qty+'" class="form-control" readonly/>';
                   html_form += '</div>';
                   html_form += '<div class="col-md-4">';
                   html_form += '<label>Cost</label>';
                   html_form+= '<input type="text"   value="'+html.data[i].price+'" class="form-control" readonly/>';
                   html_form += '</div>';
                   html_form += '<div class="col-md-2">';
                   html_form += '<label>Unity Cost</label>'
                   html_form+= '<input type="text"   value="'+html.data[i].amt+'" class="form-control" readonly/>';
                   html_form += '</div>';
                   html_form+= '</div></div><br /></span>';
            
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
                    url : "{{ url('purchase_invoice') }}" + '/' + id,
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
                    if (save_method == 'add') url = "{{ url('purchase_invoice') }}";
                    else url = "{{ url('purchase_invoice') . '/' }}" + id;

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

        $(function(){
            $('#form-item-payment').validator().on('submit', function (e) {
                if (!e.isDefaultPrevented()){
                 
                    if (save_method == 'add') url = "{{ url('purchase_history') }}";
           

                    $.ajax({
                        url : url,
                        type : "POST",
                        //hanya untuk input data tanpa dokumen
//                      data : $('#modal-form form').serialize(),
                        data: new FormData($("#form-item-payment")[0]),
                        contentType: false,
                        processData: false,
                        success : function(data) {
                            $('#modal_payment').modal('hide');
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
            $('#form-expensive').validator().on('submit', function (e) {
                if (!e.isDefaultPrevented()){
                    var id = $('#id').val();
                    if (save_method == 'add') url = "{{ url('expensive_staff') }}";
                    else url = "{{ url('expensive_staff') . '/' }}" + id;

                    $.ajax({
                        url : url,
                        type : "POST",
                        //hanya untuk input data tanpa dokumen
//                      data : $('#form-account').serialize(),
                        data: new FormData($("#form-expensive")[0]),
                        contentType: false,
                        processData: false,
                        success : function(data) {
                            $('#modal-expensive').modal('hide');
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
