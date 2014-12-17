<?php

class Etape extends Table {
  public $intitule;
  public $escription;
  public $debut;
  public $fin;
  public $id_voyage;

  public function __construct($titre="",$description="",$media_titre="",$en_ligne="") {
    parent::__construct();
    $this->intitule = $intitule;
    $this->description = $description;
    $this->debut = $debut;
    $this->fin = $fin;
    $this->id_voyage = $id_voyage;
  }
}
