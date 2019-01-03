<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class MY_Controller extends MX_Controller {
  protected $data = array();
	public function __construct() {
		parent::__construct();
		//$this->load->libraries('Template');
	}

	public function getSession($key){
		$userSession = $this->session->userdata('userSession');
		switch($key){
			case 'email':
				return 	$userSession['email'];
			break;
			case 'name':
				return $userSession['name'];
			break;
			case 'user_id':
				return $userSession['user_id'];
			break;
		}
	}




} 