<?php
require APPPATH . 'controllers/api/interface.lib.php';
class Admin_user extends interface_lib{
	public function __construct(){
		parent::__construct();
	}


	/**
	 * 登录管理员账号
	 * @param  [string] $username [用户名]
	 * @param  [string] $password [密码]
	 * @param  [string] $verification [验证码]
	 */
	public function login($params){
		$this->load->model('Admin_user_model');
		if( $params->verification != $_SESSION['verification']) Moucms::end(false , '您输入的验证码，请检查后重试');
		if( ! $this->Admin_user_model->is_exist(array( 'username' => $params->username ))) Moucms::end(false , '您输入的用户名不存在，请检查后重试');
		
		$Admin_user_data = $this->Admin_user_model->get(array( 'username' => $params->username ));
		if(md5($params->password . $Admin_user_data['slat']) == $Admin_user_data['password']){
			$_SESSION['admin_user'] = $Admin_user_data;
			Moucms::end(true);
		}
		Moucms::end(false , '您输入的密码不正确，请检查后重试');
	}
}	
