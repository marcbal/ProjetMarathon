				<div id="actu">
				<?php foreach ($voyages as $voyage){
					$auteur = $voyage->getAuteur();
					?>
					<section>
						
						<h1> <?php echo $voyage->titre; ?></h1>
						<p class="auteur">Écrit par <a href="profil/view/<?php echo $auteur->getId(); ?>">
						<?php echo $auteur->user_name; ?></a></p>
						<p> <?php echo htmlentities(substr($voyage->description, 0, 200)).'...' ; ?> </p>

						<a href="voyages/view/<?php echo $voyage->getId(); ?>" >Lire la suite...</a>

					</section>


					<?php } ?>


				</div>
