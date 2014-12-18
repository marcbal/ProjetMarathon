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
    if(!isset($_POST)) {
      header("Location:".URL."/voyages/create");
      exit();
    }

    $voyage = new Voyage($_POST['titre_voyage'], $_POST['description'], Session::getId());
    $voyage->en_ligne = (!empty($_POST["public"])?1:0);
    $voyage->save();
	}




	public function commentCheck($args) {
<<<<<<< HEAD
		require 'application/vue/_template/header.php';
		
		if(count($args) == 0){
			echo '<h1> Erreur !!! <\h1>';
			require 'application/vue/_template/footer.php';
			exit();
		}
		
		if(!isset($_POST['comment'])){
			echo '<h1> Erreur !!! <\h1>';
			require 'application/vue/_template/footer.php';
			exit();
		}
		
		$contenu = $_POST['comment'];
		
		parent::loadModel('Commentaire');
		$id = Session::get('user_id');
		
		
		$handlerComment = new Commentaire($id,$args[0],$contenu);
		$handlerComment->save();
		
		
=======

>>>>>>> 68ab2518995d4ea8dfd402b649e280388d7c2a5e
	}
}
