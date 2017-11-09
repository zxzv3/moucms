<?php 
include_once APPPATH . 'models/Base_model.php';
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Table_fieid_model extends Base_model {
	public function __construct() {
	    parent::__construct();
	    $this->table_name = 'table_fieid';
	}

}