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
            <h3 class="box-title"> Invoices</h3>
        </div>

        <div class="box-header">
            <button class='btn btn-primary' id='add_btn'>Create New</button>
        
        </div>
        <!-- /.box-header -->
        <div class="box-body">
        <div class="table-responsive">
              <table id="staffing-table" class="table table-striped">
                <thead>
                <tr>
                <th>Invoice Number</th>
                  <th>Name</th>
                  <th>Date:</th>
                  <th>Total Inclusive of Vat</th>
                  <th>VAT</th>
                  <th>DisCount</th>
                     <th>Total Exclusive of Vat</th>
                    <th>Amount Paid</th>
                    <th>Amount due</th>
                    <th>Payment status</th>
                    <th>Invoice Status</th>
                    <th>Start Date</th>
                    <th>Due Date</th>
                    <th>Created By</th>
                   <th></th>
                   <th></th>
                </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
        </div>
        <!-- /.box-body -->
        <div class="box-body">
        <div class="table-responsive">
      <table class="table table-striped" id="close_invoice" >
          <thead>
          <h3 class="text-info">Closed Invoices</h3>
          <tr>
          <th>Invoice Number</th>
                  <th>Name</th>
                  <th>Date:</th>
                  <th>Total Inclusive of Vat</th>
                  <th>VAT</th>
                  <th>DisCount</th>
                     <th>Total Exclusive of Vat</th>
                    <th>Amount Paid</th>
                    <th>Amount due</th>
                    <th>Payment status</th>
                    <th>Invoice Status</th>
                    <th>Start Date</th>
                    <th>Due Date</th>
                    <th>Created By</th>
                    <th></th>
                 
          </tr>
          </thead>
            <tbody></tbody>
       {{--   @foreach($closed_invoice as $i)
              <tbody>
              <td>{{ $i->name}}</td>
              <td>{{ $i->invoice_number}}</td>
              <td>{{ $i->date_in}}</td>
              <td>{{ $i->sub_total}}</td>
              <td>{{ $i->vat}}</td>
              <td>{{ $i->discount}}</td>
              <td>{{ $i->net_total}}</td>
              <td>{{ $i->amount_paid}}</td>
              <td>{{ $i->amount_due}}</td>
              <td>{{ $i->payment_status}}</td>
              <td style="color:green; font-family: 'Raleway',sans-serif; font-size: 15px; font-weight:100; line-height:12px; margin: 0 0 24px; text-align: center; text-transform: uppercase;">{{ $i->invoice_status}}</td>
              <td>{{ $i->start_date}}</td>
              <td>{{ $i->due_date}}</td>
              <td>{{ $i->adds}}</td>
            
              <td>
                  <a href="" class="btn btn-sm btn-info"><i class="glyphicon glyphicon-eye-open"></i>View</a>
              </td>
              </tbody>
          @endforeach --}}
     
      </table>
  </div>
       </div>
    </div>
    <div class="box col-md-6">
    {{--<div class="box-header">--}}
    {{--<a onclick="addForm()" class="btn btn-primary" >New Invoice</a>--}}
    <!-- {{--<a href="" class="btn btn-danger">Export PDF</a>--}}
    {{--<a href="" class="btn btn-success">Export Excel</a>--}} -->
    {{--</div>--}}   
    </div>
    @include('casual.staffing.form');
@endsection

