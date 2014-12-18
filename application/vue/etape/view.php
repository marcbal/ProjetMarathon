<div id="contenu">
	
	<section>
		<h1><?php echo $etape->intitule; ?></h1>
		<p><a href="voyage/view/<?php echo $etape->id_voyage; ?>">Voir le voyage complet</a> -
				Du <?php echo affiche_date_fr($etape->debut, false, 'm'); ?> ->
				au <?php echo affiche_date_fr($etape->fin, false, 'm'); ?>
		</p>
		<p><?php echo nl2br(htmlentities($etape->description)); ?></p>
		<!-- commentaires -->
	</section>
	
</div>