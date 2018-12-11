<link rel="stylesheet" href="./css/styleBillet.css">
<?php

class billets
{
    private $divDeb;
    private $divFin;
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
    private $billet;
    private $fermer;

    public function __construct($nom, $duree, $annee, $affiche, $pays, $genre, $realisateurNom, $realisateurPrenom, $scenaristeNom, $scenaristePrenom, $acteur, $resume, $bandeAnnonce)
    {
        $this->divDeb = '<div class="modalFilm" id="modalFilm" tabindex="-1" role="dialog">'.'<div class="modal-dialog" role="document">'.'<div class="modal-content">'.'<div class="modal-header">'.'<button type="button" data-dismiss="modal" aria-label="Close">'.'<span aria-hidden="true">&times;</span>'.'</button>'.'</div>'.'<div class="modal-body">';
        $this->divDeb = '<div class="billetFilm">';
        $this->nom = '<div class="infos"><h2>'.$nom.' </h2><em>(';
        $this->duree = $duree.' minutes, ';
        $this->annee = $annee.')</em>';
        $this->pays = $pays;
        $this->genre = $genre;
        $this->realisateur = '<p>Realisateur : <a href="https://fr.wikipedia.org/wiki/'.$realisateurPrenom.'_'.$realisateurNom.'" target="blank">'.$realisateurPrenom.' '.$realisateurNom.'</a>';
        $this->scenariste = '<p>Scenariste : <a href="https://fr.wikipedia.org/wiki/'.$scenaristePrenom.'_'.$scenaristeNom.'" target="blank">'.$scenaristePrenom.' '.$scenaristeNom.'</a>';
        $this->acteur1 = '<p>Acteurs : <a href="https://fr.wikipedia.org/wiki/'.$acteur[0][1].'_'.$acteur[0][0].'" target="blank">'.$acteur[0][1].'&nbsp'.$acteur[0][0].', </a>';
        $this->acteur2 = '<a href="https://fr.wikipedia.org/wiki/'.$acteur[1][1].'_'.$acteur[1][0].'" target="blank">'.$acteur[1][1].'&nbsp'.$acteur[1][0].', </a>';
        $this->acteur3 = '<a href="https://fr.wikipedia.org/wiki/'.$acteur[2][1].'_'.$acteur[2][0].'" target="blank">'.$acteur[2][1].'&nbsp'.$acteur[2][0].', </a>';
        $this->acteur4 = '<a href="https://fr.wikipedia.org/wiki/'.$acteur[3][1].'_'.$acteur[3][0].'" target="blank">'.$acteur[3][1].'&nbsp'.$acteur[3][0].', </a>';
        $this->acteur5 = '<a href="https://fr.wikipedia.org/wiki/'.$acteur[4][1].'_'.$acteur[4][0].'" target="blank">'.$acteur[4][1].'&nbsp'.$acteur[4][0].', </a>';
        $this->resume = '<div id="resume"><p>Synopsis :</p><p>'.$resume.'</p></div><video controls src="'.$bandeAnnonce.'"></video></div></div>';
        $this->affiche = '<div id="affiche"><img src="'.$affiche.'" alt="'.$affiche.'">'.'</div>';
        // $this->bandeAnnonce = '<video controls src="'.$bandeAnnonce.'"></video></div>';
        $this->divFin = '<div class="modal-footer">'.'<button onclick="modalTest()" type="button" class="btn btn-secondary" data-dismiss="modal" class="close">Fermer</button>'.'</div>'.'</div>'.'</div>'.'</div>';

        //
        // $this->fermer = '<button type="button" class="close" aria-label="Close"'.'<span aria-hidden="true">&times;</span>'.'</button>'.'<script src="./js/close.js"></script>';
        // $this->divFin = '</div>';
    }

    public function __set($property, $value)
    {
        if (property_exists('billets', $property)) {
            $this->$property = $value;
        } else {
            throw new Exception('property invalid', 1);
        }
    }

    public function __get($property)
    {
        if (property_exists('billets', $property)) {
            return $this->billet;
        } else {
            throw new Exception('property invalid', 1);
        }
    }

    public function assemble()
    {
        $this->billet = ''.$this->divDeb.$this->affiche.$this->fermer.$this->nom.$this->duree.$this->annee.$this->realisateur.$this->scenariste.$this->acteur1.$this->acteur2.$this->acteur3.$this->acteur4.$this->acteur5.$this->resume.$this->bandeAnnonce.$this->divFin.'';
    }
}