@section('bot')
@include('casual.staffing.pay');
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
         var table = $('#staffing-table').DataTable({
            processing: true,
            serverSide: true,
            ajax:  "{{ url('apiStaffing') }}",
            columns: [
                {data: 'invoice_number', name: 'invoice_number'},
                {data: 'name', name: 'name'},
                {data: 'date_in', name: 'date_in'},
                {data: 'sub_total', name: 'sub_total'},
                {data: 'vat', name: 'vat'},
                {data: 'discount', name: 'discount'}, 
                {data: 'net_total', name: 'net_total'},
                {data: 'amount_paid', name: 'amount_paid'},
                {data: 'amount_due', name: 'amount_due'},
                {data: 'payment_status', name: 'payment_status'},
                {data: 'invoice_status', name: 'invoice_status'},
                {data: 'start_date', name: 'start_date'}, 
                {data: 'due_date', name: 'due_date'},
                {data: 'adds', name: 'adds'},  
                {data: 'action', name: 'action', orderable: false, searchable: false},
                {data: 'newaction', name: 'newaction', orderable: false, searchable: false}
               
            ]
        });
        $('#close_invoice').DataTable({
            processing: true,
            serverSide: true,
            ajax:  "{{ url('apiCloseStaffing') }}",
            columns: [
                {data: 'invoice_number', name: 'invoice_number'},
                {data: 'name', name: 'name'},
                {data: 'date_in', name: 'date_in'},
                {data: 'sub_total', name: 'sub_total'},
                {data: 'vat', name: 'vat'},
                {data: 'discount', name: 'discount'}, 
                {data: 'net_total', name: 'net_total'},
                {data: 'amount_paid', name: 'amount_paid'},
                {data: 'amount_due', name: 'amount_due'},
                {data: 'payment_status', name: 'payment_status'},
                {data: 'invoice_status', name: 'invoice_status'},
                {data: 'start_date', name: 'start_date'}, 
                {data: 'due_date', name: 'due_date'},
                {data: 'adds', name: 'adds'}, 
                {data: 'action', name: 'action', orderable: false, searchable: false},
             
               
            ]
        });
     $(document).on('click','#add_btn',function(){
          $('#personal').html(""); 
          $('#converting').html('');
          save_method = "add";
          $('input[name=_method]').val('POST');
          $('#modal-form').modal('show');
          $('#modal-form form')[0].reset();
          $('.modal-title').text('New Invoice');
          $('#expensive').html('');
          $("#withhold_amount").val("0.0");
          add_expensive_row();
     
          calculate(0,0);
          var html = '';
      html+='<h3>Personal Informations</h3>';
      html += '<span id="row"><div class="row">';
      html += '<div class="col-md-4">';
      html += '<input type="text" name="customer_name" id="customer_name" class="form-control"  required  placeholder="customer name"  required>';
      html +=' <span class="help-block with-errors"></span>';
      html += '</div>';
      html += '<div class="col-md-4">';
      html += '<input type="text" name="phone_number"  id="phone_number" class="form-control" placeholder="phone number" required  />';
      html +=' <span class="help-block with-errors"></span>';
      html += '</div>';
      html += '<div class="col-md-4">';
      html += '<input type="text" name="location"  id="location" class="form-control" placeholder="location"  required />';
      html +=' <span class="help-block with-errors"></span>';
      html += '</div>';
      
     
    
      html += '</div></div><br /></span>';
          $('#personal').append(html);
  
        });

 

/*Order Accepting*/
 function add_expensive_row(count_charge = ''){
   var tr = $(this).parent().parent();
     var html = '';
      html += '<span id="row'+count_charge +'"><div class="row">';
      html += '<div class="col-md-3">';
      html += '<input type="text" name="title[]" id="title'+count_charge+'" class="form-control selectpicker" data-live-search="true" required  placeholder="title"></textarea>';
      html += '</div>';
      html += '<div class="col-md-4">';
      html += '<textarea name="description[]" id="description'+count_charge+'" class="form-control selectpicker" data-live-search="true" required  placeholder="description"></textarea>';
      html += '</div>';
      html += '<div class="col-md-1">';
      html += '<input type="text" name="qty[]"  id="qty" class="form-control" required placeholder="qty" value="1"/>';
      html += '</div>';
      html += '<div class="col-md-2">';
      html += '<input type="text" name="price[]"  id="price" class="form-control" required placeholder="cost" value="0"/>';
      html += '</div>';
      html += '<div class="col-md-1">';

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
    var vat=sub*vat1;
    $('#vat').val(vat);
    var net=sub-vat;
    $('#net_total').val(net);
     $('#amount_due').val(sub); 
     $("#withhold_amount").val("0.0");

});

