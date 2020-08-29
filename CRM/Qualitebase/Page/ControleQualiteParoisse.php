<?php
use CRM_Qualitebase_ExtensionUtil as E;

class CRM_Qualitebase_Page_ControleQualiteParoisse extends CRM_Core_Page {

	public function run() {
		// Set the page-title dynamically; alternatively, declare a static title in xml/Menu/*.xml
		CRM_Utils_System::setTitle(E::ts('Page de contrôle de la qualité de la base de données (Paroisses)'));

		// Assign variables for use in a template
		// Fiches Individus
		$this->assign('IndividuSansGenre', $this->getIndividuSansGenreTable());
		$this->assign('IndividuSansCivilite', $this->getIndividuSansCiviliteTable());
		// Fiches Foyers
		$this->assign('FoyerAvecMembre', $this->getFoyerAvecMembreTable());
		// Fiches Organisations
		$this->assign('OrganisationAvecMembre', $this->getOrganisationAvecMembreTable());
		
		parent::run();
	}

///////////////
// INDIVIDUS //
///////////////

// Recherche des Individus n'ayant pas de genre
	private function getIndividuSansGenreTable() {
		$t = [];
		
		$sql = "
		SELECT 
			c.id,
			c.display_name
		FROM civicrm_contact AS c
		WHERE 
			c.contact_type = 'Individual'
			AND c.gender_id IS NULL
			AND c.is_deleted = 0
			AND c.is_deceased = 0
		";

/*
+-----+--------------+
| id  | display_name |
+-----+--------------+
*/
	
		$dao = CRM_Core_DAO::executeQuery($sql);
		
		while ($dao->fetch()) {
			$t[] = [$dao->id, $dao->display_name];
		}
		
		return $t;
	}

// Recherche des Individus n'ayant pas de civilité
	private function getIndividuSansCiviliteTable() {
		$t = [];
		
		$sql = "
		SELECT 
			c.id,
			c.display_name
		FROM civicrm_contact AS c
		WHERE 
			c.contact_type = 'Individual'
			AND c.prefix_id IS NULL
			AND c.is_deleted = 0
			AND c.is_deceased = 0
		";

/*
+-----+--------------+
| id  | display_name |
+-----+--------------+
*/
		
		$dao = CRM_Core_DAO::executeQuery($sql);
		
		while ($dao->fetch()) {
			$t[] = [$dao->id, $dao->display_name];
		}
		
		return $t;
	}




////////////
// FOYERS //
////////////

// Recherche des Foyers ayant un statut Adhésion
	private function getFoyerAvecMembreTable() {
		$t = [];
		
		$sql = "
		SELECT 
			c.id,
			c.display_name
		FROM civicrm_contact AS c
		LEFT JOIN civicrm_membership AS m ON c.id = m.contact_id
		WHERE 
			c.contact_type = 'Household'
			AND c.is_deleted = 0
			AND m.membership_type_id IS NOT NULL
		";

/*
+-----+--------------+
| id  | display_name |
+-----+--------------+
*/
		
		$dao = CRM_Core_DAO::executeQuery($sql);
		
		while ($dao->fetch()) {
			$t[] = [$dao->id, $dao->display_name];
		}
		
		return $t;
	}

///////////////////
// ORGANISATIONS //
///////////////////

// Recherche des Organisations ayant un statut Adhésion
	private function getOrganisationAvecMembreTable() {
		$t = [];
		
		$sql = "
		SELECT 
			c.id,
			c.display_name
		FROM civicrm_contact AS c
		LEFT JOIN civicrm_membership AS m ON c.id = m.contact_id
		WHERE 
			c.contact_type = 'Organization'
			AND c.is_deleted = 0
			AND m.membership_type_id IS NOT NULL
		";

/*
+-----+--------------+
| id  | display_name |
+-----+--------------+
*/
		
		$dao = CRM_Core_DAO::executeQuery($sql);
		
		while ($dao->fetch()) {
			$t[] = [$dao->id, $dao->display_name];
		}
		
		return $t;
	}



}
