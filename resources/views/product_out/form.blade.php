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
                    <input type="hidden" readonly name="user" class="form-control form-control-sm" id="user" value=" {{ \Auth::user()->name}}"/>
                    <div class="box-body">
                    <div class="row">
                     <div class='col-md-6'>
                      <label >Litre(s)</label>
                        <select id="product_id" name="product_id" class="form-control">
                        <option disabled id="ophide">--select Litre--</option>
                         @foreach($products as $x)
                         <option  value="{{$x->id}}">{{$x->product_name}}</option>
                        @endforeach
                        <span class="help-block with-errors"></span>
                        </select>
                   </div>
                   <div class="col-md-6">
                    <label>Date Purchase</label>
                    <input data-date-format='yyyy-mm-dd' type="text" 
                    class="form-control" id="date_out" name="date_out" 
                     value="<?php $date=date('Y-m-d');echo $date?>" required readonly>
                    <span class="help-block with-errors"></span>
                
            </div>
                   </div>
                     <div class="row">
                     <div class="col-md-6">
                     <label >Quantity</label>
                     <input type="text" class="form-control" id="qty" name="qty" value="1" require>
                     <span class="help-block with-errors"></span>
                    </div>
                 
                     
                    </div>
                    <div class="row">
                  
                     <div class="col-md-6">
                            <label >Sales Price</label>
                            <input type="text" class="form-control" id="price" name="price" required >
                            <span class="help-block with-errors"></span>
                        
                     </div>
                     <div class="col-md-6">
                            <label >Total Price</label>
                            <input type="text" class="form-control" id="tprice" name="tprice"  readonly>
                            <span class="help-block with-errors"></span>
                        
                    </div>
                    </div>
                    </div>
                    <div class="row">
                    <div class='col-md-6'>
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

    

