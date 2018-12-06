<?php

class billets {
	private $divDeb;
	private $divFin;
	private $nom;
	private $duree;
	private $annee;
	private $affiche;
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
	private $billet;

	public function __construct($nom, $duree, $annee, $affiche, $pays, $genre, $realisateurNom, $realisateurPrenom, $scenaristeNom, $scenaristePrenom, $acteur, $resume)
	{
		$this->divDeb = '<div class="billetFilm">';
		$this->nom = '<div class="infos"><div class="topLeft">'.$nom.' (';
		$this->duree = $duree.', ';
		$this->annee = $annee.')</div>';
		$this->pays = $pays;
		$this->genre = $genre;
		$this->realisateur = '<p>Realisateur :</p><a href="https://fr.wikipedia.org/wiki/'.$realisateurNom.'_'.$realisateurPrenom.'" target="blank">'.$realisateurNom.' '.$realisateurPrenom.'</a>';
		$this->scenariste = '<p>Scenariste :</p><a href="https://fr.wikipedia.org/wiki/'.$scenaristeNom.'_'.$scenaristePrenom.'" target="blank">'.$scenaristeNom.' '.$scenaristePrenom.'</a>';
		$this->acteur1 = '<p>Acteurs:</p><a href="https://fr.wikipedia.org/wiki/'.$acteur[0][0].'_'.$acteur[0][1].'" target="blank">'.$acteur[0][0].'&nbsp'.$acteur[0][1].'</a>';
		$this->acteur2 = '<a href="https://fr.wikipedia.org/wiki/'.$acteur[1][0].'_'.$acteur[1][1].'" target="blank">'.$acteur[1][0].'&nbsp'.$acteur[1][1].'</a>';
		$this->acteur3 = '<a href="https://fr.wikipedia.org/wiki/'.$acteur[2][0].'_'.$acteur[2][1].'" target="blank">'.$acteur[2][0].'&nbsp'.$acteur[2][1].'</a>';
		$this->acteur4 = '<a href="https://fr.wikipedia.org/wiki/'.$acteur[3][0].'_'.$acteur[3][1].'" target="blank">'.$acteur[3][0].'&nbsp'.$acteur[3][1].'</a>';
		$this->acteur5 = '<a href="https://fr.wikipedia.org/wiki/'.$acteur[4][0].'_'.$acteur[4][1].'" target="blank">'.$acteur[4][0].'&nbsp'.$acteur[4][1].'</a>';
		$this->resume = '<div id="resume"><p>Synopsie</p>'.$resume.'</div></div>';
		$this->affiche = '<div id="affiche"><img src="'.$affiche.'" alt="'.$affiche.'"></div>';
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
		$this->billet = ''.$this->divDeb.$this->nom.$this->duree.$this->annee.$this->realisateur.$this->scenariste.$this->acteur1.$this->acteur2.$this->acteur3.$this->acteur4.$this->acteur5.$this->resume.$this->affiche.$this->divFin.'';
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