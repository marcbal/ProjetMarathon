<?php
/**
* Largement inspir� par panique-mvc
* @link https://github.com/panique/php-mvc
*/
class Accueil extends Controleur{

	public function __construct() {
		parent::__construct();
	}

	public function portail($args)
	{
		$url_appli = 'portail';
		require 'application/vue/accueil/portail.php';
	}

	public function index($args)
	{
		$url_appli = 'accueil';

		require 'application/vue/_template/header.php';
		require 'application/vue/accueil/index.php';
		require 'application/vue/_template/footer.php';
	}


	public function a_propos($args)
	{
		$url_appli = 'accueil/a_propos';s

		require 'application/vue/_template/header.php';
		//require 'application/vue/accueil/a_propos.php';
		require 'application/vue/_template/footer.php';
	}


}
