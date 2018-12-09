<?php

class select {
	
	private $selectDeb;
	private $selectFin;
	private $selectName;
	private $array;
	private $number;
	private $select;

//assignation de valeur aux attributs correspondants.
	public function __construct($name, $array)
	{
		$this->selectDeb = '<select name='.$name.'" id="'.$name.'" class="formInp">';
		$this->selectName = '<option value="">'.$name.'</option>';
		$this->array = $array;
		$this->selectFin = '</select>';
		$this->select = '';
	}

//fonction qui permet d'attribuer une valeur à un attribut de l'objet (les attributs sont privés donc sans celle-ci les valeurs ne peuvent être changées).
	public function __set($property, $value)
	{
		if(property_exists('select', $property))
			$this->$property = $value;
		else
			throw new Exception("property invalid", 1);
	}
//fonction qui permet d'obtenir la valeur d'un attribut de l'objet (les attributs sont privés donc sans celle-ci les valeurs ne peuvent être vue).
	public function __get($property)
	{
		if (property_exists('select', $property))
			return($this->$property);
		else
			throw new Exception("property invalid", 1);
	}
//assembles les attributs dans l'attribut select.
	public function createSelect()
	{
		$this->select .= $this->selectDeb;
		$this->select .= $this->selectName;
		foreach ($this->array as $key => $value) {
			$this->select .= '<option value="'.$value.'">'.$value.'</option>';
		}
		$this->select .= $this->selectFin;
	}
}

?>