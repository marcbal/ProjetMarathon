<?php
/**
* Largement inspir? par panique-mvc
* @link https://github.com/panique/php-mvc
*/
class Actualite extends Controleur{

	public function __construct() {
		parent::__construct();
	}
	
	public function index($args)
	{
		
		$url_appli = 'actualite';
		
		
		require 'application/vue/_template/header.php';
		//require 'application/vue/actualite/index.php';
		require 'application/vue/_template/footer.php';
	}
	
	
}
