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
				<li>Erreur de ciblage</li>
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
				<li>Erreur de ciblage</li>
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



<p> </p>
<h3>Encore à faire</h3>
<ul>
	<li>Individus sans Foyer ou Organisation</li>
	<li>Individu sans Statut Membre / Adhésion</li>
	<li>?? Individu sans Date de naissance</li>
	<li>?? Individu sans Adresse</li>
	<li>Individus sans Relations</li>
	<li>Enfants sans parents</li>
	<li>?? Enfants sans Groupe</li>
	<li>Agé de plus de 18 ans, et toujours Membre 'Inscrit - Enfant'</li>
	<li>Foyer ayant participé à un événement</li>
	<li>Foyer sans Adresse</li>
	<li>Foyer sans Relation</li>
	<li>Organisation ayant participée à un événement</li>
	<li>E-mails en statut Invalide</li>
	
</ul>