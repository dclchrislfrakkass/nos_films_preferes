<?php
var_dump($_GET);
$i = 0;
$bdd = new PDO('mysql:host=localhost;dbname=Films;charset=utf8', 'test', 'test00');

$myquery = 'SELECT * FROM Film WHERE anneeFilm LIKE '.$_GET['annee'];
// if($_GET['rechercheMotsCles'] != '')
// {
// 	$myquery .= 'nomFilm LIKE "'.$_GET['rechercheNom'].'"';
// 	$myquery .= 'AND ';
// }
// if($_GET['rechercheNom'] != '')
// {
// 	$myquery .= 'nomFilm LIKE "'.$_GET['rechercheNom'].'"';
// 	$myquery .= 'AND 1 = 1';
// }
// if($_GET['rechercheRealisateur'] != '')
// {
// 	$myquery .= '"'.$_GET['rechercheRealisateur'].'" = (SELECT * FROM Film LEFT JOIN realise ON Film.idFilm = realise.idFilm LEFT JOIN personne ON realise.idPersonne = personne.idPersonne WHERE nomPersonne LIKE "'.$_GET['rechercheRealisateur'].'") AND 1 = 1';
// }
// if($_GET['rechercheActeur'] != '')
// {
// 	$myquery .= 'nomFilm LIKE "'.$_GET['rechercheNom'].'"';
// 	$myquery .= 'AND ';
// }
// if($_GET['rechercheScenariste'] != '')
// {
// 	$myquery .= 'nomFilm LIKE "'.$_GET['rechercheNom'].'"';
// 	$myquery .= 'AND ';
// }
// if($_GET['rechercheDuree'] != '')
// {
// 	$myquery .= 'nomFilm LIKE "'.$_GET['rechercheNom'].'"';
// 	$myquery .= 'AND ';
// }
// if($_GET['rechercheUtilisateur'] != '')
// {
// 	$myquery .= 'nomFilm LIKE "'.$_GET['rechercheNom'].'"';
// 	$myquery .= 'AND ';
// }
var_dump($myquery);
$recherche = $bdd->query(''.$myquery);
$recherche = $recherche->fetch();
var_dump($recherche);
?>