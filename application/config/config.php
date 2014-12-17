<?php
error_reporting(E_ALL);
ini_set("display_errors", 1); // niveau d'erreur en phase de développement
setlocale(LC_TIME, 'fr_FR.utf8','fra'); // date en langue française, fr_FR
define('URL', dirname($_SERVER['PHP_SELF']).'/');
define('DB_TYPE', 'mysql');
define('DB_HOST', 'localhost');
define('DB_NAME', 'groupe8');
define('DB_USER', 'groupe8');
define('DB_PASS', 'tvF40a0N');




// protection pour le login

define('LOGIN_FAIL_MAX', 3);
define('LOGION_FAIL_TIME', 5*60); // 5 minutes