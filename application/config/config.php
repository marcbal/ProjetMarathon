<?php
error_reporting(E_ALL);
ini_set("display_errors", 1); // niveau d'erreur en phase de développement
setlocale(LC_TIME, 'fr_FR.utf8','fra'); // date en langue française, fr_FR
define('URL', $_SERVER['CONTEXT_PREFIX'].'/');
define('DB_TYPE', 'mysql');
define('DB_HOST', 'localhost');
define('DB_NAME', 'marathon2014');
define('DB_USER', 'marathon2014');
define('DB_PASS', 'aE8Emfc9pJtfKdHf');
