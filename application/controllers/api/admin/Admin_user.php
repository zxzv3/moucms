<?php
require APPPATH . 'controllers/api/interface.lib.php';
class Admin_user extends interface_lib{
	public function __construct(){
		parent::__construct(__CLASS__ , ADMIN_INTERFACE_URI);
	}

	public function login(){
		echo '哈哈';
	}
}	