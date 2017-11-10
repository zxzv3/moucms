<?php
require APPPATH . 'controllers/api/interface.lib.php';
class Table_field extends interface_lib{
	public function __construct(){
		parent::__construct();
		$this->load->model('Table_field_model');
	}


	public function create($params){
		if($this->Table_field_model->is_exist(array(
			'from_table' => $params->from_table ,
			'field_name' => $params->key ,
		))) Moucms::end(false , '您输入的字段已经存在了');

		if($this->Table_field_model->is_exist(array(
			'from_table' => $params->from_table ,
			'name' => $params->name ,
		))) Moucms::end(false , '您输入的字段已经存在了');


		$this->Table_field_model->create(array(
			'index' => $params->index ,
			'from_table' => $params->from_table ,
			'field_name' => $params->key ,
			'max' => $params->max ,
			'min' => $params->min ,
			'is_null' => $params->is_null ,
			'type' => $params->type ,
			'name' => $params->name ,
			'create' => $params->create == 0 ? 0 : 1,
			'edit' => $params->edit == 0 ? 0 : 1,
			'delete' => $params->delete == 0 ? 0 : 1,
			'view' => $params->view == 0 ? 0 : 1,

		));

		Moucms::end(true);
	}

	/**
	 * 删除超级表单
	 * @param  [type] $params [description]
	 * @return [type]         [description]
	 */
	public function remove($params){

		$this->Table_field_model->remove(array(
			'id' => $params->id,
		));

		Moucms::end(true);
	}


	/**
	 * 编辑超级表单
	 * @param  [type] $params [description]
	 * @return [type]         [description]
	 */
	public function edit($params){
		if($this->Table_field_model->is_exist(array(
			'id !=' => $params->id,
			'from_table' => $params->from_table ,
			'field_name' => $params->key ,
		))) Moucms::end(false , '您输入的字段已经存在了');

		if($this->Table_field_model->is_exist(array(
			'id !=' => $params->id,
			'from_table' => $params->from_table ,
			'name' => $params->name ,
		))) Moucms::end(false , '您输入的字段已经存在了');


		$this->Table_field_model->edit(array( 'id' => $params->id ) , array(
			'index' => $params->index ,
			'field_name' => $params->key ,
			'max' => $params->max ,
			'min' => $params->min ,
			'is_null' => $params->is_null ,
			'type' => $params->type ,
			'name' => $params->name ,
			'create' => $params->create == 0 ? 0 : 1,
			'edit' => $params->edit == 0 ? 0 : 1,
			'delete' => $params->delete == 0 ? 0 : 1,
			'view' => $params->view == 0 ? 0 : 1,
		));


		Moucms::end(true);
	}


}