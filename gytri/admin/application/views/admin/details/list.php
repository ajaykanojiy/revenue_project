      
    
    
    
    <section class="content">
       
            
      <div class="row">
        <div class="col-12">
       
          <div class="card">
            <?php if($this->session->flashdata('mess')) {?>
             <span style="text-align: center; " class="alert alert-success"><?php echo $this->session->flashdata('mess') ?></span>
           <?php } ?>
           
           
           
            <div class="card-body">
                <form action="<?php echo base_url('details/excel') ?>" method="post" autocomplete="off">
             <div class="row">
                <div class="col-md-3">
                    <input type=text name="from" class="datepicker" id="from" value="<?php if($from){echo $from;}else{echo date('d-m-Y');}?>">
                </div>
                
                <div class="col-md-3">
                    <input type=text name="to" class="datepicker" id="to" value="<?php if($to){echo $to;}else{echo date('d-m-Y');} ?>">
                </div>
                
                <div class="col-md-3">
                <button type="submit" class="btn btn-info btn-sm">Excel Export</button>
                 
                </div>
                
                </div>
                </form>
                
                   <!--<a href="<?php echo base_url('details/excel') ?>" class="btn btn-info btn-sm  float-right">Excel Export</a>-->
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                   <th>No</th>
                  <th>Name</th>
                  <th>Email</th>
                  <th>Phone</th>
                  <th>State</th>
                  <!--<th>Message</th>-->
                  <th>Amount</th>
                  <th>Loan Type</th>
                   <th>Date</th> 
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                  <?php
                      $no=0;
                      
                    //   print_r($res2);
                      
                      if($res2){
                          $result=$res2;
                      }
                      else{
                          $result=$res;
                      }
                     if($result){
           
                   foreach ($result as $key => $value) {

                    ?>
                                
                <tr>
                    <td><?php echo $no+=1; ?></td>
                  <td><?php echo $value->name ?></td>
                  <td><?php echo $value->email ?></td>
                  <td><?php echo $value->phone ?></td>
                  <td><?php echo $value->state ?></td>
                   <td><?php echo $value->amount ?></td>
                    <td><?php echo $value->type ?></td>
                    <!--<td><?php echo $value->mess ?></td>-->
                    <td><?php echo date('d-m-Y',strtotime($value->createdat)); ?></td>
                  <td>
                    <!-- <a href="" class="btn btn-info">Edit</a> -->
                    <a href="<?php echo base_url('details/delete/'.$value->id) ?>" class="btn btn-danger">delete</a>

                  </td>
                  
                </tr>
                  <?php } }?>
             
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
   <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    
     <script type="text/javascript">
        $(document).ready(function(){
        $('.datepicker').datepicker({
      // autoclose: true
       format: 'dd-mm-yyyy'
    })
    });
    </script>  

