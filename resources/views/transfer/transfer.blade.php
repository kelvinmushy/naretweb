<div class="modal fade" id="modal_transfer" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <form  id="transfer-form" data-toggle="validator" enctype="multipart/form-data" >
                {{ csrf_field() }} {{ method_field('POST') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title">Transfer Money</h3>
                </div>

                <div class="modal-body"> 
                    <div class="box-body">
                    <input type="hidden" id="accounts_id" name="accounts_id">
                    <input type="hidden" id="staffs_type" name="staffs_type" value="staffing">
                   <!-- <input type="hidden" id="staff_type" name="staff_type" value="staffing"> -->
                    <div class="row">
                    <div class="col-md-4">
                         <div class="form-group">
                            <label>Balance</label>
                            <input type="text" class="form-control" id="current" name="current" readonly>
                            <span class="help-block with-errors"></span>
                        </div>
                        </div>
                        <div class="col-md-4">
                         <div class="form-group">
                            <label>Amount</label>
                            <input type="text" class="form-control" id="amount1" name="amount1"  autofocus required>
                            <span class="help-block with-errors"></span>
                        </div>
                        </div>
                        <div class="col-md-4">
                         <div class="form-group">
                            <label>Date</label>
                            <input type="text" class="form-control" id="transfer_date" name="transfer_date" value="<?php $date=date('Y-m_d');echo $date?>" readonly>
                            <span class="help-block with-errors"></span>
                        </div>
                        </div>
                        </div>
                        <div class="row">
                        <div class="col-md-4">
                         <div class="form-group">
                            <label>To</label>
                          <select id="account_id" name="account_id" class="form-control">
                          <option disabled>--select Account</option>
                          @foreach($account as $account)
                          <option value="{{$account->id}}">{{$account->account_name}}</option>
                          @endforeach
                          </select>
                           
                            <span class="help-block with-errors"></span>
                        </div>
                        </div>
                        <div class="col-md-4">
                         <div class="form-group">
                         <label>remain Amount</label>
                             <input type="text" name="remain" id="remain" class="form-control" readonly>
                            <span class="help-block with-errors"></span>
                        </div>
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
