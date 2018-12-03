<?php 

echo '<form action="">';
echo '<input type="text" value="" name="rechercheMotsCle" placeholder="Recherche" id="recherche">';
echo '<div id="more">';
echo '<input type="text" value="" name="rechercheNom" placeholder="Nom du Film">';
mySelect('genre', 5);
mySelect('annee', 6);
echo '<input type="text" value="" name="rechercheRealisateur" placeholder="Realisateur">';
echo '<input type="text" value="" name="rechercheActeur" placeholder="Acteur">';
echo '<input type="text" value="" name="rechercheScenariste" placeholder="Scenariste">';
echo '<input type="number" value="" name="duree" placeholder="duree">';
echo '<input type="text" value="" name="utilisateur" placeholder="Utilisateur">';
mySelect('pays', 3);
echo '<input type="submit" value="recherchez">';
echo '</div>';
echo '</form>';

function mySelect($name, $taille)
{
	echo '<select name="'.$name.'">';
	echo '<option value="">'.$name.'</option>';
	for ($i=0; $i < $taille; $i++) {
		echo '<option value="">a voir</option>';
	}
	echo '</select>';
}
?>