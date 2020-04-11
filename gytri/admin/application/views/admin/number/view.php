

  <div class="row">

    

     <div class="col-lg-12 col-12">
       <div class="card card-primary">
         <?php //echo validation_errors(); ?>
         <?php if($this->session->flashdata('success')){ ?>
          <span class="alert alert-success"><?php echo $this->session->flashdata('success')?></span> 
        <?php } ?>
              <div class="card-header">
                <h3 class="card-title">Number Form</h3>
               
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" method="post" action="<?php echo $action ?>">
                <input type="hidden" name="id" value="<?php echo $id ?>">
                <div class="card-body">
                  <div class="form-group">
                    <label for="num">Number</label>
                    <input type="text" class="form-control" id="num" name="num" value="<?php echo $num ?>" placeholder="Enter no">
                      <span style="color:red"><?php echo form_error('num')?></span>  
                  </div>
                  

                   <div class="form-group">
                    <label for="type">type</label>
                   <select class="form-control" name="type" id="type">
                    <option value="">Select time</option> 
                    <option value="1"<?php if($type==1){echo 'selected';} ?>>Morning</option>
                    <option value="2"<?php if($type==2){echo 'selected';} ?>>Evening</option>
                   </select>
                     <span style="color:red"><?php echo form_error('type')?></span> 
                  </div>
                
                 </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary btn-sm">Submit</button>
                 <a href="<?php echo base_url('number') ?>" class="btn btn-info btn-sm ">Back</a>
                </div>
              </form>
            </div>

    </div>
        
 </div>
