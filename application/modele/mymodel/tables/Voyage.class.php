<?php

class Voyage extends Table {
  public $titre;
  public $description;
  public $id_media_titre;
  public $en_ligne;
  public $id_auteur;

  public function __construct($titre="",$description="",$media_titre="",$id_auteur="") {
    parent::__construct();
    $this->titre = $titre;
    $this->description = $description;
    $this->id_media_titre = $media_titre;
    $this->en_ligne = 0;
    $this->id_auteur = $id_auteur;

  }

  public function getCommentaires() {
    if($this->id==false) return array();
    $sqlCommentaire = CommentaireSQL();
    return $sqlCommentaire->findById_voyage($this->id)->execute();

  }

  public function getEtapes() {
    if($this->id==false) return array();
    $etapeSQL = new EtapeSQL();
    return $etapeSQL->findById_voyage($this->id)->execute();
  }

  public function getAuteur(){
  	$user = new UsersSQL();
  	$user = $user->findById($this->id_auteur);
  	return $user;
  }
}
