<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

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
	public function index()
	{
		$data['view'] = "/app/index";
		$this->load->view('layout', $data);
	}

	public function usuarios()
	{
		$data['view'] = "/app/users";
		$this->load->view('layout', $data);
	}

	public function setusuario()
	{
		$data['view'] = "/app/setuserview";
		$this->load->view('layout', $data);
	}

	public function getgrupo()
	{
		$data['view'] = "/app/getgroup";
		$this->load->view('layout', $data);
	}
}
