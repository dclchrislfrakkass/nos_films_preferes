<?php


include 'formulaire.php';
include 'billet.php';

$form;

$form = new formulaire();

$form->initInput();
$form->echoFormulaire();

echo '<select name="trier" id="trier">';
echo '<option value="">trier par</option>';
echo '<option value="nomD">nom A-z</option>';
echo '<option value="anneeD">annee 20xx-19xx</option>';
echo '<option value="dureeD">duree 160-0</option>';
echo '<option value="noteD">note 5-0</option>';
echo '<option value="nomA">nom Z-a</option>';
echo '<option value="anneeA">annee 19xx-20xx</option>';
echo '<option value="dureeA">duree 0-160</option>';
echo '<option value="noteA">note 0-5</option>';
echo '</select>';

$myArray = array(array('Liam', 'Neeson'), array('Famke', 'Janssen'), array('Maggie', 'Grace'), array('Katie', 'Cassidy'), array('Jon', 'Gries'));

$billet = new billets('taken', '112', '2008', 'http://fr.web.img6.acsta.net/medias/nmedia/18/65/13/27/18899329.jpg', 'France', 'Thriller', 'Pierre', 'Morel', 'Luc', 'Besson', $myArray, "Ancien agent secret résidant à Los Angeles, Bryan Mills assiste par téléphone à l'enlèvement, en plein Paris, de sa fille Kim. Devant faire face à un groupe de mafieux albanais spécialisés dans la traite des femmes et le proxénétisme, il aura besoin de tout son talent d'ex-agent pour l'en extirper en moins de 96 heures.");
$billet->assemble();
echo $billet->billet;