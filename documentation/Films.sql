-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mar 11 Décembre 2018 à 11:42
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

--
-- Contenu de la table `definit`
--

INSERT INTO `definit` (`idMotCle`, `idFilm`) VALUES
(1, 1),
(2, 1),
(2, 3),
(3, 1),
(4, 2),
(4, 29),
(4, 33),
(5, 2),
(6, 2),
(6, 43),
(6, 44),
(7, 3),
(8, 3),
(9, 4),
(10, 4),
(11, 4),
(12, 5),
(13, 5),
(14, 5),
(15, 6),
(15, 32),
(16, 6),
(16, 13),
(17, 6),
(18, 7),
(18, 9),
(18, 28),
(18, 39),
(19, 7),
(20, 7),
(21, 8),
(22, 8),
(23, 8),
(25, 10),
(26, 10),
(26, 21),
(26, 31),
(27, 10),
(28, 11),
(29, 11),
(30, 11),
(31, 12),
(32, 12),
(33, 12),
(34, 13),
(36, 13),
(37, 9),
(37, 14),
(37, 28),
(37, 29),
(37, 36),
(38, 14),
(39, 14),
(40, 15),
(41, 15),
(42, 15),
(43, 16),
(44, 16),
(45, 16),
(46, 17),
(47, 17),
(48, 18),
(49, 19),
(50, 19),
(50, 23),
(51, 19),
(52, 20),
(53, 20),
(54, 20),
(55, 21),
(56, 21),
(57, 22),
(58, 22),
(59, 23),
(60, 23),
(62, 24),
(63, 24),
(64, 25),
(64, 26),
(64, 29),
(65, 25),
(66, 28),
(67, 30),
(68, 30),
(69, 30),
(70, 31),
(71, 31),
(73, 32),
(74, 32),
(74, 33),
(76, 33),
(77, 34),
(78, 34),
(79, 34),
(80, 35),
(81, 35),
(82, 35),
(83, 36),
(84, 36),
(85, 37),
(86, 37),
(87, 37),
(87, 42),
(88, 38),
(89, 38),
(90, 38),
(91, 39),
(92, 40),
(93, 40),
(94, 40),
(95, 41),
(96, 41),
(97, 41),
(98, 42),
(99, 42),
(101, 43),
(101, 44),
(102, 45),
(103, 9),
(104, 25),
(104, 26),
(104, 27),
(105, 26),
(106, 27),
(107, 27);

-- --------------------------------------------------------

--
-- Structure de la table `ecrit`
--

