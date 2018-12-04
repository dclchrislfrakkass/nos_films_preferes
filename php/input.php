<?php
class input {
	private $inputType;
	private $inputValue;
	private $inputName;
	private $inputPlaceholder;
	private $inputClass;
	private $inputId;
	private $input;

	public function __construct($type, $value, $name, $placeholder, $classe, $id)
	{
		$this->inputType = '<input type="'.$type.'" value="';
		$this->inputValue = $value;
		$this->inputName = '" name="'.$name.'" ';
		$this->inputPlaceholder = 'placeholder="'.$placeholder.'" ';
		$this->inputClass = 'class="'.$classe.'" ';
		$this->inputId = 'id ="'.$id.'"">';
		$this->input = '';
	}

	public function __set($property, $value)
	{
		if(property_exists('input', $property))
			$this->$property = $value;
		else
			throw new Exception("property invalid", 1);
	}

	public function __get($property)
	{
		if (property_exists('input', $property))
			return($this->input);
		else
			throw new Exception("property invalid", 1);
	}

	public function assemble()
	{
		$this->input = ''.$this->inputType.$this->inputValue.$this->inputName.$this->inputPlaceholder.$this->inputClass.$this->inputId.'';
	}
}


?>