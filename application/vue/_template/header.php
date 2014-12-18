<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xml:lang="fr"
      lang="fr"
      dir="ltr">
	<head>
		<title>Odysseus</title>
		<base href="<?php echo URL; ?>" />
		<link rel="stylesheet" href="public/css/bootstrap.css">
		<link rel="stylesheet" href="public/css/profil.css">
		<link rel="stylesheet" href="public/css/accueil.css"> <!-- Lien vers le fichier style -->
		<link rel="stylesheet" href="public/css/connexion.css" />    <!-- Lien vers le fichier style -->
		<link rel="icon" type="image/png" href="public/img/favicon.png"/> <!-- Favicon du site -->
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
	</head>
	<body>
		<header>
			<img alt="header" src="public/img/head4_2.png" onmousedown="return false" /><!-- Image mapmonde -->

			<!-- Onglets -->
			<nav>
				<div class="onglets_gauche">
					<a class="onglet_accueil" href="actualite">Accueil</a>
					<?php if (Session::isLogin()) { ?>
						<a class="onglet_profil" href="profil/view">Profil</a> <!-- Renvoi vers NOTRE profil -->
					<?php } else { ?>
						<a class="onglet_profil" href="profil/login">Connexion</a>
					<?php } ?>
				</div>

				<div class="onglets_droit">
					<a class="onglet_infos" href="accueil/a_propos">Infos</a>
					
					<?php if (Session::isLogin()) { ?>
						<a class="onglet_deco" href="profil/deconnexion">Déconnexion</a>
					<?php } else { ?>
						<a class="onglet_deco" href="profil/register">Inscription</a>
					<?php } ?>
				</div>
			</nav>

		</header>
