<?php 
include_once APPPATH . 'models/Base_model.php';
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Setting_model extends Base_model {
	public function __construct() {
	    parent::__construct();
	    $this->table_name = 'setting';
	}

	public function all(){

		$array = array();
		$all_config = $this->get_list(array() , 1 , 1 , array() , 'all');
		foreach ($all_config as $key => $value) {
			$array[$value['name']] = $value['value'];
		}
		return $array;
	}

	public function item(){
		return array();
	}
}