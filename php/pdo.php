<?php

include 'film.php';

$bdd = new PDO('mysql:host=localhost;dbname=Films;charset=utf8', 'test', 'test00');

$genre = $bdd->query('SELECT * FROM `genre`');
$motCle = $bdd->query('SELECT * FROM `motCle`');
$affiche = $bdd->query('SELECT * FROM `Film`');

///affiche une affiche
$aff = $affiche->fetch();
$aff = $affiche->fetch();
$aff = $affiche->fetch();
echo '<img src='.$aff['afficheFilm'].'></br></br>';

///affiche les genres avec les ID
// while ($donnees = $genre->fetch()) {
//     echo $donnees['nomGenre'].' appartient à Id '.$donnees['idGenre'].'</br>';
// }
?>


<br> mots clés :
<br><br>
<?php


///affiche les mots clés
while ($donnees2 = $motCle->fetch()) {
    echo '<a href="#">'.$donnees2['motMotCle'].'</a>'.'</br>';
}

function getFilmFromAffiche($affiche, $bdd)
{

	$myquery = $bdd->query('SELECT * FROM Film WHERE afficheFilm LIKE "'.$affiche.'"');

	$myquery = $myquery->fetch();
	$nom = $myquery['nomFilm'];
	$duree = $myquery['dureeFilm'];
	$annee = $myquery['anneeFilm'];
	$affiche = $myquery['afficheFilm'];
	$resume = $myquery['resumeFilm'];
	$bandeAnonce = $myquery['lienBandeAnnonce'];

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

	$myFilm = new film($nom, $duree, $annee, $affiche, $pays, $genre, $realisateurNom, $realisateurPrenom, $scenaristeNom, $scenaristePrenom, $acteur, $resume, $bandeAnonce);
	var_dump($myFilm);
	// var_dump($acteur);
	// var_dump($nom);
	// var_dump($duree);
	// var_dump($annee);
	// var_dump($affiche);
	// var_dump($resume);
	// var_dump($bandeAnonce);
	// var_dump($realisateurNom);
	// var_dump($realisateurPrenom);
	// var_dump($scenaristeNom);
	// var_dump($scenaristePrenom);
	// var_dump($genre);
	// var_dump($pays);
}

getFilmFromAffiche('http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg', $bdd);
?>




<!-- SELECT * FROM Film LEFT JOIN joue ON Film.idFilm = joue.idFilm LEFT JOIN personne ON joue.idPersonne = personne.idPersonne WHERE afficheFilm LIKE 'http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg'

SELECT * FROM Film LEFT JOIN realise ON Film.idFilm = realise.idFilm LEFT JOIN personne ON realise.idPersonne = personne.idPersonne WHERE afficheFilm LIKE 'http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg'

SELECT * FROM Film LEFT JOIN vient_de ON Film.idFilm = vient_de.idFilm LEFT JOIN Pays ON vient_de.idPays = Pays.idPays WHERE afficheFilm LIKE 'http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg'

SELECT * FROM Film LEFT JOIN ecrit ON Film.idFilm = ecrit.idFilm LEFT JOIN personne ON ecrit.idPersonne = personne.idPersonne WHERE afficheFilm LIKE 'http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg'

SELECT * FROM Film LEFT JOIN est ON Film.idFilm = est.idFilm LEFT JOIN genre ON est.idGenre = genre.idGenre WHERE afficheFilm LIKE 'http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg' 

SELECT * FROM Film LEFT JOIN vient_de ON Film.idFilm = vient_de.idFilm LEFT JOIN Pays ON vient_de.idPays = Pays.idPays LEFT JOIN est ON Film.idFilm = est.idFilm LEFT JOIN genre ON est.idGenre = genre.idGenre WHERE afficheFilm LIKE 'http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg'
-->