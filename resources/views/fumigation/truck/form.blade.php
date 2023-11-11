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
                    <div class="row">
                  
                      <label >Company</label>
                        <select id="company_id" name="company_id" class="form-control">
                        <option disabled id="ophide">--select product--</option>
                         @foreach($comp as $x)
                         <option  value="{{$x->id}}">{{$x->name}}</option>
                        @endforeach
                        <span class="help-block with-errors"></span>
                        </select>
                        <label>Truck Name:</label>
                            <input type="text" class="form-control" id="truck_name" name="truck_name"  required>
                            <span class="help-block with-errors"></span>
                        <label>Truck Number</label>
                            <input type="text" class="form-control" id="truck_number" name="truck_number"  required>
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

    

