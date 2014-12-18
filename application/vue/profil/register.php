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
	 <div id="inscription_contenu">
    	
    <div class="inscrip">
        <p> Inscription </p>
        <form method="post" action="profil/registerCheck">
        <table>
            <tr><td><input type="text" value="" name="username" /></td>
            <td><label id="nom"> Nom d'utilisateur </label></td></tr>
            <tr><td><input type="text" value="" name="mail" /></td>
            <td><label id="mail">Adresse mail</label></td></tr>
            <tr><td><input type="password" value="" name="pass"/></td>
            <td><label id="mdp">Mot de passe</label></td></tr>
            <tr><td><input type="password" value="" name="pass2"/></td>
            <td><label id="mdpconfir">Confirmer le mot de passe</label></td></tr>
	     
            <tr><td rowspan="2"><input type="submit" value="Valider" id="valider"/></td></tr>
            
        </table>    
        </form>
       
      	</div>
      </div>
	  </body>
	  </html>