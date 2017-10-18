<?php
class Home extends CI_Controller{

	public function __construct(){
		parent::__construct();
	}


	public function _remap($method){
		if( ! Moucms::admin_is_login()) return false;
		method_exists($this, $method) ? $this->$method() : show_404();
	}


	public function index(){
		Loader::view('home' , array(
		) , ADMIN_TEMPLATE);
	}
}	