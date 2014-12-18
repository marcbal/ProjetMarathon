
    <div id="actu">

      <section>
        <h1><?php echo $voyage->titre; ?></h1>
        <p class="auteur">Écrit par <a href="profil/view/<?php echo $voyage->id_auteur; ?>"><?php echo $user->user_name; ?></a></p>
        <p><?php echo nl2br(htmlentities($voyage->description)); ?></p>
	  <ul>
		
		<?php foreach($etapes as $e) { ?>
			<li><p class="dates"><b>Du <?php echo affiche_date_fr(strtotime($e->debut), false, 'm'); ?> au
					<?php echo affiche_date_fr(strtotime($e->fin), false, 'm'); ?></b></p><br/>
			  <p><?php echo htmlentities(substr($e->description, 0, 200))."..."; ?></p>
			  <p><a href="etapes/view/<?php echo $e->getId(); ?>">Voir la suite</a></p>
			</li>
		<?php } ?>
	   </ul>
	   <div class="comments">
			<h2>Commentaires</h2>
			<?php if (Session::isLogin()) { ?>
				<form action="voyages/commentCheck/<?php echo $voyage->getId(); ?>" method="post" />
				<!-- Formulaire d'écriture de commentaire accessible si on est connecté -->
					<textarea placeholder="Écrire un message..." id="add_com"></textarea>
					<br/><br/><center><input type="submit" value="Poster" /></center>
				</form>
			<?php }
			foreach ($commentaires as $com) {
				$auteur = $com->getAuteur();
				?>
				<div class="com">
					<h3><a href="profil/view/<?php echo $auteur->getId(); ?>"><?php echo $auteur->user_name; ?></a></h3>
					<p><?php echo htmlentities($com->contenu); ?></p>
				</div>
				<?php
			}
			?>
		</div>
      </section>
    </div>
