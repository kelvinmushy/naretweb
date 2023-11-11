<div class="modal fade" id="modal-expensive" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form  id="form-expensive" method="post" class="form-horizontal" data-toggle="validator" enctype="multipart/form-data" >
                {{ csrf_field() }} {{ method_field('POST') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title"></h3>
                </div>
                <div class="modal-body"> 
                    <div class="box-body">
                   <input type="hidden" id="id" name="id">
                   <input type="hidden" readonly name="user" class="form-control form-control-sm" id="user" value=" {{ \Auth::user()->name}}"/>
                   <input type="hidden" id="staff_type" name="staff_type" value="staffing">
                    <div class="row">
                        <div class="col-md-4">
                         <div class="form-group">
                            <label>Description</label>
                             <textarea name="description" id="description" class="form-control" required></textarea>
                            <span class="help-block with-errors"></span>
                        </div>
                        </div>
                          <div class="col-md-4">
                            <div class="form-group">
                            <label >Select Account</label>
                            <select id="account_exp_id" name="account_id"  class="form-control" >
                            <option disabled>--select group--</option>
                            @foreach($account as $i)
                            <option value="{{$i->id}}">{{$i->account_name}}</option>
                            @endforeach
                         
                            </select>
                          
                            <span class="help-block with-errors"></span>
                        </div>
                        </div>
                        <div class="col-md-4">
                         <div class="form-group">
                            <label>Account Balance</label>
                            <input type="text" id="account_balance" class="form-control" readonly>
                            <span class="help-block with-errors"></span>
                        </div>
                        </div>
                      
                    </div> 
                    <div class="row">
                    <div class="col-md-6">
                            <div class="form-group">
                            <label>Amount</label>
                            <input type="text" name="amount" id="amount" class="form-control">
                            <span class="help-block with-errors"></span>
                        </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                            <label>Date</label>
                            <input type="text" name="expensive_date" id="expensive_date" value="<?php
                            $date=date('Y-m-d');
                            echo $date;
                            ?>"  class="form-control" readonly>
                            <span class="help-block with-errors"></span>
                        </div>
                        </div>
                    </div>
                    </div>

                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>

            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


    


    


