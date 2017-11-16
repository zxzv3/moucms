<?php
require APPPATH . 'controllers/api/interface.lib.php';
class Table_tool extends interface_lib{
	public function __construct(){
		parent::__construct();
		$this->load->model('Table_tool_model');
		$this->load->model('Table_model');
	}


	/**
	 * 采集数据
	 * @return [type] [description]
	 */
	public function reload_source_data($params){
		$Table_tool_data = $this->Table_tool_model->get(array( 'id' => $params->from_table_tool ));
		
		if($Table_tool_data['from_database'] == '') Moucms::end(true);
		$this->load->model($Table_tool_data['from_database']);
		$Data_lists = $this->$Table_tool_data['from_database']->get_list(array() , @$params->page , 30 , array(
			$Table_tool_data['field_key'],
			$Table_tool_data['field_value'],
		));

		$Temp = array();
		foreach ($Data_lists as &$value) {
			array_push($Temp , array(
				'key' => $value[$Table_tool_data['field_key']],
				'value' => $value[$Table_tool_data['field_value']],
			));
		}

		Moucms::end(true , $Temp , $Table_tool_data['from_database']);

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
		$data = $this->$model->get(array());
		if(count($data) <= 0) {
			Moucms::end(false , '您选择的数据表没有任何数据');
		}
		if( ! isset($data[$params->value])){
			Moucms::end(false , '您选择的内容字段不存在，请检查后重新输入');
		}
		if( ! isset($data[$params->key])){
			Moucms::end(false , '您选择的key字段不存在，请检查后重新输入');
		}

		$this->Table_tool_model->edit(array('id' => $params->from_table_tool) , array(
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