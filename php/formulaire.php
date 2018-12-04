<?php

include 'input.php';

class formulaire {

	public $formDeb;
	public $motCle;
	public $divDeb;
	public $nom;
	public $genre;
	public $annee;
	public $realisateur;
	public $acteur;
	public $scenariste;
	public $duree;
	public $utilisateur;
	public $pays;
	public $submit;
	public $formFin;
	public $divFin;

	public function __construct()
	{
		$this->formDeb = '<form action="#">';
		$this->motCle = new input('text', '', 'rechercheMotsCles', 'Recherche', 'recherche');
		$this->divDeb = '<div id="more">';
		$this->nom = new input('text', '', 'rechercheNom', 'Nom du Film', 'formInp');
		$this->genre = 'genre';
		$this->annee = ;
		$this->realisateur = new input('text', '', 'rechercheRealisateur', 'Realisateur', 'formInp');
		$this->acteur = new input('text', '', 'rechercheActeur', 'Acteur', 'formInp');
		$this->scenariste = new input('text', '', 'rechercheScenariste', 'Scenariste', 'formInp');
		$this->duree = new input('number', '', 'rechercheDuree', 'Duree', 'formInp');
		$this->utilisateur = new input('text', '', 'rechercheUtilisateur', 'Utilisateur', 'formInp');
		$this->pays = 'pays';
		$this->submit = 'submit';
		$this->divFin = '</div>';
		$this->formFin = '</form>';
	}

	function myInput($name, $placeHolder)
	{
		return ('<input type="text" value="" name="'.$name.'" placeholder="" id="recherche">');
	}
}
?>