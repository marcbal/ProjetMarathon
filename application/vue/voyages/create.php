				<div id="actu">

					<form action="voyages/createCheck" method="post" id="formulaire_ecriture_article" >
					<table>
						<tr id="titre"><td colspan="2"><label>Titre du voyage : </label>
						<input type="text" id="titre_voyage" placeholder="Mon odyssée" name="titre_voyage"/></td></tr>

						<tr><td colspan="2"><label>Descriptif du voyage : </label></td></tr>
						<tr><td colspan="2"><textarea name="description" id="description" placeholder="Description brève du voyage..." style="height:5vw" ></textarea></td></tr>

					</table>

						<div id="valider_form">
							<label>Public : <input type="checkbox" id="public_check" name="public" value="O" />
							<br/><input type="submit" id="valider_voyage" value="Publier" />
						</div>
					</form>
				</div>
