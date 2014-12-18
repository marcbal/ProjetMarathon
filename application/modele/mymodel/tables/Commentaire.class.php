<?php

class Commentaire extends Table {
  public $id_personne;
  public $id_voyage;
  public $contenu;
  public $date_post;
  public $evaluation;

  public function __construct($id_personne="",$id_voyage="",$contenu="",$date_post="", $evaluation="") {
    parent::__construct();
    $this->id_personne = $id_personne;
    $this->id_voyage = $id_voyage;
    $this->contenu = $contenu;
    $this->date_post = $date_post;
    $this->evaluation = $evaluation;
  }
  
  
  public function getAuteur(){
  	$user = new UsersSQL();
  	$user = $user->findById($this->id_personne);
  	return $user;
  }
  
  
}
