<?php

class Utilisateur extends Table {
  public $user_name;
  public $user_password_hash;
  public $user_email;
  public $user_active;

  public function __construct($user_name="",$user_password_hash="",$user_email="", $user_active=1) {
    parent::__construct();
    $this->user_name = $user_name;
    $this->user_password_hash = $user_password_hash;
    $this->user_email = $user_email;
    $this->user_active = $user_active;
  }
}
