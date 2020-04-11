<?php
class Details extends CI_Controller {

        public function __construct()
        {
                parent::__construct();
                // $this->auth();
               $this->load->model('Details_model');
        }


       public function index()
       {

        $res=$this->Details_model->get_all();
         if($res){
          $data['res']=$res;
         }
          $data['from']= "";
            $data['to']= "";
          $data['res2']="";
         $data['pageTitle']='details  list';
         $data['content']='admin/details/list';
       	$this->load->view('admin/comman/master',$data);
       }


     public function check_data(){
      


      $data=array(
           'phone'=> $this->input->post('phone'),
      
      );
        $id=$this->Details_model->check($data);
        echo $id;
     }

       public function store($value='')
       { 
          // echo $this->input->post('name');
      $data=array(
      'name'=> $this->input->post('name'),
      'phone'=> $this->input->post('phone'),
      'email'=> $this->input->post('email'),
      'state'=> $this->input->post('state'),
      'amount'=> $this->input->post('amount'),
      'type'=> $this->input->post('type'),
      
      );
        $id=$this->Details_model->insert($data);
        echo $id;
       }


       public function delete($id)
       {
       $row=$this->Details_model->get_by_id($id);
         if($row){
          $data['status']=1;

          $this->Details_model->update($id,$data);
          $this->session->set_flashdata('mess','Record delete successfully');
          redirect('details');
         }

       }
       
          public function fillter(){
              $data=array(
               'from'=>date('Y-m-d',strtotime( $this->input->post('from'))),
               'to'=>date('Y-m-d',strtotime( $this->input->post('to'))),
                  );
                  
                //   print_r($data);die;
                  
            $res=$this->Details_model->get_res($data);  
            $data['from']= $this->input->post('from');
            $data['to']= $this->input->post('to');
            $data['res2']=$res;
             $data['res']="";
             $data['pageTitle']='details  list';
            //   echo '<pre>';
            // print_r($data['res2']);die;
             $this->excel($data);
            $data['content']='admin/details/list';
         	$this->load->view('admin/comman/master',$data);
               
          }
       
       
       
         public function excel()
    {  
          $from=date('Y-m-d',strtotime( $this->input->post('from')));
          $to=date('Y-m-d',strtotime( $this->input->post('to')));
            
            
        $this->load->helper('exportexcel');
        //  $fileName = 'mobile-'.time().'.xlsx'; 
        $namaFile = $this->input->post('from').'-To-'.$this->input->post('to').'.xls';
        $judul = "allotment";
        $tablehead = 0;
        $tablebody = 1;
        $nourut = 1;
        //penulisan header
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control: must-revalidate, post-check=0,pre-check=0");
        header("Content-Type: application/force-download");
        header("Content-Type: application/octet-stream");
        header("Content-Type: application/download");
        header("Content-Disposition: attachment;filename=" . $namaFile . "");
        header("Content-Transfer-Encoding: binary ");

        xlsBOF();

        $kolomhead = 0;
        xlsWriteLabel($tablehead, $kolomhead++, "No");
    	xlsWriteLabel($tablehead, $kolomhead++, "Name");
    	xlsWriteLabel($tablehead, $kolomhead++, "Email");
    	xlsWriteLabel($tablehead, $kolomhead++, "Number");
    	xlsWriteLabel($tablehead, $kolomhead++, "State");
    	xlsWriteLabel($tablehead, $kolomhead++, "Amount");
    	xlsWriteLabel($tablehead, $kolomhead++, "Loan Type");
    	xlsWriteLabel($tablehead, $kolomhead++, "Date");
    
	   $data=array(
               'from'=>date('Y-m-d',strtotime( $this->input->post('from'))),
               'to'=>date('Y-m-d',strtotime( $this->input->post('to'))),
                  );
                  
                //   print_r($data);die;
                  
            $res=$this->Details_model->get_res($data); 

	foreach ($res as $value) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
      xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteLabel($tablebody, $kolombody++, $value->name);
	    xlsWriteLabel($tablebody, $kolombody++, $value->email);
	    xlsWriteNumber($tablebody, $kolombody++, $value->phone);
	    xlsWriteLabel($tablebody, $kolombody++, $value->state);
	    xlsWriteLabel($tablebody,  $kolombody++, $value->amount);
	    xlsWriteLabel($tablebody,  $kolombody++, $value->type);
	    xlsWriteLabel($tablebody,  $kolombody++, date('d-m-Y',strtotime($value->createdat)));
	   
	   // xlsWriteNumber($tablebody, $kolombody++, $data->status);

	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }
    
//      public function exportCSV(){ 
//   // file name 
//   $filename = 'users_'.date('Ymd').'.csv'; 
//   header("Content-Description: File Transfer"); 
//   header("Content-Disposition: attachment; filename=$filename"); 
//   header("Content-Type: application/csv; ");
   
//   // get data 
//   $usersData = $this->Details_model->get_all();
// //   echo '<pre>';
// //   print_r($usersData);die;
//   // file creation 
// //   $file = fopen('php://output', 'w');
//  $file = fopen("contacts.csv","w");
//   $header = array("name","email"); 
//   fputcsv($file, $header);
//   foreach ($usersData as $line){ 
//      fputcsv($file,$line); 
//   }
//   fclose($file); 
//   exit; 
//   }


      
}