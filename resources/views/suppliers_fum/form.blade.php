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
                    <input type="hidden" id="id" name="id">


                    <div class="box-body">
                    
                        <div class="form-group">
                            <label >Name</label>
                            <input type="text" class="form-control" id="name" name="name"  autofocus required>
                            <span class="help-block with-errors"></span>
                        </div>
                        <div class="form-group">
                            <label >Tin Number</label>
                            <input type="text" class="form-control" id="tin_number" name="tin_number"  autofocus required>
                            <span class="help-block with-errors"></span>
                        </div>
                        <div class="form-group">
                            <label>VRN</label>
                            <input type="text" class="form-control" id="vrn" name="vrn" >
                            <span class="help-block with-errors"></span>
                        </div>
                        <div class="form-group">
                            <label>Address</label>
                            <input type="text" class="form-control" id="address" name="address"   required>
                            <span class="help-block with-errors"></span>
                        </div>

                        <div class="form-group">
                            <label >Email</label>
                            <input type="email" class="form-control" id="email" name="email"   required>
                            <span class="help-block with-errors"></span>
                        </div>

                        <div class="form-group">
                           <label>Phone</label>
                            <input type="hidden" class="form-control" id="staff_type" name="staff_type" value="fumigation">
                            <input type="text" class="form-control" id="phone" name="phone"   required>
                            <span class="help-block with-errors"></span>
                        </div>
                       <div class="form-group">
                       <label>Status</label>
                           <select class="form-control" name="status" id="status">
                           <option disabled>--select status--</option>
                           <option value="active">Active</option>
                           <option value="inactive">Inactive</option>
                            <span class="help-block with-errors"></span>
                            </select>
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