$('#withhold').on("change",function(){
      var withhold_per=Number($("#withhold").val());
      var net=Number($('#net_total').val());
      var vat1=Number($('#vat1').val());
      if(withhold_per==0.0){
        $("#amount_due").val('');
      var sub=$('#sub_total').val();
      var vat=sub*vat1;
      $('#vat').val(vat);
      $("#withhold_amount").val("0.0");
     
      $('#sub_total').val(net);
      $("#amount_due").val(net);
   
 
      }
      if(withhold_per==0.05){
        var hold_calc=withhold_per*net;
      $("#withhold_amount").val(hold_calc);
      var new_net=net-hold_calc;
    //   $('#net_total').val(new_net);
      var due=Number($("#sub_total").val());
      var ex=due-hold_calc;
      $("#amount_due").val('');
      $("#amount_due").val(ex);
      }
 });


    
             
$(document).on('click','.pay',function(){
          var id=$(this).attr("id");
          var payment_status=$(this).attr("payment_status");
        
          $('#staffing_id').val(id);
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

$('#currency').change(function(){
    $('#converting').html("");   
      if($('#currency').val()=='Tsh'){
        $('#converting').html("");   
      }
      if($('#currency').val()=='USD'){
  
        var html = '';
      html+='<h3>Currency Converting</h3>';
      html += '<span id="row"><div class="row">';
      html += '<div class="col-md-6">';
      html += '<label>Current Value in Tsh:</label>';
      html += '<input type="text" name="current_value" id="current_value" class="form-control"  required  placeholder="current value"  required>';
      html +=' <span class="help-block with-errors"></span>';
      html += '</div>';
      html += '<div class="col-md-6">';
      html += '<label>Amount Due</label>';
      html += '<input type="text" name="vat_inclusive"  id="vat_inclusive" class="form-control" placeholder="Change Value" readonly />';
      html +=' <span class="help-block with-errors"></span>';
      html += '</div>';
   
      html += '</div></div><br /></span>';
     $('#converting').append(html); 
 
      }
})
$(document).on('click','.reset',function(){
    $('#modal-form form')[0].reset();
   
})
$("#converting").delegate("#current_value","keyup",function(){
    var tr = $(this).parent().parent();
    tr.find("#vat_inclusive").val( tr.find("#current_value").val() * $("#amount_due").val());
    tr.find("#vat1").val( tr.find("#current_value").val() * $("#vat").val());

    tr.find("#vat_exclusive").val( tr.find("#current_value").val() * $("#amount_due").val());
    tr.find("#amount_due1").val( tr.find("#current_value").val() * $("#amount_due").val());
    })


$('#company_id').change(function(){
 
   if($('#company_id').val()=="normal"){
    $('#personal').html(""); 
 
     var html = '';
      html+='<h3>Personal Informations</h3>';
      html += '<span id="row"><div class="row">';
      html += '<div class="col-md-4">';
      html += '<input type="text" name="customer_name" id="customer_name" class="form-control selectpicker" data-live-search="true" required  placeholder="customer name">';
      html += '</div>';
      html += '<div class="col-md-4">';
      html += '<input type="text" name="phone_number"  id="phone_number" class="form-control" required placeholder="phone number" />';
      html += '</div>';
      html += '<div class="col-md-4">';
      html += '<input type="text" name="location"  id="location" class="form-control" required placeholder="location" />';
      html += '</div>';
     
    
      html += '</div></div><br /></span>';
  
      $('#personal').append(html);
    }
    if($('#company_id').val()!="normal"){
        $('#personal').html(""); 
    }

})




function editForm(id) {
        
        $('#expensive').html('');
        $('#personal').html('');
        $('#converting').html('');
        $('#form-item')[0].reset();
         save_method = 'edit';
         $('input[name=_method]').val('PATCH');
    
         var tr = $(this).parent().parent();
        
         count_charge=''; 
         $.ajax({
             url: "{{ url('/staffing') }}" + '/' + id + "/edit",
             type: "GET",
             dataType: "JSON",
             success: function(html) {
                 $('#modal-form').modal('show');
                 $('.modal-title').text('Details');
                  if(html.data[0].normal=='normal'){
                 if(html.data[0].currency=="USD"){
                    var    html_convert = '';
                  html_convert+='<h3>Currency Converting</h3>';
                  html_convert += '<span id="row"><div class="row">';
                  html_convert += '<div class="col-md-6">';
                  html_convert += '<label>Current Value in Tsh:</label>';
                  html_convert += '<input type="text" name="current_value" id="current_value" class="form-control"  required  placeholder="current value"  required>';
                  html_convert +=' <span class="help-block with-errors"></span>';
                  html_convert += '</div>';
                  html_convert += '<div class="col-md-6">';
                  html_convert += '<label>Amount Due</label>';
                  html_convert += '<input type="text" name="vat_inclusive"  id="vat_inclusive" class="form-control" placeholder="Change Value" readonly />';
                  html_convert +=' <span class="help-block with-errors"></span>';
                  html_convert += '</div>';
   
                  html_convert += '</div></div><br /></span>';
               $('#converting').append(html_convert); 
                 $('#id').val(html.data[0].id);

                 $('#company_id').val(html.data[0].company_id); 
                 $('#company_id').val(html.data[0].normal);
                 $('#company_id1').val(html.data[0].company_id);

                 $('#date_in').val(html.data[0].date_in);
                 $('#sub_total').val(html.data[0].tax_inclusive);
                 $('#vat').val(html.data[0].tax); 
                 $('#net_total').val(html.data[0].tax_exclusive);
                 $('#amount_due').val(html.data[0].amount_due1);
                 $('#discount').val(html.data[0].discount1); 
                 $('#tin_number').val(html.data[0].tin_number);
                 $('#currency').val(html.data[0].currency);
                 $('#phone_number').val(html.data[0].phone); 
                 $('#customer_name').val(html.data[0].name);
                 $('#location').val(html.data[0].location); 
                 $('#withhold').val(html.data[0].withhold1); 
                 $('#withhold_amount').val(html.data[0].withhold_amount1);
                 $('#current_value').val(html.data[0].current_value);
                 $('#vat1').val(html.data[0].vat_status);
                 $('#normal').val(html.data[0].normal); 
                 }
                 if(html.data[0].currency!="USD"){
                 $('#id').val(html.data[0].id);
              
                 $('#company_id').val(html.data[0].company_id); 
             
                 $('#company_id').val(html.data[0].normal);
                 $('#normal').val(html.data[0].normal);
                 $('#company_id1').val(html.data[0].company_id);
                 $('#date_in').val(html.data[0].date_in);
                  $('#sub_total').val((html.data[0].sub_total));
                  $('#vat').val((html.data[0].vat)); 
                  $('#net_total').val((html.data[0].net_total));
                  $('#amount_due').val((html.data[0].amount_due));
                  $('#discount').val(html.data[0].discount); 
                 $('#tin_number').val(html.data[0].tin_number);
                 $('#currency').val(html.data[0].currency); 
                 $('#phone_number').val(html.data[0].phone); 
                 $('#customer_name').val(html.data[0].name);
                 $('#withhold').val(html.data[0].withhold); 
                 $('#withhold_amount').val(html.data[0].withhold_amount);
                 $('#location').val(html.data[0].location);
                 $('#current_value').val(html.data[0].current_value);
                 $('#vat1').val(html.data[0].vat_status);
                  }
              
                 }
                 if(html.data[0].normal!='normal'){
              
                 if(html.data[0].currency=="USD"){
                    var    html_convert = '';
                  html_convert+='<h3>Currency Converting</h3>';
                  html_convert += '<span id="row"><div class="row">';
                  html_convert += '<div class="col-md-6">';
                  html_convert += '<label>Current Value in Tsh:</label>';
                  html_convert += '<input type="text" name="current_value" id="current_value" class="form-control"  required  placeholder="current value"  required>';
                  html_convert +=' <span class="help-block with-errors"></span>';
                  html_convert += '</div>';
                  html_convert += '<div class="col-md-6">';
                  html_convert += '<label>Amount Due</label>';
                  html_convert += '<input type="text" name="vat_inclusive"  id="vat_inclusive" class="form-control" placeholder="Change Value" readonly />';
                  html_convert +=' <span class="help-block with-errors"></span>';
                 html_convert += '</div>';
   
                  html_convert += '</div></div><br /></span>';
               $('#converting').append(html_convert); 
                 $('#id').val(html.data[0].id);
                 $('#company_id').val(html.data[0].company_id); 
                 $('#date_in').val(html.data[0].date_in);
                 $('#sub_total').val(html.data[0].tax_inclusive);
                 $('#vat').val(html.data[0].tax); 
                 $('#net_total').val(html.data[0].tax_exclusive);
                 $('#amount_due').val(html.data[0].amount_due1);
                 $('#discount').val(html.data[0].discount1); 
                 $('#tin_number').val(html.data[0].tin_number);
                 $('#currency').val(html.data[0].currency);
                 $('#phone_number').val(html.data[0].phone); 
                 $('#customer_name').val(html.data[0].name);
                 $('#location').val(html.data[0].location); 
                 $('#withhold').val(html.data[0].withhold1); 
                 $('#withhold_amount').val(html.data[0].withhold_amount1);
                 $('#current_value').val(html.data[0].current_value);
                 $('#vat1').val(html.data[0].vat_status); 
                 }
                 if(html.data[0].currency!="USD"){
                 $('#id').val(html.data[0].id);
                 $('#company_id').val(html.data[0].company_id); 
                 $('#date_in').val(html.data[0].date_in);
                  $('#sub_total').val((html.data[0].sub_total));
                  $('#vat').val((html.data[0].vat)); 
                  $('#net_total').val((html.data[0].net_total));
                  $('#amount_due').val((html.data[0].amount_due));
                  $('#discount').val(html.data[0].discount); 
                 $('#tin_number').val(html.data[0].tin_number);
                 $('#currency').val(html.data[0].currency); 
                 $('#phone_number').val(html.data[0].phone); 
                 $('#customer_name').val(html.data[0].name);
                 $('#withhold').val(html.data[0].withhold); 
                 $('#withhold_amount').val(html.data[0].withhold_amount);
                 $('#location').val(html.data[0].location);
                 $('#current_value').val(html.data[0].current_value);
                 $('#vat1').val(html.data[0].vat_status);
                  }
              
                 }
                 $.each(html.data, function(i, item){
                
                html_form=''; 
                html_form+= '<span id="row'+count_charge +'"><div class="row">';
                html_form+= '<div class="col-md-3">';
           
                html_form += '<input type="text" name="title[]" id="title" value="'+html.data[i].title+'" class="form-control selectpicker" data-live-search="true" required  placeholder="name">';
                html_form += '</div>';
                html_form+= '<div class="col-md-4">';
               
                html_form += '<input type="text" name="description[]" id="description"  value="'+html.data[i].description+'" class="form-control" placehplder="description"/>';
                html_form += '</div>';
                html_form += '<div class="col-md-1">';
               
                html_form+= '<input type="text" name="qty[]" id="qty"  value="'+html.data[i].qty+'" class="form-control" placehplder="qty"/>';
                html_form += '</div>';
                html_form += '<div class="col-md-2">';
             
                html_form+= '<input type="text" name="price[]" id="price"  value="'+html.data[i].price+'" class="form-control" placehplder="price"/>';
                html_form += '</div>';
                html_form += '<div class="col-md-1">';

               html_form += '<span class="amt" >'+html.data[i].amt+'</span>';
               html_form += '</div>';
               html_form += '<div class="col-md-1">';
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
             //   tr.find(".amt").html( tr.find(("#qty").val() * tr.find("#price").val());
             //   calculate(0,0);
                   });
          
             },
             error : function() {
                 alert("Nothing Data");
             }
         });
  var html = '';
   html+='<h3>Personal Informations</h3>';
   html += '<span id="row"><div class="row">';
   html += '<div class="col-md-4">';
   html += '<input type="text" name="customer_name" id="customer_name" class="form-control"  required  placeholder="customer name"  required>';
   html +=' <span class="help-block with-errors"></span>';
   html += '</div>';
   html += '<div class="col-md-4">';
   html += '<input type="text" name="phone_number"  id="phone_number" class="form-control" placeholder="phone number" required  />';
   html +=' <span class="help-block with-errors"></span>';
   html += '</div>';
   html += '<div class="col-md-4">';
   html += '<input type="text" name="location"  id="location" class="form-control" placeholder="location"  required />';
   html +=' <span class="help-block with-errors"></span>';
   html += '</div>';
   html += '</div></div><br /></span>';
       $('#personal').append(html);
     }
         $(document).on('click','.view',function(){
            $('#expensive').html('');
            $('#personal').html('');   
         var html = '';
          html+='<h3>Other Informations</h3>';
          html += '<span id="row"><div class="row">';
          html += '<div class="col-md-4">';
           html += '<input type="text" name="customer_name" id="customer_name" class="form-control selectpicker" data-live-search="true" required  placeholder="customer name">';
           html += '</div>';
           html += '<div class="col-md-4">';
           html += '<input type="text" name="phone_number"  id="phone_number" class="form-control" required placeholder="phone number" />';
           html += '</div>';
           html += '<div class="col-md-4">';
           html += '<input type="text" name="location"  id="location" class="form-control" required placeholder="location" />';
           html += '</div>';
           html += '</div></div><br /></span>';
  
           $('#personal').append(html);

             var id=$(this).attr("id");
            $.ajax({
                url:"view_details/"+id,
                cache:false,
                success: function(html) {
                    $('#modal-form').modal('show');
                    $('.modal-title').text('Details');
                    if(html.data[0].currency=="USD"){
                    $('#id').val(html.data[0].id);
                    $('#company_id').val(html.data[0].company_id); 
                    $('#date_in').val(html.data[0].date_in);
                    $('#sub_total').val(html.data[0].tax_inclusive);
                    $('#vat').val(html.data[0].tax); 
                    $('#net_total').val(html.data[0].tax_exclusive);
                    $('#amount_due').val(html.data[0].amount_due1);
                    $('#discount').val(html.data[0].discount1); 
                    $('#tin_number').val(html.data[0].tin_number);
                    $('#currency').val(html.data[0].currency);
                    $('#phone_number').val(html.data[0].phone); 
                    $('#customer_name').val(html.data[0].name);
                    $('#location').val(html.data[0].location); 
                    $('#withhold').val(html.data[0].withhold1); 
                   $('#withhold_amount').val(html.data[0].withhold_amount1); 
                    }
                    if(html.data[0].currency!="USD"){
                    $('#id').val(html.data[0].id);
                    $('#company_id').val(html.data[0].company_id); 
                    $('#date_in').val(html.data[0].date_in);
                    $('#sub_total').val(html.data[0].sub_total);
                    $('#vat').val(html.data[0].vat); 
                    $('#net_total').val(html.data[0].net_total);
                    $('#amount_due').val(html.data[0].amount_due);
                    $('#discount').val(html.data[0].discount); 
                    $('#tin_number').val(html.data[0].tin_number);
                    $('#currency').val(html.data[0].currency); 
                    $('#phone_number').val(html.data[0].phone); 
                    $('#customer_name').val(html.data[0].name);
                    $('#location').val(html.data[0].location); 
                    $('#withhold').val(html.data[0].withhold); 
                   $('#withhold_amount').val(html.data[0].withhold_amount); 
                    }
                    $.each(html.data, function(i, item){
                   html_form=''; 
                   html_form+= '<span id="row'+count_charge +'"><div class="row">';
                   html_form+= '<div class="col-md-3">';
                   html_form += '<label>Title</label>';
                   html_form += '<input type="text" name="title[]"  value="'+html.data[i].title+'" class="form-control selectpicker" data-live-search="true" required  placeholder="name">';
                   html_form += '</div>';
                   html_form+= '<div class="col-md-4">';
                   html_form += '<label>Description</label>';
                   html_form += '<input type="text"   value="'+html.data[i].description+'" class="form-control" readonly/>';
                   html_form += '</div>';
                   html_form += '<div class="col-md-1">';
                   html_form += '<label>Qty</label>';
                   html_form+= '<input type="text"   value="'+html.data[i].qty+'" class="form-control" readonly/>';
                   html_form += '</div>';
                   html_form += '<div class="col-md-2">';
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
                    url : "{{ url('staffing') }}" + '/' + id,
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
                    if (save_method == 'add') url = "{{ url('staffing') }}";
                    else url = "{{ url('staffing') . '/' }}" + id;

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
                 
                    if (save_method == 'add') url = "{{ url('payment') }}";
           

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



    </script>

@endsection
