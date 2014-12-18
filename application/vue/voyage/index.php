<?php
$etapes = $voyage->fetchAll()->orderBy("debut ASC");
?>

  <div id="contenu">

    <div id="actu">

      <section>
        <h1><?php echo $voyage->titre; ?></h1>
        <p class="auteur">Écrit par <a href="profil/view/<?php echo $voyage->id_acteur; ?>"><?php echo $user->user_name; ?></a></p>
        <p><?php echo $voyage->description; ?></p>
          <ul>
            <?php foreach($etapes as $e) { ?>
            <li><p class="dates"><b><?php echo $e->date; ?></b></p><br/>
              <p><?php echo substr($e->description, 0, 100)."..."; ?></p>
            </li>
            <?php } ?>
           </ul>
      </section>
    </div>
  </div>
