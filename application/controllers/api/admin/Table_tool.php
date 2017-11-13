<?php
require APPPATH . 'controllers/api/interface.lib.php';
class Table_tool extends interface_lib{
	public function __construct(){
		parent::__construct();
		$this->load->model('Table_tool_model');
		$this->load->model('Table_model');
	}


	/**
	 * 创建工具的数据表源
	 * @param  [type] $params [description]
	 * @return [type]         [description]
	 */
	public function create_source_database($params){
		$model = $params->from_database;
		$file = APPPATH . "models/{$model}.php";
		if( ! is_file($file)) Moucms::end(false , '您选择的数据表不存在');

		$this->load->model($model);
		$this->Table_tool_model->edit(array($params->from_table_tool) , array(
			'from_database' => $model,
			'field_key' => $params->key,
			'field_value' => $params->value,
		));

		Moucms::end(true);
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