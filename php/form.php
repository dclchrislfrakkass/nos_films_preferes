<?php 

echo '<form action="#">';
echo '<input type="text" value="" name="rechercheMotsCle" placeholder="Recherche" id="recherche">';
echo '<div id="more">';
echo '<input type="text" value="" name="rechercheNom" placeholder="Nom du Film" class="formInp">';
mySelect('genre', 5);
mySelect('annee', 6);
echo '<input type="text" value="" name="rechercheRealisateur" placeholder="Realisateur" class="formInp">';
echo '<input type="text" value="" name="rechercheActeur" placeholder="Acteur" class="formInp">';
echo '<input type="text" value="" name="rechercheScenariste" placeholder="Scenariste" class="formInp">';
echo '<input type="number" value="" name="duree" placeholder="duree" class="formInp">';
echo '<input type="text" value="" name="utilisateur" placeholder="Utilisateur" class="formInp">';
mySelect('pays', 3);
echo '<input type="submit" value="recherchez" id="submit" class="formInp">';
echo '</div>';
echo '</form>';

echo '<select name="trier" id="trier">';
echo '<option value="">trier par</option>';
echo '<option value="nomD">nom A-z</option>';
echo '<option value="anneeD">annee 20xx-19xx</option>';
echo '<option value="dureeD">duree 160-0</option>';
echo '<option value="noteD">note 5-0</option>';
echo '<option value="nomA">nom Z-a</option>';
echo '<option value="anneeA">annee 19xx-20xx</option>';
echo '<option value="dureeA">duree 0-160</option>';;
echo '<option value="noteA">note 0-5</option>';
echo '</select>';

function mySelect($name, $taille)
{
	echo '<select name="'.$name.'" class="formInp">';
	echo '<option value="">'.$name.'</option>';
	for ($i=0; $i < $taille; $i++) {
		echo '<option value="">a voir</option>';
	}
	echo '</select>';
}
?>