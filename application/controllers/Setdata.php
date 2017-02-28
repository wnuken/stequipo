<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Setdata extends CI_Controller {

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
		$this->load->model('setdatabd');
	}

	public function index()
	{
		$data['view'] = "/response/index";
		$this->load->view($data['view'], $data);
	}

	public function setuserdata()
	{
		$params = $this->input->post(NULL, TRUE);



		if(isset($params['dni']))
			$apramsAdminUser['user'] = $params['dni'];
		if(isset($params['mail']))
			$apramsAdminUser['mail'] = $params['mail'];
		if(isset($params['dni']))
			$apramsAdminUser['password'] = $params['dni'];
		if(isset($params['id_rol']))
			$apramsAdminUser['id_rol'] = $params['id_rol'];

		$apramsAdminUser['id'] = 1;

		$idUser = $this->setdatabd->setAdminUser($apramsAdminUser);

		if(isset($params['dni']))
			$apramsUser['user'] = $params['dni'];
		if(isset($params['mail']))
			$apramsUser['mail'] = $params['mail'];
		if(isset($params['dni']))
			$apramsUser['password'] = $params['dni'];
		if(isset($params['id_rol']))
			$apramsUser['id_rol'] = $params['id_rol'];


		$data['data']['elements'] = array(
			'status' => TRUE,
			'message' => $params,
			'values' => $idUser
			);
		$data['view'] = "/response/index";
		$this->load->view($data['view'], $data);
	}
}
