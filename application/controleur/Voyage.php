<?php
/**
* Largement inspiré par panique-mvc
* @link https://github.com/panique/php-mvc
*/
class Voyage extends Controleur{

  public function __construct() {
    parent::__construct();
  }

  public function index($args) {
    this->view($args);
  }

  public function view($args)
  {
    if(count($args)==0) {
      header("Location: ".URL."actualite");
      exit();
    }

    $url_appli = 'voyage/view';

    parent::loadModel("Voyage");
    parent::loadModel("Users");

    $voyages = new Voyage();
    $voyage = $voyages->findById($args[0]);
    $voyage = $voyage[0];

    $users = new Users();
    $user = $users->findById($voyage->id_auteur);
    $user = $user[0];


    require 'application/vue/_template/header.php';
    require 'application/vue/voyage/index.php';
    require 'application/vue/_template/footer.php';
  }
