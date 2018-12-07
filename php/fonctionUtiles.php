<?php
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