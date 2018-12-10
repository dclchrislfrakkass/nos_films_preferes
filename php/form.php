<?php

//include des fichiers php requis pour certaines fonctions de ce fichier.
include 'formulaire.php';
include 'billet.php';
include 'fonctionUtiles.php';
include 'php/mini1.php';

//connection à ma base de donnée stocké dans ma variable bdd.
$bdd = new PDO('mysql:host=localhost;dbname=Films;charset=utf8', 'test', 'test00');

//creation de plusieurs tableaux pour stocker les valeurs des options select annee, genre, pays.
$selectGenre = array();
$selectAnnee = array();
$selectPays = array();

//appel de ma fonction arrayPush qui va chercher dans la base de donnée les informations à mettre dans le tableau vide créer au dessus (fonction déclarée dans fonctionUtiles.php).
$selectGenre = arrayPush($selectGenre, $bdd->query('SELECT nomGenre FROM genre ORDER BY nomGenre'));
$selectAnnee = arrayPush($selectAnnee, $bdd->query('SELECT DISTINCT anneeFilm FROM Film ORDER BY anneeFilm DESC'));
$selectPays = arrayPush($selectPays, $bdd->query('SELECT DISTINCT nomPays FROM Pays'));

//instanciation d'un objet formulaire, avec comme paramettre nos trois tableaux du dessus (pour les selects du formulaire).
$form = new formulaire($selectGenre, $selectPays, $selectAnnee);
//fonction d'initialisation du formulaire (formulaire.php).
$form->initForm();
//fonction d'affichage du formulaire dans l'html (formulaire.php).
$form->echoFormulaire();

//affichage du bouton trier en html.
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

echo '<div id="gallery">';

//creation d'un tableau vide.
$selectAffiche = array();
//fonction arrayPush de toutes les affiches des films de la base de donnée.
$selectAffiche = arrayPush($selectAffiche, $bdd->query('SELECT afficheFilm FROM Film'));
//instantiation d'un objet affiche avec comme paramettre notre tableau créer juste avant (php/mini1.php).
$affiche = new affiche($selectAffiche);
//creation de la div contenant les affiches.
$affiche->doDiv();
echo '</div>';
