<?php

class Etape extends Table {
  public $intitule;
  public $description;
  public $debut;
  public $fin;
  public $id_voyage=0;

  public function __construct($intitule="",$description="",$debut="",$fin="") {
    parent::__construct();
    $this->intitule = $intitule;
    $this->description = $description;
    $this->debut = $debut;
    $this->debut = $fin;
  }
  
  
  
  
  public function getMedias() {
    if($this->id==false) return array();
    $sqlCommentaire = new MediaSQL();
    return $sqlCommentaire->findById_etape($this->id)->execute();

  }
}
