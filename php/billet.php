<?php

class billets {
	private $divDeb;
	private $divFin;
	private $nom;
	private $duree;
	private $annee;
	private $affiche;
	private $realisateur;
	private $scenariste;
	private $acteur1;
	private $acteur2;
	private $acteur3;
	private $acteur4;
	private $acteur5;
	private $resume;
	private $resumePlus;
	private $billet;

	public function __construct($nom, $duree, $annee, $affiche, $realisateur, $scenariste, $acteur, $resume, $resumePlus)
	{
		$this->divDeb = '<div class="billetFilm">';
		$this->nom = '<div class="infos"><div class="topLeft">'.$nom.' (';
		$this->duree = $duree.', ';
		$this->annee = $annee.')</div>';
		$this->realisateur = '<p>Realisateur :</p><a href="https://fr.wikipedia.org/wiki/'.$realisateur.'">'.$realisateur.'</a>';
		$this->scenariste = '<p>Scenariste :</p><a href="https://fr.wikipedia.org/wiki/'.$scenariste.'">'.$scenariste.'</a>';
		$this->acteur1 = '<p>Acteurs:</p><a href="https://fr.wikipedia.org/wiki/'.$acteur[0].'">'.$acteur[0].'</a>';
		$this->acteur2 = '<a href="https://fr.wikipedia.org/wiki/'.$acteur[1].'">'.$acteur[1].'</a>';
		$this->acteur3 = '<a href="https://fr.wikipedia.org/wiki/'.$acteur[2].'">'.$acteur[2].'</a>';
		$this->acteur4 = '<a href="https://fr.wikipedia.org/wiki/'.$acteur[3].'">'.$acteur[3].'</a>';
		$this->acteur5 = '<a href="https://fr.wikipedia.org/wiki/'.$acteur[4].'">'.$acteur[4].'</a>';
		$this->resume = '<div class="resume" id="resumeLess"><p>Synopsie</p>'.$resume.'</div>';
		$this->resumePlus = '<div class="resume" id="resumeFull"><p>Synopsie</p>'.$resumePlus.'</div></div>';
		$this->affiche = '<div class="affiche"><img src="'.$affiche.'" alt="'.$affiche.'"></div>';
		$this->divFin = '</div>';
	}

	public function __set($property, $value)
	{
		if(property_exists('billets', $property))
			$this->$property = $value;
		else
			throw new Exception("property invalid", 1);
	}

	public function __get($property)
	{
		if (property_exists('billets', $property))
			return($this->billet);
		else
			throw new Exception("property invalid", 1);
	}

	public function assemble()
	{
		$this->billet = ''.$this->divDeb.$this->nom.$this->duree.$this->annee.$this->realisateur.$this->scenariste.$this->acteur1.$this->acteur2.$this->acteur3.$this->acteur4.$this->acteur5.$this->resume.$this->resumePlus.$this->affiche.$this->divFin.'';
	}
}

// echo '<div class="billetFilm">';
//             echo '<div class="topLeft">'.(NOMDUFILM).' ('.(DUREE).' '.(ANNEE).')</div>';
//             echo '<img src="XXX" class="affiche"> alt="XXX"</div>';
//             echo '<div class="infos">Réalisateur : '.(REALISATEUR).' Acteurs: '.(ACTEUR).'</div>';
//             echo '<div class="resume">'.(RESUME).'</div>'; //version limitee
//             echo '<div class="resume">'.(RESUMEPLUS).'</div>'; //version full
//             echo '</div>';

?>


            <!-- https://image.flaticon.com/icons/svg/149/149668.svg -->