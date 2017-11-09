<?php
class Home extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->model('Table_group_model');
		$this->load->model('Table_model');
	}

	public function _remap($method , $params){
		if( ! Moucms::admin_is_login()) exit;
		method_exists($this, $method) ? $this->$method() : show_404();
	}


	/**
	 * 编辑超级表单
	 * @return [type] [description]
	 */
	public function edit(){
		$Table_data = $this->Table_model->get(array( 'id' => $this->input->get('id' , true) ));
		if( ! isset($Table_data)) show_404();


		$Table_data['modles'] = implode(',', json_decode($Table_data['modles']));
		$Table_data['row_setup_function'] = implode(',', json_decode($Table_data['row_setup_function']));


		$Table_group_lists = $this->Table_group_model->get_list(array() , 1 , 1 , array() , 'all');

		foreach ($Table_group_lists as &$value) {
			$value['song'] = $this->Table_model->get_list(array(
				'from_table_group' => $value['id']
			) , 1 , 1 , array() , 'all');
		}




		Loader::view('table/edit' , array(
			'Table_data' => $Table_data,
			'Table_group_lists' => $Table_group_lists,
		) , ADMIN_TEMPLATE);
	}





	public function index(){
		$Table_group_lists = $this->Table_group_model->get_list(array() , 1 , 1 , array() , 'all');

		foreach ($Table_group_lists as &$value) {
			$value['song'] = $this->Table_model->get_list(array(
				'from_table_group' => $value['id']
			) , 1 , 1 , array() , 'all');
		}


		Loader::view('table/home' , array(
			'Table_group_lists' => $Table_group_lists
		) , ADMIN_TEMPLATE);
	}
}	