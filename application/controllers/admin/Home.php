<?php
class Home extends CI_Controller{

	public function __construct(){
		parent::__construct();
		if( ! Moucms::admin_is_login()) exit;
	}


	public function _remap($method , $params){
		if( ! Moucms::admin_is_login()) exit;
		echo $method;
		method_exists($this, $method) ? $this->$method() : show_404();
	}

	public function index(){
		Loader::view('home' , array(
		) , ADMIN_TEMPLATE);
	}
}	