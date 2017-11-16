<?php
require APPPATH . 'controllers/api/interface.lib.php';
class Databases extends interface_lib{
	public function __construct(){
		parent::__construct();
		$this->load->model('Table_model');
		$this->load->model('Table_group_model');
		$this->load->model('Table_tool_model');
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
		
		$Table_data = $this->Table_tool_model->get(array( 'id' => $params->from_table_tool ));

		Moucms::end(true , array(
			'from_database' => $Table_data['from_database'] == "" ? "" : $Table_data['from_database'],
			'key' => $Table_data['field_key'] == "" ? "" : $Table_data['field_key'],
			'value' => $Table_data['field_value'] == "" ? "" : $Table_data['field_value'],
		) , $file_list);
	}

}