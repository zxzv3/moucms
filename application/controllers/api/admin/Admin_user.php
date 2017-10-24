<?php
require APPPATH . 'controllers/api/interface.lib.php';
class Admin_user extends interface_lib{
	public function __construct(){
		parent::__construct(array(
			'class' => __CLASS__,
			'file' => basename(__FILE__),
			'group' => ADMIN_INTERFACE_URI
		));
	}

	public function login($params){
		$this->load->model('Admin_user_2model');
	}
}	
