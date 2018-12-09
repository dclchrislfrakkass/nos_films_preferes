<?php

//include des fichiers php requis pour certaines fonctions de ce fichier.
include 'input.php';
include 'select.php';

//creation du modèle de l'objet formulaire.
class formulaire {

//multiple déclarations de variable(attributs) de mon objets.
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

//fonction utiliser automatiquement lors de la creation d'un nouvel objet(les paramettres de construct doivent être passé à la fonction lors de l'instantiation de l'objet).
	public function __construct($selectGenre, $selectPays, $selectAnnee)
	{
//assignation de valeur aux attributs correspondants. multiples utilisation d'objet input et d'objet select (input.php et select.php).
		$this->formDeb = '<form action="php/recherche.php" method="get">';
		$this->motCle = new input('text', '', 'rechercheMotsCles', 'Recherche', 'recherche', 'recherche');
		$this->divDeb = '<div id="more">';
		$this->nom = new input('text', '', 'rechercheNom', 'Nom du Film', 'formInp', 'rechercheNom');
		$this->genre = new select('genre', $selectGenre);
		$this->annee = new select('annee', $selectAnnee);
		$this->realisateur = new input('text', '', 'rechercheRealisateur', 'Realisateur', 'formInp', 'rechercheRealisateur');
		$this->acteur = new input('text', '', 'rechercheActeur', 'Acteur', 'formInp', 'rechercheActeur');
		$this->scenariste = new input('text', '', 'rechercheScenariste', 'Scenariste', 'formInp', 'rechercheScenariste');
		$this->duree = new input('number', '', 'rechercheDuree', 'Duree', 'formInp', 'rechercheDuree');
		$this->utilisateur = new input('text', '', 'rechercheUtilisateur', 'Utilisateur', 'formInp', 'rechercheUtilisateur');
		$this->pays = new select('pays', $selectPays);
		$this->submit = '<input type="submit" value="recherchez" id="submit">';
		$this->divFin = '</div>';
		$this->formFin = '</form>';
	}

//fonction qui permet d'attribuer une valeur à un attribut de l'objet (les attributs sont privés donc sans celle-ci les valeurs ne peuvent être changées).
	public function __set($property, $value)
	{
		if(property_exists('formulaire', $property))
			$this->$property = $value;
		else
			throw new Exception("property invalid", 1);
	}
//fonction qui permet d'obtenir la valeur d'un attribut de l'objet (les attributs sont privés donc sans celle-ci les valeurs ne peuvent être vue).
	public function __get($property)
	{
		if (property_exists('formulaire', $property))
			return($this->$property);
		else
			throw new Exception("property invalid", 1);
	}
//fonction d'initalisation d'un formulaire avec l'appel à la fonction assemble des objets input et à la fonction createSelect de mes select.
	function initForm()
	{
		$this->motCle->assemble();
		$this->nom->assemble();
		$this->realisateur->assemble();
		$this->acteur->assemble();
		$this->scenariste->assemble();
		$this->duree->assemble();
		$this->utilisateur->assemble();
		$this->genre->createSelect();
		$this->annee->createSelect();
		$this->pays->createSelect();
	}

	function updateInput($property, $value)
	{
		if(property_exists('formulaire', $property))
			$this->$property->set('inputValue', $value);
	}
//affichage des attributs de mon form dans le html.
	function echoFormulaire()
	{
		echo $this->formDeb;
		echo $this->motCle->input;
		echo $this->divDeb;
		echo $this->nom->input;
		echo $this->genre->select;
		echo $this->annee->select;
		echo $this->realisateur->input;
		echo $this->acteur->input;
		echo $this->scenariste->input;
		echo $this->duree->input;
		echo $this->utilisateur->input;
		echo $this->pays->select;
		echo $this->submit;
		echo $this->divFin;
		echo $this->formFin;
	}
}
?>