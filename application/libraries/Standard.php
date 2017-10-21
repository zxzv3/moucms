<?php
class Standard{
	static public $CI;
	public function __construct(){
		self::$CI = & get_instance();
	}


	/**
	 * 用来检查参数的规范性
	 * @param  [type] $params [description]
	 */
	public function check($params){
		foreach ($params as $key => $value) {
			
			//最常规的长度检查
			$strlen = mb_strlen($value['value']);
			if( ! isset($value['is_null']) || isset($value['is_null']) && $value['is_null'] == false){
				if( isset($value['max']) && $strlen > $value['max'] ) return $this->error(0 , $value);
				if( isset($value['min']) && $strlen < $value['min'] ) return $this->error(1 , $value);
			}


			if(isset($value['type'])){
				switch ($value['type']) {
					case 'password':
						$this->
					break;
					
					default:
						# code...
						break;
				}
			}




		}
	}



	/**
	 * 错误处理
	 * @return [type] [description]
	 */
	private function error(){

	}


}
