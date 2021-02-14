<h3>Contrôle sur les Individus</h3>

<!-- Affichage des Individus sans Genre -->
<div class="crm-accordion-wrapper crm-ajax-accordion collapsed">
	<div class="crm-accordion-header">Individus sans Genre ({$IndividuSansGenre|@count} fiches à contrôler)</div>
	<div class="crm-accordion-body">
		<h5>Contexte</h5>
			<ul>
				<li>Certaines fiches sont créées sans indication du genre de l’Individu</li>
			</ul>
		<h5>Risques</h5>
			<ul>
				<li>Erreurs de ciblage</li>
				<li>Mauvais renseignement sur la personne</li>
			</ul>
		<h5>Actions à mener</h5>
			<ul>
				<li>Cliquer sur le lien pour ouvrir la fiche dans un nouvel onglet</li>
				<li>Editer les Données Démographiques, pour renseigner le genre</li>
				<li>Sauvegarder</li>
			</ul>
		<h5>Liste des individus concernés</h5>
			<table class="report-layout display">
				<thead>
				<tr>
					<th>Identifiant CiviCRM</th>
					<th>Nom et Prénom</th>
				</tr>
				</thead>
				<tbody>
					{foreach from=$IndividuSansGenre item=row}
						<tr class="{cycle values="odd-row,even-row"}">
							<td>{$row[0]}</td>
							<td><a href="{crmURL p='civicrm/contact/view' q="reset=1&cid=`$row[0]`"}" target="_blank">{$row[1]}</a></td>
						</tr>
					{/foreach}
				</tbody>
			</table>
	</div>
</div>

<!-- Affichage des Individus sans Civilité -->
<div class="crm-accordion-wrapper crm-ajax-accordion collapsed">
	<div class="crm-accordion-header">Individus sans Civilité ({$IndividuSansCivilite|@count} fiches à contrôler)</div>
	<div class="crm-accordion-body">
		<h5>Contexte</h5>
			<ul>
				<li>Certaines fiches sont créées sans indication de la civilité de l’Individu</li>
			</ul>
		<h5>Risques</h5>
			<ul>
				<li>Mauvaise indication de la civilité sur les communications écrites</li>
				<li>Erreurs de ciblage</li>
				<li>Mauvais renseignement sur la personne</li>
			</ul>
		<h5>Actions à mener</h5>
			<ul>
				<li>Cliquer sur le lien pour ouvrir la fiche dans un nouvel onglet</li>
				<li>Cliquer sur Modifier</li>
				<li>Dans la partie Fiche Contact, renseigner le bon choix dans la Civilité</li>
				<li>Sauvegarder</li>
			</ul>
		<h5>Liste des individus concernés</h5>
			<table class="report-layout display">
				<thead>
					<tr>
						<th>Identifiant CiviCRM</th>
						<th>Nom et Prénom</th>
					</tr>
				</thead>
				<tbody>
					{foreach from=$IndividuSansCivilite item=row}
						<tr class="{cycle values="odd-row,even-row"}">
							<td>{$row[0]}</td>
							<td><a href="{crmURL p='civicrm/contact/view' q="reset=1&cid=`$row[0]`"}" target="_blank">{$row[1]}</a></td>
						</tr>
					{/foreach}
				</tbody>
			</table>
	</div>
</div>


<!-- Affichage des Individus sans Date de Naissance -->
<div class="crm-accordion-wrapper crm-ajax-accordion collapsed">
	<div class="crm-accordion-header">Individus sans Date de Naissance ({$IndividuSansBirthday|@count} fiches à contrôler)</div>
	<div class="crm-accordion-body">
		<h5>Contexte</h5>
			<ul>
				<li>Certaines fiches sont créées sans indication de la date de naissance</li>
			</ul>
		<h5>Risques</h5>
			<ul>
				<li>Pas d'indication de l'âge sur les listes</li>
				<li>Absence des ciblages pour les actions liées aux anniversaires</li>
				<li>Mauvais renseignement sur la personne</li>
			</ul>
		<h5>Actions à mener</h5>
			<ul>
				<li>Cliquer sur le lien pour ouvrir la fiche dans un nouvel onglet</li>
				<li>Cliquer sur Modifier</li>
				<li>Dans la partie Données démographiques, renseigner la date de naissance</li>
				<li>Sauvegarder</li>
			</ul>
		<h5>Liste des individus concernés</h5>
		<div>Fiches classées par date de création (plus récentes en premier)</div>
			<table class="report-layout display">
				<thead>
					<tr>
						<th>Identifiant CiviCRM</th>
						<th>Nom et Prénom</th>
					</tr>
				</thead>
				<tbody>
					{foreach from=$IndividuSansBirthday item=row}
						<tr class="{cycle values="odd-row,even-row"}">
							<td>{$row[0]}</td>
							<td><a href="{crmURL p='civicrm/contact/view' q="reset=1&cid=`$row[0]`"}" target="_blank">{$row[1]}</a></td>
						</tr>
					{/foreach}
				</tbody>
			</table>
	</div>
