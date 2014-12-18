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


		parent::loadModel('Voyage');
		parent::loadModel('Users');
		$voyages = new VoyageSQL();
		$voyages = $voyages->findByen_ligne(1)->orderBy('id DESC')->limit(0, 5)->execute();
			
			
		require 'application/vue/_template/header.php';
		require 'application/vue/actualite/index.php';
		require 'application/vue/_template/footer.php';
	}


}
