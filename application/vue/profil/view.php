					<div id="actu">

					<div id="entete_profil">
						<h1 id="titre_profil"><p>Profil de</p><color><?php echo $user->user_name; ?></color></h1> <!-- Nom de l'utilisateur dont on affiche le profil -->

						<div id="form_nouveau_voyage"> <!-- Formulaire d'écriture d'un article -->
							<form action="" method="post" >

							</form>
						</div>
					</div>
					
					<?php foreach ($voyages_profil as $voyage) {?>
					<section>

						<h1> <?php echo $voyage->titre; ?></h1>
						<p class="auteur">Écrit par <a href="">
						<?php echo $voyage->getAuteur()->user_name; ?></a></p>
						<p> <?php echo substr($voyage->description, 0, 200) ; ?> </p>

						<a href="" >Lire la suite...</a>

					</section>

					
					
					<?php  }?>
					

					</div>
