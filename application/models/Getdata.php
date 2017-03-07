<?php
class Getdata extends CI_Model {

	function __construct(){        
		parent::__construct();
	}

	public function AdminUser($params)
	{
		
	}

	public function Users()
	{
		$result = FALSE;
		$this->db->select('*');
		$query = $this->db->get('user');
		$items = $query->result_array();
		$result = $items;
		return $result;
	}

	public function Roles()
	{
		$result = FALSE;
		$this->db->select('*');
		$query = $this->db->get('roles');
		$items = $query->result_array();
		$result = $items;
		return $result;
	}

	public function ParentUser($params)
	{

	}

	public function userInfo($params)
	{
		$result = FALSE;
		$this->db->select('*');
		$this->db->where('dni', $params['dni']);
		$this->db->limit(1);
		$query = $this->db->get('user');
		$items = $query->row_array();
		$result = $items;
		return $result;
	}

}