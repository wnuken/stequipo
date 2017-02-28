<?php
class Setdatabd extends CI_Model {

	function __construct(){        
		parent::__construct();
	}

	public function setAdminUser($params)
	{
		$result = FALSE;
		$this->db->where('id',$params['id']);
		$q = $this->db->get('admin_user');  

		if ( $q->num_rows() > 0 ){
			$this->db->where('id',$params['id']);
			$resultInsert = $this->db->update('admin_user',$params);
			if($resultInsert === TRUE)
				$result = $params['id'];
		}else{
			$resultInsert = $this->db->insert('admin_user', $params);
			if($resultInsert === TRUE){
				$this->db->select_max('id');
				$this->db->limit(1);
				$query = $this->db->get('admin_user');
				$lastItem = $query->row_array();
				$result = $lastItem['id'];
			}
		}
		return $result;
	}

	public function setUser($params)
	{
		$result = FALSE;
		$this->db->where('id',$params['id']);
		$q = $this->db->get('user');  

		if ( $q->num_rows() > 0 ){
			$this->db->where('id',$params['id']);
			$resultInsert = $this->db->update('user',$params);
			if($resultInsert === TRUE)
				$result = $params['id'];
		}else{
			$resultInsert = $this->db->insert('user', $params);
			if($resultInsert === TRUE){
				$this->db->select_max('id');
				$this->db->limit(1);
				$query = $this->db->get('user');
				$lastItem = $query->row_array();
				$result = $lastItem['id'];
			}
		}
		return $result;
	}

}