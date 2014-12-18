			<div id="contenu">
				<div id="actu">
				<?php foreach ($voyages as $voyage){ ?>
					<section>
					
						<h1> <?php echo $voyage->titre; ?></h1>
						<p class="auteur">Écrit par <a href="">
						<?php echo $voyage->getAuteur()->user_name; ?></a></p>
						<p> <?php echo substr($voyage->description, 0, 200) ; ?> </p>
						
						<a href="" >Lire la suite...</a>
						
					</section>
						
						
					<?php } ?>
				

				</div>
			</div>
