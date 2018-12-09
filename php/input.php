<?php
class input {
	private $inputType;
	private $inputValue;
	private $inputName;
	private $inputPlaceholder;
	private $inputClass;
	private $inputId;
	private $input;

//assignation de valeur aux attributs correspondants.
	public function __construct($type, $value, $name, $placeholder, $classe, $id)
	{
//assignation de valeur aux attributs correspondants.
		$this->inputType = '<input type="'.$type.'" value="';
		$this->inputValue = $value;
		$this->inputName = '" name="'.$name.'" ';
		$this->inputPlaceholder = 'placeholder="'.$placeholder.'" ';
		$this->inputClass = 'class="'.$classe.'" ';
		$this->inputId = 'id ="'.$id.'"">';
		$this->input = '';
	}
//fonction qui permet d'attribuer une valeur à un attribut de l'objet (les attributs sont privés donc sans celle-ci les valeurs ne peuvent être changées).
	public function __set($property, $value)
	{
		if(property_exists('input', $property))
			$this->$property = $value;
		else
			throw new Exception("property invalid", 1);
	}
//fonction qui permet d'obtenir la valeur d'un attribut de l'objet (les attributs sont privés donc sans celle-ci les valeurs ne peuvent être vue).
	public function __get($property)
	{
		if (property_exists('input', $property))
			return($this->input);
		else
			throw new Exception("property invalid", 1);
	}
//assembles les attributs dans l'attribut input.
	public function assemble()
	{
		$this->input = ''.$this->inputType.$this->inputValue.$this->inputName.$this->inputPlaceholder.$this->inputClass.$this->inputId.'';
	}
}


?>