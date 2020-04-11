<?php
// class Number_model extends CI_Model {

//         public $table='number';
//         public $id='id';
     

//         public function get_all()
//         {
            
//         $this->db->order_by("id", "DESC");
//         $res=$this->db->get($this->table)->result();
//             if(isset($res)){
//                 return $res;
//             }
//         }

//         public function fl($value='')
//         {
//         $this->db->select('*');
//         $this->db->where('date BETWEEN DATE_SUB(NOW(), INTERVAL 15 DAY) AND NOW()');
//         $this->db->order_by("id", "DESC");
//          $result = $this->db->get($this->table)->result();
//          if(isset($result)){
//          return $result;
//      }
//         }

//           public function getlast_record()
//         {
//             $this->db->order_by('id',"desc");
//              $this->db->limit(1);
//            $re= $this->db->get($this->table)->row();
//            if(isset($re)){
//             return $re;
//            }
//         }

//         public function get_by_id($id)
//         {
//             $this->db->where('id',$id);
//            return $this->db->get($this->table)->row();
//         }

//         public function insert($data)
//         {
//                $this->db->insert($this->table,$data);
//               return $this->db->insert_id();
//         }

//         public function update($id,$data)
//         {
//             $this->db->where('id',$id);
//             $this->db->update($this->table,$data);
              
//         }

//         public function delete($id){
//             $this->db->where('id',$id);
//             $this->db->delete($this->table);
      

//         }

//           public function get_by_date($date){
//             // $this->db->where('date',$date);
//             $this->db->like('date',$date);
//           return $this->db->get($this->table)->row();
      

//         }


       

}