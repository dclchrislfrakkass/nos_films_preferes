<?php

include 'film.php';

$bdd = new PDO('mysql:host=localhost;dbname=Films;charset=utf8', 'test', 'test00');

//fonction qui va chercher les infos d'un film en fonction de son affiche.
function getFilmFromAffiche($affiche, $bdd)
{
//requete qui va chercher les infos principales d'un film et les attributs aux variables correspondante.
	$myquery = $bdd->query('SELECT * FROM Film WHERE afficheFilm LIKE "'.$affiche.'"');

	$myquery = $myquery->fetch();
	$nom = $myquery['nomFilm'];
	$duree = $myquery['dureeFilm'];
	$annee = $myquery['anneeFilm'];
	$affiche = $myquery['afficheFilm'];
	$resume = $myquery['resumeFilm'];
	$bandeAnnonce = $myquery['lienBandeAnnonce'];

//requete qui va chercher les infos du realisateur du film et qui les attributs aux variables correspondante.
	$myquery = $bdd->query('SELECT * FROM Film LEFT JOIN realise ON Film.idFilm = realise.idFilm LEFT JOIN personne ON realise.idPersonne = personne.idPersonne WHERE afficheFilm LIKE "'.$affiche.'"');
	$myquery = $myquery->fetch();
	$realisateurNom = $myquery['nomPersonne'];
	$realisateurPrenom = $myquery['prenomPersonne_personne'];
//requete qui va chercher les infos du scenariste du film et qui les attributs aux variables correspondante.
	$myquery = $bdd->query('SELECT * FROM Film LEFT JOIN ecrit ON Film.idFilm = ecrit.idFilm LEFT JOIN personne ON ecrit.idPersonne = personne.idPersonne WHERE afficheFilm LIKE "'.$affiche.'"');
	$myquery = $myquery->fetch();
	$scenaristeNom = $myquery['nomPersonne'];
	$scenaristePrenom = $myquery['prenomPersonne_personne'];
//requete qui va chercher les infos de genre, pays du film et qui les attributs aux variables correspondante.
	$myquery = $bdd->query('SELECT * FROM Film LEFT JOIN vient_de ON Film.idFilm = vient_de.idFilm LEFT JOIN Pays ON vient_de.idPays = Pays.idPays LEFT JOIN est ON Film.idFilm = est.idFilm LEFT JOIN genre ON est.idGenre = genre.idGenre WHERE afficheFilm LIKE "'.$affiche.'"');
	$myquery = $myquery->fetch();
	$genre = $myquery['nomGenre'];
	$pays = $myquery['nomPays'];
//requete qui va chercher les infos des acteur du film et qui les places dans un tableau $acteur.
	$myquery = $bdd->query('SELECT * FROM Film LEFT JOIN joue ON Film.idFilm = joue.idFilm LEFT JOIN personne ON joue.idPersonne = personne.idPersonne WHERE afficheFilm LIKE "'.$affiche.'"');
	$acteur = array();
	$i = 0;
	while ($donnees = $myquery->fetch())
	{
		$acteur[$i] = array($donnees['nomPersonne'] , $donnees['prenomPersonne_personne']);
		$i++;
	}
//creation d'un objet film avec comme paramettre les variables requises contenant les infos du film.
	$myFilm = new film($nom, $duree, $annee, $affiche, $pays, $genre, $realisateurNom, $realisateurPrenom, $scenaristeNom, $scenaristePrenom, $acteur, $resume, $bandeAnnonce);
	return $myFilm;
}

?>




<!-- SELECT * FROM Film LEFT JOIN joue ON Film.idFilm = joue.idFilm LEFT JOIN personne ON joue.idPersonne = personne.idPersonne WHERE afficheFilm LIKE 'http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg'

SELECT * FROM Film LEFT JOIN realise ON Film.idFilm = realise.idFilm LEFT JOIN personne ON realise.idPersonne = personne.idPersonne WHERE afficheFilm LIKE 'http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg'

SELECT * FROM Film LEFT JOIN vient_de ON Film.idFilm = vient_de.idFilm LEFT JOIN Pays ON vient_de.idPays = Pays.idPays WHERE afficheFilm LIKE 'http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg'

SELECT * FROM Film LEFT JOIN ecrit ON Film.idFilm = ecrit.idFilm LEFT JOIN personne ON ecrit.idPersonne = personne.idPersonne WHERE afficheFilm LIKE 'http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg'

SELECT * FROM Film LEFT JOIN est ON Film.idFilm = est.idFilm LEFT JOIN genre ON est.idGenre = genre.idGenre WHERE afficheFilm LIKE 'http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg' 

SELECT * FROM Film LEFT JOIN vient_de ON Film.idFilm = vient_de.idFilm LEFT JOIN Pays ON vient_de.idPays = Pays.idPays LEFT JOIN est ON Film.idFilm = est.idFilm LEFT JOIN genre ON est.idGenre = genre.idGenre WHERE afficheFilm LIKE 'http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg'
-->