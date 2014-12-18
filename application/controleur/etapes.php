<?php
/**
* Largement inspir? par panique-mvc
* @link https://github.com/panique/php-mvc
*/
class Etapes extends Controleur{

	public function __construct() {
		parent::__construct();
	}

	public function index($args)
	{
		$this->view($args);
	}
	
	
	public function view($args)
	{
		
		$url_appli = 'etape/view';
		
		
		$etape_id = null;

		if (count($args)>0)
			$etape_id = intval($args[0]);
		
		require 'application/vue/_template/header.php';
		if ($etape_id == null)
		{
			echo '<p>Veuillez préciser l\'identifiant de l\'étape</p>';
			require 'application/vue/_template/footer.php';
			return;
		}
		
		parent::loadModel('Etape');
		parent::loadModel('Media');
		$etapes = new EtapeSQL();
		$etape = $etapes->findById($etape_id);
		
		$medias = $etape->getMedias();
		
		if ($etape === false)
		{
			echo '<p>L\'étape demandé n\'existe pas</p>';
			require 'application/vue/_template/footer.php';
			return;
		}
		
		
		
		
		require 'application/vue/etape/view.php';
		require 'application/vue/_template/footer.php';
	}
	
	
	


}
