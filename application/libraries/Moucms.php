<?php
class Moucms{
	static public $CI;
	public function __construct(){
		self::$CI = & get_instance();
	}


	/**
	 * 检查后台账户是否登录了
	 * @return [type] [description]
	 */
	static public function admin_is_login(){
		if( ! (isset($_SESSION['admin_user']) && $_SESSION['username'] != '')){
			self::goto_login();
			return false;
		}
	}



	/**
	 * 前去登录页面
	 * @return [type] [description]
	 */
	static private function goto_login(){
		Loader::view('user/login' , array() , ADMIN_TEMPLATE);
	}


	/**
	 * 网站通用请求结束接口
	 * @param  boolean $state     [description]
	 * @param  [type]  $errorCode [description]
	 * @return [type]             [description]
	 */
	static public function end($state = true , $message = '' , $other = array()){
		exit(json_encode(array(
			'state' => $state , 
			'message' => $message ,
			'requestTime' => time() , 
			'result' => $other ,
		)));
	}
}