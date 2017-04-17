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
		$this->db->select('codcliente, cifnif, nombre');
		$query = $this->db->get('clientes');
		$result = $query->result_array();
		return $result;
	}

	public function Roles()
	{
		$result = FALSE;
		$this->db->select('*');
		$query = $this->db->get('ste_roles');
		$result = $query->result_array();
		return $result;
	}

	public function ChildrenByParent($params)
	{
		$result = FALSE;
		$select = "usr.id, usr.first_name, usr.last_name, usr.dni, usr.mail, usr.address, usr.phone, usr.other_data, usr.birthday, pu.parent, pu.children, pu.group, pu.is_initial, pu.register";
		$this->db->select($select);
		$this->db->from(' user usr');
		$this->db->join('parent_user pu', 'usr.id = pu.user');
		$this->db->where('pu.parent', $params['id']);
		$this->db->order_by("group", "asc");
		$this->db->order_by("children", "asc");
		$query = $this->db->get();
		$result = $query->result_array();
		return $result;
	}

	public function UserByDni($params)
	{
		$result = FALSE;
		$select = "*";
		$this->db->select($select);
		$this->db->from('clientes cl');
		$this->db->join('dirclientes dcl', 'cl.codcliente = dcl.codcliente');
		$this->db->where('cl.cifnif', $params['cifnif']);
		$this->db->limit(1);
		$query = $this->db->get();
		$result = $query->row_array();
		return $result;
	}

	public function UserByinId($params)
	{
		$result = FALSE;
		$this->db->select('*');
		$this->db->where_in('id', $params);
		$query = $this->db->get('user');
		$result = $query->result_array();
		return $result;
	}

}