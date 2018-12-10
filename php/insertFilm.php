<?php
	$bdd = new PDO('mysql:host=localhost;dbname=Films;charset=utf8', 'test', 'test00');

	var_dump($_GET);
	$realisateur = explode(' ', $_GET['insertRealisateur']);
	var_dump($realisateur);
	$verifQuery = $bdd->query('SELECT * FROM Film LEFT JOIN realise ON Film.idFilm = realise.idFilm LEFT JOIN personne ON realise.idPersonne = personne.idPersonne WHERE Film.nomFilm LIKE "'.$_GET['insertNom'].'" AND Film.anneeFilm LIKE "'.$_GET['insertAnnee'].'" AND Film.dureeFilm LIKE "'.$_GET['insertDuree'].'" AND personne.nomPersonne LIKE "'.$realisateur[1].'" AND personne.prenomPersonne_personne LIKE "'.$realisateur[0].'"');
	if($verifQuery->fetch())
		echo "film deja present dans la base de donnee";
	else
		insertMyFilm();

	function insertMyFilm()
	{
		$realisateur = explode(' ', $_GET['insertRealisateur']);
		$scenariste = explode(' ', $_GET['insertScenariste']);
		$acteur1 = explode(' ', $_GET['insertActeur1']);
		$acteur2 = explode(' ', $_GET['insertActeur2']);
		$acteur3 = explode(' ', $_GET['insertActeur3']);
		$acteur4 = explode(' ', $_GET['insertActeur4']);
		$acteur5 = explode(' ', $_GET['insertActeur5']);

		$insertInFilm = $bdd->query('INSERT INTO Film (resumeFilm, anneeFilm, dureeFilm, nomFilm, afficheFilm, lienBandeAnnonce) VALUES ("'.$_GET['insertResume'].'", "'.$_GET['insertAnnee'].'", "'.$_GET['insertDuree'].'", "'.$_GET['insertNom'].'", "'.$_GET['insertAffiche'].'", "'.$_GET['insertBandeAnnonce'].'")');
		$verifQuery = $bdd->query('SELECT * FROM Film LEFT JOIN realise ON Film.idFilm = realise.idFilm LEFT JOIN personne ON realise.idPersonne = personne.idPersonne WHERE personne,nomPersonne LIKE "');
	}
?>