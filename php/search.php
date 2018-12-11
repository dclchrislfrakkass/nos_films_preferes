<?php


include 'fonctionUtiles.php';
include 'mini1.php';

$bdd = new PDO('mysql:host=localhost;dbname=Films;charset=utf8', 'test', 'test00');

echo '
<html>

<head>

<title>Résultat de la recherche</title>

</head>

<body>';

if (($Mot == '') || ($Mot == '%')) {
    echo "
    Veuillez entrer un mot clé s'il vous plaît!
    <p>";
} else {
    $query = "SELECT distinct count(lien) FROM search
    WHERE motCle LIKE \"%$Mot%\"
    OR nomFilm LIKE \"%$Mot%\"
    ";
    
    $result = mysql_query($query);
    
    $row = mysql_fetch_row($result);
    
    $Nombre = $row[0];
    
    if ($Nombre == '0') {
        echo '
        <h2>Aucun résultat ne correspond à votre recherche</h2>
        
        <p>
        
        '}}
    } else {
        $query = "SELECT distinct nomFilm,motCle,idFilm FROM search
        WHERE motCle LIKE \"%$Mot%\"
        OR nomFilm LIKE \"%$Mot%\" ORDER by idFilm ASC";
        
        $result = mysql_query($query);
        
        if ($Nombre == '1') {
            echo '
            <a name="#resultat"><h2>Résultat: Un article trouvé</h2></a>
            
            <p>';
        } else {
            echo "
            <a name=\"#resultat\"><h2>Résultat: $Nombre films trouvés</h2></a>
            
            <p>";
        }
        while ($row = mysql_fetch_row($result)) {
            echo "
            <p>\n
            <b>$row[2]</b>\n
            <br><a href=\"../$row[0]\">Visualiser le film</a>\n
            <p>\n
            ";
        }
    }
    
    
    mysql_close();
    
    ?>