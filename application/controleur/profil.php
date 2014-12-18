<?php
/**
* Largement inspiré par panique-mvc
* @link https://github.com/panique/php-mvc
*/
class Profil extends Controleur{

	public function __construct() {
		parent::__construct();
	}

	public function index($args)
	{
		if (!Session::isLogin())
			$this->login($args);
		else
		{
			header('Location: '.URL.'actualite');
			exit();
		}
	}


	public function deconnexion($args)
	{	// déconnexion puis redirection vers la page de login
		Session::destroy();
		header('Location: '.URL.'profil/login');
		exit();
	}



	public function login($args)
	{	// ici la page de login ET D'ENREGISTREMENT

		$url_appli = 'profil/login';

		if (Session::isLogin())
		{
			header('Location: '.URL.'profil');
			exit();
		}



		require 'application/vue/_template/header.php';
		echo '<!-- $args : ';
		print_r($args);
		echo ' -->';
		require 'application/vue/profil/login.php';
		require 'application/vue/_template/footer.php';
	}




	public function loginCheck($args)
	{
		if (Session::isLogin())
		{
			echo 'Vous êtes déjà connecté';
			return;
		}
		$mail = $_POST[''];
		$pass = $_POST[''];
		parent::loadModel('Users');
		if(($r = Session::login($mail, $pass)) === true)
			header('Location: '.URL.'profil');
		else
			header('Location: '.URL.'profil/login/'.$r);
	}









	public function register($args)
	{	// ici la page d'enregistrement

		$url_appli = 'profil/register';

		if (Session::isLogin())
		{
			header('Location: '.URL.'profil');
			exit();
		}



		require 'application/vue/_template/header.php';
		echo '<!-- $args : ';
		print_r($args);
		echo ' -->';
		require 'application/vue/profil/register.php';
		require 'application/vue/_template/footer.php';
	}


	public function registerCheck($args)
	{
		if (Session::isLogin())
		{
			echo 'Vous êtes déjà connecté';
			return;
		}
		$mail = $_POST[''];
		$pass = $_POST[''];
		$pass2 = $_POST[''];
		$username = $_POST[''];
		parent::loadModel('Users');
		if(($r = Session::register($mail, $pass, $pass2, $username)) === true)
			header('Location: '.URL.'profil');
		else
			header('Location: '.URL.'profil/register/'.$r);
	}














	public function edit($args)
	{
		if (!Session::isLogin())
		{
			header('Location: '.URL.'profil');
			exit();
		}
		$id = Session::get('user_id');


		$users = new UsersSQL();
		$user = $users->findById($id)->execute();
		$user=$user[0];


		require 'application/vue/_template/header.php';
		//require 'application/vue/profil/edit.php';
		require 'application/vue/_template/footer.php';

	}




	public function view($args)
	{
		$id = null;
		if (Session::isLogin())
			$id = Session::get('user_id');

		if (count($args)>0)
			$id = intval($args[0]);


		require 'application/vue/_template/header.php';


		if ($id == null)
		{
			echo 'Précisez un identifiant d\'utilisateur';
		}
		else
		{
			require 'application/vue/profil/view.php';
		}
		require 'application/vue/_template/footer.php';
	}














}
