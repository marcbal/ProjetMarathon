<?php
	class Media extends Table{
		public $url;
		public $format;
		public $id_etape;

		public function __construct($url="", $format="", $id_etape=""){
			parent::__construct();
			$this->url = $url;
			$this->format = $format;
			$this->id_etape = $id_etape;
		}

		
	}

?>
