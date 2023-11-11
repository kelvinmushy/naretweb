<div class="modal fade" id="modal-stock" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <form  id="form-item" method="post" class="form-horizontal" data-toggle="validator" enctype="multipart/form-data" >
                {{ csrf_field() }} {{ method_field('POST') }}
                <div class="modal-header">
                    <button  dissable type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title"></h3>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="id" name="id">
                    <div class="box-body">
                    <div class="row">
                    <div class='col-md-12'>
                            <label >Name</label>
                            <input type="text" class="form-control" id="product_name" name="product_name" >
                            <span class="help-block with-errors"></span>
                       
                    </div>
                    </div>
                    <!-- <div class="row">
                    <div class='col-md-12'>
                            <label >Bags</label>
                             <input type="text" name="bags" id="bags" class="form-control" >
                            <span class="help-block with-errors"></span>
                    
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
