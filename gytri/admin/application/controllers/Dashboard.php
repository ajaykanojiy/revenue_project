<?php
 defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
      
        public function __construct()
        {
                parent::__construct();
                $this->auth();
        }

        public function index()
        {     
        	$data['content']='admin/dashboard';
            $this->load->view('admin/comman/master',$data);
        }

         public function auth($value='')
        {
           $auth=$this->session->userdata('auth');
           
          if($auth!=1){
          redirect(base_url("login"));
     }
        }
}