</div>
<!-- Affichage des Individus sans Statut Membre -->
<div class="crm-accordion-wrapper crm-ajax-accordion collapsed">
	<div class="crm-accordion-header">Individus sans Statut Membre ({$IndividuSansStatutMembre|@count} fiches à contrôler)</div>
	<div class="crm-accordion-body">
		<h5>Contexte</h5>
			<ul>
				<li>Certaines fiches sont créées sans indication du Statut Membre</li>
			</ul>
		<h5>Risques</h5>
			<ul>
				<li>Pas d'indication sur le lien avec la Paroisse</li>
				<li>Erreurs de ciblage lors des communications</li>
				<li>Mauvaise connaissance de la personne</li>
			</ul>
		<h5>Actions à mener</h5>
			<ul>
				<li>Cliquer sur le lien pour ouvrir la fiche dans un nouvel onglet</li>
				<li>Cliquer sur l'onglet Adhesion</li>
				<li>Cliquer sur Ajouter une Adhesion</li>
				<li>Dans la fenêtre Créer Adhésion, choisir un des statuts Membre</li>
				<li>Indiquer une date de début de l'adhesion</li>
				<li>Enregistrer</li>
			</ul>
		<h5>Liste des individus concernés</h5>
			<table class="report-layout display">
				<thead>
					<tr>
						<th>Identifiant CiviCRM</th>
						<th>Nom et Prénom</th>
					</tr>
				</thead>
				<tbody>
					{foreach from=$IndividuSansStatutMembre item=row}
						<tr class="{cycle values="odd-row,even-row"}">
							<td>{$row[0]}</td>
							<td><a href="{crmURL p='civicrm/contact/view' q="reset=1&cid=`$row[0]`"}" target="_blank">{$row[1]}</a></td>
						</tr>
					{/foreach}
				</tbody>
			</table>
	</div>
</div>

<!-- Affichage des Individus sans Lien Foyer ou Organisation -->
<div class="crm-accordion-wrapper crm-ajax-accordion collapsed">
	<div class="crm-accordion-header">Individus sans lien avec un Foyer ou une Organisation ({$IndividuSansLienFoyerOrganisation|@count} fiches à contrôler)</div>
	<div class="crm-accordion-body">
		<h5>Contexte</h5>
			<ul>
				<li>Certaines fiches Individus sont créées sans Relation avec un Foyer ou une Organisation</li>
			</ul>
		<h5>Risques</h5>
			<ul>
				<li>Pas d'indication d'une Relation de l'Individu avec d'autres Individus ou Organisations</li>
				<li>Erreurs de ciblage</li>
				<li>Erreurs dans les Rapports</li>
				<li>Mauvais renseignement sur la personne</li>
			</ul>
		<h5>Actions à mener</h5>
			<ul>
				<li>Cliquer sur le lien pour ouvrir la fiche dans un nouvel onglet</li>
				<li>Cliquer sur l'onglet Relations</li>
				<li>Cliquer sur Ajouter une Relation</li>
				<li>Dans la fenêtre Ajouter une Relation, choisir un Type de Relation</li>
				<li>Choisir le Contact avec lequel mettre la Relation en place</li>
				<li>Enregistrer</li>
			</ul>
		<h5>Liste des individus concernés</h5>
			<table class="report-layout display">
				<thead>
					<tr>
						<th>Identifiant CiviCRM</th>
						<th>Nom et Prénom</th>
					</tr>
				</thead>
				<tbody>
					{foreach from=$IndividuSansLienFoyerOrganisation item=row}
						<tr class="{cycle values="odd-row,even-row"}">
							<td>{$row[0]}</td>
							<td><a href="{crmURL p='civicrm/contact/view' q="reset=1&cid=`$row[0]`"}" target="_blank">{$row[1]}</a></td>
						</tr>
					{/foreach}
				</tbody>
			</table>
	</div>
