<?php
require APPPATH . 'controllers/api/interface.lib.php';
class Databases extends interface_lib{
	public function __construct(){
		parent::__construct();
		$this->load->model('Table_model');
		$this->load->model('Table_group_model');
	}



	
	public function get($params){
		$dir = APPPATH . 'models/';
		$file = scandir($dir);
		$file_list = array();
		foreach ($file as $key => $value) {
			if(strstr($value , '.php') != false && $value != 'Base_model.php'){
				array_push($file_list, str_replace('.php', '', $value));
			}
		}

		Moucms::end(true , '' , $file_list);
	}

}