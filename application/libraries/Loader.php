<?php
/**
 * Loader 加载网站的视图
 * Create Time : 2016年10月29日 09:40:15
 * Update Time : 2016年10月29日 09:40:30
 */
class Loader{
	static public $CI;
	public function __construct(){
		self::$CI = & get_instance();
	}




	/**
	 * 全自动加载页面视图
	 * @param  array   $view_path [description]
	 * @param  array   $push_data [description]
	 * @param  string  $view_type [description]
	 * @param  boolean $print     [description]
	 * @return [type]             [description]
	 */
	static public function view($view_path = array() , $push_data = array() , $view_type = 'admin' , $print = true){
		$view = '';

			 
		$all = self::$CI->Setting_model->all();
		$config = array_merge(
			self::$CI->config->item('moucms') , 
			$push_data , $all
		);


		$view .= self::$CI->parser->parse($view_type . '/template/header' , $config , $print);

		if(is_array($view_path)){
			foreach ($view_path as $path) {
				$view .= self::$CI->parser->parse($view_type . '/' . $path , $config , $print);
			}
		}else{
			$view .= self::$CI->parser->parse($view_type . '/' . $view_path , $config , $print);
		}

		if($print){
			echo $view;
		}else{
			return $view;
		}
	}
}