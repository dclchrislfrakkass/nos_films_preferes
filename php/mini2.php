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
        $this->containerStart = '<button onclick="document.getElementById("modal").style.display="block">';
        $this->array = $selectAffiche;
        $this->containerEnd = '</button>';
    }

    public function doDiv()
    {
        echo '<script src="./js/script.js"></script>';
        foreach ($this->array as $key => $value) {
            echo $this->containerStart;
            echo '<img src="'.$value.'" onload="test()">';
            echo $this->containerEnd;
        }
    }
}
