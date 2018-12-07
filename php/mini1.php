

<?php


$bdd = new PDO('mysql:host=localhost;dbname=Films;charset=utf8', 'test', 'test00');

$selectAffiche = array();
$selectAffiche = arrayPush($selectAffiche, $bdd->query('SELECT afficheFilm FROM Film'));
$affiche = new affiche($selectAffiche);
$affiche->doDiv();
?>

<?php

class affiche
{
    private $row;
    private $img;
    private $afficheP;
    private $button;
    private $containerStart;
    private $containerEnd;
    private $array;

    public function __construct($selectAffiche)
    {
        $this->containerStart = '<div class="container">';
        $this->array = $selectAffiche;
        // $this->img = '<img src='.$selectAffiche.'>';
        $this->button = '<button class="buttonPlus"></button>';
        $this->containerEnd = '</div>';
    }

    public function doDiv()
    {
        foreach ($this->array as $key => $value) {
            echo '<div class="container">';
            echo '<img src="'.$value.'">';
            echo '<button class="buttonPlus"></button>';
            echo '</div>';
        }
        // $row = $afficheP->fetchAll();

        // foreach ($row as $img) {
        //     echo $this->containerStart.$this->img.$this->button.$this->containerEnd;
        // }
    }
}