CREATE TABLE `ecrit` (
  `idFilm` int(11) NOT NULL,
  `idPersonne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ecrit`
--

INSERT INTO `ecrit` (`idFilm`, `idPersonne`) VALUES
(1, 1),
(4, 4),
(6, 11),
(8, 11),
(7, 12),
(11, 18),
(13, 22),
(16, 28),
(18, 32),
(22, 40),
(27, 44),
(25, 45),
(26, 47),
(28, 50),
(37, 67),
(38, 69),
(41, 74),
(45, 79),
(2, 96),
(3, 97),
(5, 98),
(9, 99),
(10, 100),
(12, 101),
(14, 102),
(15, 103),
(17, 104),
(19, 105),
(20, 106),
(21, 107),
(23, 108),
(24, 109),
(29, 110),
(30, 111),
(31, 112),
(32, 113),
(33, 114),
(34, 115),
(35, 116),
(36, 117),
(39, 118),
(40, 119),
(42, 120),
(43, 121),
(44, 122);

-- --------------------------------------------------------

--
-- Structure de la table `est`
--

CREATE TABLE `est` (
  `idFilm` int(11) NOT NULL,
  `idGenre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `est`
--

INSERT INTO `est` (`idFilm`, `idGenre`) VALUES
(1, 1),
(4, 3),
(18, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(2, 4),
(27, 4),
(3, 5),
(12, 5),
(29, 5),
(44, 5),
(5, 6),
(20, 6),
(40, 6),
(6, 7),
(7, 7),
(8, 7),
(9, 7),
(10, 7),
(13, 7),
(21, 7),
(22, 7),
(28, 7),
(30, 7),
(31, 7),
(32, 7),
(33, 7),
(45, 7),
(15, 8),
(35, 8),
(37, 8),
(39, 8),
(38, 10),
(19, 11),
(34, 12),
(36, 12),
(41, 12),
(11, 14),
(14, 14),
(16, 14),
(17, 14),
(42, 14),
(43, 14);

-- --------------------------------------------------------

--
-- Structure de la table `Film`
--

CREATE TABLE `Film` (
  `idFilm` int(11) NOT NULL,
  `resumeFilm` text CHARACTER SET utf8 COLLATE utf8_roman_ci,
  `anneeFilm` year(4) DEFAULT NULL,
  `dureeFilm` int(11) DEFAULT NULL,
  `nomFilm` varchar(255) CHARACTER SET utf8 COLLATE utf8_roman_ci DEFAULT NULL,
  `afficheFilm` text CHARACTER SET utf8 COLLATE utf8_roman_ci,
  `lienBandeAnnonce` text CHARACTER SET utf8 COLLATE utf8_roman_ci,
  `idPersonne` int(11) DEFAULT NULL,
  `idUtilisateur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Film`
--

INSERT INTO `Film` (`idFilm`, `resumeFilm`, `anneeFilm`, `dureeFilm`, `nomFilm`, `afficheFilm`, `lienBandeAnnonce`, `idPersonne`, `idUtilisateur`) VALUES
(1, 'Un 31 octobre, à Haddonfield, Illinois, le soir de la fête des masques de Halloween... La vie du jeune Michael Myers, 10 ans, bascule.\r\nTroublé par des pulsions morbides, moqué par ses camarades d\'école parce que sa mère est strip-teaseuse, harcelé par son beau-père, tourmenté par les premiers émois sexuels de sa soeur aînée, il revêt un masque en latex et, dans un accès de folie, assassine la moitié de sa famille au couteau de cuisine.\r\nA la suite de cette nuit de cauchemar, il est pris en charge par le Docteur Sam Loomis, un brillant pédopsychiatre, mais tue sauvagement une infirmière, précipitant le suicide de sa mère, désespérée.\r\nUn 31 octobre, 17 ans plus tard. Toujours dissimulé derrière un masque et enfermé dans son mutisme, Michael s\'échappe de la prison psychiatrique où il a grandi et recommence à semer des cadavres sur sa route.\r\nConvaincu qu\'il est une incarnation du mal à l\'état pur, le Docteur Loomis part sur sa piste. Celle-ci mène directement à Haddonfield, là où se trouve toujours la petite soeur de Michael, Laurie, seul membre de sa famille encore en vie.', 2007, 106, 'Halloween', 'https://movieposters2.com/images/1397222-b.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=18746487&cfilm=111968.html', NULL, 1),
(2, 'Quand la Seconde Guerre mondiale a éclaté, Desmond, un jeune américain, s’est retrouvé confronté à un dilemme : comme n’importe lequel de ses compatriotes, il voulait servir son pays, mais la violence était incompatible avec ses croyances et ses principes moraux. Il s’opposait ne serait-ce qu’à tenir une arme et refusait d’autant plus de tuer.\r\n\r\nIl s’engagea tout de même dans l’infanterie comme médecin. Son refus d’infléchir ses convictions lui valut d’être rudement mené par ses camarades et sa hiérarchie, mais c’est armé de sa seule foi qu’il est entré dans l’enfer de la guerre pour en devenir l’un des plus grands héros. Lors de la bataille d’Okinawa sur l’imprenable falaise de Maeda, il a réussi à sauver des dizaines de vies seul sous le feu de l’ennemi, ramenant en sureté, du champ de bataille, un à un les soldats blessés.', 2016, 140, 'Tu ne tueras point', 'http://t1.gstatic.com/images?q=tbn:ANd9GcTWpqoWNhE8SUXpFH_lRNI6duy73YuBiiDtkcbfvOE9b0MTJCrx', 'http://www.allocine.fr/video/player_gen_cmedia=19564298&cfilm=208104.html', NULL, 1),
(3, 'Depuis la mort de sa femme bien-aimée, John Wick passe ses journées à retaper sa Ford Mustang de 1969, avec pour seule compagnie sa chienne Daisy. Il mène une vie sans histoire, jusqu’à ce qu’un malfrat sadique nommé Iosef Tarasof remarque sa voiture. John refuse de la lui vendre. Iosef n’acceptant pas qu’on lui résiste, s’introduit chez John avec deux complices pour voler la Mustang, et tuer sauvagement Daisy…\r\nJohn remonte la piste de Iosef jusqu’à New York. Un ancien contact, Aurelio, lui apprend que le malfrat est le fils unique d’un grand patron de la pègre, Viggo Tarasof. La rumeur se répand rapidement dans le milieu : le légendaire tueur cherche Iosef. Viggo met à prix la tête de John : quiconque l’abattra touchera une énorme récompense. John a désormais tous les assassins de New York aux trousses.', 2014, 101, 'John Wick', 'https://vignette.wikia.nocookie.net/john-wick8561/images/2/29/John_Wick_Poster_003.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=19548076&cfilm=221387.html', NULL, 1),
(4, 'Une veuve mono-parentale hérite de la garde de son fils, un adolescent TDAH impulsif et violent. Au coeur de leurs emportements et difficultés, ils tentent de joindre les deux bouts, notamment grâce à l’aide inattendue de l’énigmatique voisine d’en face, Kyla. Tous les trois, ils retrouvent une forme d’équilibre et, bientôt, d’espoir.', 2014, 140, 'Mommy', 'https://m.media-amazon.com/images/M/MV5BMGI3YWFmNDQtNjc0Ny00ZDBjLThlNjYtZTc1ZTk5MzU2YTVjXkEyXkFqcGdeQXVyNzA4ODc3ODU@._V1_.jpg', 'https://youtu.be/8X1fB4ylVuk', NULL, 2),
(5, 'Un jeune homme solitaire, \"The Driver\", conduit le jour à Hollywood pour le cinéma en tant que cascadeur et la nuit pour des truands. Ultra professionnel et peu bavard, il a son propre code de conduite. Jamais il n’a pris part aux crimes de ses employeurs autrement qu’en conduisant - et au volant, il est le meilleur !\r\nShannon, le manager qui lui décroche tous ses contrats, propose à Bernie Rose, un malfrat notoire, d’investir dans un véhicule pour que son poulain puisse affronter les circuits de stock-car professionnels. Celui-ci accepte mais impose son associé, Nino, dans le projet.\r\nC’est alors que la route du pilote croise celle d’Irene et de son jeune fils. Pour la première fois de sa vie, il n’est plus seul.\r\nLorsque le mari d’Irene sort de prison et se retrouve enrôlé de force dans un braquage pour s’acquitter d’une dette, il décide pourtant de lui venir en aide. L’expédition tourne mal…\r\nDoublé par ses commanditaires, et obsédé par les risques qui pèsent sur Irene, il n’a dès lors pas d’autre alternative que de les traquer un à un… ', 2011, 100, 'Drive', 'https://m.media-amazon.com/images/M/MV5BZjY5ZjQyMjMtMmEwOC00Nzc2LTllYTItMmU2MzJjNTg1NjY0XkEyXkFqcGdeQXVyNjQ1MTMzMDQ@._V1_SY1000_SX675_AL_.jpg', 'https://youtu.be/2TEG-j1O3hc', NULL, 2),
(6, 'Le film raconte les aventures d’un groupe d’explorateurs qui utilisent une faille récemment découverte dans l’espace-temps afin de repousser les limites humaines et partir à la conquête des distances astronomiques dans un voyage interstellaire. ', 2014, 169, 'Interstellar', 'https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SY1000_SX675_AL_.jpg', 'https://youtu.be/aZd-HmEp5Co', NULL, 2),
(7, 'Programmeur anonyme dans un service administratif le jour, Thomas Anderson devient Neo la nuit venue. Sous ce pseudonyme, il est l\'un des pirates les plus recherchés du cyber-espace. A cheval entre deux mondes, Neo est assailli par d\'étranges songes et des messages cryptés provenant d\'un certain Morpheus. Celui-ci l\'exhorte à aller au-delà des apparences et à trouver la réponse à la question qui hante constamment ses pensées : qu\'est-ce que la Matrice ? Nul ne le sait, et aucun homme n\'est encore parvenu à en percer les defenses. Mais Morpheus est persuadé que Neo est l\'Elu, le libérateur mythique de l\'humanité annoncé selon la prophétie. Ensemble, ils se lancent dans une lutte sans retour contre la Matrice et ses terribles agents..', 1999, 140, 'Matrix', 'http://fr.web.img6.acsta.net/r_1920_1080/medias/04/34/49/043449_af.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=19578569&cfilm=19776.html\r\n', NULL, 3),
(8, 'Dom Cobb est un voleur expérimenté – le meilleur qui soit dans l’art périlleux de l’extraction : sa spécialité consiste à s’approprier les secrets les plus précieux d’un individu, enfouis au plus profond de son subconscient, pendant qu’il rêve et que son esprit est particulièrement vulnérable. Très recherché pour ses talents dans l’univers trouble de l’espionnage industriel, Cobb est aussi devenu un fugitif traqué dans le monde entier qui a perdu tout ce qui lui est cher. Mais une ultime mission pourrait lui permettre de retrouver sa vie d’avant – à condition qu’il puisse accomplir l’impossible : l’inception. Au lieu de subtiliser un rêve, Cobb et son équipe doivent faire l’inverse : implanter une idée dans l’esprit d’un individu. S’ils y parviennent, il pourrait s’agir du crime parfait. Et pourtant, aussi méthodiques et doués soient-ils, rien n’aurait pu préparer Cobb et ses partenaires à un ennemi redoutable qui semble avoir systématiquement un coup d’avance sur eux. Un ennemi dont seul Cobb aurait pu soupçonner l’existence.', 2010, 135, 'Inception', 'http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg', 'http://fr.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/72/34/14/19476654.jpg', NULL, 3),
(9, '2045. Le monde est au bord du chaos. Les êtres humains se réfugient dans l\'OASIS, univers virtuel mis au point par le brillant et excentrique James Halliday. Avant de disparaître, celui-ci a décidé de léguer son immense fortune à quiconque découvrira l\'œuf de Pâques numérique qu\'il a pris soin de dissimuler dans l\'OASIS. L\'appât du gain provoque une compétition planétaire. Mais lorsqu\'un jeune garçon, Wade Watts, qui n\'a pourtant pas le profil d\'un héros, décide de participer à la chasse au trésor, il est plongé dans un monde parallèle à la fois mystérieux et inquiétant…\r\n', 2018, 148, 'Ready Player One', 'http://fr.web.img4.acsta.net/r_1920_1080/pictures/18/02/14/09/15/3437390.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=19577213&cfilm=229831.html\r\n', NULL, 3),
(10, 'Dans un futur proche, le Major est unique en son genre: humaine sauvée d’un terrible accident, son corps aux capacités cybernétiques lui permet de lutter contre les plus dangereux criminels. Face à une menace d’un nouveau genre qui permet de pirater et de contrôler les esprits, le Major est la seule à pouvoir la combattre. Alors qu’elle s’apprête à affronter ce nouvel ennemi, elle découvre qu’on lui a menti : sa vie n’a pas été sauvée, on la lui a volée. Rien ne l’arrêtera pour comprendre son passé, trouver les responsables et les empêcher de recommencer avec d’autres. \r\n', 2017, 107, 'Ghost in the shell', 'http://fr.web.img4.acsta.net/r_1920_1080/pictures/17/03/01/17/45/314818.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=19569556&cfilm=226739.html\r\n', NULL, 4),
(11, 'A l\'aide d\'une manipulation d\'image aussi géniale que machiavélique, les vampires ont réussi à piéger Blade : sur un document vidéo, on le découvre en train de massacrer... un humain. Pour le FBI, Blade devient l\'ennemi à capturer. Pourchassé par les hommes et condamné par les vampires, Blade va devoir se battre sur tous les fronts. Les vampires, qui multiplient les alliances secrètes avec des humains renégats, sont sur le point d\'utiliser son propre ADN pour ressusciter celui qui, il y a bien longtemps, fut le premier et le plus puissant d\'entre eux. Entre course contre la montre et les pièges qui se multiplient, l\'affrontement est total. Cette fois, Blade aussi va devoir montrer les crocs... \r\n', 2004, 106, 'Blade Trinity', 'http://fr.web.img3.acsta.net/r_1920_1080/pictures/17/01/31/14/48/285473.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=18369122&cfilm=46864.html\r\n', NULL, 4),
(12, 'Alice a survécu à l\'effroyable cauchemar qui a dévasté le complexe scientifique ultrasecret d\'Umbrella Corporation, mais elle n\'est pas la seule à en être ressortie... Un virus mortel s\'est abattu sur la ville de Raccoon et rien ne semble pouvoir lui échapper. Avec un groupe de survivants, Alice, dont le métabolisme a mystérieusement été modifié, doit affronter le pire. Certes, elle a gagné de nouveaux pouvoirs, elle est plus puissante, ses sens sont surmultipliés et sa dextérité est hallucinante, mais ça ne sera pas forcément suffisant... Elle est rejointe dans son combat par Jill Valentine, un ancien membre des forces spéciales d\'Umbrella. Ensemble, elles vont tenter de résoudre les énigmes et faire face à une force maléfique, un ennemi absolu lancé sur leurs traces. Son nom ? Némésis. Son but ? Eliminer toute vie. Cette fois, s\'échapper ne suffira pas. Il va falloir affronter...\r\n', 2004, 100, 'Resident Evil : Apocalypse\r\n', 'http://fr.web.img6.acsta.net/r_1920_1080/medias/nmedia/18/35/14/37/18388458.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=19454632&cfilm=51386.html\r\n', NULL, 4),
(13, 'La Guerre des Clones fait rage. Une franche hostilité oppose désormais le Chancelier Palpatine au Conseil Jedi. Anakin Skywalker, jeune Chevalier Jedi pris entre deux feux, hésite sur la conduite à tenir. Séduit par la promesse d\'un pouvoir sans précédent, tenté par le côté obscur de la Force, il prête allégeance au maléfique Darth Sidious et devient Dark Vador.\r\nLes Seigneurs Sith s\'unissent alors pour préparer leur revanche, qui commence par l\'extermination des Jedi....\r\n', 2005, 140, 'Star Wars Episode III La Revanche des Sith', 'https://media.senscritique.com/media/000009575628/source_big/Star_Wars_Episode_III_La_Revanche_des_Sith.jpg', 'https://youtu.be/t1qtvKYwTV0', NULL, 5),
(14, ' Lors d\'une partie de Jumanji, un jeu très ancien, le jeune Alan est propulsé sous les yeux de son amie d\'enfance, Sarah, dans un étrange pays. Il ne pourra s\'en échapper que lorsqu\'un autre joueur reprendra la partie et le libèrera sur un coup de dés. Vingt-six ans plus tard, il retrouve le monde réel par le coup de dés de deux autres jeunes joueurs.\r\n', 1995, 104, 'Jumanji', 'https://media.senscritique.com/media/000016456041/source_big/Jumanji.jpg', 'https://www.youtube.com/watch?v=9P6TZcCk0MM', NULL, 5),
(15, 'Sur les Hautes terres d’Afrique règne un lion tout-puissant, le roi Mufasa, que tous les hôtes de la jungle respectent et admirent pour sa sagesse et sa générosité. Son jeune fils Simba sait qu’un jour il lui succèdera, conformément aux lois universelles du cycle de la vie, mais il est loin de deviner les épreuves et les sacrifices que lui imposera l’exercice du pouvoir. Pensant être responsable de la mort de son pere, Simba quitte le royaume et se  retrouve pour la première fois seul et démuni face à un monde hostile. C’est alors que le destin place sur sa route un curieux tandem d’amis... \r\n', 1994, 89, 'Le Roi Lion', 'https://disney-planet.fr/wp-content/uploads/2014/08/affiche-roi-lion-01.jpg', 'https://youtu.be/-KfIYw-D4Iw', NULL, 5),
(16, 'Paul Edgecomb, pensionnaire centenaire d\'une maison de retraite, est hanté par ses souvenirs. Gardien-chef du pénitencier de Cold Mountain en 1935, il était chargé de veiller au bon déroulement des exécutions capitales en s’efforçant d\'adoucir les derniers moments des condamnés. \r\n', 2000, 189, 'La ligne verte', 'http://fr.web.img5.acsta.net/c_215_290/medias/nmedia/18/66/15/78/19254683.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=18650717&cfilm=22779.html', NULL, 6),
(17, 'En 1799, dans une bourgade de La Nouvelle-Angleterre, plusieurs cadavres sont successivement retrouvés décapités. Les têtes ont disparu. Terrifiés, les habitants sont persuadés que ces meurtres sont commis par un étrange et furieux cavalier, dont la rumeur prétend qu\'il est lui-même sans tête\r\n', 1999, 105, 'Sleepy Hollow', 'http://fr.web.img6.acsta.net/c_215_290/medias/nmedia/18/74/38/21/19255611.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=19449367&cfilm=22345.html', NULL, 6),
(18, 'Après une scène de ménage Jasmin atterrit au Bagdad Café, motel minable entre Disneyland et Las Vegas. La patronne, Brenda, Noire tapageuse et insatisfaite, règne sur tout un petit monde de routiers et de personnages énigmatiques\r\n', 1987, 115, 'Bagdad Café', 'http://fr.web.img2.acsta.net/c_215_290/pictures/18/07/05/09/41/1702585.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=19405598&cfilm=3531.html', NULL, 6),
(19, 'En 1971, dans le T. C. Williams High School d\'Alexandria en Virginie, des étudiants noirs sont intégrés dans l\'établissement scolaire jusqu\'alors réservé aux blancs. Cette décision a pour effet d’exacerber les tensions raciales déjà existantes dans la communauté, surtout lorsque l’entraîneur blanc de l’équipe de football américain, Bill Yoast, comprend qu’il devra œuvrer sous la supervision de Herman Boone, un afro-américain. Les deux hommes apprennent pourtant à se respecter, malgré leurs tempéraments fort différents. Ils font de même pour les joueurs de l\'équipe et leurs inculquent des valeurs qui font d’eux des champions respectés\r\n', 2000, 113, 'Le Plus Beau des combats', 'http://fr.web.img3.acsta.net/c_215_290/medias/nmedia/00/02/23/77/69198039_af.jpg', 'https://youtu.be/9zrSalMKvv4', NULL, 7),
(20, 'Ancien agent secret résidant à Los Angeles, Bryan Mills assiste par téléphone à l\'enlèvement, en plein Paris, de sa fille Kim. Devant faire face à un groupe de mafieux albanais spécialisés dans la traite des femmes et le proxénétisme, il aura besoin de tout son talent d\'ex-agent pour l\'en extirper en moins de 96 heures.\r\n', 2008, 93, 'Taken', 'http://fr.web.img6.acsta.net/medias/nmedia/18/65/13/27/18899329.jpg', 'https://youtu.be/sBychzk2EJQ', NULL, 7),
(21, 'L\'engin spatial américain Icare, parti en 19721 avec à son bord 4 membres d\'équipage, traverse l\'espace à une vitesse proche de la vitesse de la lumière. Au terme d\'un voyage de 18 mois, le vaisseau s\'écrase le 25 novembre 39782 sur une mystérieuse planète, au coeur d\'une région désertique. Les 3 survivants du crash, le capitaine George Taylor et les lieutenants John Landon et Thomas Dodge, découvrent très vite que ce monde est peuplé d\'hommes primitifs dominés par une race de singes évolués.\r\n', 1968, 112, 'La planete des singes', 'https://p6.storage.canalblog.com/65/06/1349409/105163859_o.jpg', 'https://youtu.be/EPoPewWdM24', NULL, 7),
(22, 'Malgré sa paralysie, Jake Sully, un ancien marine immobilisé dans un fauteuil roulant, est resté un combattant au plus profond de son être. Il est recruté pour se rendre à des années-lumière de la Terre, sur Pandora, où de puissants groupes industriels exploitent un minerai rarissime destiné à résoudre la crise énergétique sur Terre.\r\n', 2009, 162, 'Avatar', 'http://fr.web.img4.acsta.net/r_1280_720/medias/nmedia/18/64/43/65/19211318.jpg', 'https://www.youtube.com/watch?v=O1CzgULNRGs', NULL, 8),
(23, 'Ce film tente d\'expliquer l\'origine du racisme et de l\'extrémisme aux États-Unis. Il raconte l\'histoire de Derek qui, voulant venger la mort de son père, abattu par un dealer noir, a épousé les thèses racistes d\'un groupuscule de militants d\'extrême droite et s\'est mis au service de son leader, brutal théoricien prônant la suprématie de la race blanche. Ces théories le mèneront à commettre un double meurtre entraînant son jeune frère, Danny, dans la spirale de la haine.\r\n', 1999, 119, 'American history x', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnLq2eN38vdMlupzRomBtc4k_yVo3K4R2wjgs61gynOzuW7xma', 'https://www.youtube.com/watch?v=wgRbmDfzBuU', NULL, 8),
(24, 'Au fil des différents interlocuteurs qui viennent s\'asseoir tour à tour à côté de lui sur un banc, Forrest Gump raconte la fabuleuse histoire de sa vie. Sa vie est à l\'image d\'une plume qui se laisse porter par le vent, tout comme Forrest se laisse porter par les événements qu\'il traverse dans l\'Amérique de la seconde moitié du 20e siècle.\r\n', 1994, 142, 'Forrest Gump', 'http://www.linternaute.com/cinema/image_cache/objdbfilm/image/540/107483.jpg', 'https://www.youtube.com/watch?v=q2AP7dAeVhw', NULL, 8),
(25, 'Un homme, un téléphone portable, plusieurs millions d\'euros dérobés, une quarantaine détablissements bernés. Drogué à l\'adrénaline que ses arnaques lui procurent, Gilbert Perez manipule et trompe ses victimes avec brio en se faisant passer tour à tour pour leur président puis un agent de la DGSE\r\n', 2015, 138, 'JE COMPTE SUR VOUS', 'http://t2.gstatic.com/images?q=tbn:ANd9GcSwonOLwOzr0oVLonsXvm24qbLQAoq9zeXxbwjsozcGGgCldPfd', 'https://www.youtube.com/watch?v=bjJpIfUdReQ', NULL, 9),
(26, 'Edward Joseph Snowden réaliser son rêve quand il rejoint les équipes de la CIA puis de la NSA. Il découvre alors au cœur des Services de Renseignements américains l’ampleur insoupçonnée de la cyber-surveillance. Violant la Constitution, soutenue par de grandes entreprises, la NSA collecte des montagnes de données et piste toutes les formes de télécommunications à un niveau planétaire. Choqué par cette intrusion systématique dans nos vies privées, Snowden décide de rassembler des preuves et de tout divulguer. Devenu lanceur d’alerte, il sacrifiera sa liberté et sa vie privée.\r\n', 2016, 214, 'SNOWDEN', 'http://t0.gstatic.com/images?q=tbn:ANd9GcTkAolD50YnGvMb_-Ka2mYmrqdjTK4jOFHLfnz8WSfUGsJtp2ID', 'https://www.youtube.com/watch?v=k78GKTvBwyE', NULL, 9),
(27, 'Biopic sur le funambule français Philippe Petit, célèbre pour avoir joint et traveser en 1974 les deux tours du World Trade Center sur un fil, suspendu au-dessus du vide.\r\n', 2015, 203, 'THE WALK', 'http://t2.gstatic.com/images?q=tbn:ANd9GcRpIG1G2zVhhZrO1rDgL4nXKc6f_wN5HtyXw_IhBsWqorDZ_xvC', 'https://www.youtube.com/watch?v=4kERfpAQGCs', NULL, 9),
(28, 'Flynn, un concepteur de jeux vidéo qui s\'est vu voler ses jeux par son ex-employeur, veut à tout prix récupérer une preuve qui lui ferait valoir ses droits. Avec l\'aide d\'Alan et de Lora, deux de ses anciens collègues, il infiltre le MCP (Maître Contrôleur Principal), un ordinateur avide de pouvoir à l\'intelligence artificielle surdéveloppée. Quand ce dernier découvre que Flynn veut s\'infiltrer dans ses circuits, il le téléporte dans un jeu vidéo. Pour s\'évader, Flynn devra compter sur l\'aide de Tron, un programme indépendant inventé par Alan.\r\n', 1982, 96, 'TRON', 'http://fr.web.img3.acsta.net/r_1920_1080/medias/nmedia/18/68/46/16/19028526.jpg', 'https://www.youtube.com/watch?v=6JTUQf7dZcQ', NULL, 10),
(29, 'Un jeune passionné d\'informatique, voulant pirater des jeux vidéos, se branche sur un ordinateur secret de l\'armée américaine. Croyant être aux commandes d\'un jeu virtuel, le garçon déclenche sans le savoir le compte à rebours d\'une troisième guerre mondiale.\r\n', 1983, 111, 'Wargame', 'http://fr.web.img6.acsta.net/r_1920_1080/pictures/18/11/27/09/03/3375141.jpg', 'https://www.youtube.com/watch?v=xogbyv108kI', NULL, 10),
(30, 'Sale journée pour le Terrien Arthur Dent. Sa maison est sur le point d\'être rasée par un bulldozer, il découvre que son meilleur ami, Ford Prefect, est un extraterrestre et pour couronner le tout, la Terre va être pulvérisée dans quelques minutes pour faire de la place à une voie express hyperspatiale.', 2005, 108, 'H2G2 : Le guide du voyageur galactic', 'http://fr.web.img4.acsta.net/r_1920_1080/medias/nmedia/18/35/53/34/18431166.jpg', 'https://www.youtube.com/watch?v=8TQIvdFl4aU', NULL, 10),
(31, 'Arthur a une chance de survivre, mais il doit pour cela se faire prendre en stop par un vaisseau spatial, avec l\'aide de Ford. Sa plus grande aventure va commencer au moment où notre propre monde disparaît... Arthur se jette dans l\'inconnu et entame un délirant périple au cours duquel il va découvrir la véritable nature de l\'univers.\r\n', 1982, 120, 'Blade runner', 'http://fr.web.img6.acsta.net/r_1920_1080/medias/nmedia/18/66/01/66/20217903.jpg', 'https://www.youtube.com/watch?v=gCcx85zbxz4', NULL, 11),
(32, 'En 2122, le cargo interstellaire Nostromo, de retour vers la Terre avec son chargement de minerai à la fin de sa mission de raffinerie, capte un signal sonore émis depuis un planétoïde isolé. L\'ordinateur de bord du vaisseau — appelé « Maman » — interrompt alors le trajet du Nostromo et réveille l\'équipage maintenu en biostase (en sommeil artificiel).\r\n', 1979, 116, 'Alien', 'http://fr.web.img3.acsta.net/r_1920_1080/medias/nmedia/18/35/14/60/18363837.jpg', 'https://www.youtube.com/watch?v=LjLamj-b0I8', NULL, 11),
(33, 'En 1987, un vaisseau spatial extraterrestre pénètre dans l\'atmosphère terrestre et largue une nacelle sur l\'Amérique centrale. Quelque temps après, le major Alan « Dutch » Schaefer (Arnold Schwarzenegger) arrive au Guatemala avec son équipe d\'élite pour une opération visant à retrouver un ministre du cabinet présidentiel perdu avec son second à cause des forces de guérilla en Val Verde (région de fiction).\r\n', 1987, 97, 'Predator', 'https://www.scifi-movies.com/images/contenu/data/0001871/affiche-predator-1987-2.jpg', 'https://www.youtube.com/watch?v=9u8vZwvP57Y', NULL, 11),
(34, 'C\'est l\'histoire d\'une rencontre entre une adolescente, Mika, et un cheval nommé Whisper. Magnifique, impétueuse et réputée indomptable, la bête se laisse cependant apprivoiser par sa jeune amie. Mais, alors que Whisper est destiné à l\'abattoir, Mika va devoir prouver qu\'il ne mérite pas ce destin en remportant un tournoi d\'équitation.\r\n', 2013, 105, 'whisper, libre comme le vent.', 'http://fr.web.img6.acsta.net/pictures/15/10/08/09/24/320924.jpg', 'https://www.youtube.com/watch?v=_4skvfN28Eg', NULL, 12),
(35, 'L\'histoire d\'Harold, jeune Viking peu à son aise dans sa tribu où combattre les dragons est le sport national. Sa vie va être bouleversée par sa rencontre avec un dragon qui va peu à peu amener Harold et les siens à voir le monde d\'un point de vue totalement différent.\r\n', 2010, 98, 'Dragons', 'http://fr.web.img4.acsta.net/medias/nmedia/18/73/01/74/19343191.jpg', 'https://www.youtube.com/watch?v=rsj6Iv2jE1I', NULL, 12),
(36, 'Un prince rebelle est contraint d\'unir ses forces avec une mystérieuse princesse pour affronter ensemble les forces du mal et protéger une dague antique capable de libérer les Sables du temps, un don de dieu qui peut inverser le cours du temps et permettre à son possesseur de régner en maître absolu sur le monde.\r\n', 2010, 126, 'Prince of Persia : les sables du temps', 'https://images-na.ssl-images-amazon.com/images/I/81DgnUVX1eL._SY550_.jpg', 'https://www.youtube.com/watch?v=KRDeYRawLK4', NULL, 12),
(37, 'Chihiro, dix ans, a tout d\'une petite fille capricieuse. Elle s\'apprête à emménager avec ses parents dans une nouvelle demeure.\r\nSur la route, la petite famille se retrouve face à un immense bâtiment rouge au centre duquel s\'ouvre un long tunnel. De l\'autre côté du passage se dresse une ville fantôme. Les parents découvrent dans un restaurant désert de nombreux mets succulents et ne tardent pas à se jeter dessus. Ils se retrouvent alors transformés en cochons.\r\nPrise de panique, Chihiro s\'enfuit et se dématérialise progressivement. L\'énigmatique Haku se charge de lui expliquer le fonctionnement de l\'univers dans lequel elle vient de pénétrer. Pour sauver ses parents, la fillette va devoir faire face à la terrible sorcière Yubaba, qui arbore les traits d\'une harpie méphistophélique.\r\n', 2002, 125, 'Le Voyage de Chihiro', 'http://images.affiches-et-posters.com//albums/3/7390/AF7303.JPG', 'http://www.allocine.fr/video/player_gen_cmedia=18670499&cfilm=37485.html', NULL, 13),
(38, 'Carl vient de se faire renvoyer du lycée, et sa mère a décidé qu\'il irait réfléchir à son avenir auprès de son parrain, Quentin. Il se trouve que celui-ci est le patron de Radio Rock, une radio pirate qui émet depuis un bateau en mer du Nord peuplé d\'un équipage éclectique de DJ\'s rock and roll. À leur tête se trouve le Comte, un Américain exubérant, véritable dieu des ondes en synergie totale avec la musique. A ses côtés, ses fidèles animateurs : Dave, ironique, intelligent et d\'un humour acéré ; l\'adorable Simon, qui cherche l\'amour ; l\'énigmatique Midnight Mark, séduisant et silencieux ; Wee Small Hours Bob, le DJ des petites heures du matin, accro à la musique folk et à la drogue, Thick Kevin, qui possède l\'intelligence la plus microscopique du monde ; On-the-Hour John, le chroniqueur des actualités, et Angus \"The Nut\" Nutsford, qui est sans doute l\'homme le plus agaçant d\'Angleterre...\r\n', 2009, 135, 'Good Morning England', 'http://fr.web.img6.acsta.net/medias/nmedia/18/67/99/79/19064391.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=18874442&cfilm=134316.html', NULL, 13),
(39, 'Bienvenue dans le monde de OZ : la plateforme communautaire d\'internet. En se connectant depuis un ordinateur, une télévision ou un téléphone, des millions d\'avatars alimentent le plus grand réseau social en ligne pour une nouvelle vie, hors des limites de la réalité.\r\nKenji, un lycéen timide et surdoué en mathématiques, effectue un job d\'été au service de la maintenance d\'OZ. A sa grande surprise, la jolie Natuski, la fille de ses rêves, lui propose de l\'accompagner à Nagano, sa ville natale. Il se retrouve alors embarqué pour la fête traditionnelle du clan Jinnouchi. Il comprend bientôt que Natsuki ne l\'a invité que pour jouer le rôle du \" futur fiancé \" et faire bonne figure vis-à-vis de sa vénérable grand mère. Au même moment, un virus attaque OZ, déclenchant catastrophe sur catastrophe au niveau planétaire.\r\nAvec l\'aide de Kenji, tout le clan Jinnouchi se lance alors dans une véritable croisade familiale pour sauver le monde virtuel et ses habitants...\r\n', 2009, 114, 'Summer War', 'http://fr.web.img6.acsta.net/medias/nmedia/18/74/07/75/19434023.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=18951740&cfilm=177581.html', NULL, 13),
(40, 'En 1954, le marshal Teddy Daniels et son coéquipier Chuck Aule sont envoyés enquêter sur l\'île de Shutter Island, dans un hôpital psychiatrique où sont internés de dangereux criminels. L\'une des patientes, Rachel Solando, a inexplicablement disparu. Comment la meurtrière a-t-elle pu sortir d\'une cellule fermée de l\'extérieur ? Le seul indice retrouvé dans la pièce est une feuille de papier sur laquelle on peut lire une suite de chiffres et de lettres sans signification apparente. Oeuvre cohérente d\'une malade, ou cryptogramme ?\r\n', 2010, 129, 'Shutter island', 'http://fr.web.img2.acsta.net/medias/nmedia/18/69/96/84/19145133.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=18916868&cfilm=132039.html', NULL, 14),
(41, 'Les armées de Sauron ont attaqué Minas Tirith, la capitale de Gondor. Jamais ce royaume autrefois puissant n\'a eu autant besoin de son roi. Mais Aragorn trouvera-t-il en lui la volonté d\'accomplir sa destinée ?\r\nTandis que Gandalf s\'efforce de soutenir les forces brisées de Gondor, Théoden exhorte les guerriers de Rohan à se joindre au combat. Mais malgré leur courage et leur loyauté, les forces des Hommes ne sont pas de taille à lutter contre les innombrables légions d\'ennemis qui s\'abattent sur le royaume...\r\nChaque victoire se paye d\'immenses sacrifices. Malgré ses pertes, la Communauté se jette dans la bataille pour la vie, ses membres faisant tout pour détourner l\'attention de Sauron afin de donner à Frodon une chance d\'accomplir sa quête.\r\nVoyageant à travers les terres ennemies, ce dernier doit se reposer sur Sam et Gollum, tandis que l\'Anneau continue de le tenter...\r\n', 2003, 200, 'Le seigneur des anneaux : Le retour du roi', 'https://media.senscritique.com/media/000007087660/source_big/Le_Seigneur_des_Anneaux_Le_Retour_du_roi.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=19448603&cfilm=39187.html', NULL, 14),
(42, 'L\'étau démoniaque de Voldemort se resserre sur l\'univers des Moldus et le monde de la sorcellerie. Poudlard a cessé d\'être un havre de paix, le danger rode au coeur du château... Mais Dumbledore est plus décidé que jamais à préparer Harry à son combat final, désormais imminent. Ensemble, le vieux maître et le jeune sorcier vont tenter de percer à jour les défenses de Voldemort. Pour les aider dans cette délicate entreprise, Dumbledore va relancer et manipuler son ancien collègue, le Professeur Horace Slughorn, qu\'il croit en possession d\'informations vitales sur le jeune Voldemort. Mais un autre \"mal\" hante cette année les étudiants : le démon de l\'adolescence ! Harry est de plus en plus attiré par Ginny, qui ne laisse pas indifférent son rival, Dean Thomas ; Lavande Brown a jeté son dévolu sur Ron, mais oublié le pouvoir \"magique\" des chocolats de Romilda Vane ; Hermione, rongée par la jalousie, a décidé de cacher ses sentiments, vaille que vaille. L\'amour est dans tous les coeurs - sauf un. Car un étudiant reste étrangement sourd à son appel. Dans l\'ombre, il poursuit avec acharnement un but aussi mystérieux qu\'inquiétant... jusqu\'à l\'inévitable tragédie qui bouleversera à jamais Poudlard...\r\n', 2009, 160, 'Harry Potter : Le prince de sang mêlé', 'http://tls3d.fr/images/Harry-Potter-6.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=18903516&cfilm=116305.html', NULL, 14),
(43, 'Doctor Strange suit l\'histoire du Docteur Stephen Strange, talentueux neurochirurgien qui, après un tragique accident de voiture, doit mettre son égo de côté et apprendre les secrets d\'un monde caché de mysticisme et de dimensions alternatives. Basé à New York, dans le quartier de Greenwich Village, Doctor Strange doit jouer les intermédiaires entre le monde réel et ce qui se trouve au-delà, en utlisant un vaste éventail d\'aptitudes métaphysiques et d\'artefacts pour protéger le Marvel Cinematic Universe.\r\n', 2016, 155, 'Doctor Strange', 'https://www.chroniquedisney.fr/imgFiliale/marvel/2016-doctor-strange-J1.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=19562026&cfilm=130533.html', NULL, 15),
(44, 'Les Avengers et leurs alliés devront être prêts à tout sacrifier pour neutraliser le redoutable Thanos avant que son attaque éclair ne conduise à la destruction complète de l’univers. \r\n', 2018, 149, 'Avengers Infinite war', 'http://fr.web.img4.acsta.net/r_1280_720/pictures/18/03/16/14/42/0611719.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=19577543&cfilm=218265.html', NULL, 15),
(45, 'Surgies des flots, des hordes de créatures monstrueuses venues d’ailleurs, les «Kaiju», ont déclenché une guerre qui a fait des millions de victimes et épuisé les ressources naturelles de l’humanité pendant des années. Pour les combattre, une arme d’un genre nouveau a été\r\nmise au point : de gigantesques robots, les «Jaegers», contrôlés simultanément par deux pilotes qui communiquent par télépathie grâce à une passerelle neuronale baptisée le «courant». Mais même les Jaegers semblent impuissants face aux redoutables Kaiju.\r\nAlors que la défaite paraît inéluctable, les forces armées qui protègent l’humanité n’ont d’autre choix que d’avoir recours à deux héros hors normes : un ancien pilote au bout du rouleau (Charlie Hunnam) et une jeune femme en cours d’entraînement (Rinko Kikuchi) qui font équipe pour manoeuvrer un Jaeger d’apparence obsolète. Ensemble, ils incarnent désormais le dernier rempart de l’humanité contre une apocalypse de plus en plus imminente…\r\n', 2013, 130, 'Pacific Rim', 'http://fr.web.img2.acsta.net/pictures/210/081/21008109_20130524124818714.jpg', 'http://www.allocine.fr/video/player_gen_cmedia=19536109&cfilm=191289.html', NULL, 15);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `idGenre` int(11) NOT NULL,
  `nomGenre` varchar(55) CHARACTER SET utf8 COLLATE utf8_roman_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `genre`
--

INSERT INTO `genre` (`idGenre`, `nomGenre`) VALUES
(1, 'épouvante'),
(2, 'horreur'),
(3, 'drame'),
(4, 'biopic'),
(5, 'action'),
(6, 'thriller'),
(7, 'science-fiction'),
(8, 'animation'),
(9, 'policier'),
(10, 'comédie'),
(11, 'historique'),
(12, 'aventure'),
(13, 'musical'),
(14, 'fantastique');

-- --------------------------------------------------------

--
-- Structure de la table `joue`
--

CREATE TABLE `joue` (
  `idPersonne` int(11) NOT NULL,
  `idFilm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `joue`
--

INSERT INTO `joue` (`idPersonne`, `idFilm`) VALUES
(5, 1),
(84, 1),
(85, 1),
(124, 1),
(125, 1),
(6, 2),
(41, 2),
(87, 2),
(126, 2),
(127, 2),
(7, 3),
(89, 3),
(128, 3),
(834, 3),
(871, 3),
(8, 4),
(90, 4),
(91, 4),
(835, 4),
(10, 5),
(92, 5),
(93, 5),
(836, 5),
(872, 5),
(94, 6),
(95, 6),
(873, 6),
(7, 7),
(87, 7),
(749, 7),
(794, 7),
(874, 7),
(13, 8),
(48, 8),
(750, 8),
(795, 8),
(839, 8),
(15, 9),
(751, 9),
(796, 9),
(840, 9),
(876, 9),
(17, 10),
(752, 10),
(797, 10),
(841, 10),
(877, 10),
(19, 11),
(753, 11),
(798, 11),
(842, 11),
(878, 11),
(21, 12),
(754, 12),
(799, 12),
(843, 12),
(879, 12),
(23, 13),
(755, 13),
(800, 13),
(844, 13),
(880, 13),
(25, 14),
(756, 14),
(801, 14),
(845, 14),
(27, 15),
(757, 15),
(802, 15),
(846, 15),
(881, 15),
(882, 15),
(29, 16),
(758, 16),
(803, 16),
(31, 17),
(759, 17),
(804, 17),
(33, 18),
(760, 18),
(805, 18),
(35, 19),
(761, 19),
(806, 19),
(847, 19),
(883, 19),
(37, 20),
(762, 20),
(807, 20),
(848, 20),
(884, 20),
(39, 21),
(763, 21),
(808, 21),
(849, 21),
(885, 21),
(41, 22),
(58, 22),
(809, 22),
(850, 22),
(886, 22),
(43, 23),
(765, 23),
(810, 23),
(851, 23),
(887, 23),
(29, 24),
(766, 24),
(811, 24),
(852, 24),
(888, 24),
(46, 25),
(767, 25),
(812, 25),
(853, 25),
(889, 25),
(48, 26),
(768, 26),
(813, 26),
(854, 26),
(890, 26),
(48, 27),
(769, 27),
(814, 27),
(855, 27),
(891, 27),
(51, 28),
(770, 28),
(815, 28),
(856, 28),
(892, 28),
(27, 29),
(771, 29),
(816, 29),
(857, 29),
(893, 29),
(55, 30),
(772, 30),
(817, 30),
(858, 30),
(894, 30),
(57, 31),
(773, 31),
(818, 31),
(859, 31),
(895, 31),
(58, 32),
(774, 32),
(819, 32),
(860, 32),
(896, 32),
(730, 33),
(775, 33),
(820, 33),
(861, 33),
(897, 33),
(62, 34),
(776, 34),
(821, 34),
(65, 35),
(777, 35),
(822, 35),
(66, 36),
(769, 36),
(778, 36),
(68, 37),
(779, 37),
(824, 37),
(70, 38),
(780, 38),
(825, 38),
(862, 38),
(898, 38),
(72, 39),
(781, 39),
(826, 39),
(863, 39),
(13, 40),
(769, 40),
(782, 40),
(864, 40),
(15, 41),
(783, 41),
(828, 41),
(865, 41),
(80, 42),
(784, 42),
(81, 43),
(785, 43),
(829, 43),
(866, 43),
(899, 43),
(82, 44),
(782, 44),
(786, 44),
(830, 44),
(900, 44),
(83, 45),
(787, 45),
(831, 45),
(868, 45),
(901, 45);

-- --------------------------------------------------------

--
-- Structure de la table `motCle`
--

CREATE TABLE `motCle` (
  `idMotCle` int(11) NOT NULL,
  `motMotCle` varchar(55) CHARACTER SET utf8 COLLATE utf8_roman_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `motCle`
--

INSERT INTO `motCle` (`idMotCle`, `motMotCle`) VALUES
(1, 'folie'),
(2, 'tueur'),
(3, 'slasher'),
(4, 'guerre'),
(5, 'foi'),
(6, 'héros'),
(7, 'mafia'),
(8, 'armes à feu'),
(9, 'TDAH'),
(10, 'mère-fils'),
(11, 'conflit'),
(12, 'voiture'),
(13, 'crime'),
(14, 'course'),
(15, 'espace'),
(16, 'galaxie'),
(17, 'espace-temps'),
(18, 'virtuel'),
(19, 'élu'),
(20, 'néo'),
(21, 'rêve'),
(22, 'toupie'),
(23, 'imaginaire'),
(24, 'oasis'),
(25, 'humanoide'),
(26, 'futur'),
(27, 'scarlett'),
(28, 'vampire'),
(29, 'épée'),
(30, 'pieu'),
(31, 'zombie'),
(32, 'apocalypse'),
(33, 'umbrella'),
(34, 'jedi'),
(36, 'droïd'),
(37, 'jeu'),
(38, 'jungle'),
(39, 'aventure'),
(40, 'roi'),
(41, 'lion'),
(42, 'hakuna matata'),
(43, 'vegan'),
(44, 'chaise électrique'),
(45, 'souris'),
(46, 'tête'),
(47, 'cavalier'),
(48, 'tyrol'),
(49, 'football'),
(50, 'racisme'),
(51, '70s'),
(52, 'paris'),
(53, 'enlèvement'),
(54, 'badass'),
(55, 'planète'),
(56, 'singe'),
(57, 'avatar'),
(58, 'navi'),
(59, 'american'),
(60, 'history'),
(61, 'racisme'),
(62, 'forrest'),
(63, 'gump'),
(64, 'pirate'),
(65, 'téléphonique'),
(66, 'ia'),
(67, '42'),
(68, 'livre'),
(69, 'marvin'),
(70, 'anticipation'),
(71, 'répliquant'),
(73, 'clandestin'),
(74, 'extraterrestre'),
(75, 'guerre'),
(76, 'chasse'),
(77, 'cheval'),
(78, 'liberté'),
(79, 'équitation'),
(80, 'dragon'),
(81, 'vicking'),
(82, 'amitié'),
(83, 'perse'),
(84, 'prince'),
(85, 'chihiro'),
(86, 'fantôme'),
(87, 'magie'),
(88, 'rock'),
(89, 'radio-pirate'),
(90, 'bateau'),
(91, 'réseau'),
(92, 'thriller'),
(93, 'psychiatrie'),
(94, 'enquête'),
(95, 'anneau'),
(96, 'sauron'),
(97, 'fantastique'),
(98, 'harry'),
(99, 'potter'),
(101, 'marvel'),
(102, 'robot'),
(103, 'oasis'),
(104, 'Histoire Vraie'),
(105, 'informatique'),
(106, 'wall street'),
(107, 'funambule'),
(108, '');

-- --------------------------------------------------------

--
-- Structure de la table `Pays`
--

CREATE TABLE `Pays` (
  `idPays` int(11) NOT NULL,
  `nomPays` varchar(55) CHARACTER SET utf8 COLLATE utf8_roman_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Pays`
--

INSERT INTO `Pays` (`idPays`, `nomPays`) VALUES
(1, 'Etats-Unis'),
(2, 'Canada'),
(3, 'France'),
(4, 'Japon'),
(5, 'Allemagne'),
(6, 'Angleterre'),
(7, 'Danemark'),
(8, 'Chili'),
(9, 'Royaume-Unis'),
(10, 'Mexique'),
(11, 'Ukraine'),
(12, 'Ecosse'),
(13, 'Québec'),
(14, 'Australie'),
(15, 'Suède'),
(16, 'Israël'),
(17, 'Irlande'),
(18, 'Guatemala'),
(19, 'Iran'),
(20, 'Nouvelle-Zelande'),
(21, 'Autriche'),
(22, '');

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

--
-- Contenu de la table `personne`
--

INSERT INTO `personne` (`idPersonne`, `nomPersonne`, `prenomPersonne_personne`, `idPays`) VALUES
(1, 'Zombie', 'Rob', 1),
(2, 'Gibson', 'Mel', 1),
(3, 'Leitch', 'David', 1),
(4, 'Dolan', 'Xavier', 2),
(5, 'McDowell', 'Malcom', 1),
(6, 'Garfield', 'Andrew', 1),
(7, 'Reeves', 'Keanu', 1),
(8, 'Dorval', 'Anne', 13),
(9, 'Winding Refn', 'Nicolas', 7),
(10, 'Gosling', 'Ryan', 2),
(11, 'Nolan', 'Christopher', 1),
(12, 'Wachowski', 'les frères', 1),
(13, 'Dicaprio', 'Leonardo', 1),
(14, 'Spielberg', 'Steven', 1),
(15, 'Sheridan', 'Tye', 1),
(16, 'Sanders', 'Rupert', 9),
(17, 'Johansson', 'Scarlett', 1),
(18, 'Goyer', 'David S.', 1),
(19, 'Snipes', 'Wesley', 1),
(20, 'Witt', 'Alexander', 8),
(21, 'Jovovich', 'Milla', 11),
(22, 'Lucas', 'George', 1),
(23, 'McGregor', 'Ewan', 12),
(24, 'Johnston', 'Joe', 1),
(25, 'Williams', 'Robin', 1),
(26, 'Allers', 'Roger', 1),
(27, 'Broderick', 'Matthew', 1),
(28, 'Darabon', 'Franck', 1),
(29, 'Hanks', 'Tom', 1),
(30, 'Burton', 'Tim', 1),
(31, 'Deep', 'Johnny', 1),
(32, 'Adlon', 'Percy', 1),
(33, 'Sägrebrecht', 'Marianne', 5),
(34, 'Yakin', 'Boaz', 1),
(35, 'Washington', 'Denzel', 1),
(36, 'Morel', 'Pierre', 3),
(37, 'Neeson', 'Liam', 17),
(38, 'J.Shaffner', 'Franklin', 1),
(39, 'Heston', 'Charlton', 1),
(40, 'Cameron', 'James', 2),
(41, 'Worthington', 'Sam', 14),
(42, 'Kaye', 'Tony', 9),
(43, 'Norton', 'Edward', 1),
(44, 'Zemeckis', 'Robert', 1),
(45, 'Elbé', 'Pascal', 3),
(46, 'Elbaz', 'Vincent', 3),
(47, 'Stone', 'Oliver', 1),
(48, 'Gordon-Levitt', 'Joseph', 1),
(50, 'Lisberger', 'Steven', 1),
(51, 'Bridges', 'Jeff', 1),
(52, 'Badham', 'John', 1),
(53, 'Broderick', 'Matthew', 1),
(54, 'Jennings', 'Garth', 9),
(55, 'Freeman', 'Martin', 9),
(56, 'Scott', 'Ridley', 9),
(57, 'Ford', 'Harisson', 1),
(58, 'Weaver', 'Sigourney', 1),
(59, 'McTierman', 'John', 1),
(60, 'Scharzenegger', 'Arnold', 21),
(61, 'Von Garnier', 'Katja', 5),
(62, 'Höppner', 'Hanna', 5),
(63, 'De Blois', 'Dean', 1),
(64, 'Newell', 'Mike', 1),
(65, 'Reignoux', 'Donald', 3),
(66, 'Gyllenhaal', 'Jake', 1),
(67, 'Miyazaki', 'Hayao', 4),
(68, 'Hiiragi', 'Rumi', 4),
(69, 'Curtis', 'Richard', 6),
(70, 'Sturridge', 'Tom', 6),
(71, 'Hosoda', 'Mamoru', 4),
(72, 'Tanimura', 'Mitsuki', 4),
(73, 'Scorsese', 'Martin', 1),
(74, 'Jackson', 'Peter', 20),
(75, 'Wood', 'Elijah', 1),
(76, 'Radcliffe', 'Daniel', 9),
(77, 'Derrickson', 'Scott', 1),
(78, 'Russo', 'Joe', 1),
(79, 'Del Toro', 'Guillermo', 10),
(80, 'Grint', 'Rupert', 9),
(81, 'Cumberbach', 'Benedict', 9),
(82, 'Brolin', 'Josh', 1),
(83, 'Hunnam', 'Charles Matthew', 6),
(84, 'Faerch', 'Daeg', 2),
(85, 'Zombie', 'Sheri Moon', 1),
(87, 'Weaving', 'Hugo', 14),
(89, 'Dafoe', 'Willem', 1),
(90, 'Pilon', 'Antoine-Olivier', 2),
(91, 'Clément', 'Suzanne', 13),
(92, 'Mulligan', 'Carey', 6),
(93, 'Cranston', 'Bryan', 1),
(94, 'McConaughey', 'Matthew', 1),
(95, 'Foy', 'Mackenzie', 1),
(96, 'Schenkkan', 'Robert', 1),
(97, 'Kolstad', 'Derek', 1),
(98, 'Amini', 'Hossein', 19),
(99, 'Cline', 'Ernest', 1),
(100, 'Moss', 'Jamie', 1),
(101, 'Anderson', 'Paul W. S.', 9),
(102, 'Van Allsburg', 'Chris', 1),
(103, 'Woolverton', 'Linda', 1),
(104, 'Walker', 'Andrex Kevin', 1),
(105, 'Howard', 'Gregory Allen', 1),
(106, 'Besson', 'Luc', 3),
(107, 'Wilson', 'Michael', 1),
(108, 'McKenna', 'David', 1),
(109, 'Roth', 'Eric', 1),
(110, 'Lasker', 'Lawrence', 1),
(111, 'Adams', 'Douglas', 9),
(112, 'Dick', 'Philip K.', 1),
(113, 'O\'Bannon', 'Dan', 1),
(114, 'Thomas', 'Jim', 1),
(115, 'Schmidbauer', 'Lea', 5),
(116, 'Goldberg', 'Adam F.', 1),
(117, 'Mechner', 'Jordan', 1),
(118, 'Okudera', 'Satoko', 4),
(119, 'Kalogridis', 'Laeta', 1),
(120, 'Kloves', 'Steve', 9),
(121, 'Cargill', 'C. Robert', 1),
(122, 'Markus', 'Christopher', 14),
(124, 'Dourif', 'Brad', 1),
(125, 'Scout Taylor', 'Compton', 1),
(126, 'Vaughn', 'Vince', 1),
(127, 'Bracey', 'Luke', 14),
(128, 'Nyqvist', 'Michael', 15),
(700, 'McDowell', 'Malcom ', 1),
(701, 'Garfield', 'Andrew ', 1),
(702, 'Reeves', 'Keanu ', 1),
(703, 'Dorval', 'Anne ', 1),
(706, 'Dicaprio', 'Leonardo', 1),
(707, 'Sheridan', 'Tye ', 1),
(708, 'Johansson', 'Scarlett', 1),
(709, ' Snipes', 'Wesley', 1),
(710, 'Jovovich', 'Milla', 1),
(711, 'McGregor', 'Ewan ', 1),
(712, 'Williams', 'Robin', 1),
(713, 'Broderick', 'Matthew ', 1),
(714, 'Hanks', 'Tom', 1),
(715, 'Deep', 'Johnny', 1),
(716, 'Sägebrecht', 'Marianne ', 1),
(717, 'Washington', 'Denzel ', 1),
(718, 'Neeson', 'Liam', 1),
(719, 'Heston', 'Charlton', 1),
(720, 'Worthington', 'Sam ', 1),
(721, 'Norton', 'Edward', 1),
(722, 'Hanks', 'Tom', 1),
(723, 'Elbaz', 'Vincent', 1),
(724, 'Gordon-Levitt', 'Joseph ', 1),
(725, 'Bridges', 'Jeff ', 1),
(726, 'Roderick', 'Matthew', 1),
(727, 'Freeman', 'Martin ', 1),
(728, 'Ford', 'Harisson', 1),
(729, 'Weaver', 'Sigourney ', 1),
(730, 'Schwarzenegger', 'Arnold ', 1),
(731, 'Höppner', 'Hanna', 1),
(732, 'Reignoux', 'Donald', 1),
(733, 'Gyllenhaal', 'Jake', 1),
(734, 'Hiiragi', 'Rumi', 1),
(735, 'Sturridge', 'Tom', 1),
(736, 'Tanimura', 'Mitsuki', 1),
(737, 'DIcaprio', 'Leonardo', 1),
(738, 'Wood', 'Elijah', 1),
(739, 'Grint', 'Rupert', 1),
(740, 'Cumberbatch', 'Benedict', 1),
(741, 'Brolin', 'Josh', 1),
(742, 'Hunnam', 'Charles', 1),
(743, 'Faerch', 'Daeg', 1),
(744, 'Worthington', 'Sam', 1),
(745, 'Nyqvist', 'Michael', 1),
(746, 'Pilon', 'Antoine-Olivier', 1),
(748, 'McConaughey', 'Matthew', 1),
(749, 'Fishburne', 'Laurence', 1),
(750, 'Cotillard', 'Marion', 1),
(751, 'Cook', 'Olivia', 1),
(752, 'Asbæk', 'Pilou', 1),
(753, 'Kristofferson', 'Kris', 1),
(754, 'Guillory', 'Sienna', 1),
(755, 'Christensen', 'Hayden', 1),
(756, 'Hunt', 'Bonnie', 1),
(757, 'Jones', 'James Earl', 1),
(758, 'Duncan', 'Michael Clarke', 1),
(759, 'Ricci', 'Christina', 1),
(760, 'Pounder', 'CCH', 1),
(761, 'Patton', 'Will', 1),
(762, 'Janssen', 'Famke', 1),
(763, 'McDowall', 'Roddy', 1),
(764, 'Weaver', 'Sigourney', 1),
(765, 'Furlong', 'Edward', 1),
(766, 'Wright', 'Robin', 1),
(767, 'GAYET', 'Julie', 1),
(768, 'WOOdley', 'Shailene', 1),
(769, 'Kingsley', 'Ben', 1),
(770, 'Boxleitner', 'Bruce', 1),
(771, 'Colman', 'Dabney', 1),
(772, 'Bey', 'Yasiin', 1),
(773, 'Hauer', 'Rutger', 1),
(774, 'Skerritt', 'Tom', 1),
(775, 'Weathers', 'Carl', 1),
(776, 'Buck', 'Detlev', 1),
(777, 'Orphelin', 'Florine', 1),
(778, 'Arterton', 'Gemma', 1),
(779, 'Irino', 'Miyu', 1),
(780, 'Hoffman', 'Philippe Seymour', 1),
(781, 'Fuji', 'Junko', 1),
(782, 'Ruffalo', 'Mark', 1),
(783, 'Astin', 'Sean', 1),
(784, 'Watson', 'Emma', 1),
(785, 'Ejiofor', 'Chiwetel Umeadi', 1),
(786, 'Downey Jr', 'Robert', 1),
(787, 'Kikuchi', 'Yuriko', 1),
(788, 'Zombie', 'Sheri Moon', 1),
(789, 'Weaving', 'Hugo', 1),
(791, 'Clément', 'Suzanne', 1),
(794, 'Moss', 'Carrie-Anne', 1),
(795, 'Page', 'Ellen', 1),
(796, 'Mendelsohn', 'Ben', 1),
(797, 'Kitano', 'Takeshi', 1),
(798, 'Renolds', 'Ryan', 1),
(799, 'Fehr', 'Oded', 1),
(800, 'Portman', 'Natalie', 1),
(801, 'Dunst', 'Kristen', 1),
(802, 'Irons', 'Jeremy', 1),
(803, 'Morse', 'David', 1),
(804, 'Walken', 'Christopher', 1),
(805, 'Palance', 'Jack', 1),
(806, 'Hurst', 'Ryan', 1),
(807, 'Grace', 'Maggie', 1),
(808, 'Hunter', 'Kim', 1),
(809, 'Lang', 'Stephen', 1),
(810, 'D\'Angelo', 'Beverly', 1),
(811, 'Sinise', 'Gary', 1),
(812, 'Breitman', 'Zabou', 1),
(813, 'Leo', 'Melisse', 1),
(814, 'Dale', 'James Badge', 1),
(815, 'Warner', 'David', 1),
(816, 'wood', 'John', 1),
(817, 'Rockwell', 'Sam', 1),
(818, 'Young', 'Sean', 1),
(819, 'Cartwright', 'Veronica', 1),
(820, 'Carillo', 'Elpidia', 1),
(821, 'Froboess', 'Cornelia', 1),
(822, 'Jacomy', 'Emmanuel', 1),
(823, 'Kingsley', 'Ben', 1),
(824, 'Chase', 'Daveigh', 1),
(825, 'Ifans', 'Rhys', 1),
(826, 'Saitô', 'Ayumu', 1),
(827, 'Kingsley', 'Ben', 1),
(828, 'Mortensen', 'Viggo', 1),
(829, 'Swinton', 'Katherine Matilda', 1),
(830, 'Evans', 'Chris', 1),
(831, 'Elba', 'Idriss', 1),
(832, 'Dourif', 'Brad', 1),
(833, 'Vaughn', 'Vince', 1),
(834, 'Mcshane', 'Ian', 1),
(835, 'Huard', 'Patrick', 1),
(836, 'Brooks', 'Albert', 1),
(837, 'Lithgow', 'John', 1),
(838, 'Weaving', 'Hugo', 1),
(839, 'Murphy', 'Cillian', 1),
(840, 'Waithe', 'Lena', 1),
(841, 'Binoche', 'Juliette', 1),
(842, 'Biel', 'Jessica', 1),
(843, 'Kretschmann', 'Thomas', 1),
(844, 'Jackson', 'Samuel L.', 1),
(845, 'Hyde', 'Jonathan', 1),
(846, 'Lane', 'Nathan', 1),
(847, 'Harris', 'Wood', 1),
(848, 'Cassidy', 'Katie', 1),
(849, 'Evans', 'Maurice', 1),
(850, 'Rodriguez', 'Michelle', 1),
(851, 'Brooks', 'Avery', 1),
(852, 'Williamson', 'Mykelti', 1),
(853, 'Charrier', 'Ludovik Anne', 1),
(854, 'Quinto', 'Zachary', 1),
(855, 'Schwartz', 'Ben', 1),
(856, 'Morgan', 'Cindy', 1),
(857, 'sheedy', 'Ally', 1),
(858, 'Malkovich', 'John', 1),
(859, 'Hannah', 'Daryl', 1),
(860, 'Stanton', 'Harry Dean', 1),
(861, 'Duke', 'Bill', 1),
(862, 'Nighy', 'Bill', 1),
(863, 'Sakuraba', 'Namai', 1),
(864, 'Williams', 'Michelle', 1),
(865, 'McKellen', 'Ian', 1),
(866, 'McAdams', 'Rachel Anne', 1),
(867, 'Ruffalo', 'Mark Alan', 1),
(868, 'Day', 'Charles Peckham', 1),
(869, 'Taylor-Compton', 'Scout', 1),
(870, 'Bracey', 'Luke', 1),
(871, 'Allen', 'Alfie', 1),
(872, 'Isaac', 'Oscar', 1),
(873, 'Chalamet', 'TimothÃ©e', 1),
(874, 'Foster', 'Gloria', 1),
(875, 'Gordon-Levitt', 'Joseph', 1),
(876, 'John-Kamen', 'Hannah', 1),
(877, 'Han', 'Chin', 1),
(878, 'Purcell', 'Dominique', 1),
(879, 'Holt', 'Sandrine', 1),
(880, 'McDiarmind', 'Ian', 1),
(881, 'Pierce', 'Bradley', 1),
(882, 'Sabella', 'Ernie', 1),
(883, 'Faison', 'Donald', 1),
(884, 'Gries', 'Jon', 1),
(885, 'Whitmore', 'James', 1),
(886, 'Ribisi', 'Giovanni', 1),
(887, 'Lien', 'Jennifer', 1),
(888, 'Field', 'Sally', 1),
(889, 'Sharry', 'Isaac', 1),
(890, 'Cage', 'INicolas', 1),
(891, 'Le Bon', 'Charlotte', 1),
(892, 'Hughes', 'Barnard', 1),
(893, 'Corbin', 'Barry', 1),
(894, 'Deschanel', 'Zooey', 1),
(895, 'Walsh', 'M.Emmet', 1),
(896, 'Hurt', 'John', 1),
(897, 'Ventura', 'Jesse', 1),
(898, 'Thompson', 'Emma', 1),
(899, 'Wong', 'Benedict', 1),
(900, 'Hemsworth', 'Christopher', 1),
(901, 'Ronald Perlman', 'Francis', 1),
(902, '', '', 22),
(903, '', '', 22),
(904, '', '', 22),
(905, '', '', 22),
(906, '', '', 22),
(907, '', '', 22),
(908, '', '', 22),
(909, '', '', 22),
(910, '', '', 22),
(911, '', '', 22),
(912, '', '', 22),
(913, '', '', 22),
(914, '', '', 22),
(915, '', '', 22);

-- --------------------------------------------------------

--
-- Structure de la table `realise`
--

CREATE TABLE `realise` (
  `idFilm` int(11) NOT NULL,
  `idPersonne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `realise`
--

INSERT INTO `realise` (`idFilm`, `idPersonne`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 9),
(6, 11),
(7, 12),
(8, 11),
(9, 14),
(10, 16),
(11, 18),
(12, 20),
(13, 22),
(14, 24),
(15, 26),
(16, 28),
(17, 30),
(18, 32),
(19, 34),
(20, 36),
(21, 38),
(22, 40),
(23, 42),
(24, 44),
(25, 45),
(26, 47),
(27, 44),
(28, 50),
(29, 52),
(30, 54),
(31, 56),
(32, 56),
(33, 59),
(34, 61),
(35, 63),
(36, 64),
(37, 67),
(38, 69),
(39, 71),
(40, 73),
(41, 74),
(42, 76),
(43, 77),
(44, 78),
(45, 79);

-- --------------------------------------------------------

--
-- Structure de la table `Utilisateur`
--

CREATE TABLE `Utilisateur` (
  `idUtilisateur` int(11) NOT NULL,
  `pseudoUtilisateur` varchar(55) CHARACTER SET utf8 COLLATE utf8_roman_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Utilisateur`
--

INSERT INTO `Utilisateur` (`idUtilisateur`, `pseudoUtilisateur`) VALUES
(1, 'Lacroix Christophe'),
(2, 'Dherret Quentin'),
(3, 'Ouvrard Fabien'),
(4, 'Beraud Fabien'),
(5, 'Grasse JP'),
(6, 'Marceron Corinne'),
(7, 'Saunier Thibaud'),
(8, 'Yang Francis'),
(9, 'Laurent Maximilien'),
(10, 'Juy Laurent'),
(11, 'Frederic'),
(12, 'Giton Sylvie'),
(13, 'Quivron Francois'),
(14, 'Maxime'),
(15, 'Edains');

-- --------------------------------------------------------

--
-- Structure de la table `vient_de`
--

CREATE TABLE `vient_de` (
  `idPays` int(11) NOT NULL,
  `idFilm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `vient_de`
--

INSERT INTO `vient_de` (`idPays`, `idFilm`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(3, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(3, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(3, 25),
(5, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(9, 32),
(1, 33),
(5, 34),
(1, 35),
(1, 36),
(4, 37),
(1, 38),
(4, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45);

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
  MODIFY `idMotCle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT pour la table `ecrit`
--
ALTER TABLE `ecrit`
  MODIFY `idFilm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT pour la table `est`
--
ALTER TABLE `est`
  MODIFY `idFilm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT pour la table `Film`
--
ALTER TABLE `Film`
  MODIFY `idFilm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `idGenre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `joue`
--
ALTER TABLE `joue`
  MODIFY `idPersonne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=902;
--
-- AUTO_INCREMENT pour la table `motCle`
--
ALTER TABLE `motCle`
  MODIFY `idMotCle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT pour la table `Pays`
--
ALTER TABLE `Pays`
  MODIFY `idPays` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `idPersonne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=916;
--
-- AUTO_INCREMENT pour la table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  MODIFY `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `vient_de`
--
ALTER TABLE `vient_de`
  MODIFY `idPays` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
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
