<?php
require APPPATH . 'controllers/api/interface.lib.php';
class Admin_user extends interface_lib{
	public function __construct(){
		parent::__construct(__CLASS__ , ADMIN_INTERFACE_URI);
		$this->load->model('Admin_user_model');
	}

	public function login($params){
		$this->losad->model('Adm2in_user_model');
		print_r($params->usernasme);
		print_r(error_get_last());
312
	}
}	
