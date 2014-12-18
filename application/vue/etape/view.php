<div id="contenu">
	
	<section>
		<h1><?php echo $etape->intitule; ?></h1>
		<p><a href="voyage/view/<?php echo $etape->id_voyage; ?>">Voir le voyage complet</a> -
				<?php echo affiche_date_fr($etape->debut, true, 'm'); ?> ->
				<?php echo affiche_date_fr($etape->fin, true, 'm'); ?>
		</p>
		<p><?php echo $etape->description; ?></p>
		<!-- commentaires -->
	</section>
	
</div>