<div class="modal fade" id="view-form" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form  id="form-item" method="post" class="form-horizontal" data-toggle="validator" enctype="multipart/form-data" >
                {{ csrf_field() }} {{ method_field('POST') }}

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times</span></button>
                    <h3 class="modal-title"></h3>
                </div>




        <div class="modal-body">
                    <input type="hidden" id="id" name="id">
                    <div class="box-body">
                    <div class="row">
                    <div class="row">
         <div class="col-md-4">
          <label>Task Name:</label>
       
         </div>
           <div class="col-md-4">
          <label>Starting Date</label>
           <input type="date" name="start_date" id="start_date" class="form-control">
         </div> 
         <div class="col-md-4">
          <label>Task Cost</label>
           <input type="text" name="task_cost"  id="task_cost" class="form-control" required>
         </div>
         </div> 
       </div>
       <hr></hr>
       
       <hr></hr>
         <div class="row">
         <div class="col-md-6">
          <div class="row">
            <div class="col-md-8">
           <label>Labour Cost</label>
           <input type="text" name="labour_cost"  id="labour_cost" class="form-control" required>
            </div>
            <div class="col-md-4">
                 <label>Capacity</label>
               <input type="text" name="labour_qty" id="labour_qty" class="form-control" required>
            </div>
          </div>
         </div>
     
           <div class="col-md-6">
          <label>Labour Total Cost</label>
           <input type="tesxt" name="labour_tcost"  id="labour_tcost" class="form-control" readonly>
         </div>
       </div>
       <hr></hr>
       <div class="row">
            <div class="col-md-4">
           <label>Ofice/Company Name</label>
           <input type="tesxt" name="cname"  id="cname" class="form-control">
         </div>
          <div class="col-md-4">
           <label>Contact</label>
           <input type="tesxt" name="contact"  id="contact" class="form-control">
         </div>
         <div class="col-md-4">
           <label>Location</label>
           <input type="tesxt" name="location"  id="location" class="form-control">
         </div>
       </div>
       <hr></hr>
       <div class="row">
       <div class='col-md-12'>
       <label>Expensive</label>
       <span id="expensive"></span>
     
       </span>
         </div>

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
  
   

