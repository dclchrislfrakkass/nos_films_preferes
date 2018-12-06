

<?php


$bdd = new PDO('mysql:host=localhost;dbname=Films;charset=utf8', 'test', 'test00');

$affiche = $bdd->query('SELECT * FROM `Film`');

$row = $affiche->fetchAll();

foreach ($row as $img) {
    // while ($aff = $affiche->fetch()) {
    echo '<img class="col-6 col-lg-3 no-padding" src='.$img['afficheFilm'].'>';
}

        ?>
        
        