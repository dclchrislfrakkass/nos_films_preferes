<?php

include 'film.php';
include 'billet.php';

$bdd = new PDO('mysql:host=localhost;dbname=Films;charset=utf8', 'test', 'test00');

function getFilmFromAffiche($affiche, $bdd)
{
	$myquery = $bdd->query('SELECT * FROM Film WHERE afficheFilm LIKE "'.$affiche.'"');

	$myquery = $myquery->fetch();
	$nom = $myquery['nomFilm'];
	$duree = $myquery['dureeFilm'];
	$annee = $myquery['anneeFilm'];
	$affiche = $myquery['afficheFilm'];
	$resume = $myquery['resumeFilm'];
	$bandeAnnonce = $myquery['lienBandeAnnonce'];

	$myquery = $bdd->query('SELECT * FROM Film LEFT JOIN realise ON Film.idFilm = realise.idFilm LEFT JOIN personne ON realise.idPersonne = personne.idPersonne WHERE afficheFilm LIKE "'.$affiche.'"');
	$myquery = $myquery->fetch();
	$realisateurNom = $myquery['nomPersonne'];
	$realisateurPrenom = $myquery['prenomPersonne_personne'];

	$myquery = $bdd->query('SELECT * FROM Film LEFT JOIN ecrit ON Film.idFilm = ecrit.idFilm LEFT JOIN personne ON ecrit.idPersonne = personne.idPersonne WHERE afficheFilm LIKE "'.$affiche.'"');
	$myquery = $myquery->fetch();
	$scenaristeNom = $myquery['nomPersonne'];
	$scenaristePrenom = $myquery['prenomPersonne_personne'];

	$myquery = $bdd->query('SELECT * FROM Film LEFT JOIN vient_de ON Film.idFilm = vient_de.idFilm LEFT JOIN Pays ON vient_de.idPays = Pays.idPays LEFT JOIN est ON Film.idFilm = est.idFilm LEFT JOIN genre ON est.idGenre = genre.idGenre WHERE afficheFilm LIKE "'.$affiche.'"');
	$myquery = $myquery->fetch();
	$genre = $myquery['nomGenre'];
	$pays = $myquery['nomPays'];

	$myquery = $bdd->query('SELECT * FROM Film LEFT JOIN joue ON Film.idFilm = joue.idFilm LEFT JOIN personne ON joue.idPersonne = personne.idPersonne WHERE afficheFilm LIKE "'.$affiche.'"');
	$acteur = array();
	$i = 0;
	while ($donnees = $myquery->fetch())
	{
		$acteur[$i] = array($donnees['nomPersonne'] , $donnees['prenomPersonne_personne']);
		$i++;
	}

	$myFilm = new film($nom, $duree, $annee, $affiche, $pays, $genre, $realisateurNom, $realisateurPrenom, $scenaristeNom, $scenaristePrenom, $acteur, $resume, $bandeAnnonce);
	var_dump($myFilm);
	return $myFilm;
}

$film = getFilmFromAffiche('http://fr.web.img6.acsta.net/medias/nmedia/18/65/13/27/18899329.jpg', $bdd);

$billet = new billets($film->nom, $film->duree, $film->annee, $film->affiche, $film->pays, $film->genre, $film->realisateurNom, $film->realisateurPrenom, $film->scenaristeNom, $film->scenaristePrenom, $film->acteur, $film->resume, $film->bandeAnnonce);
$billet->assemble();
echo $billet->billet;
?>




<!-- SELECT * FROM Film LEFT JOIN joue ON Film.idFilm = joue.idFilm LEFT JOIN personne ON joue.idPersonne = personne.idPersonne WHERE afficheFilm LIKE 'http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg'

SELECT * FROM Film LEFT JOIN realise ON Film.idFilm = realise.idFilm LEFT JOIN personne ON realise.idPersonne = personne.idPersonne WHERE afficheFilm LIKE 'http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg'

SELECT * FROM Film LEFT JOIN vient_de ON Film.idFilm = vient_de.idFilm LEFT JOIN Pays ON vient_de.idPays = Pays.idPays WHERE afficheFilm LIKE 'http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg'

SELECT * FROM Film LEFT JOIN ecrit ON Film.idFilm = ecrit.idFilm LEFT JOIN personne ON ecrit.idPersonne = personne.idPersonne WHERE afficheFilm LIKE 'http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg'

SELECT * FROM Film LEFT JOIN est ON Film.idFilm = est.idFilm LEFT JOIN genre ON est.idGenre = genre.idGenre WHERE afficheFilm LIKE 'http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg' 

SELECT * FROM Film LEFT JOIN vient_de ON Film.idFilm = vient_de.idFilm LEFT JOIN Pays ON vient_de.idPays = Pays.idPays LEFT JOIN est ON Film.idFilm = est.idFilm LEFT JOIN genre ON est.idGenre = genre.idGenre WHERE afficheFilm LIKE 'http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg'
-->