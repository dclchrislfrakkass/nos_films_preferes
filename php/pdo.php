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
	$myquery = $bdd->query('SELECT * FROM Film LEFT JOIN joue ON Film.idFilm = joue.idFilm LEFT JOIN personne ON joue.idPersonne = personne.idPersonne WHERE afficheFilm LIKE "'.$affiche.'"');
	while ($donnees3 = $myquery->fetch())
	{
		$film = $donnees3;
		echo ''.$film['afficheFilm'].$film['nomFilm'].$film['anneeFilm'].$film['nomPersonne'].$film['prenomPersonne_personne'].'<br>';
	}
}

getFilmFromAffiche('http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg', $bdd);
?>



<!-- 
SELECT * FROM Film LEFT JOIN joue ON Film.idFilm = joue.idFilm LEFT JOIN personne ON joue.idPersonne = personne.idPersonne WHERE afficheFilm LIKE 'http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg' -->


INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('1', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('2', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('3', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('4', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('5', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('6', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('7', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('8', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('9', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('10', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('11', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('12', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('13', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('14', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('15', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('16', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('17', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('18', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('19', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('20', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('21', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('22', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('23', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('24', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('25', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('26', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('27', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('28', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('29', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('30', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('31', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('32', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('33', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('34', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('35', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('36', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('37', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('38', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('39', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('40', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('41', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('42', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('43', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('44', '1')
INSERT INTO `vient_de` (`idFilm`, `idPays`) VALUES ('45', '1')