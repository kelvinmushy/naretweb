<div class="modal fade" id="modal-form" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <form  id="form-item" method="post" class="form-horizontal" data-toggle="validator" enctype="multipart/form-data" >
                {{ csrf_field() }} {{ method_field('POST') }}

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title"></h3>
                </div>
                <div class="modal-body">
                <input type="hidden" readonly name="user" class="form-control form-control-sm" id="user" value=" {{ \Auth::user()->name}}"/>
                    <input type="hidden" id="id" name="id">
                    <div class="box-body">
                     <div class='row'>
                      <div class='col-md-6'>
                      <label >Payment Status</label>
                       <select class="form-control" name="pay_status" id="pay_status">
                       <option value='paid'>paid</option>
                       <option value='not paid'>not paid</option>
                     </select>
                      <span class="help-block with-errors"></span>
                      </div>
                     
                      <div class='col-md-6'>
                      <label>Date Paid</label>
                      <input type="date" class="form-control" id="pay_date" name="pay_date"  required>
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

    