</div>

<!-- Affichage des Individus de plus de 18 ans ayant le Statut Inscrit Enfant -->
<div class="crm-accordion-wrapper crm-ajax-accordion collapsed">
	<div class="crm-accordion-header">Individus de plus de 18 ans ayant encore le Statut 'Inscrit Enfant' ({$IndividuEncoreStatutEnfant|@count} fiches à contrôler)</div>
	<div class="crm-accordion-body">
		<h5>Contexte</h5>
			<ul>
				<li>Certaines Individus ont encore un statut "Enfant" alors qu'ils ont atteint leur majorité</li>
			</ul>
		<h5>Risques</h5>
			<ul>
				<li>Erreurs de ciblage</li>
				<li>Erreur sur le lien avec la Paroisse</li>
				<li>Mauvais renseignement sur la personne</li>
				<li>Erreurs sur la composition de la liste électorale</li>
			</ul>
		<h5>Actions à mener</h5>
			<ul>
				<li>Cliquer sur le lien pour ouvrir la fiche dans un nouvel onglet</li>
				<li>Cliquer sur l'onglet Adhesion</li>
				<li>Cliquer sur Modifier sur la ligne de l'adhésion en cours</li>
				<li>Mémoriser la date "Membre depuis"</li>
				<li>Dans Date d'expiration de l'adhésion, indiquer la date d'aujourd'hui</li>
				<li>Enregistrer</li>
				<li>Cliquer sur Ajouter une Adhesion</li>
				<li>Dans la fenêtre Créer Adhésion, choisir le statut Membre approprié à la situation de l'Individu</li>
				<li>Pour la date Membre depuis, reprendre la date mémorisée ci-dessus</li>
				<li>Indiquer une date de début de l'adhesion</li>
				<li>Enregistrer</li>
			</ul>
		<h5>Liste des individus concernés</h5>
			<table class="report-layout display">
				<thead>
					<tr>
						<th>Identifiant CiviCRM</th>
						<th>Nom et Prénom</th>
					</tr>
				</thead>
				<tbody>
					{foreach from=$IndividuEncoreStatutEnfant item=row}
						<tr class="{cycle values="odd-row,even-row"}">
							<td>{$row[0]}</td>
							<td><a href="{crmURL p='civicrm/contact/view' q="reset=1&cid=`$row[0]`"}" target="_blank">{$row[1]}</a></td>
						</tr>
					{/foreach}
				</tbody>
			</table>
	</div>
</div>

