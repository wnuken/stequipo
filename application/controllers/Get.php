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
}
