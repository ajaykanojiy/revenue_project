
    <section class="content">
      <div class="row">
        <div class="col-12">
         
          <!-- /.card -->
           
          <div class="card">
            <?php if($this->session->flashdata('success')) {?>
             <span style="text-align: center; " class="alert alert-success"><?php echo $this->session->flashdata('success') ?></span>
           <?php } ?>

            
            <!-- /.card-header -->
            <div class="card-body">
              <a href="<?php echo base_url('login_create/create') ?>" class="btn btn-info btn-sm  float-right">Create</a>
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Name</th>
                  <!-- <th>Email</th> -->
                  <th>Password</th>
                 <!--  <th>Type</th>
                  <th>Status</th> -->
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                  <?php
                     if(isset($res)){
           
                   foreach ($res as $key => $value) {

                    ?>
                                
                <tr>
                  <td><?php echo $value->name ?></td>
                  <!-- <td><?php echo $value->email ?></td> -->
                  <td><?php echo $value->password ?></td>
                 <!--  <td><?php echo $value->type ?></td>
                  <td><?php echo $value->status ?></td> -->
                  
                  <td>
                    <a href="<?php echo base_url('login_create/edit/'.$value->id) ?>" class="btn btn-info btn-sm">Edit</a>
                    <a href="<?php echo base_url('login_create/delete/'.$value->id) ?>" class="btn btn-danger btn-sm">delete</a>

                  </td>
                  
                </tr>
                  <?php } } ?>
             
                </tbody>
              
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->

