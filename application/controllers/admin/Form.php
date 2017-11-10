<?php
class Form extends CI_Controller{

	public function __construct(){
		parent::__construct();
		
		$this->load->model('Table_field_model');
		$this->load->model('Table_group_model');
		$this->load->model('Table_model');
	}


	public function _remap($method , $params){
		if( ! Moucms::admin_is_login()) exit;

		$Table_data = $this->Table_model->get(array( 'uid' => $method ));
		if( ! isset($Table_data['id'])) show_404();

		$where = array();
		$page = isset($_GET['page']) ? $this->input->get('page' , true) : 1;

		// 加载主数据表
		$main_model = ucwords($Table_data['main_modle']) . "_model";
		$this->load->model($main_model , $main_model);


		// 处理主表内的数据
		$Data_lists = $this->$main_model->get_list($where , $page , $Table_data['page_count']);
		foreach ($Data_lists as &$data_value) {
			$data_value['data'] = json_encode($data_value);
		}

		// 获取表单数据
		$this->Table_field_model->order_by('index' , 'desc');
		$Table_field_lists = $this->Table_field_model->get_list(array( 'from_table' => $Table_data['id'] ));


		// 是否有批量删除权限
		$temp = array();
		$Table_data['table_base_function'] = json_decode($Table_data['table_base_function'] , true);
		foreach ($Table_data['table_base_function'] as $table_base_value) {
			$temp[$table_base_value] = true;
		}
		$Table_data['table_base_function'] = $temp;


		Loader::view('form/home' , array(
			'Table_data' => $Table_data,
			'Data_lists' => $Data_lists,
			'Table_field_lists' => $Table_field_lists,
		) , ADMIN_TEMPLATE);
	}
}	