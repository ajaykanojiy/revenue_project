<?php
class Login extends CI_Controller {

        public function __construct()
        {
                parent::__construct();
               $this->load->model('Login_model');
        }


       public function index()
       {
     
       	$this->load->view('login_form');
       }

       public function login_check($value='') 
       {

       	$data['name']=$this->input->post('name');
       	$data['password']=$this->input->post('password');
       	// print_r($data);die;
       	$res= $this->Login_model->check($data);
       	// print_r($res);die;
       	  if($res==2){
       	  
       	  		$this->session->set_flashdata('msg','Plz insert correct credential');
       	  		$this->load->view('login_form');
       	  }
       	  else{
       	  	redirect('details');
       	  }
       }


       public function logout()
    {
        $this->session->sess_destroy();
        redirect('login');
    }
}