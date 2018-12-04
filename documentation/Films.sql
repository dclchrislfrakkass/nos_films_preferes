-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mar 04 Décembre 2018 à 12:11
-- Version du serveur :  5.7.24-0ubuntu0.18.04.1
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Films`
--

-- --------------------------------------------------------

--
-- Structure de la table `definit`
--

CREATE TABLE `definit` (
  `idMotCle` int(11) NOT NULL,
  `idFilm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ecrit`
--

CREATE TABLE `ecrit` (
  `idFilm` int(11) NOT NULL,
  `idPersonne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `est`
--

CREATE TABLE `est` (
  `idFilm` int(11) NOT NULL,
  `idGenre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Film`
--

CREATE TABLE `Film` (
  `idFilm` int(11) NOT NULL,
  `resumeFilm` text CHARACTER SET utf8 COLLATE utf8_roman_ci,
  `anneeFilm` date DEFAULT NULL,
  `dureeFilm` int(11) DEFAULT NULL,
  `nomFilm` varchar(255) CHARACTER SET utf8 COLLATE utf8_roman_ci DEFAULT NULL,
  `afficheFilm` text CHARACTER SET utf8 COLLATE utf8_roman_ci,
  `lienBandeAnnonce` text CHARACTER SET utf8 COLLATE utf8_roman_ci,
  `idPersonne` int(11) DEFAULT NULL,
  `idUtilisateur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `idGenre` int(11) NOT NULL,
  `nomGenre` varchar(55) CHARACTER SET utf8 COLLATE utf8_roman_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `joue`
--

CREATE TABLE `joue` (
  `idPersonne` int(11) NOT NULL,
  `idFilm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `motCle`
--

CREATE TABLE `motCle` (
  `idMotCle` int(11) NOT NULL,
  `motMotCle` varchar(55) CHARACTER SET utf8 COLLATE utf8_roman_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Pays`
--

CREATE TABLE `Pays` (
  `idPays` int(11) NOT NULL,
  `nomPays` varchar(55) CHARACTER SET utf8 COLLATE utf8_roman_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `idPersonne` int(11) NOT NULL,
  `nomPersonne` varchar(55) CHARACTER SET utf8 COLLATE utf8_roman_ci DEFAULT NULL,
  `prenomPersonne_personne` varchar(55) CHARACTER SET utf8 COLLATE utf8_roman_ci DEFAULT NULL,
  `idPays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Utilisateur`
--

CREATE TABLE `Utilisateur` (
  `idUtilisateur` int(11) NOT NULL,
  `pseudoUtilisateur` varchar(55) CHARACTER SET utf8 COLLATE utf8_roman_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `vient_de`
--

CREATE TABLE `vient_de` (
  `idPays` int(11) NOT NULL,
  `idFilm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `definit`
--
ALTER TABLE `definit`
  ADD PRIMARY KEY (`idMotCle`,`idFilm`);

--
-- Index pour la table `ecrit`
--
ALTER TABLE `ecrit`
  ADD PRIMARY KEY (`idFilm`,`idPersonne`),
  ADD KEY `FK_ecrit_idPersonne` (`idPersonne`);

--
-- Index pour la table `est`
--
ALTER TABLE `est`
  ADD PRIMARY KEY (`idFilm`,`idGenre`),
  ADD KEY `FK_est_idGenre` (`idGenre`);

--
-- Index pour la table `Film`
--
ALTER TABLE `Film`
  ADD PRIMARY KEY (`idFilm`),
  ADD KEY `FK_Film_idPersonne` (`idPersonne`),
  ADD KEY `FK_Film_idUtilisateur` (`idUtilisateur`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`idGenre`);

--
-- Index pour la table `joue`
--
ALTER TABLE `joue`
  ADD PRIMARY KEY (`idPersonne`,`idFilm`),
  ADD KEY `FK_joue_idFilm` (`idFilm`);

--
-- Index pour la table `motCle`
--
ALTER TABLE `motCle`
  ADD PRIMARY KEY (`idMotCle`);

--
-- Index pour la table `Pays`
--
ALTER TABLE `Pays`
  ADD PRIMARY KEY (`idPays`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`idPersonne`),
  ADD KEY `FK_personne_idPays` (`idPays`);

--
-- Index pour la table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  ADD PRIMARY KEY (`idUtilisateur`);

--
-- Index pour la table `vient_de`
--
ALTER TABLE `vient_de`
  ADD PRIMARY KEY (`idPays`,`idFilm`),
  ADD KEY `FK_vient_de_idFilm` (`idFilm`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `definit`
--
ALTER TABLE `definit`
  MODIFY `idMotCle` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `ecrit`
--
ALTER TABLE `ecrit`
  MODIFY `idFilm` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `est`
--
ALTER TABLE `est`
  MODIFY `idFilm` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Film`
--
ALTER TABLE `Film`
  MODIFY `idFilm` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `idGenre` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `joue`
--
ALTER TABLE `joue`
  MODIFY `idPersonne` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `motCle`
--
ALTER TABLE `motCle`
  MODIFY `idMotCle` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Pays`
--
ALTER TABLE `Pays`
  MODIFY `idPays` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `idPersonne` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  MODIFY `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `vient_de`
--
ALTER TABLE `vient_de`
  MODIFY `idPays` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `definit`
--
ALTER TABLE `definit`
  ADD CONSTRAINT `FK_definit_idMotCle` FOREIGN KEY (`idMotCle`) REFERENCES `motCle` (`idMotCle`);

--
-- Contraintes pour la table `ecrit`
--
ALTER TABLE `ecrit`
  ADD CONSTRAINT `FK_ecrit_idFilm` FOREIGN KEY (`idFilm`) REFERENCES `Film` (`idFilm`),
  ADD CONSTRAINT `FK_ecrit_idPersonne` FOREIGN KEY (`idPersonne`) REFERENCES `personne` (`idPersonne`);

--
-- Contraintes pour la table `est`
--
ALTER TABLE `est`
  ADD CONSTRAINT `FK_est_idFilm` FOREIGN KEY (`idFilm`) REFERENCES `Film` (`idFilm`),
  ADD CONSTRAINT `FK_est_idGenre` FOREIGN KEY (`idGenre`) REFERENCES `genre` (`idGenre`);

--
-- Contraintes pour la table `Film`
--
ALTER TABLE `Film`
  ADD CONSTRAINT `FK_Film_idPersonne` FOREIGN KEY (`idPersonne`) REFERENCES `personne` (`idPersonne`),
  ADD CONSTRAINT `FK_Film_idUtilisateur` FOREIGN KEY (`idUtilisateur`) REFERENCES `Utilisateur` (`idUtilisateur`);

--
-- Contraintes pour la table `joue`
--
ALTER TABLE `joue`
  ADD CONSTRAINT `FK_joue_idFilm` FOREIGN KEY (`idFilm`) REFERENCES `Film` (`idFilm`),
  ADD CONSTRAINT `FK_joue_idPersonne` FOREIGN KEY (`idPersonne`) REFERENCES `personne` (`idPersonne`);

--
-- Contraintes pour la table `personne`
--
ALTER TABLE `personne`
  ADD CONSTRAINT `FK_personne_idPays` FOREIGN KEY (`idPays`) REFERENCES `Pays` (`idPays`);

--
-- Contraintes pour la table `vient_de`
--
ALTER TABLE `vient_de`
  ADD CONSTRAINT `FK_vient_de_idFilm` FOREIGN KEY (`idFilm`) REFERENCES `Film` (`idFilm`),
  ADD CONSTRAINT `FK_vient_de_idPays` FOREIGN KEY (`idPays`) REFERENCES `Pays` (`idPays`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
