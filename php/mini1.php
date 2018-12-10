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
            echo '</div>';
        }
        // $row = $afficheP->fetchAll();

        // foreach ($row as $img) {
        //     echo $this->containerStart.$this->img.$this->button.$this->containerEnd;
        // }
    }
}
