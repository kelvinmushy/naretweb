
<div class="modal fade" id="modal_payment" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form  id="form-item-payment" method="post" class="form-horizontal" data-toggle="validator" enctype="multipart/form-data" >
                {{ csrf_field() }} {{ method_field('POST') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title"></h3>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="staffing_id" name="staffing_id">
                     <input type="hidden" id="staff_type" name="staff_type" value="staffing">
                    <div class="box-body">
                    <div class="row">
                      <div class='col-md-6'>
                      <label>Amount received</label>
                      <input type="text" class="form-control" id="amount_paid" name="amount_paid" required>
                     <span class="help-block with-errors"></span>
                      </div>
                      <div class='col-md-6'>
                      <label>Payment Date</label>
                      <input type="date" class="form-control" id="payment_date" name="payment_date"  value="<?php $kevi=date('Y-m-d');echo $kevi?>" readonly>
                      <span class="help-block with-errors"></span>
                      </div>
                      </div>
                      <hr>
                      </hr>
                      <div class="row">
                      <div class='col-md-6'>
                      <label>Payment Method</label>
                      <select id="payment_method"  name="payment_method" class="form-control">
                     <option disabled ></option>
                     <option value="cash in hand">cash in hand</option>
                     <option value="bank">bank</option>
                     <option value="mpesa">mpesa</option>
                     </select>
                      <span class="help-block with-errors"></span>
                      </div>
                      <div class='col-md-6'>
                      <input type="hidden" readonly name="user" class="form-control form-control-sm" id="user" value=" {{ \Auth::user()->name}}"/>
                      <label>Account Name</label>
                      <select id="account_id"  name="account_id" class="form-control">
                     <option disabled ></option>
                      @foreach($account as $account)
                      <option value="{{$account->id}}">{{$account->account_name}}</option>
                      @endforeach
                     </select>
                      <span class="help-block with-errors"></span>
                      </div>
                      </div>
                      <hr>
                      </hr>
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
