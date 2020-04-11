
    <section class="content">
      <div class="row">
        <div class="col-12">
         
          <!-- /.card -->
           
          <div class="card">
            <?php if($this->session->flashdata('mess')) {?>
             <span style="text-align: center; " class="alert alert-success"><?php echo $this->session->flashdata('mess') ?></span>
           <?php } ?>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Name</th>
                  
                  <th>Phone</th>

                  <!-- <th>Amount</th> -->
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
                
                  <td><?php echo $value->phone ?></td>
                
                  <!-- <td><?php echo $value->amount ?></td> -->
                  <td>
                    <!-- <a href="" class="btn btn-info">Edit</a> -->
                    <a href="<?php echo base_url('details/delete_popup/'.$value->id) ?>" class="btn btn-danger">delete</a>

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

