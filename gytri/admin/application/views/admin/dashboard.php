 <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <?php 
          // $this->db->like('date',date('Y-m-d'));
          // $res=$this->db->get('number')->row();
          // print_r($res);
          ?> 
          
                   
          <div class="col-lg-6 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3>Morning</h3>

                <p><?php //if(isset($res->num)){ echo $res->num ;}?></p>
              </div>
              <div class="icon">
                <i class="ion ion-pie-graph"></i>
              </div>
              <a href="#" class="small-box-footer"><?php echo date('d/m/Y') ?> <i class=""></i></a>
            </div>
          </div>


           <div class="col-lg-6 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3>Evening</h3>

                <p><?php //if(isset($res->num_e)){echo $res->num_e;}  ?></p>
              </div>
              <div class="icon">
                <i class="ion ion-pie-graph"></i>
              </div>
              <a href="#" class="small-box-footer"><?php echo date('d/m/Y') ?> <i class=""></i></a>
            </div>
          </div>

           

          
        
        </div>
   
      </div>
    </section>