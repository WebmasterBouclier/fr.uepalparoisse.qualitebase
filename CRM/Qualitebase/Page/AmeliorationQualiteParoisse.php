<?php

setlocale (LC_TIME, 'fr_FR.utf8','fra');

use CRM_Qualitebase_ExtensionUtil as E;

class CRM_Qualitebase_Page_AmeliorationQualiteParoisse extends CRM_Core_Page {

	public function run() {
		// Set the page-title dynamically; alternatively, declare a static title in xml/Menu/*.xml
		CRM_Utils_System::setTitle(E::ts('Améliorations des données de la base (Paroisses)'));

		// Assign variables for use in a template
		// Fiches Individus
		$this->assign('IndividuSansBirthday', $this->getIndividuSansBirthdayTable());
		
		
		// Fiches Foyers
		$this->assign('FoyerSansAdresse', $this->getFoyerSansAdresse());
		$this->assign('FoyerEvenement', $this->getFoyerEvenementTable());


		// Fiches Organisations
		$this->assign('OrganisationEvenement', $this->getOrganisationEvenementTable());
		
		
		
		parent::run();
	}

///////////////
// INDIVIDUS //
///////////////

// Recherche des Individus n'ayant pas de Date de naissance
	private function getIndividuSansBirthdayTable() {
		$t = [];

		$sql = "
			SELECT 
				c.id,
				c.display_name
			FROM 
				civicrm_contact AS c
			WHERE (( 
				(c.contact_type = 'Individual')
				AND (c.is_deceased = '0')
				AND (c.is_deleted = '0')
				AND (c.birth_date IS NULL)
				))
			ORDER BY c.created_date DESC
		";
// Tentative d'affichage de plus de renseignements		
/*		$sql = "
			SELECT 
				c.id,
				c.sort_name,
				e.email,
				p.phone,
				civicrm_contact_civicrm_relationship__civicrm_phone.phone AS civicrm_contact_civicrm_relationship__civicrm_phone_phone,
				civicrm_group.id AS civicrm_group_id,
				m.membership_type_id,
				c.birth_date,
				c.last_name,
				civicrm_contact.id AS civicrm_contact_id
			FROM 
				civicrm_contact AS c
			LEFT JOIN civicrm_relationship ON civicrm_contact.id = civicrm_relationship.contact_id_a AND (civicrm_relationship.relationship_type_id = '8' AND civicrm_relationship.is_active = '1')
			LEFT JOIN civicrm_contact_civicrm_relationship ON civicrm_relationship_civicrm_contact.contact_id_b = civicrm_contact_civicrm_relationship.id
			LEFT JOIN civicrm_email AS e ON c.id = e.contact_id
			LEFT JOIN civicrm_phone AS p ON c.id = p.contact_id
			LEFT JOIN civicrm_contact_civicrm_relationship__civicrm_phone ON civicrm_contact_civicrm_relationship.id = civicrm_contact_civicrm_relationship__civicrm_phone.contact_id
			LEFT JOIN civicrm_group_contact ON civicrm_contact.id = civicrm_group_contact.contact_id
			LEFT JOIN civicrm_group ON civicrm_group_contact.group_id = civicrm_group.id
			LEFT JOIN civicrm_membership AS m ON c.id = m.contact_id
			WHERE (( 
				(c.contact_type = 'Individual')
				AND (c.is_deceased = '0')
				AND (c.is_deleted = '0')
				AND (c.birth_date IS NULL)
				))
			ORDER BY c.last_name ASC

		";

/*
+-----+--------------+-----------------
| id  | display_name |
+-----+--------------+
*/

		$dao = CRM_Core_DAO::executeQuery($sql);
		
		while ($dao->fetch()) {
			$t[] = [$dao->id, $dao->display_name];
		}
		
		return $t;
	}


/*
// Individus Sans adresse mail -- A TRAVAILLER (POUR NE PAS METTRE LE CODE STATUT EN DUR)
	private function getIndividuSansMailTable() {
		$t = [];
		
		$sql = "
		SELECT
			DISTINCT c.id,
			c.display_name,
			p.phone,
			p_b.phone,
			GROUP_CONCAT(DISTINCT(m.membership_type_id))
			
			
			
		FROM civicrm_contact AS c
		LEFT JOIN civicrm_email AS e ON c.id = e.contact_id
		LEFT JOIN civicrm_phone AS p ON c.id = p.contact_id
		LEFT JOIN civicrm_relationship AS r ON c.id = r.contact_id_a
		LEFT JOIN civicrm_contact AS c_b ON r.contact_id_b = c_b.id
		LEFT JOIN civicrm_phone AS p_b ON c_b.id = p_b.contact_id
		JOIN civicrm_membership AS m on c.id = m.contact_id
		WHERE 
			c.contact_type = 'Individual'
			AND r.relationship_type_id IN ('7', '8')
			AND r.is_active = '1'
			AND e.email IS NULL
			AND c.do_not_email = '0'
			AND ((YEAR(NOW()) - YEAR(c.birth_date)) >= 10)
			
			
			
			AND c.is_deleted = 0
			AND c.is_deceased = 0
		GROUP BY c.id
		ORDER BY c.sort_name ASC
		
		";

/*
+-----+--------------+-------+-----------+
| id  | display_name | email | hold_date |
+-----+--------------+-------+-----------+
*/
/*		
		$dao = CRM_Core_DAO::executeQuery($sql);
		
		while ($dao->fetch()) {
			$t[] = [$dao->id, $dao->display_name, $dao->email, $dao->hold_date];
		}
		
		return $t;
	}
*/





////////////
// FOYERS //
////////////

// Recherche des Foyers n'ayant pas d'adresses
	private function getFoyerSansAdresse() {
		$t = [];
		
		$sql = "
		SELECT 
			c.id,
			c.display_name
		FROM civicrm_contact AS c
		LEFT OUTER JOIN civicrm_address AS a ON c.id = a.contact_id
		WHERE 
			c.contact_type = 'Household'
			AND c.is_deleted = 0
			AND a.contact_id IS NULL
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

// A TRAVAILLER - changer les codes 7 et 8 pour les récupérer en dynamique
// Recherche des Foyers n'ayant pas de relation
	private function getFoyerSansRelation() {
		$t = [];
		
		$sql = "
		SELECT 
			c.id,
			c.display_name
		FROM civicrm_contact AS c
		LEFT JOIN civicrm_relationship AS r_B ON c.id = r_B.contact_id_b 
		WHERE 
			(r_B.contact_id_b IS NULL OR r_B.relationship_type_id NOT IN ('7', '8'))
			AND c.contact_type = 'Household'
			AND c.is_deleted = 0
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


// Recherche des Foyers ayant participée à un Evenement
	private function getFoyerEvenementTable() {
		$t = [];
		
		$sql = "
		SELECT 
			c.id,
			c.display_name,
			e.title
		FROM civicrm_contact AS c
		LEFT JOIN civicrm_participant AS p ON c.id = p.contact_id
		LEFT JOIN civicrm_event AS e ON p.event_id = e.id
		WHERE 
			c.contact_type = 'Household'
			AND c.is_deleted = 0
			AND p.event_id IS NOT NULL
		";

/*
+-----+--------------+-----------+
| id  | display_name | evénement |
+-----+--------------+-----------+
*/
		
		$dao = CRM_Core_DAO::executeQuery($sql);
		
		while ($dao->fetch()) {
			$t[] = [$dao->id, $dao->display_name, $dao->title];
		}
		
		return $t;
	}





///////////////////
// ORGANISATIONS //
///////////////////

// Recherche des Organisations ayant participée à un Evenement
	private function getOrganisationEvenementTable() {
		$t = [];
		
		$sql = "
		SELECT 
			c.id,
			c.display_name,
			e.title
		FROM civicrm_contact AS c
		LEFT JOIN civicrm_participant AS p ON c.id = p.contact_id
		LEFT JOIN civicrm_event AS e ON p.event_id = e.id
		WHERE 
			c.contact_type = 'Organization'
			AND c.is_deleted = 0
			AND p.event_id IS NOT NULL
		";

/*
+-----+--------------+-----------+
| id  | display_name | evénement |
+-----+--------------+-----------+
*/
		
		$dao = CRM_Core_DAO::executeQuery($sql);
		
		while ($dao->fetch()) {
			$t[] = [$dao->id, $dao->display_name, $dao->title];
		}
		
		return $t;
	}



}
