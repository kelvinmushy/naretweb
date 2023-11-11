<div class="modal fade" id="modal-form" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog  ">
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
                    <input type="text" readonly name="user" class="form-control form-control-sm" id="user" value=" {{ \Auth::user()->name}}"/>
                    <input type="hidden" id="staff_type" name="staff_type" value="fumigation">
                    <div class="box-body">
                    <div class="row">
                  
                        <label>Name</label>
                            <input type="text" class="form-control" id="name" name="name" required>
                            <span class="help-block with-errors"></span>
                            <label>Tin Number:</label>
                            <input type="text" class="form-control" id="tin_number" name="tin_number" required>
                            <span class="help-block with-errors"></span>
                            <label>VRN:</label>
                            <input type="text" class="form-control" id="vrn" name="vrn">
                            <label>Phone Number</label>
                            <input type="text" class="form-control" id="phone" name="phone"  required>
                            <span class="help-block with-errors"></span>
                            <label>Email:</label>
                            <input type="text" class="form-control" id="email" name="email"  required>
                            <span class="help-block with-errors"></span>
                            <label>Location:</label>
                            <input type="text" class="form-control" id="location" name="location"  required>
                            <span class="help-block with-errors"></span>
                               
                           <label>Status</label>
                           <select class="form-control" name="status" id="status">
                           <option disabled>--select status--</option>
                           <option value="active">Active</option>
                           <option value="inactive">Inactive</option>
                            <span class="help-block with-errors"></span>
                            </select>
                       
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

    

