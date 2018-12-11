<?php
	$bdd = new PDO('mysql:host=localhost;dbname=Films;charset=utf8', 'test', 'test00');

	var_dump($_GET);
	$realisateur = explode(' ', $_GET['insertRealisateur']);
	var_dump($realisateur);
	$verifQuery = $bdd->query('SELECT * FROM Film LEFT JOIN realise ON Film.idFilm = realise.idFilm LEFT JOIN personne ON realise.idPersonne = personne.idPersonne WHERE Film.nomFilm LIKE "'.$_GET['insertNom'].'" AND Film.anneeFilm LIKE "'.$_GET['insertAnnee'].'" AND Film.dureeFilm LIKE "'.$_GET['insertDuree'].'" AND personne.nomPersonne LIKE "'.$realisateur[1].'" AND personne.prenomPersonne_personne LIKE "'.$realisateur[0].'"');
	var_dump($_GET);
	var_dump($verifQuery);
	if($verifQuery->fetch())
		echo "film deja present dans la base de donnee";
	else
		insertMyFilm($bdd);

	function updateFilm($bdd, $table, $varDest, $idSearch, $tableSearch, $varCompar, $idCompart, $monGet)
	{
		$update = $bdd->query('UPDATE '.$table.' '.$varDest.'=(SELECT '.$idSearch.' FROM '.$tableSearch.' WHERE '.$varCompart.' LIKE "'.$monGet.'") WHERE '.$idCompart.' LIKE (SELECT Film.idFilm FROM Film WHERE Film.afficheFilm LIKE "'.$_GET['insertAffiche'].'")');
	}

	function insertFilm($bdd, $table, $nomSearch, $monGet, $tableDest)
	{
		$verifQuery = $bdd->query('SELECT * FROM '.$table.' WHERE '.$nomSearch.' LIKE "'.$monGet.'"');
		if(!$verifQuery->fetch())
			$insertIn = $bdd->query('INSERT INTO '.$table.' ('.$nomSearch.') VALUES ("'.$monGet.'")');
		$insertIn = $bdd->query('INSERT INTO '.$tableDest.' (idFilm) SELECT idFilm FROM Film WHERE afficheFilm LIKE "'.$_GET['insertAffiche'].'"');
	}

	function insertMyFilm($bdd)
	{
		$realisateur = explode(' ', $_GET['insertRealisateur']);
		$scenariste = explode(' ', $_GET['insertScenariste']);
		$acteur1 = explode(' ', $_GET['insertActeur1']);
		$acteur2 = explode(' ', $_GET['insertActeur2']);
		$acteur3 = explode(' ', $_GET['insertActeur3']);
		$acteur4 = explode(' ', $_GET['insertActeur4']);
		$acteur5 = explode(' ', $_GET['insertActeur5']);

		$insertInFilm = $bdd->query('INSERT INTO Film (resumeFilm, anneeFilm, dureeFilm, nomFilm, afficheFilm, lienBandeAnnonce) VALUES ("'.$_GET['insertResume'].'", "'.$_GET['insertAnnee'].'", "'.$_GET['insertDuree'].'", "'.$_GET['insertNom'].'", "'.$_GET['insertAffiche'].'", "'.$_GET['insertBandeAnnonce'].'")');

		insertFilm($bdd, 'Pays', 'nomPays', $_GET['insertPays'], 'vient_de');
		updateFilm($bdd, 'vient_de', 'idPays', 'Pays', 'nomPays', $_GET['insertPays']);
		updateFilm($bdd, 'vient_de', 'idFilm', 'Film', 'nomFilm', $_GET['insertNom']);


		// $verifQuery = $bdd->query('SELECT * FROM Pays WHERE nomPays LIKE "'.$_GET['insertPays'].'"');
		// if(!$verifQuery->fetch())
		// 	$insertInPays = $bdd->query('INSERT INTO Pays (nomPays) VALUES  ("'.$_GET['insertPays'].'")');
		// $insertInViens = $bdd->query('INSERT INTO vient_de (idFilm) SELECT idFilm FROM Film WHERE afficheFilm LIKE "'.$_GET['insertAffiche'].'"');
		// $insertInViens = $bdd->query('UPDATE vient_de idPays=(SELECT idPays FROM Pays WHERE nomPays LIKE "'.$_GET['insertPays'].'") WHERE idFilm LIKE (SELECT Film.idFilm FROM Film WHERE Film.afficheFilm LIKE "'.$_GET['insertAffiche'].'")');



		insertFilm($bdd, 'genre', 'nomGenre', $_GET['insertGenre'], 'est');
		updateFilm($bdd, 'est', 'idGenre', 'genre', 'nomGenre', $_GET['insertGenre']);
		updateFilm($bdd, 'est', 'idFilm', 'Film', 'nomFilm', $_GET['insertNom']);
		// $verifQuery = $bdd->query('SELECT * FROM genre WHERE nomGenre LIKE "'.$_GET['insertGenre'].'"');
		// if(!$verifQuery->fetch())
		// 	$insertInGenre = $bdd->query('INSERT INTO genre (nomGenre) VALUES  ("'.$_GET['insertGenre'].'")');
		// $insertInEst = $bdd->query('INSERT INTO est (idFilm) SELECT idFilm FROM Film WHERE afficheFilm LIKE "'.$_GET['insertAffiche'].'"');
		// $insertInEst = $bdd->query('UPDATE est idGenre=(SELECT idGenre FROM genre WHERE nomGenre LIKE "'.$_GET['insertGenre'].'") WHERE idFilm LIKE (SELECT Film.idFilm FROM Film WHERE Film.afficheFilm LIKE "'.$_GET['insertAffiche'].'")');

		$keyWord = explode(' ', $_GET['insertKeyWord']);
		foreach ($keyWord as $key => $value) {
			insertFilm($bdd, 'motCle', 'motMotCle', $value, 'definit');
			updateFilm($bdd, 'definit', 'idMotCle', 'motMotCle', 'motCle', $value);
			updateFilm($bdd, 'definit', 'idFilm', 'Film', 'nomFilm', $_GET['insertNom']);
			// $verifQuery = $bdd->query('SELECT * FROM motCle WHERE motMotCle LIKE "'.$value.'"');
			// if(!$verifQuery->fetch())
			// 	$insertInKeyWord = $bdd->query('INSERT INTO motCle (motMotCle) VALUES  ("'.$value.'")');
			// $insertInDefinit = $bdd->query('INSERT INTO definit (idMotCle) SELECT motMotCle FROM motCle WHERE motMotCle LIKE "'.$value.'"');
			// $insertInDefinit = $bdd->query('INSERT INTO definit (idFilm) SELECT idFilm FROM Film WHERE afficheFilm LIKE "'.$_GET['insertAffiche'].'"');
		}
		// $verifQuery = $bdd->query('SELECT * FROM Pays WHERE nomPays LIKE "'.$_GET['insertPays'].'"');
		// if(!$verifQuery->fetch())
		// 	$insertInPays = $bdd->query('INSERT INTO Pays (nomPays) VALUES  ("'.$_GET['insertPays'].'")');
		// $insertInViens = $bdd->query('INSERT INTO vient_de (idPays, idFilm) VALUES (SELECT idPays FROM Pays WHERE nomPays LIKE "'.$_GET['insertPays'].'")');


		$idPays = $bdd->query('SELECT idPays FROM Pays WHERE nomPays LIKE "'.$_GET['insertPays'].'"');
		$idPays = $idPays->fetch();
		insertPersonne($bdd, 'realise', $realisateur, $idPays);
		insertPersonne($bdd, 'ecrit', $scenariste, $idPays);
		insertPersonne($bdd, 'joue', $acteur1, $idPays);
		insertPersonne($bdd, 'joue', $acteur2, $idPays);
		insertPersonne($bdd, 'joue', $acteur3, $idPays);
		insertPersonne($bdd, 'joue', $acteur4, $idPays);
		insertPersonne($bdd, 'joue', $acteur5, $idPays);
	}

	function insertPersonne($bdd, $table, $personne, $idPays)
	{
		$verifQuery = $bdd->query('SELECT * FROM Film LEFT JOIN '.$table.' ON Film.idFilm = '.$table.'.idFilm LEFT JOIN personne ON '.$table.'.idPersonne = personne.idPersonne WHERE personne.nomPersonne LIKE "'.$personne[1].'" AND personne.prenomPersonne_personne LIKE "'.$personne[0].'"');
		if (!$verifQuery->fetch())
		{
			$insertInPersonne = $bdd->query('INSERT INTO personne (nomPersonne, prenomPersonne_personne, idPays) VALUES ("'.$personne[1].'", "'.$personne[0].'", "'.$idPays[0].'")');
			var_dump('INSERT INTO personne (nomPersonne, prenomPersonne_personne, idPays) VALUES ("'.$personne[1].'", "'.$personne[0].'", "'.$idPays[0].'")');
		}
		$insertIn = $bdd->query('INSERT INTO '.$table.' (idFilm) VALUES (987654)');
		// $insertIn = $bdd->query('UPDATE '.$table.' SET idPersonne= (SELECT idPersonne FROM personne WHERE nomPersonne LIKE "'.$personne[1].'" AND prenomPersonne_personne LIKE "'.$personne[0].'"), idFilm=(SELECT Film.idFilm FROM Film WHERE Film.afficheFilm LIKE "'.$_GET['insertAffiche'].'") WHERE idFilm LIKE 987654');

		// var_dump('INSERT INTO '.$table.' (idFilm) SELECT idFilm FROM Film WHERE afficheFilm LIKE "'.$_GET['insertAffiche'].'"');
	}
?>