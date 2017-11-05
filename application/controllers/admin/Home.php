<?php
class Home extends CI_Controller{

	public function __construct(){
		parent::__construct();
		if( ! Moucms::admin_is_login()) exit;
	}



	public function index(){
		Loader::view('home' , array(
		) , ADMIN_TEMPLATE);
	}
}	