<?php

//fonction qui prends en paramettre un tableau vide et une requete sql et qui remplit le tableau avec les resultats de la requete.
function arrayPush($array, $myQuery)
{
	$i = 0;
	while($donnees = $myQuery->fetch())
	{
		$array[$i] = $donnees[0];
		$i++;
	}
	return ($array);
}
?>