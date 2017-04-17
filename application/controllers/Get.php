<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Get extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	function __construct()
	{
		parent::__construct();
		$this->load->model('getdata');
	}

	public function index()
	{
		$data['view'] = "/response/index";
		$this->load->view($data['view'], $data);
	}

	public function users()
	{
		$params = $this->getdata->Users();
		$data['data']['elements'] = array(
			'status' => TRUE,
			'message' => $params
			);
		$data['view'] = "/response/index";
		$this->load->view($data['view'], $data);
	}

	public function roles()
	{
		$params = $this->getdata->Roles();
		$data['data']['elements'] = array(
			'status' => TRUE,
			'message' => $params
			);
		$data['view'] = "/response/index";
		$this->load->view($data['view'], $data);
	}

	public function userinfo()
	{
		$params = $this->input->get(NULL, TRUE);
		$resultUser = array();
		$resultUser2 = array();

		if(is_array($params) && isset($params['cifnif'])){
			$resultUser = $this->getdata->UserByDni($params);
		}else{
			$params['cifnif'] = 0;
		}

		/*if(isset($resultUser['id'])){
			$paramsParent['id'] = $resultUser['id'];
			$resultUser2 =  $this->getdata->ChildrenByParent($paramsParent);
		}*/

		$status = FALSE;
		if(count($resultUser) > 0)
			$status = TRUE;

		$data['data']['elements'] = array(
			'status' => $status,
			'id' => $params['cifnif'],
			'message' => $resultUser,
			//'message2' => $resultUser2
			);
		$data['view'] = "/response/index";
		$this->load->view($data['view'], $data);
	}
}
