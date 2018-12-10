<?php

include 'input.php';

class insertFilm  {
	private $formDeb;
	private $nom;
	private $duree;
	private $annee;
	private $affiche;
	private $bandeAnnonce;
	private $pays;
	private $genre;
	private $realisateur;
	private $scenariste;
	private $acteur1;
	private $acteur2;
	private $acteur3;
	private $acteur4;
	private $acteur5;
	private $resume;
	private $utilisateur;
	private $keyWord;
	private $formFin;
	private $submit;

	public function __construct()
	{
		$this->formDeb = '<form action="./insertFilm.php" method="get">';
		$this->keyWord = new input('text', '', 'insertKeyWord', 'Mots Cles', 'formInp', 'insertKeyWord');
		$this->nom = new input('text', '', 'insertNom', 'Nom du Film', 'formInp', 'insertNom');
		$this->genre = new input('text', '', 'insertGenre', 'Genre', 'formInp', 'insertGenre');
		$this->annee = new input('text', '', 'insertAnnee', 'Annee', 'formInp', 'insertAnnee');
		$this->realisateur = new input('text', '', 'insertRealisateur', 'Realisateur', 'formInp', 'insertRealisateur');
		$this->acteur1 = new input('text', '', 'insertActeur1', 'Acteur 1', 'formInp', 'insertActeur1');
		$this->acteur2 = new input('text', '', 'insertActeur2', 'Acteur 2', 'formInp', 'insertActeur2');
		$this->acteur3 = new input('text', '', 'insertActeur3', 'Acteur 3', 'formInp', 'insertActeur3');
		$this->acteur4 = new input('text', '', 'insertActeur4', 'Acteur 4', 'formInp', 'insertActeur4');
		$this->acteur5 = new input('text', '', 'insertActeur5', 'Acteur 5', 'formInp', 'insertActeur5');
		$this->scenariste = new input('text', '', 'insertScenariste', 'Scenariste', 'formInp', 'insertScenariste');
		$this->duree = new input('number', '', 'insertDuree', 'Duree', 'formInp', 'insertDuree');
		$this->utilisateur = new input('text', '', 'insertUtilisateur', 'Utilisateur', 'formInp', 'insertUtilisateur');
		$this->pays = new input('text', '', 'insertPays', 'Pays', 'formInp', 'insertPays');
		$this->resume = new input('text', '', 'insertResume', 'Resume', 'formInp', 'insertResume');
		$this->affiche = new input('text', '', 'insertAffiche', 'Affiche', 'formInp', 'insertAffiche');
		$this->bandeAnnonce = new input('text', '', 'insertBandeAnnonce', 'Bande Annonce', 'formInp', 'insertBandeAnnonce');
		$this->submit = '<input type="submit" value="inserez" id="submit">';
		$this->formFin = '</form>';
	}

	public function __set($property, $value)
	{
		if(property_exists('insertFilm', $property))
			$this->$property = $value;
		else
			throw new Exception("property invalid", 1);
	}

	public function __get($property)
	{
		if (property_exists('insertFilm', $property))
			return($this->$property);
		else
			throw new Exception("property invalid", 1);
	}

	public function initForm()
	{
		$this->nom->assemble();
		$this->duree->assemble();
		$this->annee->assemble();
		$this->realisateur->assemble();
		$this->scenariste->assemble();
		$this->acteur1->assemble();
		$this->acteur2->assemble();
		$this->acteur3->assemble();
		$this->acteur4->assemble();
		$this->acteur5->assemble();
		$this->resume->assemble();
		$this->affiche->assemble();
		$this->bandeAnnonce->assemble();
		$this->keyWord->assemble();
	}
	public function assemble()
	{
		echo $this->formDeb;
		echo $this->nom->input;
		echo $this->duree->input;
		echo $this->annee->input;
		echo $this->realisateur->input;
		echo $this->scenariste->input;
		echo $this->acteur1->input;
		echo $this->acteur2->input;
		echo $this->acteur3->input;
		echo $this->acteur4->input;
		echo $this->acteur5->input;
		echo $this->resume->input;
		echo $this->affiche->input;
		echo $this->bandeAnnonce->input;
		echo $this->keyWord->input;
		echo $this->submit;
		echo $this->formFin;
	}
}


?>