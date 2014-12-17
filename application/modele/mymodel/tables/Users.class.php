<?php

class Users extends Table {
  public $user_name;
  public $user_password_hash;
  public $user_email;
  public $user_active=0;
  public $user_last_login_timestamp=NULL;
  public $user_failed_logins=0;
  public $user_last_failed_login=NULL;

  public function __construct($user_name="",$user_password_hash="",$user_email="") {
    parent::__construct();
    $this->user_name = $user_name;
    $this->user_password_hash = $user_password_hash;
    $this->user_email = $user_email;
  }
}
