

  <div class="row">

    

     <div class="col-lg-12 col-12">
       <div class="card card-primary">
         <?php //echo validation_errors(); ?>
         <?php if($this->session->flashdata('success')){ ?>
          <span class="alert alert-success"><?php echo $this->session->flashdata('success')?></span> 
        <?php } ?>
              <div class="card-header">
                <h3 class="card-title">Login Create  Form</h3>
               
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" method="post" action="<?php echo $action ?>">
                <input type="hidden" name="id" value="<?php echo $id ?>">
                <div class="card-body">

                  <div class="form-group">
                    <label for="clint_name">Name</label>
                    <input type="text" class="form-control" id="name" name="name" value="<?php echo $name ?>" placeholder="Enter name">
                      <span style="color:red"><?php echo form_error('name')?></span>  
                  </div>

               
                    
                   <div class="form-group">
                    <label for="clint_no">Password</label>
                    <input type="number" class="form-control" id="password" name="password" value="<?php echo $password ?>" placeholder="password">
                     <span style="color:red"><?php echo form_error('password')?></span> 
                  </div>

                 
                

                 </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary btn-sm">Submit</button>
                 <a href="<?php echo base_url('login_create') ?>" class="btn btn-info btn-sm">Back</a>
                </div>
              </form>
            </div>

    </div>
        
 </div>
