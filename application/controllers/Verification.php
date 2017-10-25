<?php
class Verification extends CI_Controller{

	public function __construct(){
		parent::__construct();

	}




	/**
	 * [check description]
	 * @return [type] [description]
	 */
	public function check(){

	}



	public function index(){
		$this->a();

	}



	public function a(){
		/* 生成验证码序列 */
		define("CAPTCHA_NUMCHARS", 4);  //验证码长度
		$pass_phrase = $this->random(4);              //验证码内容
		$_SESSION['verification_admin'] = $pass_phrase;
		
		$width = 70;
		$height = 31;

		/* 生成验证码图像 */
		define("CAPTCHA_WIDTH", $width);    //验证码宽度
		define("CAPTCHA_HEIGHT", $height);    //验证码高度
		//创建空白画布
		$img = imagecreatetruecolor(CAPTCHA_WIDTH, CAPTCHA_HEIGHT);
		//设置主题颜色
		$bg_color = imagecolorallocate($img, 0xFF,0xFF,0xFF);       //白色背景
		$text_color = imagecolorallocate($img, 99, 99, 99);           //黑色字体
		$graphic_color = imagecolorallocate($img, 64, 64, 64);     //灰色图像
		//填充背景
		imagefilledrectangle($img, 0, 0, CAPTCHA_WIDTH, CAPTCHA_HEIGHT, $bg_color);
		//绘制随机直线
		// for ($i = 0; $i < 3; $i++) {
		   // imageline($img, 0, rand() % CAPTCHA_HEIGHT, CAPTCHA_WIDTH, rand() % CAPTCHA_HEIGHT, $graphic_color);
		// }
		//绘制随机点
		// for ($i = 0; $i < 1; $i++) {
		   // imagefilledellipse($img, rand() % CAPTCHA_WIDTH, rand() % CAPTCHA_HEIGHT, 10, 10, $graphic_color);
		// }


		//绘制验证码
		imagettftext($img, CAPTCHA_WIDTH / 3.3, rand(0,4), 10, CAPTCHA_HEIGHT - (CAPTCHA_HEIGHT / 4), $text_color, FCPATH . "assets/font/print.ttf", $pass_phrase);
		//作为PNG图像输出
		header("Content-type: image/png");
		imagepng($img);
		//从内存从撤销图像
		imagedestroy($img);
	}


	function random($len) {
		$srcstr = "1a2s3d4f5g6hj8k9qwertyupzxcvbnm";
		mt_srand();
		$strs = "";
		for ($i = 0; $i < $len; $i++) {
			$strs .= $srcstr[mt_rand(0, 30)];
		}
		return $strs;
	}
}	

?>