<div class="modal fade" id="modal-account-form" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <form  id="form-account" data-toggle="validator" enctype="multipart/form-data" >
                {{ csrf_field() }} {{ method_field('POST') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title">Add Account</h3>
                </div>
                <div class="modal-body"> 
                    <div class="box-body">
                   <input type="hidden" id="id" name="id">
                    <div class="row">
                        <div class="col-md-6">
                         <div class="form-group">
                            <label>Name</label>
                            <input type="hidden" class="form-control" id="staff_type" name="staff_type" value="asali">
                            <input type="text" class="form-control" id="account_name" name="account_name"  autofocus required>
                            <span class="help-block with-errors"></span>
                        </div>
                        </div>
                          <div class="col-md-6">
                                <div class="form-group">
                            <label >Group</label>
                            <select id="account_group" name="account_group"  class="form-control" >
                            <option disabled>--select group--</option>
                            <option value="Income">Incomes</option>
                            <!-- <option  value="Expenses">Expenses</option> -->
                            <!-- <option  value="Liability">Liability</option>
                            <option  value="Owner Equity">Owner Equity</option> -->
                            </select>
                        
                            <span class="help-block with-errors"></span>
                        </div>
                        </div>
                        <!-- <div class="col-md-4">
                                <div class="form-group">
                            <label>type</label>
                            <select id="account_type" name="account_type"  class="form-control" >
                            <option disabled>--account type--</option>
                            <option value="Current Assets">Current Assets</option>
                            <option value="Non Current Assets">Non Current Assets</option>
                            <option  value="Operating Income">Operating Income</option>
                            <option  value="Non Operating Income">Non Operating Income</option>
                            <option  value="Gains">Gains</option>
                            <option  value="Losses">Losses</option>
                            <option  value="Equity">Equity</option>
                            <option  value="Long Term Liability">Long Term Liability</option>
                            <option  value="Short Term Liability">Short Term Liability</option>
                            </select>
                            <span class="help-block with-errors"></span>
                        </div>
                        </div> -->
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
