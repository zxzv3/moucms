<?php
require APPPATH . 'controllers/api/interface.lib.php';
class Table extends interface_lib{
	public function __construct(){
		parent::__construct();
		$this->load->model('Table_model');
		$this->load->model('Table_group_model');
		$this->load->model('Table_field_model');
	}





	/**
	 * 删除超级表单
	 * @param  [type] $params [description]
	 * @return [type]         [description]
	 */
	public function remove($params){

		$this->Table_model->remove(array(
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
		if( ! $this->Table_group_model->is_exist(array('id' => $params->from_table_group ))) Moucms::end(false , '您输入的表单组不存在');
		if( $this->Table_model->is_exist(array('id !=' => $params->id , 'uid' => $params->uid ))) Moucms::end(false , '您输入的表单标识名已存在');
		if( $this->Table_model->is_exist(array('id !=' => $params->id , 'name' => $params->name ))) Moucms::end(false , '您输入的表单名已存在');


		$this->Table_model->edit(array('id' => $params->id) , array(
			'row_base_function' => json_encode($this->input->post('row_base_function' , true)),
			'table_base_function' => json_encode($this->input->post('table_base_function' , true)),
			'from_table_group' => $params->from_table_group,
			'page_count' => $params->page_count,
			'name' => $params->name,
			'modles' => json_encode(explode(',', $params->moudles)),
			'main_modle' => $params->main_moudle,
			'row_setup_function' => json_encode(explode(',', $params->row_setup_function)),
			'uid' => $params->uid,
		));

		Moucms::end(true);
	}

	/**
	 * 创建超级表单
	 * @param  [type] $params [description]
	 * @return [type]         [description]
	 */
	public function create($params){
		if( ! $this->Table_group_model->is_exist(array('id' => $params->from_table_group ))) Moucms::end(false , '您输入的表单组不存在');
		if( $this->Table_model->is_exist(array('uid' => $params->uid ))) Moucms::end(false , '您输入的表单标识名已存在');
		if( $this->Table_model->is_exist(array('name' => $params->name ))) Moucms::end(false , '您输入的表单名已存在');


		$this->Table_model->create(array(
			'row_base_function' => json_encode($this->input->post('row_base_function' , true)),
			'table_base_function' => json_encode($this->input->post('table_base_function' , true)),
			'from_table_group' => $params->from_table_group,
			'name' => $params->name,
			'modles' => json_encode(explode(',', $params->moudles)),
			'main_modle' => $params->main_moudle,
			'row_setup_function' => json_encode(explode(',', $params->row_setup_function)),
			'uid' => $params->uid,
		));

		Moucms::end(true);
	}

}