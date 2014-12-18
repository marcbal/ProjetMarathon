<div id="actu">
	
	<section>
		<h1><?php echo $etape->intitule; ?></h1>
		<p><a href="voyages/view/<?php echo $etape->id_voyage; ?>">Voir le voyage complet</a> -
				Du <?php echo affiche_date_fr(strtotime($etape->debut), false, 'm'); ?> ->
				au <?php echo affiche_date_fr(strtotime($etape->fin), false, 'm'); ?>
		</p>
		<p><?php echo nl2br(htmlentities($etape->description)); ?></p>

		
		
		
		
		
<!-- Slider -->


<div id="index_slider" style="position: relative; overflow: hidden; display: none;">
	<div id="slider_elements" style=" overflow: hidden;">
	
	</div>
	
	<p id="slider_button"></p>

</div>

<script type="text/javascript">
	var sldrContent_img = new Array ();
	var sldrContent_html = new Array ();
	var sldrContent_href = new Array ();
	
	<?php
		foreach($medias as $media)
		{
			?>
				sldrContent_img[0] = <?php echo $media->url; ?>;
				sldrContent_html[0] = '';
				sldrContent_href[0] = false;
			<?php
		}
		
		
		
	?>
	
	
	/*
	sldrContent_img[0] = 'http://assets.mc-pandacraft.net/pandacraft/assets/files/images_pages/slider_presentation.jpg';
	sldrContent_html[0] = '<h3>Serveur Minecraft Pandacraft</h3><p>Serveur créatif, survie ou Faction, au choix ! Inscription rapide et gratuit sur le site. Protection anti-grief en survie et en créatif.</p>';
	sldrContent_href[0] = false;*/
</script>



		<script src="public/js/slider.js" async></script>

		
		
		
		
	</section>
	
</div>