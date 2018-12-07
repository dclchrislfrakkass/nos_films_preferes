

<?php


$bdd = new PDO('mysql:host=localhost;dbname=Films;charset=utf8', 'test', 'test00');

$affiche = $bdd->query('SELECT * FROM `Film`');

?>

<?php

class affiche
{
    private $row;
    private $img;
    private $affiche;
    private $button;
    private $containerStart;
    private $containerEnd;

    public function __construct()
    {
        $this->containerStart = '<div class="container">';
        $this->img = '<img src='.$img['afficheFilm'].'>';
        $this->button = '<button class="buttonPlus"></button>';
        $this->containerEnd = '</div>';
    }

    public function doDiv()
    {
        echo 'test';
        // $row = $affiche->fetchAll();

        // foreach ($row as $img) {
        //     echo $this->container.$this->img.$this->button.$this->containerEnd;
        // }
    }
}
