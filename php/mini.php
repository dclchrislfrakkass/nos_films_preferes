

<?php


$bdd = new PDO('mysql:host=localhost;dbname=Films;charset=utf8', 'test', 'test00');

$affiche = $bdd->query('SELECT * FROM `Film`');

$row = $affiche->fetchAll();

foreach ($row as $img) {
    // while ($aff = $affiche->fetch()) {
    echo '<div class="container">';
    echo '<img src='.$img['afficheFilm'].'>';
    // echo '<img class="buttonPlus" src="../img/plus.svg" onclick="resumePlus();" />';
    echo '<button class="buttonPlus"></button>';
    echo '</div>';
}

    ?>
    