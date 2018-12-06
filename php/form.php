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