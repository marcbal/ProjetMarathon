<?php
/**
* Largement inspir� par panique-mvc
* @link https://github.com/panique/php-mvc
*/
class Controleur {
	public static $dbAdapter = null;
	public static $CRUDAdapter = null; 
	function __construct()
	{
		Session::init();
		
		
		
		
		
		
	}
	
	
	
	
	
	
	
	private function openDatabaseConnexion()
	{
		self::$dbAdapter = new PDODBAdapter(DB_HOST, DB_NAME, DB_USER, DB_PASS);
		self::$CRUDAdapter = new PDOCRUDAdapter(self::$dbAdapter);
	}
	
	
	
	/**
	* charge le mod�le correspondant
	*/
	public function loadModel($dbAdapterName)
	{
		if (self::$dbAdapter === null)
			$this->openDatabaseConnexion();
		require_once('application/modele/mymodel/queries/' . $dbAdapterName . 'SQL.class.php');
		require_once('application/modele/mymodel/tables/' . $dbAdapterName . '.class.php');
	}
	
	public function __toString() {
		return __CLASS__;
	}
}