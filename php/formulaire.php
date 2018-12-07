<?php

include 'input.php';

class formulaire {

	private $formDeb;
	private $motCle;
	private $divDeb;
	private $nom;
	private $genre;
	private $annee;
	private $realisateur;
	private $acteur;
	private $scenariste;
	private $duree;
	private $utilisateur;
	private $pays;
	private $submit;
	private $formFin;
	private $divFin;

	public function __construct()
	{
		$this->formDeb = '<form action="php/recherche.php" method="get">';
		$this->motCle = new input('text', '', 'rechercheMotsCles', 'Recherche', 'recherche', 'recherche');
		$this->divDeb = '<div id="more">';
		$this->nom = new input('text', '', 'rechercheNom', 'Nom du Film', 'formInp', 'rechercheNom');
		$this->genre = '<select name="genre" class="formInp"></select>';
		$this->annee = '<select name="annee" class="formInp"></select>';
		$this->realisateur = new input('text', '', 'rechercheRealisateur', 'Realisateur', 'formInp', 'rechercheRealisateur');
		$this->acteur = new input('text', '', 'rechercheActeur', 'Acteur', 'formInp', 'rechercheActeur');
		$this->scenariste = new input('text', '', 'rechercheScenariste', 'Scenariste', 'formInp', 'rechercheScenariste');
		$this->duree = new input('number', '', 'rechercheDuree', 'Duree', 'formInp', 'rechercheDuree');
		$this->utilisateur = new input('text', '', 'rechercheUtilisateur', 'Utilisateur', 'formInp', 'rechercheUtilisateur');
		$this->pays = '<select name="pays" class="formInp"></select>';
		$this->submit = '<input type="submit" value="recherchez" id="submit">';
		$this->divFin = '</div>';
		$this->formFin = '</form>';
	}

	public function __set($property, $value)
	{
		if(property_exists('formulaire', $property))
			$this->$property = $value;
		else
			throw new Exception("property invalid", 1);
	}

	public function __get($property)
	{
		if (property_exists('formulaire', $property))
			return($this->$property);
		else
			throw new Exception("property invalid", 1);
	}

	function initInput()
	{
		$this->motCle->assemble();
		$this->nom->assemble();
		$this->realisateur->assemble();
		$this->acteur->assemble();
		$this->scenariste->assemble();
		$this->duree->assemble();
		$this->utilisateur->assemble();
	}

	function updateInput($property, $value)
	{
		if(property_exists('formulaire', $property))
			$this->$property->set('inputValue', $value);
	}

	function echoFormulaire()
	{
		echo $this->formDeb;
		echo $this->motCle->input;
		echo $this->divDeb;
		echo $this->nom->input;
		echo $this->genre;
		echo $this->annee;
		echo $this->realisateur->input;
		echo $this->acteur->input;
		echo $this->scenariste->input;
		echo $this->duree->input;
		echo $this->utilisateur->input;
		echo $this->pays;
		echo $this->submit;
		echo $this->divFin;
		echo $this->formFin;
	}
}
?>