<!-- Affichage des Individus ayant le Statut Enfant (ou l'âge) et une Relation Chef de Famille -->
<div class="crm-accordion-wrapper crm-ajax-accordion collapsed">
	<div class="crm-accordion-header">Individus Enfant ayant une Relation Chef de Famille ({$IndividuEnfantChefFamille|@count} fiches à contrôler)</div>
	<div class="crm-accordion-body">
		<h5>Contexte</h5>
			<ul>
				<li>Certaines fiches ont un Statut Enfant et une Relation Chef de Famille, ce qui est incompatible</li>
			</ul>
		<h5>Risques</h5>
			<ul>
				<li>Erreurs de ciblage</li>
				<li>Mauvais renseignement sur la personne</li>
				<li>Erreur de composition de la liste Electorale</li>
			</ul>
		<h5>Actions à mener</h5>
			<ul>
				<li>Cliquer sur le lien pour ouvrir la fiche dans un nouvel onglet</li>
				<li>Cliquer sur l'onglet Adhesion</li>
				<li>Cliquer sur Modifier sur la ligne de l'adhésion en cours</li>
				<li>Mémoriser la date "Membre depuis"</li>
				<li>Dans Date d'expiration de l'adhésion, indiquer la date d'aujourd'hui</li>
				<li>Enregistrer</li>
				<li>Cliquer sur Ajouter une Adhesion</li>
				<li>Dans la fenêtre Créer Adhésion, choisir le statut Membre approprié à la situation de l'Individu</li>
				<li>Pour la date Membre depuis, reprendre la date mémorisée ci-dessus</li>
				<li>Indiquer une date de début de l'adhesion</li>
				<li>Enregistrer</li>
			</ul>
		<h5>Liste des individus concernés</h5>
			<table class="report-layout display">
				<thead>
					<tr>
						<th>Identifiant CiviCRM</th>
						<th>Nom et Prénom</th>
					</tr>
				</thead>
				<tbody>
					{foreach from=$IndividuEnfantChefFamille item=row}
						<tr class="{cycle values="odd-row,even-row"}">
							<td>{$row[0]}</td>
							<td><a href="{crmURL p='civicrm/contact/view' q="reset=1&cid=`$row[0]`"}" target="_blank">{$row[1]}</a></td>
						</tr>
					{/foreach}
				</tbody>
			</table>
	</div>
</div>


<p> </p>


<h3>Contrôle sur les Foyers</h3>

<!-- Affichage des Foyers ayant un Statut Membre -->
<div class="crm-accordion-wrapper crm-ajax-accordion collapsed">
	<div class="crm-accordion-header">Foyers ayant le statut Membre ({$FoyerAvecMembre|@count} fiches à contrôler)</div>
	<div class="crm-accordion-body">
		<h5>Contexte</h5>
			<ul>
				<li>Le statut de Membre est parfois mis par erreur sur une fiche Foyer</li>
			</ul>
		<h5>Risques</h5>
			<ul>
				<li>Comptabilisation erronée des Membres</li>
				<li>Oubli du statut Membre sur les fiches Individu</li>
			</ul>
		<h5>Actions à mener</h5>
			<ul>
				<li>Cliquer sur le lien pour ouvrir la fiche dans un nouvel onglet</li>
				<li>Cliquer sur l'onglet Adhésion de la fiche</li>
				<li>Cliquer sur Renouveler sur la liste déroulante, et choisir Supprimer</li>
				<li>Par précaution, vérifier que toutes les fiches Individus du Foyer aient bien un statut Membre</li>
			</ul>
		<h5>Liste des foyers concernés</h5>
			<table class="report-layout display">
				<thead>
					<tr>
						<th>Identifiant CiviCRM</th>
						<th>Nom du Foyer</th>
					</tr>
				</thead>
				<tbody>
					{foreach from=$FoyerAvecMembre item=row}
						<tr class="{cycle values="odd-row,even-row"}">
							<td>{$row[0]}</td>
							<td><a href="{crmURL p='civicrm/contact/view' q="reset=1&cid=`$row[0]`"}" target="_blank">{$row[1]}</a></td>
						</tr>
					{/foreach}
				</tbody>
			</table>
	</div>
</div>

<!-- Affichage des Foyers n'ayant pas d'adresse -->
<div class="crm-accordion-wrapper crm-ajax-accordion collapsed">
	<div class="crm-accordion-header">Foyers n'ayant pas d'adresse ({$FoyerSansAdresse|@count} fiches à contrôler)</div>
	<div class="crm-accordion-body">
		<h5>Contexte</h5>
			<ul>
				<li>Certaines fiches Foyer n'ont pas d'adresses.</li>
			</ul>
		<h5>Risques</h5>
			<ul>
				<li>Impossibilité de communiquer avec les Individus composant le Foyer</li>
				<li>Mauvais renseignements sur le Foyer</li>
			</ul>
		<h5>Actions à mener</h5>
			<ul>
				<li>Cliquer sur le lien pour ouvrir la fiche dans un nouvel onglet</li>
				<li>Dans la fiche, cliquer sur Ajouter une adresse</li>
				<li>Renseigner l'adresse du Foyer</li>
				<li>Enregistrer</li>
			</ul>
		<h5>Liste des foyers concernés</h5>
			<table class="report-layout display">
				<thead>
					<tr>
						<th>Identifiant CiviCRM</th>
						<th>Nom du Foyer</th>
					</tr>
				</thead>
				<tbody>
					{foreach from=$FoyerSansAdresse item=row}
						<tr class="{cycle values="odd-row,even-row"}">
							<td>{$row[0]}</td>
							<td><a href="{crmURL p='civicrm/contact/view' q="reset=1&cid=`$row[0]`"}" target="_blank">{$row[1]}</a></td>
						</tr>
					{/foreach}
				</tbody>
			</table>
	</div>
</div>

<!-- Affichage des Foyers n'ayant pas de relations -->
<div class="crm-accordion-wrapper crm-ajax-accordion collapsed">
	<div class="crm-accordion-header">Foyers n'ayant pas de relations ({$FoyerSansRelation|@count} fiches à contrôler)</div>
	<div class="crm-accordion-body">
		<h5>Contexte</h5>
			<ul>
				<li>Certaines fiches Foyer n'ont pas de Relations Chef de famille ou Membre du Foyer*</li>
			</ul>
		<h5>Risques</h5>
			<ul>
				<li>Pas de lien entre les Individus et leur Foyer</li>
				<li>Erreurs de ciblage</li>
			</ul>
		<h5>Actions à mener</h5>
			<ul>
				<li>Cliquer sur le lien pour ouvrir la fiche dans un nouvel onglet</li>
				<li>Cliquer sur l'onglet Relation de la fiche</li>
				<li>Cliquer sur Ajouter une Relation</li>
				<li>Choisir le Type de Relation 'a pour Chef de famille' ou 'a pour Membre du Foyer'</li>
				<li>Dans l'entrée Contacts, choisir la (les) Individu(s) concernée(s)</li>
				<li>Cliquer sur Enregistrer la relation</li>
				<li>Ajouter autant de relations qu'il y a d'Individus dans le Foyer</li>
				<li>RAPPEL : un Individu 'Chef de Famille' doit aussi être enregistré comme 'Membre du Foyer'</li>
			</ul>
		<h5>Liste des foyers concernés</h5>
			<table class="report-layout display">
				<thead>
					<tr>
						<th>Identifiant CiviCRM</th>
						<th>Nom du Foyer</th>
					</tr>
				</thead>
				<tbody>
					{foreach from=$FoyerSansRelation item=row}
						<tr class="{cycle values="odd-row,even-row"}">
							<td>{$row[0]}</td>
							<td><a href="{crmURL p='civicrm/contact/view' q="reset=1&cid=`$row[0]`"}" target="_blank">{$row[1]}</a></td>
						</tr>
					{/foreach}
				</tbody>
			</table>
	</div>
</div>

<!-- Affichage des Foyers n'ayant pas de relation Chef de Famille -->
<div class="crm-accordion-wrapper crm-ajax-accordion collapsed">
	<div class="crm-accordion-header">Foyers n'ayant pas de relation Chef de Famille ({$FoyerSansChefFamille|@count} fiches à contrôler)</div>
	<div class="crm-accordion-body">
		<h5>Contexte</h5>
			<ul>
				<li>Certaines fiches Foyer n'ont pas de Relations Chef de famille</li>
			</ul>
		<h5>Risques</h5>
			<ul>
				<li>Pas de lien clair entre les Individus et leur Foyer</li>
				<li>Pas d'identification claire sur la composition du Foyer</li>
				<li>Erreurs de ciblage</li>
			</ul>
		<h5>Actions à mener</h5>
			<ul>
				<li>Cliquer sur le lien pour ouvrir la fiche dans un nouvel onglet</li>
				<li>Cliquer sur l'onglet Relation de la fiche</li>
				<li>Cliquer sur Ajouter une Relation</li>
				<li>Choisir le Type de Relation 'a pour Chef de famille' </li>
				<li>Dans l'entrée Contacts, choisir la (les) Individu(s) concernée(s)</li>
				<li>Cliquer sur Enregistrer la relation</li>
				<li>Ajouter autant de relations qu'il y a d'Individus dans le Foyer</li>
				<li>RAPPEL : un Individu 'Chef de Famille' doit aussi être enregistré comme 'Membre du Foyer'</li>
			</ul>
		<h5>Liste des foyers concernés</h5>
			<table class="report-layout display">
				<thead>
					<tr>
						<th>Identifiant CiviCRM</th>
						<th>Nom du Foyer</th>
					</tr>
				</thead>
				<tbody>
					{foreach from=$FoyerSansChefFamille item=row}
						<tr class="{cycle values="odd-row,even-row"}">
							<td>{$row[0]}</td>
							<td><a href="{crmURL p='civicrm/contact/view' q="reset=1&cid=`$row[0]`"}" target="_blank">{$row[1]}</a></td>
						</tr>
					{/foreach}
				</tbody>
			</table>
	</div>
</div>

<!-- Affichage des Foyers n'ayant pas de relation Membre du Foyer -->
<div class="crm-accordion-wrapper crm-ajax-accordion collapsed">
	<div class="crm-accordion-header">Foyers n'ayant pas de relation Membre du Foyer ({$FoyerSansMembreFoyer|@count} fiches à contrôler)</div>
	<div class="crm-accordion-body">
		<h5>Contexte</h5>
			<ul>
				<li>Certaines fiches Foyer n'ont pas de Relations Membre du Foyer</li>
			</ul>
		<h5>Risques</h5>
			<ul>
				<li>Pas de lien clair entre les Individus et leur Foyer</li>
				<li>Pas d'identification claire sur la composition du Foyer</li>
				<li>Erreurs de ciblage</li>
			</ul>
		<h5>Actions à mener</h5>
			<ul>
				<li>Cliquer sur le lien pour ouvrir la fiche dans un nouvel onglet</li>
				<li>Cliquer sur l'onglet Relation de la fiche</li>
				<li>Cliquer sur Ajouter une Relation</li>
				<li>Choisir le Type de Relation 'a pour Membre du Foyer'</li>
				<li>Dans l'entrée Contacts, choisir la (les) Individu(s) concernée(s)</li>
				<li>Cliquer sur Enregistrer la relation</li>
				<li>Ajouter autant de relations qu'il y a d'Individus dans le Foyer</li>
				<li>RAPPEL : un Individu 'Membre du Foyer' doit aussi être enregistré comme 'Chef de Famille'</li>
			</ul>
		<h5>Liste des foyers concernés</h5>
			<table class="report-layout display">
				<thead>
					<tr>
						<th>Identifiant CiviCRM</th>
						<th>Nom du Foyer</th>
					</tr>
				</thead>
				<tbody>
					{foreach from=$FoyerSansMembreFoyer item=row}
						<tr class="{cycle values="odd-row,even-row"}">
							<td>{$row[0]}</td>
							<td><a href="{crmURL p='civicrm/contact/view' q="reset=1&cid=`$row[0]`"}" target="_blank">{$row[1]}</a></td>
						</tr>
					{/foreach}
				</tbody>
			</table>
	</div>
</div>

<!-- Affichage des Foyers ayant participés à un Evenement -->
<div class="crm-accordion-wrapper crm-ajax-accordion collapsed">
	<div class="crm-accordion-header">Foyers ayant participés à un Evénement ({$FoyerEvenement|@count} fiches à contrôler)</div>
	<div class="crm-accordion-body">
		<h5>Contexte</h5>
			<ul>
				<li>A CHANGER Le statut de Membre est parfois mis par erreur sur une fiche Organisation</li>
			</ul>
		<h5>Risques</h5>
			<ul>
				<li>Comptabilisation erronée des Membres</li>
				<li>Oubli du statut Membre sur les fiches Individu</li>
			</ul>
		<h5>Actions à mener</h5>
			<ul>
				<li>Cliquer sur le lien pour ouvrir la fiche dans un nouvel onglet</li>
				<li>Cliquer sur l'onglet Adhésion de la fiche</li>
				<li>Cliquer sur Renouveler sur la liste déroulante, et choisir Supprimer</li>
				<li>Par précaution, et si nécessaire, vérifier que toutes les fiches Individus de l'Organisation aient un statut Membre</li>
			</ul>
		<h5>Liste des organisations concernées</h5>
			<table class="report-layout display">
				<thead>
					<tr>
						<th>Identifiant CiviCRM</th>
						<th>Nom de l'Organisation</th>
						<th>Evénement</th>
					</tr>
				</thead>
				<tbody>
					{foreach from=$FoyerEvenement item=row}
						<tr class="{cycle values="odd-row,even-row"}">
							<td>{$row[0]}</td>
							<td><a href="{crmURL p='civicrm/contact/view' q="reset=1&cid=`$row[0]`"}" target="_blank">{$row[1]}</a></td>
							<td>{$row[2]}</td>
						</tr>
					{/foreach}
			  </tbody>
			</table>
	</div>
</div>

<p> </p>




<h3>Contrôle sur les Organisations</h3>

<!-- Affichage des Organisations ayant un Statut Membre -->
<div class="crm-accordion-wrapper crm-ajax-accordion collapsed">
	<div class="crm-accordion-header">Organisations ayant le statut Membre ({$OrganisationAvecMembre|@count} fiches à contrôler)</div>
	<div class="crm-accordion-body">
		<h5>Contexte</h5>
			<ul>
				<li>Le statut de Membre est parfois mis par erreur sur une fiche Organisation</li>
			</ul>
		<h5>Risques</h5>
			<ul>
				<li>Comptabilisation erronée des Membres</li>
				<li>Oubli du statut Membre sur les fiches Individu</li>
			</ul>
		<h5>Actions à mener</h5>
			<ul>
				<li>Cliquer sur le lien pour ouvrir la fiche dans un nouvel onglet</li>
				<li>Cliquer sur l'onglet Adhésion de la fiche</li>
				<li>Cliquer sur Renouveler sur la liste déroulante, et choisir Supprimer</li>
				<li>Par précaution, et si nécessaire, vérifier que toutes les fiches Individus de l'Organisation aient un statut Membre</li>
			</ul>
		<h5>Liste des organisations concernées</h5>
			<table class="report-layout display">
				<thead>
					<tr>
						<th>Identifiant CiviCRM</th>
						<th>Nom de l'Organisation</th>
					</tr>
				</thead>
				<tbody>
					{foreach from=$OrganisationAvecMembre item=row}
						<tr class="{cycle values="odd-row,even-row"}">
							<td>{$row[0]}</td>
							<td><a href="{crmURL p='civicrm/contact/view' q="reset=1&cid=`$row[0]`"}" target="_blank">{$row[1]}</a></td>		  
						</tr>
					{/foreach}
			  </tbody>
			</table>
	</div>
</div>

<!-- Affichage des Organisations ayant participées à un Evenement -->
<div class="crm-accordion-wrapper crm-ajax-accordion collapsed">
	<div class="crm-accordion-header">Organisations ayant participées à un Evénement ({$OrganisationEvenement|@count} fiches à contrôler)</div>
	<div class="crm-accordion-body">
		<h5>Contexte</h5>
			<ul>
				<li>A CHANGER Le statut de Membre est parfois mis par erreur sur une fiche Organisation</li>
			</ul>
		<h5>Risques</h5>
			<ul>
				<li>Comptabilisation erronée des Membres</li>
				<li>Oubli du statut Membre sur les fiches Individu</li>
			</ul>
		<h5>Actions à mener</h5>
			<ul>
				<li>Cliquer sur le lien pour ouvrir la fiche dans un nouvel onglet</li>
				<li>Cliquer sur l'onglet Adhésion de la fiche</li>
				<li>Cliquer sur Renouveler sur la liste déroulante, et choisir Supprimer</li>
				<li>Par précaution, et si nécessaire, vérifier que toutes les fiches Individus de l'Organisation aient un statut Membre</li>
			</ul>
		<h5>Liste des organisations concernées</h5>
			<table class="report-layout display">
				<thead>
					<tr>
						<th>Identifiant CiviCRM</th>
						<th>Nom de l'Organisation</th>
						<th>Evénement</th>
					</tr>
				</thead>
				<tbody>
					{foreach from=$OrganisationEvenement item=row}
						<tr class="{cycle values="odd-row,even-row"}">
							<td>{$row[0]}</td>
							<td><a href="{crmURL p='civicrm/contact/view' q="reset=1&cid=`$row[0]`"}" target="_blank">{$row[1]}</a></td>
							<td>{$row[2]}</td>
						</tr>
					{/foreach}
			  </tbody>
			</table>
	</div>
</div>




<p> </p>
<h3>Encore à faire</h3>
<ul>
	<li>?? Individu sans Adresse</li>
	<li>??? Individus sans Relations</li>
	<li>Enfants sans parents</li>
	<li>?? Enfants sans Groupe</li>
	<li>(Bouclier) Confirmés non Electeurs</li>
	<li>Chef de famille qui ne sont pas Membre du foyer</li>
	<li>Individu avec Numéro de téléphone, mais sans adresse mail</li>
	<li>Individu âgé de plus de 27 ans, ou Fiche créée depuis plus de 18 ou 27 ans et encore membre du Foyer sans être chef de Foyer (ou encore dans le Foyer des Parents)</li>
	<li>Foyer sans Adresse - Encore à travailler</li>
	<li>Foyers avec Photo</li>
	<li>Organisation avec Photo</li>
	<li>Individu sans Photo</li>
	<li>E-mails en statut Invalide</li>
	<li>Individu sans Date de naissance : au choix, restreindre la sélection aux fiches les plus récentes</li>	
	<li>NE PAS afficher la rubrique s'il n'y a pas d'erreurs</li>		
</ul>