<?php 
include_once APPPATH . 'models/Base_model.php';
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Interface_model extends Base_model {
	public function __construct() {
	    parent::__construct();
	    $this->table_name = 'interface';
	}


	/**
	 * 从数据库中调出接口的参数反馈回去
	 * @param  [type] $name [description]
	 * @return [type]       [description]
	 */
	public function get_params($name){
		if( ! $this->is_exist(array( 'name' => $name )) ) return -1;

		$params_data = $this->get(array('name' => $name));
		if($params_data['open'] == 1) return -2;

		return $params_data['params'] == '' ? array() : json_decode($params_data['params'] , true);
	}
}