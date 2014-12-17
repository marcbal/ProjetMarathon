<?php

class Utilisateur extends Table {
  public $user_name;
  public $user_password_hash;
  public $user_email;
  public $user_active;

  public function __construct($user_name="",$user_password_hash="",$user_email="", $user_active="") {
    parent::__construct();
    $this->titre = $titre;
    $this->description = $description;
    $this->media_titre = $media_titre;
    $this->en_ligne = $en_ligne;
    $this->user_active = 1;
  }
}
