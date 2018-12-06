<?php

class film {

	private $nom;
	private $duree;
	private $annee;
	private $affiche;
	private $pays;
	private $genre;
	private $realisateurNom;
	private $realisateurPrenom;	
	private $scenaristeNom;
	private $scenaristePrenom;
	private $acteur;
	private $resume;
	private $billet;

	public function __construct($nom, $duree, $annee, $affiche, $pays, $genre, $realisateurNom, $realisateurPrenom, $scenaristeNom, $scenaristePrenom, $acteur, $resume)
	{
		$this->nom = $nom;
		$this->duree = $duree;
		$this->annee = $annee;
		$this->pays = $pays;
		$this->genre = $genre;
		$this->realisateurNom = $realisateurNom;
		$this->realisateurPrenom = $realisateurPrenom;
		$this->scenaristeNom = $scenaristeNom;
		$this->scenaristePrenom = $scenaristePrenom;
		$this->acteur = $acteur;
		$this->resumePlus = $resumePlus;
		$this->affiche = $affiche;
	}

	public function __set($property, $value)
	{
		if(property_exists('film', $property))
			$this->$property = $value;
		else
			throw new Exception("property invalid", 1);
	}

	public function __get($property)
	{
		if (property_exists('film', $property))
			return($this->billet);
		else
			throw new Exception("property invalid", 1);
	}
}

?>