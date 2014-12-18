<?php

/**
 * Classe qui gère les vérifications des formulaires et autres données provenant des utilisateurs
 * 
 */
class NeverTrustUserInput
{

	public static function checkEmail($mail)
	{
		return preg_match('#^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$#i', $mail);
	}
	
	
	
	public static function checkUsername($name)
	{
		return preg_match('#^[A-Za-z0-9._-]{'.USERNAME_MIN_SIZE.','.USERNAME_MAX_SIZE.'}$#', $name);
	}
	
	public static function checkPasswordValidity($pass)
	{
		return preg_match('#^.{'.PASSWORD_MIN_SIZE.',}$#', $pass);
	}

}