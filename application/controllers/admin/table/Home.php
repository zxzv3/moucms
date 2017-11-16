<?php
class Home extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->model('Table_field_model');
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
		$from_table = $this->input->get('id' , true);
		$Table_data = $this->Table_model->get(array( 'id' => $from_table ));
		if( ! isset($Table_data)) show_404();


		$Table_data['modles'] = implode(',', json_decode($Table_data['modles']));
		$Table_data['row_setup_function'] = implode(',', json_decode($Table_data['row_setup_function']));


		$Table_group_lists = $this->Table_group_model->get_list(array() , 1 , 1 , array() , 'all');

		foreach ($Table_group_lists as &$value) {
			$value['song'] = $this->Table_model->get_list(array(
				'from_table_group' => $value['id']
			) , 1 , 1 , array() , 'all');
		}

		$this->Table_field_model->order_by('index' , 'desc');
		$Table_field_lists = $this->Table_field_model->get_list(array( 'from_table' => $from_table ));
		foreach ($Table_field_lists as &$value) {
			$value['data'] = json_encode($value);


			$value['max'] = $value['max'] . '个';
			$value['min'] = $value['min'] . '个';
			$value['type'] = "<span class='label'>{$value['type']}</span>";
			$value['is_null'] = array( "<span class='label success'>Yes</span>" , "<span class='label danger'>No</span>" )[$value['is_null']];
			if($value['delete'] != 0 && $value['edit'] != 0 && $value['create'] != 0){
				$value['is_null'] = '';
				$value['max'] = '';
				$value['min'] = '';
				$value['type'] = '';
			}

			$value['create'] = array( "<span class='label success'>Yes</span>" , "<span class='label danger'>No</span>" )[$value['create']];
			$value['edit'] = array( "<span class='label success'>Yes</span>" , "<span class='label danger'>No</span>" )[$value['edit']];
			$value['delete'] = array( "<span class='label success'>Yes</span>" , "<span class='label danger'>No</span>" )[$value['delete']];
			$value['view'] = array( "<span class='label success'>Yes</span>" , "<span class='label danger'>No</span>" )[$value['view']];
		}


		// 获取工具栏信息
		$this->load->model('Table_tool_model');
		$this->Table_tool_model->order_by('index' , 'desc');
		$Tool_lists = $this->Table_tool_model->get_list(array( 'from_table' => $Table_data['id'] ) , 1 , 1 , array() , 'all');
		
		foreach ($Tool_lists as &$value) {


			// 获取工具栏是否有数据源信息
			$load_source_database = $value['type'] == 'search-select-value' || $value['type'] == 'select';
			if($load_source_database){

				if($value['from_database'] != '' && $value['field_key'] != '' && $value['field_value'] != ''){
					$from_database = $value['from_database'];
					$this->load->model($from_database);
					$value['source'] = $this->$from_database->get_list(array());
				}

			}
		}


		Loader::view('table/edit' , array(
			'Tool_lists' => $Tool_lists,
			'Table_field_lists' => $Table_field_lists,
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