<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xml:lang="fr"
      lang="fr"
      dir="ltr">
	<head>
		<title>Odysseus</title>
		<base href="<?php echo URL; ?>" />
		<!-- Lien vers le fichier style -->
		<link rel="stylesheet" href="public/css/style.css" />
		<link rel="icon" type="image/png" href="public/img/favicon.png"/> <!-- Favicon du site -->
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
	</head>
	<body>
	
	<div id="connexion_contenu">
    	
       <div class="connex">
         <p> Connexion </p>
          <form method="post" action="profil/loginCheck">
          <table>
          <tr>
            <td><input id="mail" type="text" name="mail" /></td>
            <td><label for="mail">Adresse mail</label></td>
          </tr>
          <tr>
            <td><input id="mdp" type="password" value="" name="pass"  /></td>
            <td><label for="mdp">Mot de passe</label></td>
          </tr>
          <tr><td rowspan="2">
            <input type="submit" value="Connexion" id="connex" /></td>
          	</td>
          </tr>
          </table>
          </form>
    </div>
</div>
</body>
</html>