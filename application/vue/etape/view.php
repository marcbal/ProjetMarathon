<div id="actu">
	
	<section>
		<h1><?php echo $etape->intitule; ?></h1>
		<p><a href="voyages/view/<?php echo $etape->id_voyage; ?>">Voir le voyage complet</a> -
				Du <?php echo affiche_date_fr(strtotime($etape->debut), false, 'm'); ?> ->
				au <?php echo affiche_date_fr(strtotime($etape->fin), false, 'm'); ?>
		</p>
		<p><?php echo nl2br(htmlentities($etape->description)); ?></p>
		
		
		
	</section>
	
</div>