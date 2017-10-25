<?php

class AnomalyCapture{

	function capture($last_error , $is_error = false){
		if( ! isset($last_error)) return false;
	

		$CI = CI_Controller::get_instance();
		if($CI == NULL){
			require_once BASEPATH.'core/Controller.php';
			$CI = new CI_Controller;
			$CI = CI_Controller::get_instance();
		}


		$CI->load->model('Interface_model');
		$CI->load->model('Error_log_model');


		$option = $this->get_uri_option($CI);
		$interface_data = $CI->Interface_model->get(array(
			'method' => $option->method,
			'file' => $option->file,
			'group' => $option->group,
		));



		$trace = array();
		if(isset($last_error['trace'])){
			
			foreach ($last_error['trace'] as $key => $value) {
				if(isset($value['file'])){
					array_push($trace , array(
						'file' => $value['file'],
						'line' => $value['line'],
						'function' => $value['function'],
					));
				}
			}
			
		}

		
		$CI->Error_log_model->create(array(
			'post_params' => json_encode($_POST),
			'get_params' => json_encode($_GET),
			'level' => $last_error['type'],
			'message' => $last_error['message'],
			'file' => $last_error['file'],
			'line' => $last_error['line'],
			'uri' => $CI->uri->ruri_string(),
			'from_interface' => $interface_data['id'] ,
			'error_time' => date('Y-m-d H:i:s'),
			'backtrace' => json_encode($trace),
		));


		if($is_error) exit(1);
	}


	public function get_uri_option($CI){
		$option = (object) array();
		$option->group = $CI->uri->slash_rsegment(1 , 'leading') . $CI->uri->slash_rsegment(2 , 'leading');
		$option->group = str_replace($option->group , '' , $CI->uri->ruri_string());

		$option->file = ucfirst($CI->uri->rsegment(1)) . ".php";
		$option->method = $CI->uri->rsegment(2);

		return $option;
	}

}