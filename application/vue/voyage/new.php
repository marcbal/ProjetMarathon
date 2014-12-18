				<div id="actu">

					<form action="voyages/newCheck" method="post" id="formulaire_ecriture_article" >
					<table>
						<tr id="titre"><td colspan="2"><label>Titre du voyage : </label>
						<input type="text" id="titre_voyage" placeholder="Mon odyssée" /></td></tr>

						<tr><td colspan="2"><label>Descriptif du voyage : </label></td></tr>
						<tr><td colspan="2"><textarea name="description" id="description" placeholder="Description brève du voyage..." style="height:5vw" ></textarea></td></tr>


						<tr><td><center><input type="button" id="ajouter_etape" value="Ajouter une étape" /></center></td> <!-- Ajoute une étape à la suite avec id+1 -->
						<td><center><input type="button" id="supprimer_etape" value="Supprimer une étape" /></td></center></tr> <!-- Supprime la dernière étape avec id-1  -->
					</table>

					<?php for($i=0; $i<2; $i++) { ?>
						<div class="etape">
							<h2>Étape <?php echo $i; ?></h2>
							<table>
							<tr><td style="text-align:right"><label>Début du séjour : </label></td>
							<td><input typse="date" name="etape<?php echo $i; ?>_debut" id="etape<?php echo $i; ?>_debut" /></td></tr>
							<tr><td style="text-align:right"><label>Fin du séjour : </label></td>
							<td><input type="date" name="etape_<?php echo $i; ?>_fin" id="etape_<?php echo $i; ?>_fin" /></td></tr>
							<tr><td colspan="2"><textarea name="etape_<?php echo $i; ?>_contenu" placeholder="Rédigez ici votre contenu..." id="etape_<?php echo $i; ?>_contenu" ></textarea></td></tr>
							</table>
						</div>
						<?php } ?>

						<div id="valider_form">
							<label>Public : <input type="checkbox" id="public_check" />
							<br/><input type="submit" id="valider_voyage" value="Publier" />
						</div>
					</form>
				</div>
