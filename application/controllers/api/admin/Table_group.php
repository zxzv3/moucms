<?php
require APPPATH . 'controllers/api/interface.lib.php';
class Table_group extends interface_lib{
	public function __construct(){
		parent::__construct();
		$this->load->model('Table_model');
		$this->load->model('Table_group_model');
	}



	/**
	 * 创建表单组
	 * @param  [type] $params [description]
	 * @return [type]         [description]
	 */
	public function create($params){
		if($this->Table_group_model->is_exist(array('name' => $params->name ))) Moucms::end(false , '您输入的表单组已存在');

		$this->Table_group_model->create(array(
			'name' => $params->name,
		));

		$Table_group_lists = $this->Table_group_model->get_list(array() , 1 , 1 , array() , 'all');
		Moucms::end(true , '' , $Table_group_lists);
	}

}