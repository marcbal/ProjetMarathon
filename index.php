<?php
$mtime_debut = microtime(true);


require_once('application/config/config.php');
require_once('application/libs/Controleur.php');
require_once('application/libs/Application.php');


$app = new Application();



?><!-- durée d'exécution : <?php echo (microtime(true)-$mtime_debut); ?> s -->