<?php
/**
* Largement inspiré par panique-mvc
* @link https://github.com/panique/php-mvc
*/
class Home extends Controleur{
	
	public function __construct() {  }
	
	public function index($args)
	{
		$url_appli = 'home';
		parent::loadModel('tache');
		$tSQL = new TacheSQL();
		$t = new Tache("bouh", "machin", "", "");
		
		
		
		
		
		require 'application/vue/_template/header.php';
		require 'application/vue/home/index.php';
		require 'application/vue/_template/footer.php';
	}
	public function about($args)
	{
		$url_appli = 'home/about';
		require 'application/vue/_template/header.php';
		require 'application/vue/home/about.php';
		require 'application/vue/_template/footer.php';
	}
	public function contact($args)
	{
		$url_appli = 'home/contact';
		require_once 'application/vue/_template/header.php';
		require_once 'application/vue/home/contact.php';
		require_once 'application/vue/_template/footer.php';
	}
}
