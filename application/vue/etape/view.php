<div id="actu">
	
	<section>
		<h1><?php echo $etape->intitule; ?></h1>
		<p><a href="voyages/view/<?php echo $etape->id_voyage; ?>">Voir le voyage complet</a> -
				Du <?php echo affiche_date_fr(strtotime($etape->debut), false, 'm'); ?> ->
				au <?php echo affiche_date_fr(strtotime($etape->fin), false, 'm'); ?>
		</p>
		<p><?php echo nl2br(htmlentities($etape->description)); ?></p>

		
		
		
		
		
<!-- Slider -->


<div id="index_slider" style="position: relative; overflow: hidden; display: none; width: 100%; height: 60%;">
	<div id="slider_elements" style=" overflow: hidden;">
	
	</div>
	
	<p id="slider_button"></p>

</div>

		<script type="text/javascript">
			var sldrContent_img = new Array ();
			var sldrContent_html = new Array ();
			var sldrContent_href = new Array ();
			
			<?php
				$i = 0;
				foreach($medias as $media)
				{
					?>
						sldrContent_img[<?php echo $i; ?>] = "<?php echo $media->url; ?>";
						sldrContent_html[<?php echo $i; ?>] = '';
						sldrContent_href[<?php echo $i; ?>] = false;
					<?php
					$i++;
				}
				
				
				
			?>
			
			
		</script>



		<script src="public/js/slider.js" async></script>

		
		
		
		
	</section>
	
</div>