<?php
class Login_create extends CI_Controller {

        public function __construct()
        {
                parent::__construct();
             // $this->data['pageTitle'] = 'Test Title';
                $this->auth();
               $this->load->model('Login_create_model');
        }


       public function index()
       {

        $res=$this->Login_create_model->get_all();
      
  
         if($res){
          $data['res']=$res;
         }
         $data['pageTitle']='Login id List';
         $data['content']='admin/login_create/list';
       	$this->load->view('admin/comman/master',$data);
       }



      public function create($value='')
      {
        $data=array(
         'action'=>site_url('login_create/store'),
          'id'=>set_value('id'),
         'name'=>set_value('name'),
         // 'email'=>set_value('email'),
         'password'=>set_value('password'),
         // 'type'=>set_value('type'),
         // 'status'=>set_value('status'),
                
        );
         $data['pageTitle']='Create Form';
        $data['content']='admin/login_create/view';
          $this->load->view('admin/comman/master',$data);
      }


       public function store($value='')
       {
            $this->rules();
        if($this->form_validation->run()==FALSE)
            {
               $this->create();
            }
            else
            {
       $name= $this->session->userdata('name');   
       $data=array(

       'name'=> $this->input->post('name'),
       // 'email'=> $this->input->post('email'),
       'password'=> $this->input->post('password'),
       // 'type'=> $this->input->post('type'),
       // 'status'=> $this->input->post('status'),
    
      );
     $id=$this->Login_create_model->insert($data);
     if($id){
      $this->session->set_flashdata('success','Record save successfully');
      redirect('login_create');
     }
       }
     }


     public function edit($id)
     {

        $row=$this->Login_create_model->get_by_id($id);
         if($row){
       
        $data=array(
         'action'=>site_url('login_create/update'),
         'id'=>set_value('id',$row->id),
         'name'=>set_value('name',$row->name),
         // 'email'=>set_value('email',$row->email),
         'password'=>set_value('password',$row->password),
         // 'type'=>set_value('type',$row->type),
         // 'status'=>set_value('status',$row->status),
        
        );
          $data['pageTitle']='Edit Form';
           $data['content']='admin/login_create/view';
          $this->load->view('admin/comman/master',$data);
      }
     }



       public function update($value='')
       {
            $this->rules();
        if($this->form_validation->run()==FALSE)
            {
               $this->create();
            }
            else
            {
      
       $data=array(
       'name'=> $this->input->post('name'),
       // 'email'=> $this->input->post('email'),
       'password'=> $this->input->post('password'),
       // 'type'=> $this->input->post('type'),
       
      

      );
     $id=$this->Login_create_model->update($this->input->post('id'),$data);
     // if($id){
      $this->session->set_flashdata('success','Record Update Successfully');
      redirect('login_create');
     // }
       }
     }


       public function delete($id)
       {
       $row=$this->Login_create_model->get_by_id($id);
         if($row){
          // $data['status']=1;
          // $this->Login_create_model->update($id,$data);
          $this->Login_create_model->delete($id);
          $this->session->set_flashdata('success','Record delete successfully');
          redirect('login_create');
         }

       }


       public function rules($value='')
       {
        $this->form_validation->set_rules('name' , 'name', 'required');
        // $this->form_validation->set_rules('email', 'email', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required');
        // $this->form_validation->set_rules('type', 'Type', 'required');
        // $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
         // $this->form_validation->set_error_delimiters('<div class="alert alert-danger" role="alert">', '</div>');
       }


  public function auth($value='')
        {
           $auth=$this->session->userdata('auth');
           
          if($auth!=1){
          redirect(base_url("login"));
     }
        }

      
}