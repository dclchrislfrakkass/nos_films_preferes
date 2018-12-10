<?php

include 'pdo.php';
//utilisation de ma fonction déclarée ci-dessus (test en brut).
$film = getFilmFromAffiche($_GET['affiche'], $bdd);

//creation d'un objet billet qui utilise les attributs du film créer ci-dessus pour afficher en html les infos du film.
$billet = new billets($film->nom, $film->duree, $film->annee, $film->affiche, $film->pays, $film->genre, $film->realisateurNom, $film->realisateurPrenom, $film->scenaristeNom, $film->scenaristePrenom, $film->acteur, $film->resume, $film->bandeAnnonce);
$billet->assemble();
echo $billet->billet;

?>