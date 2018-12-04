<?php

class select {
	
	public $selectDeb;
	public $selectFin;
	public $selectName;
	
	public $number;

	public function __construct($name, $number)
	{
		$this->selectDeb = '<select name='.$name.'" class="formInp">';
		$this->selectName = '<option value="">'.$name.'</option>';

		$this->selectFin = '</select>';
	}
}

?>