<div class="modal fade" id="modal-form" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form  id="form-item" method="post" class="form-horizontal" data-toggle="validator" enctype="multipart/form-data" >
                {{ csrf_field() }} {{ method_field('POST') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title"></h3>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="id" name="id">
                    <input type="hidden" id="staff_type" name="staff_type" value='staffing'>
                    <div class="box-body">
                    <div class="row">
                      <div class='col-md-6'>
                      <label>Supplier</label>
                        <select id="suppliers_id" name="suppliers_id" class="form-control">
                        <option disabled id="ophide">--select Company--</option>
                         @foreach($supplier as $x)
                         <option  value="{{$x->id}}">{{$x->tin_number}}</option>
                        @endforeach
                        <span class="help-block with-errors"></span>
                        </select>
                      </div>
                      <div class='col-md-6'>
                      <label>Date</label>

                      <input type="text" class="form-control" id="date_in" name="date_in" value="<?php $kevi=date('Y-m-d');echo $kevi?>"   required readonly>
                     <span class="help-block with-errors"></span>
                      </div>
                      </div>
                      <hr>
                      </hr>
                      <div class="row">
                      <div class='col-md-12'>
                      <span id="expensive"></span>
                       </span>
                      </div>
                       </div>
                       <hr></hr>
                       <div class="row">
                       <label for="sub_total" class="col-sm-3 col-form-label" align="right">Total Inclusive of Vat</label>
                      <div class="col-sm-6">
                        <input type="text" readonly name="sub_total" class="form-control form-control-sm" id="sub_total" required/>
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="gst" class="col-sm-3 col-form-label" align="right">VAT (18%)</label>
                      <div class="col-sm-3">
                       <select class="form-control" id="vat1" name="vat1">
                  
                       <option value="0">No</option>
                       <option value="0.152542372881355">yes</option>
                       </select>
                      </div>
                      <div class="col-sm-3">
                        <input type="text" readonly name="vat" class="form-control form-control-sm" id="vat" required/>
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="discount" class="col-sm-3 col-form-label" align="right">Discount</label>
                      <div class="col-sm-6">
                        <input type="text" name="discount" class="form-control form-control-sm" id="discount" required/>
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="net_total" class="col-sm-3 col-form-label" align="right">Total Exclusive of Vat</label>
                      <div class="col-sm-6">
                        <input type="text" readonly name="net_total" class="form-control form-control-sm" id="net_total" required/>
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="due" class="col-sm-3 col-form-label" align="right">Due</label>
                      <div class="col-sm-6">
                      <input type="hidden" readonly name="user" class="form-control form-control-sm" id="user" value=" {{ \Auth::user()->name}}"/>
                        <input type="text" readonly name="amount_due" class="form-control form-control-sm" id="amount_due" required/>
                      </div>
                    </div>
                       </div>
                       <!-- <div class="form-group row">
                      <label for="amount paid" class="col-sm-3 col-form-label" align="right">Paid Amount</label>
                      <div class="col-sm-6">
                        <input type="text"  name="amount_paid" class="form-control form-control-sm" id="amount_paid" required/>
                      </div>
                
                    </div> -->
                    <!-- <div class="form-group row">
                    <input type="hidden" readonly name="user" class="form-control form-control-sm" id="user" value=" {{ \Auth::user()->name}}"/>
                      <label for="account" class="col-sm-3 col-form-label" align="right">Select Account</label>
                      <div class="col-sm-6">
                       <select class="form-control" name="account_id" id="account_id">
                        <option disabled>--select Account--</option>
                        @foreach($account as $account)
                         <option value="{{$account->id}}">{{$account->account_name}}</option>
                        @endforeach
                       </select>
                      </div>
                
                    </div> -->
                    <!-- /.box-body -->

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


    


    


