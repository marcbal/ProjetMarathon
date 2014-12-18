<?php
/**
* Largement inspir� par panique-mvc
* @link https://github.com/panique/php-mvc
*/
class Accueil extends Controleur{

	public function __construct() {
		parent::__construct();
	}

	public function index($args)
	{
		$url_appli = 'accueil';
		
		// pas de header et footer, déjà dans la page inclus ci-dessous
		require 'application/vue/accueil/index.php';
	}


	public function a_propos($args)
	{
		$url_appli = 'accueil/a_propos';

		require 'application/vue/_template/header.php';
		require 'application/vue/accueil/a_propos.php';
		require 'application/vue/_template/footer.php';
	}


}
