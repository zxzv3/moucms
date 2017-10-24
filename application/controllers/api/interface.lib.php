<?php

class interface_lib extends CI_Controller{

	public function __construct($option){
		$this->option = $option;
		parent::__construct();
	}


	/**
	 * 所有API通用入口
	 * 该函数用于获取数据库的配置信息并根据其来检查API参数的规范性
	 * @param  [type] $method [description]
	 * @param  [type] $params [description]
	 */
	public function _remap($method , $params){

		$this->load->model('Interface_model');

		$interface_params = $this->Interface_model->get_params(array(
			'method' => $method,
			'file' => $this->option['file'],
			'group' => $this->option['group'],
		));

		switch ($interface_params) {
			case -1 : Moucms::end(false , '00002 抱歉，该功能管理员尚未在后台备案，暂时无法使用'); break;
			case -2 : Moucms::end(false , '00003 抱歉，该功能管理员尚未开放，暂时无法使用'); break;
		}


		// Here, get the parameters passed by the user and put them into the array
		foreach ($interface_params as $key => &$value) {
			if( ! isset($_POST[$key])) Moucms::end(false , "00001 找不到指定参数 : '{$key}'");
			$value['value'] = $this->input->post($key);
		}


		$this->load->library('Standard');
		$this->standard->check($interface_params);


		$temp = (object) array();
		foreach ($interface_params as $key => $value) {
			$temp->$key = $value['value'];
		}

		method_exists($this, $method) ? $this->$method($temp) : show_404();
	}


}
