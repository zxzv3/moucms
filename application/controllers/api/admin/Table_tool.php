<?php
require APPPATH . 'controllers/api/interface.lib.php';
class Table_tool extends interface_lib{
	public function __construct(){
		parent::__construct();
		$this->load->model('Table_tool_model');
		$this->load->model('Table_model');
	}

	public function edit($params){
		if( ! $this->Table_model->is_exist(array('id' => $params->from_table ))) Moucms::end(false , '您输入的表单不存在');
		if($this->Table_tool_model->is_exist(array('id !=' => $params->id , 'tool_name' => $params->name ))) Moucms::end(false , '您输入的工具名称已存在');

		$this->Table_tool_model->edit(array('id' => $params->id ) , array(
			"tool_name" => $params->name,
			"icon" => $params->icon,
			"color" => $params->color,
			"uid" => $params->uid,
			"index" => $params->index,
			"type" => $params->type,
		));
		Moucms::end(true);
	}


	public function create($params){
		if( ! $this->Table_model->is_exist(array('id' => $params->from_table ))) Moucms::end(false , '您输入的表单不存在');
		if($this->Table_tool_model->is_exist(array('tool_name' => $params->name ))) Moucms::end(false , '您输入的工具名称已存在');

		$this->Table_tool_model->create(array(
			"from_table" => $params->from_table,
			"tool_name" => $params->name,
			"icon" => $params->icon,
			"color" => $params->color,
			"uid" => $params->uid,
			"index" => $params->index,
			"type" => $params->type,
		));
		Moucms::end(true);
	}

}