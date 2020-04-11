 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Complain List          
            <small></small>
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-primary">
                    <!-- /.box-header -->
                    <div class="box-body">
                        <!-- ******************/master header end ****************** -->
        <div class="row" style="margin-bottom: 10px">
            <div class="col-md-4">
              
            </div>
            <div class="col-md-4 text-center">
                <div style="margin-top: 4px"  id="message">
                    <?php echo $this->session->userdata('message') <> '' ? $this->session->userdata('message') : ''; ?>
                </div>
            </div>
            <?php $login_type= $this->session->userdata('type');

         if($login_type==5){
            $block_style="display: none";   // vender not see - customer see
            $block_hide="display: none";    // vender not see - customer not see 
            $blo_hide="display: show";      // vender  see - customer not see

        }
         elseif($login_type==3){
           $block_style="display: show";
            $block_hide="display: none";
            $blo_hide="display: none";

        }
        else{
            $block_style="display: show";
            $block_hide="display: show";
            $blo_hide="display: show";
        }


        ?>
            <div class="col-md-4 text-right" style="<?php echo $block_style;  ?>">
                <?php echo anchor(site_url('complain/create'), 'Create', 'class="btn btn-primary"'); ?>
		<?php echo anchor(site_url('complain/excel'), 'Excel', 'class="btn btn-primary"'); ?>
	    </div>
        </div>
        <div style="overflow-x:auto;">
        <table class="table table-bordered table-striped" id="mytable">
            <thead>
                <tr>
                    <th width="80px">No</th>
		    <th>Date</th>
            <th>Emp</th>
		    <th>Building Id</th>
		    <th>Room Id</th>
		    <th>Com Category</th>
		    <th>Com Subcategory</th>
		    <th>Com Status</th>
		    <th>Com Details</th>
		    <th>Asset Id</th>
		    <th>Model</th>
		    <th>Bill</th>
		    <th>Warranty</th>
		    <th>Image</th>
		    <th>Recovery Amount</th>
		    <th>Closure Remark</th>
		    <th>Closure Remark By</th>
		    <th>Agreed Amount</th>
		    <th>Tat</th>
		    <th>Icr</th>
		    <th>Closed By</th>
		    <th>Assign Vender</th>
		    <th>Category</th>
		    <th>Vendor Bill</th>
		    <th>Shop Name</th>
		    <th>Amount</th>
		    <th>Part Details</th>
		    <th>Material Cost</th>
		    <th>Labour Cost</th>
		    <th>Createdat</th>
		    <th>Action</th>
                </tr>
            </thead>
	    <tbody>
            <?php
            $start = 0;
            foreach ($complain_data as $complain)
            { 
            	if($complain->com_status==1){
            		$st="Open";
            	}
            	elseif($complain->com_status==2){
            		$st="Close";
            	}
            	elseif($complain->com_status==2){
            		$st="Close";
            	}
            	elseif($complain->com_status==3){
            		$st="Wip";
            	}
            	elseif($complain->com_status==4){
            		$st="Vender Required";
            	}
            	elseif($complain->com_status==5){
            		$st="Vender Allocated";
            	}
            	elseif($complain->com_status==6){
            		$st="Oh hold";
            	}
            	else{
            		$st="Cust Damage";
            	}

                                 
                ?>
                <tr>
		    <td><?php echo ++$start ?></td>
		    <td><?php echo $complain->date ?></td>

            <td><?php 
                if($complain->log_type==3){
                 $res=$this->Customer_model->get_by_id($complain->log_id);if($res){echo $res->name;}
                   }else{
                $res=$this->Employee_model->get_by_id($complain->log_id);if($res){echo $res->name;}
               } ?>
                </td>
            <!-- <td><?php if($complain->name){echo $complain->name;}?></td> -->
		    <td><?php $res=$this->Building_model->get_by_id($complain->building_id);if($res){echo $res->name;}?></td>
		    <td><?php $res=$this->Buil_details_model->get_by_id($complain->room_id);if($res){echo $res->name;} ?></td>
		    <td><?php  $res=$this->Com_category_model->get_by_id($complain->com_category);if($res){echo $res->name;} ?></td>
		    <td><?php  $res=$this->Com_sub_category_model->get_by_id($complain->com_subcategory);if($res){echo $res->name;} ?></td>
		    <td><?php echo $st ?></td>
		    <td><?php echo $complain->com_details ?></td>
		    <td><?php echo $complain->asset_id ?></td>
		    <td><?php echo $complain->model ?></td>
		    <td><?php echo $complain->bill ?></td>
		    <td><?php echo $complain->warranty ?></td>
		    <td><img src="<?php echo base_url($complain->image) ?>"style="height: 60px;"></td>
		    <td><?php echo $complain->re_amount ?></td>
		    <td><?php echo $complain->closure_remark ?></td>
		    <td><?php echo $complain->closure_remark_by ?></td>
		    <td><?php echo $complain->agreed_amount ?></td>
		    <td><?php echo $complain->tat ?></td>
		    <td><?php echo $complain->icr ?></td>
		    <td><?php echo ($complain->closed_by==1)?'Staff':'Vender'; ?></td>
		    <td><?php echo ($complain->assign_vender==1)?'yes':'no'; ?></td>
		    <td><?php $res=$this->Expense_category_model->get_by_id($complain->category);if($res){echo $res->name;} ?></td>
		    <td><?php echo $complain->vendor_name ?></td>
		    <td><?php echo $complain->shop_name ?></td>
		    <td><?php echo $complain->amount ?></td>
		    <td><?php echo $complain->part_details ?></td>
		    <td><?php echo $complain->material_cost ?></td>
		    <td><?php echo $complain->labour_cost ?></td>
		    <td><?php echo $complain->createdat; ?></td>
		    <td style="text-align:center" width="200px">
                <a href="<?php echo base_url('complain/read/'.$complain->id) ?>" style="<?php echo $block_style; ?>"><i class="fa fa-eye"></i></a>
                <a href="<?php echo base_url('complain/update/'.$complain->id) ?>" style="<?php echo $blo_hide; ?>"><i class="fa fa-pencil-square-o"></i></a>
                 <?php if($login_type==4){ ?>
                 <a href="<?php echo base_url('complain/delete/'.$complain->id) ?>" style="<?php //echo $blo_hide; ?>"><i class="fa fa-trash-o" aria-hidden="true"></i></a>

			<?php 
			}
			?>
		    </td>
	        </tr>
                <?php
            }
            ?>
            </tbody>
        </table>
    </div>
        <script src="<?php echo base_url('assets/js/jquery-1.11.2.min.js') ?>"></script>
        <script src="<?php echo base_url('assets/datatables/jquery.dataTables.js') ?>"></script>
        <script src="<?php echo base_url('assets/datatables/dataTables.bootstrap.js') ?>"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#mytable").dataTable();
            });
        </script>
    <!-- ******************/master footer ****************** -->
                    </div>
                </div>
            </div>
    </section>
    </div>