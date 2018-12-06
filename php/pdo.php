<?php


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
while ($donnees = $genre->fetch()) {
    echo $donnees['nomGenre'].' appartient à Id '.$donnees['idGenre'].'</br>';
}
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
	$myquery = $bdd->query('SELECT * FROM `Film` WHERE `afficheFilm` LIKE "'.$affiche.'"');
	$film = $myquery->fetch();
	echo ''.$film['afficheFilm'].$film['nomFilm'].$film['anneeFilm'].$film['resumeFilm'].'';
}

getFilmFromAffiche('http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg', $bdd);
?>


