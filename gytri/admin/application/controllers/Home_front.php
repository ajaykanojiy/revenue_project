<?php
class Home_front extends CI_Controller {

        public function __construct()
        {
                parent::__construct();
                // $this->auth();
               // $this->load->model('Details_model');
        }


       public function index()
       {
         $data['content']='front/home';
       	$this->load->view('front/comman/master',$data);
       }
     
      public function about()
       {
         $data['content']='front/about_us';
        $this->load->view('front/comman/master',$data);
       }

         public function contact()
       {
         $data['content']='front/contact';
        $this->load->view('front/comman/master',$data);
       }

         public function reg()
       {
         $data['content']='front/reg';
        $this->load->view('front/comman/master',$data);
        // $this->load->view('front/reg');
       }


         public function loan()
       {
         $data['content']='front/loans';
        $this->load->view('front/comman/master',$data);
       }


        public function news()
       {
         $data['content']='front/news';
        $this->load->view('front/comman/master',$data);
       }

        public function hello()
       {
         // $data['content']='front/news';
        $this->load->view('front/index');
       }




     

      
}