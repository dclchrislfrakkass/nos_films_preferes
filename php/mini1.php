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
        $this->containerEnd = '</div>';
    }

    public function doDiv()
    {
        foreach ($this->array as $key => $value) {
            echo $this->containerStart;
            echo '<img src="'.$value.'">';
            echo $this->containerEnd;
        }
    }
}
