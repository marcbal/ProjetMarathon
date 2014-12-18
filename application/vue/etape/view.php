<div id="actu">
	
	<section>
		<h1><?php echo $etape->intitule; ?></h1>
		<p><a href="voyages/view/<?php echo $etape->id_voyage; ?>">Voir le voyage complet</a> -
				Du <?php echo affiche_date_fr(strtotime($etape->debut), false, 'm'); ?> ->
				au <?php echo affiche_date_fr(strtotime($etape->fin), false, 'm'); ?>
		</p>
		<p><?php echo nl2br(htmlentities($etape->description)); ?></p>

		
		
		
		
		
	
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>
 
  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="http://placehold.it/1200x315" alt="...">
      <div class="carousel-caption">
          <h3>Caption Text</h3>
      </div>
    </div>
    <div class="item">
      <img src="http://placehold.it/1200x315" alt="...">
      <div class="carousel-caption">
          <h3>Caption Text</h3>
      </div>
    </div>
    <div class="item">
      <img src="http://placehold.it/1200x315" alt="...">
      <div class="carousel-caption">
          <h3>Caption Text</h3>
      </div>
    </div>
  </div>
 
  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
</div> <!-- Carousel -->
		
		
		
		
		
		
	</section>
	
</div>