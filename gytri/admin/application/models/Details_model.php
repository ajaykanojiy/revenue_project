<?php
class Details_model extends CI_Model {

        public $table='details';
        public $id='id';
      
       
       


        public function get_all()
        {
         $this->db->where('status',0);  
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
        
        public function get_res($value){
           
            $this->db->where("DATE_FORMAT(createdat,'%Y-%m-%d') >=", $value['from']);
            $this->db->where("DATE_FORMAT(createdat,'%Y-%m-%d') <=", $value['to']);
            $this->db->where('status',0);
            return $this->db->get('details')->result();
        }

function check($key)
   {
    $this->db->where('phone',$key['phone']);
    $query = $this->db->get($this->table);
    if ($query->num_rows() > 0){
        return 1;
    }
    else{
        return 2;
    }
}

}