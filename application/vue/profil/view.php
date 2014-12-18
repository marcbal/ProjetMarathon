					<div id="actu">

					<div id="entete_profil">
						<h1 id="titre_profil"><p>Profil de</p><color><?php echo $user->user_name; ?></color></h1> <!-- Nom de l'utilisateur dont on affiche le profil -->
						
						<?php if (Session::get('user_id') == $user->getId()) { ?>
						<p><a href="voyages/create">Créer un voyage</a> - <a href="profil/edit">Éditer le profil</a></p>
						<?php } ?>
					</div>
					
					<?php foreach ($voyages_profil as $voyage) {
					$auteur = $voyage->getAuteur();
					?>
					<section>

						<h1> <?php echo $voyage->titre; ?></h1>
						<p class="auteur">Écrit par <a href="profil/view/<?php echo $auteur->getId(); ?>">
						<?php echo $auteur->user_name; ?></a></p>
						<p> <?php echo substr($voyage->description, 0, 200) ; ?> </p>

						<a href="voyages/view/<?php echo $voyage->getId(); ?>" >Lire la suite...</a>

					</section>

					
					
					<?php  }?>
					

					</div>
