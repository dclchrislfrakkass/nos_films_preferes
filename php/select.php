<?php

class select {
	
	private $selectDeb;
	private $selectFin;
	private $selectName;
	private $array;
	private $number;
	private $select;

	public function __construct($name, $array)
	{
		$this->selectDeb = '<select name='.$name.'" class="formInp">';
		$this->selectName = '<option value="">'.$name.'</option>';
		$this->array = $array;
		$this->selectFin = '</select>';
		$this->select = '';
	}

	public function __set($property, $value)
	{
		if(property_exists('select', $property))
			$this->$property = $value;
		else
			throw new Exception("property invalid", 1);
	}

	public function __get($property)
	{
		if (property_exists('select', $property))
			return($this->$property);
		else
			throw new Exception("property invalid", 1);
	}

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