<?php
class Login_create_model extends CI_Model {

        public $table='login';
        public $id='id';
      
       
       


        public function get_all()
        {
    
      
        // $this->db->where('status',0); 
        $this->db->order_by("id", "DESC");
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

        public function delete($id){
            $this->db->where('id',$id);
            $this->db->delete($this->table);
      

        }



      
       

}