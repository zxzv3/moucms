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
		if( ! (isset($_SESSION['admin_user']) && $_SESSION['admin_user']['username'] != '')){
			self::goto_login();
			return false;
		}
		return true;
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



	/**
	 * 获取IP地址
	 * @return [type] [description]
	 */
	static public function get_ip(){
		if(getenv('HTTP_CLIENT_IP')){
			$ip = getenv('HTTP_CLIENT_IP');
		}
		else if(getenv('HTTP_X_FORWARDED_FOR')){
			$ip = getenv('HTTP_X_FORWARDED_FOR');
		}
		else if(getenv('HTTP_X_FORWARDED')){
			$ip = getenv('HTTP_X_FORWARDED');
		}
		else if(getenv('HTTP_FORWARDED_FOR')){
			$ip = getenv('HTTP_FORWARDED_FOR');
		}
		else if(getenv('HTTP_FORWARDED')){
			$ip = getenv('HTTP_FORWARDED');
		}
		else{
			$ip = $_SERVER['REMOTE_ADDR'];
		} 
		return $ip; 
	}
}