<?php
	$bdd = new PDO('mysql:host=localhost;dbname=Films;charset=utf8', 'test', 'test00');

	var_dump($_GET);
	$realisateur = explode(' ', $_GET['insertRealisateur']);
	var_dump($realisateur);
	$verifQuery = $bdd->query('SELECT * FROM Film LEFT JOIN realise ON Film.idFilm = realise.idFilm LEFT JOIN personne ON realise.idPersonne = personne.idPersonne WHERE Film.nomFilm LIKE "'.$_GET['insertNom'].'" AND Film.anneeFilm LIKE "'.$_GET['insertAnnee'].'" AND Film.dureeFilm LIKE "'.$_GET['insertDuree'].'" AND personne.nomPersonne LIKE "'.$realisateur[1].'" AND personne.prenomPersonne_personne LIKE "'.$realisateur[0].'"');
	if($verifQuery->fetch())
		echo "film deja present dans la base de donnee";
	
?>