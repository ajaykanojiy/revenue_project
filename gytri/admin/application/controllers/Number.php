<?php
// class Number extends CI_Controller {

//         public function __construct()
//         {
//                 parent::__construct();
//              // $this->data['pageTitle'] = 'Test Title';
//                 $this->auth();
//                $this->load->model('Number_model');
//         }


//        public function index()
//        {

//         $res=$this->Number_model->get_all();
      
  
//          if($res){
//           $data['res']=$res;
//          }
//          $data['pageTitle']='Number List';
//          $data['content']='admin/number/lead_list';
//        	$this->load->view('admin/comman/master',$data);
//        }



//       public function create($value='')
//       {
//         $data=array(
//          'action'=>site_url('number/store'),
//           'id'=>set_value('id'),
//          'num'=>set_value('num'),
//          'type'=>set_value('type'),
     
//         );
//          $data['pageTitle']='Create Form';
//         $data['content']='admin/number/view';
//           $this->load->view('admin/comman/master',$data);
//       }


//        public function store($value='')
//        {
//             $this->rules();
//         if($this->form_validation->run()==FALSE)
//             {
//                $this->create();
//             }
//             else
//             {
//       $res=$this->Number_model->get_by_date(date('Y-m-d'));  
//       // print_r($res);
//       if(isset($res)){
//           // if(!empty($res->num)){
//         if($res->num!=1111){
//           $data['num_e']=$this->input->post('num'); 
//           $data['status']=1;
//           $this->Number_model->update($res->id,$data); 
//          $this->session->set_flashdata('success','Evening Record update successfully');
//           redirect('number');
//         }else{
//           // echo 'ajay';die;
//             $data['num']=$this->input->post('num'); 
//           $this->Number_model->update($res->id,$data); 
//            $this->session->set_flashdata('success','Morning Record  Update successfully');
//       redirect('number');
//         }
//       }else{     
//       if($this->input->post('type')==1)
//        $data=array(
//        'num'=> $this->input->post('num'),
//        'type'=> $this->input->post('type'),
//       );else
//        {
//         $data=array(
//        'num_e'=> $this->input->post('num'),
//        'type'=> $this->input->post('type'),
//       );
//        }
//      $id=$this->Number_model->insert($data);
//      if($id){
//       $this->session->set_flashdata('success','Record save successfully');
//       redirect('number');
//      }
//        }
//      }
//    }


//      public function edit($id)
//      {

//         $row=$this->Number_model->get_by_id($id);
//          if($row){
       
//         $data=array(
//          'action'=>site_url('number/update'),
//          'id'=>set_value('id',$row->id),
//          'num'=>set_value('num',$row->num),
//          'type'=>set_value('type',$row->type),
         
        
//         );
//           $data['pageTitle']='Edit Form';
//            $data['content']='admin/number/view';
//           $this->load->view('admin/comman/master',$data);
//       }
//      }



//        public function update($value='')
//        {
//             $this->rules();
//         if($this->form_validation->run()==FALSE)
//             {
//                $this->create();
//             }
//             else
//             {
      
//        $data=array(
//        'num'=> $this->input->post('num'),
//        'type'=> $this->input->post('type'),
      
//       );
//      $id=$this->Number_model->update($this->input->post('id'),$data);
//      // if($id){
//       $this->session->set_flashdata('success','Record Update Successfully');
//       redirect('number');
//      // }
//        }
//      }


//        public function delete($id)
//        {
//        $row=$this->Number_model->get_by_id($id);
//          if($row){
//           // $data['status']=1;

//           $this->Number_model->delete($id);
//           $this->session->set_flashdata('success','Record delete successfully');
//           redirect('number');
//          }

//        }


//        public function rules($value='')
//        {
//         $this->form_validation->set_rules('num' , 'Number', 'required');
//         $this->form_validation->set_rules('type', 'Type', 'required');
     
//         // $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
//          // $this->form_validation->set_error_delimiters('<div class="alert alert-danger" role="alert">', '</div>');
//        }


//   public function auth($value='')
//         {
//            $auth=$this->session->userdata('auth');
           
//           if($auth!=1){
//           redirect(base_url("login"));
//      }
//         }

      
// }