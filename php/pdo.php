<?php


$bdd = new PDO('mysql:host=localhost;dbname=Films;charset=utf8', 'dclchris', 'db10');

$genre = $bdd->query('SELECT * FROM `genre`');
$motCle = $bdd->query('SELECT * FROM `motCle`');
$affiche = $bdd->query('SELECT * FROM `Film`');

///affiche une affiche
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
    echo $donnees2['motMotCle'].'</br>';
}
?>


