<?php

class AnomalyCapture{

	function capture($last_error , $is_error = false){
		if( ! isset($last_error)) return false;

		print_r($this);
		$CI = CI_Controller::get_instance();
		if($CI == NULL){
			require_once BASEPATH.'core/Controller.php';
			$CI = new CI_Controller;
			$CI = CI_Controller::get_instance();
		}


		$CI->load->model('Interface_model');
		$CI->load->model('Error_log_model');


		$file = $CI->uri->rsegment(1);
		$method = $CI->uri->rsegment(2);

		$uri = $CI->uri->ruri_string();
		$group = str_replace("/{$file}/{$method}", "", $uri);

		echo $group;

		// print_r($CI->uri->uri_to_assoc(1));
		// $uri = load_class('CI_URI' , 'core');
		//$CI->Error_log_model->test();


		if($is_error) exit(1);
	}	

}