<?php
/**
* Largement inspiré par panique-mvc
* @link https://github.com/panique/php-mvc
*/
class Voyages extends Controleur{

  public function __construct() {
    parent::__construct();
  }

  public function index($args) {
    $this->view($args);
  }

  public function view($args){
    if(count($args)==0) {
      header("Location: ".URL."actualite");
      exit();
    }

    $url_appli = 'voyage/view';

    parent::loadModel("Voyage");
    parent::loadModel("Users");
    parent::loadModel("Commentaire");
    parent::loadModel("Etape");

    $voyages = new VoyageSQL();
    $voyage = $voyages->findById($args[0]);

    $user = $voyage->getAuteur();
	
    
	$etapes = $voyage->getEtapes();
    
	$commentaires = $voyage->getCommentaires();

    require 'application/vue/_template/header.php';
    require 'application/vue/voyages/view.php';
    require 'application/vue/_template/footer.php';
  }

  public function create($args)
  {

    $url_appli = 'voyage/view';

    require 'application/vue/_template/header.php';
    require 'application/vue/voyages/create.php';
    require 'application/vue/_template/footer.php';
  }

	public function createCheck($args) {
		
	}
	
	
	
	
	public function commentCheck($args) {
		
	}
}
