
<div class="modal fade" id="modal-labour" tabindex="2" role="dialog" aria-hidden="true" >
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form  id="form-labour" method="post" class="form-horizontal" data-toggle="validator" enctype="multipart/form-data" >
                {{ csrf_field() }} {{ method_field('POST') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title"></h3>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="invoices2_id" name="invoices2_id">
                    <div class="box-body">
                    <div class="row">
                      <div class='col-md-6'>
                      <label>Amount Paid</label>
                      <input type="text" class="form-control" id="amount_paid1" name="amount_paid1"  required>
                     <span class="help-block with-errors"></span>
                      </div>
                      <div class='col-md-6'>
                      <label>Payment Date</label>
                      <input type="text" class="form-control" id="payment_date" name="payment_date"  value="<?php
                            $date=date('Y-m-d');
                            echo $date;
                            ?>"  required readonly>
                      <span class="help-block with-errors"></span>
                      </div>
                      </div>
                      <div class='row'>
                      <div class="col-md-6">
                       
                            <label >Select Account</label>
                            <select id="account_id" name="account_id"  class="form-control" >
                            <option disabled>--select group--</option>
                            @foreach($account1 as $i)
                            <option value="{{$i->id}}">{{$i->account_name}}</option>
                            @endforeach
                            </select>
                            <span class="help-block with-errors"></span>
                       
                        </div>
                        <div class="col-md-6">
 
                        <input type="hidden" id="staff_type"  name="staff_type" class="form-control" value="fumigation">
                            <label>Account Balance</label>
                            <input type="text" id="account_balance" class="form-control" readonly>
                            <span class="help-block with-errors"></span>
                      
                        </div>
                      </div> 
                    <!-- /.box-body -->

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>

            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
