
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
              <a href="<?php echo base_url('number/create') ?>" class="btn btn-info btn-sm  float-right">Create</a>
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Date</th>
                  <th>Morning</th>
                  <th>Evening</th>
                <!--   <th>Type</th> -->
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                  <?php
                     if(isset($res)){
           
                   foreach ($res as $key => $value) {

                    ?>
                                
                <tr>
                  <td><span class="alert alert-info"><?php echo date('d/m/Y',strtotime($value->date)) ?></span></td>
                  <td class=""><span class="alert alert-success"><?php if($value->num!=1111){ echo $value->num;}else{echo '--';}  ?></span></td>
                   <td class=""><span class="alert alert-success"><?php if($value->num_e!=1111){ echo $value->num_e;}else{ echo '--';}?></span></td>
                  <!-- <td><?php echo ($value->type==1)?'Morning':'Evening'?></td> -->
                  <!-- <td><?php echo $value->address ?></td> -->
               
                  <td>
                    <!-- <a href="<?php echo base_url('number/edit/'.$value->id) ?>" class="btn btn-info btn-sm">Edit</a> -->
                    <a href="<?php echo base_url('number/delete/'.$value->id) ?>" class="btn btn-danger btn-sm">delete</a>

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

