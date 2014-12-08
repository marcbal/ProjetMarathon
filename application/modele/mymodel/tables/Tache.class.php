<?php

class Tache extends Table {
    public $expiration;
    public $intitule;
    public $description;
    public $accomplie;
    
    public function __construct($e="",$i="",$d="",$a="") {
        parent::__construct();
        $this->expiration=$e;
        $this->intitule = $i;
        $this->description = $d;
        $this->accomplie = $a;
    }
    
    

}