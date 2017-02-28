<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Set extends CI_Controller {

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
		$this->load->model('setdata');
	}

	public function index()
	{
		$data['view'] = "/response/index";
		$this->load->view($data['view'], $data);
	}

	public function userdata()
	{
		$params = $this->input->post(NULL, TRUE);

		/*var_dump(strtotime($params['birthday']));
		die();*/


		if(isset($params['dni']))
			$paramsAdminUser['user'] = $params['dni'];
		if(isset($params['mail']))
			$paramsAdminUser['mail'] = $params['mail'];
		if(isset($params['dni']))
			$paramsAdminUser['password'] = $params['dni'];
		if(isset($params['id_rol']))
			$paramsAdminUser['id_rol'] = $params['id_rol'];

		$AdminUser = $this->setdata->AdminUser($paramsAdminUser);

		if(is_array($AdminUser) && isset($AdminUser['id']))
			$paramsUser['id_admin_user'] = $AdminUser['id'];
		if(isset($params['first_name']))
			$paramsUser['first_name'] = $params['first_name'];
		if(isset($params['last_name']))
			$paramsUser['last_name'] = $params['last_name'];
		if(isset($params['dni']))
			$paramsUser['dni'] = $params['dni'];
		if(isset($params['mail']))
			$paramsUser['mail'] = $params['mail'];
		if(isset($params['address']))
			$paramsUser['address'] = $params['address'];
		if(isset($params['phone']))
			$paramsUser['phone'] = $params['phone'];
		if(isset($params['other_data']))
			$paramsUser['other_data'] = $params['other_data'];
		if(isset($params['birthday'])){
			$params['birthday'] = strtotime($params['birthday']);
			$paramsUser['birthday'] = date('Y-m-d', $params['birthday']);
		}

		$User = $this->setdata->User($paramsUser);

		if(is_array($User) && isset($User['id']))
			$paramsParentUser['user'] = $User['id'];
		if(isset($params['parent']))
			$paramsParentUser['parent'] = $params['parent'];
		if(isset($params['is_initial']))
			$paramsParentUser['is_initial'] = $params['is_initial'];



		$Group = $this->setdata->ParentUser($paramsParentUser);


		$data['data']['elements'] = array(
			'status' => TRUE,
			'message' => $params,
			'idadminuser' => $AdminUser,
			'iduser' => $User,
			'group' => $Group
			);
		$data['view'] = "/response/index";
		$this->load->view($data['view'], $data);
	}
}
