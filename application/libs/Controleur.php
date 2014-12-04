<?php
/**
* Largement inspiré par panique-mvc
* @link https://github.com/panique/php-mvc
*/
class Controleur {
	public $db = null;
	function __construct()
	{
		$this->openDatabaseConnexion();
	}
	
	private function openDatabaseConnexion()
	{
		$options = array(PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ, PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING);
		$this->db = new PDO(DB_TYPE . ':host=' . DB_HOST . ';dbname=' . DB_NAME, DB_USER, DB_PASS, $options);
	}
	
	public function loadModel($model_name)
	{
		require_once('application/modele/' . strtolower($model_name) . '.php');
		return new $model_name($this->db);
	}
	
	public function __toString() {
		return __CLASS__;
	}
}