<?php

/**
 * Session class
 *
 * handles the session stuff. creates session when no one exists, sets and
 * gets values, and closes the session properly (=logout). Those methods
 * are STATIC, which means you can call them with Session::get(XXX);
 *
 *
 *
 * Cette classe gère aussi le système de session utilisateur/login
 *
 */
class Session
{
    /**
     * starts the session
     */
    public static function init()
    {
        // if no session exist, start the session
        if (session_id() == '') {
            session_start();
        }


    }

    /**
     * sets a specific value to a specific key of the session
     * @param mixed $key
     * @param mixed $value
     */
    public static function set($key, $value)
    {
        $_SESSION[$key] = $value;
    }

    /**
     * gets/returns the value of a specific key of the session
     * @param mixed $key Usually a string, right ?
     * @return mixed
     */
    public static function get($key)
    {
        if (isset($_SESSION[$key])) {
            return $_SESSION[$key];
        } else
            return null;
    }

    /**
     * deletes the session (= logs the user out)
     */
    public static function destroy()
    {
        session_destroy();
    }





	public static function isLogin() {
		return (Session::get('is_login') === true);
	}


	/**
	 * try to login with e-mail and password
	 *       /!\     need model "Users" to be loaded
	 */

	public static function login($mail, $pass)
	{
		if (!NeverTrustUserInput::checkEmail($mail))
			return 'invalid_email';	// email non valide

		$users = new UsersSQL();
		$user = $users->findByUser_email($mail)->execute();

		if (count($user) == 0)
			return 'email_not_exist';	// l'e-mail n'existe pas dans la base

		$user = $user[0];

		//  nombre de tentative déjà effectué il y a peu de temps
		if ($user->user_failed_logins>=LOGIN_FAIL_MAX AND $user->user_last_failed_login > time()-LOGION_FAIL_TIME)
			return 'lot_of_try';



		if (!password_verify($pass, $user->user_password_hash))
		{
			$user->user_failed_logins++;
			$user->user_last_failed_login = time();
			$user->save();
			return 'wrong_password';
		}


		// la connexion est bon

		$user->user_last_login_timestamp = time();

		$user->user_failed_logins = 0;
		$user->user_last_failed_login = NULL;

		$user->save();



		Session::set('is_login', true);
		Session::set('user_id', $user->getId());
		Session::set('user_name', $user->user_name);
		
		
		return true;

	}
	
	
	
	
	
	
	
	
	
	
	public static function register($mail, $pass, $pass2, $user_name)
	{
		// vérification de la validité des champs
		
		if (!NeverTrustUserInput::checkEmail($mail))
			return 'invalid_email';	// email non valide
		
		if (!NeverTrustUserInput::checkUsername($user_name))
			return 'invalid_username';	// username non valide
		
		
		if (!NeverTrustUserInput::checkPasswordValidity($pass))
			return 'invalid_password';	// pass non valide
		
		if ($pass != $pass2)
			return 'different_password';	// les 2 mots de passes différents
		
		
		
		
		// on vérifie si le pseudo ou le mail existe dans la base de donnée
		$users = new UsersSQL();
		$user = $users->findByUser_email($mail)->execute();
		if (count($user) != 0) return 'email_exist';
			
		$users = new UsersSQL();
		$user = $users->findByUser_name($user_name)->execute();
		if (count($user) != 0)
			return 'username_exist';	// les 2 mots de passes différents
		
		
		
		
		
		// création d'un nouveau Users
		$user = new Users($user_name, password_hash($pass, PASSWORD_DEFAULT), $mail);
		$user->user_active=1;
		$user->save();
		
		return true;
		
		
		
	}
}
