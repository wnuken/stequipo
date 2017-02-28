<?php
class Setdata extends CI_Model {

	function __construct(){        
		parent::__construct();
	}

	public function AdminUser($params)
	{
		$result = FALSE;
		$this->db->where('user',$params['user']);
		$this->db->limit(1);
		$q = $this->db->get('admin_user');  

		if ( $q->num_rows() > 0 ){
			$this->db->where('user',$params['user']);
			$resultInsert = $this->db->update('admin_user',$params);
			if($resultInsert === TRUE){
				$item = $q->row_array();
				$result = $item;
			}
		}else{
			$resultInsert = $this->db->insert('admin_user', $params);
			if($resultInsert === TRUE){
				$this->db->select_max('id');
				$this->db->limit(1);
				$query = $this->db->get('admin_user');
				$lastItem = $query->row_array();
				$result = $lastItem;
			}
		}
		return $result;
	}

	public function User($params)
	{
		$result = FALSE;
		$this->db->where('id_admin_user',$params['id_admin_user']);
		$q = $this->db->get('user');  

		if ( $q->num_rows() > 0 ){
			$this->db->where('id_admin_user',$params['id_admin_user']);
			$resultInsert = $this->db->update('user',$params);
			if($resultInsert === TRUE)
				$item = $q->row_array();
				$result = $item;
		}else{
			$resultInsert = $this->db->insert('user', $params);
			if($resultInsert === TRUE){
				$this->db->select_max('id');
				$this->db->limit(1);
				$query = $this->db->get('user');
				$lastItem = $query->row_array();
				$result = $lastItem;
			}
		}
		return $result;
	}

	public function ParentUser($params)
	{
		$result = FALSE;
		$this->db->where('user',$params['user']);
		$q = $this->db->get('parent_user');  

		if ( $q->num_rows() > 0 ){
			$this->db->where('user',$params['user']);
			$resultInsert = $this->db->update('parent_user',$params);
			if($resultInsert === TRUE)
				$item = $q->row_array();
				$result = $item;
		}else{
			$resultInsert = $this->db->insert('parent_user', $params);
			if($resultInsert === TRUE){
				$this->db->select_max('id');
				$this->db->limit(1);
				$query = $this->db->get('parent_user');
				$lastItem = $query->row_array();
				$result = $lastItem;
			}
		}
		return $result;
	}

}