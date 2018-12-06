
<link rel="stylesheet" href="../css/style.css">


<?php


$bdd = new PDO('mysql:host=localhost;dbname=Films;charset=utf8', 'test', 'test00');

$affiche = $bdd->query('SELECT * FROM `Film`');

while ($aff = $affiche->fetch()) {
    echo '<div class="row">';
    echo '<img src='.$aff['afficheFilm'].'>';
    echo '</div>';
}

?>

