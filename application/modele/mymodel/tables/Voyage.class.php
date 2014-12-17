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
    $thsi->id_auteur = $id_auteur;
  }
}
