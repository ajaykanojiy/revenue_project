<?php
class Login_model extends CI_Model {

        public $table='login';
        public $id='id';
      
       
        public function check($data)
        {
          $this->db->where('name',$data['name']);
          $this->db->where('password',$data['password']);
         $res=$this->db->get($this->table)->row();

         if(isset($res)){
          $data=array(
         'name'=>$res->name,
         // 'type'=>$res->type,
          'auth'=>1,
          );
          
          $this->session->set_userdata($data);

            return 1;
         }else{
            return 2;
         }


        }


        public function get_all()
        {
           
        return $this->db->get($this->table)->result();  
        }

        public function get_by_id($id)
        {
            $this->db->where('id',$id);
           return $this->db->get($this->table)->row();
        }

        public function insert($data)
        {
               $this->db->insert($this->table,$data);
              return $this->db->insert_id();
        }

        public function update($id,$data)
        {
            $this->db->where('id',$id);
            $this->db->update($this->table,$data);
              
        }

        public function delete($Id){
            $this->db->where('id',$id);
            $this->db->delete();


        }

}