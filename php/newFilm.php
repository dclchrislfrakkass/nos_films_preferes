<link rel="stylesheet" href="../css/insert.css">
<?php
	include 'formulaireInsert.php';

	$formFilm = new insertFilm();
	$formFilm->initForm();
	$formFilm->assemble();
?>