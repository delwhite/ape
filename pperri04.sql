-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost
-- Généré le :  Jeu 09 Mars 2017 à 11:56
-- Version du serveur :  5.5.53-0+deb8u1
-- Version de PHP :  5.6.29-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pperri04`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherer`
--

CREATE TABLE `adherer` (
  `annee_adhesion` year(4) NOT NULL,
  `id_tuteur` int(11) NOT NULL,
  `id_association` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `adherer`
--

INSERT INTO `adherer` (`annee_adhesion`, `id_tuteur`, `id_association`) VALUES
(2001, 1, 21),
(2008, 2, 6),
(2008, 2, 63),
(2014, 2, 86),
(2017, 4, 81),
(2003, 5, 47),
(2003, 5, 48),
(2009, 5, 65),
(2010, 7, 18),
(2015, 8, 93),
(2001, 9, 28),
(2016, 12, 87),
(2012, 18, 15),
(2008, 21, 33),
(2005, 22, 99),
(2001, 28, 4),
(2016, 33, 56),
(2015, 34, 80),
(2000, 35, 9),
(2016, 35, 62),
(2017, 38, 69),
(2007, 39, 12),
(2016, 39, 16),
(2002, 39, 69),
(2000, 40, 89),
(2000, 41, 94),
(2006, 42, 21),
(2010, 43, 5),
(2011, 47, 48),
(2004, 47, 96),
(2013, 48, 67),
(2005, 50, 23),
(2000, 51, 79),
(2006, 51, 83),
(2015, 52, 65),
(2008, 53, 74),
(2010, 55, 95),
(2014, 56, 47),
(2004, 56, 53),
(2000, 57, 47),
(2012, 59, 53),
(2016, 60, 6),
(2017, 62, 20),
(2004, 62, 72),
(2015, 63, 2),
(2004, 63, 4),
(2011, 63, 29),
(2010, 64, 16),
(2013, 64, 32),
(2002, 64, 50),
(2006, 66, 20),
(2009, 67, 9),
(2000, 68, 77),
(2013, 69, 93),
(2010, 71, 75),
(2000, 74, 18),
(2000, 74, 97),
(2001, 75, 14),
(2013, 75, 35),
(2013, 75, 75),
(2001, 76, 25),
(2008, 77, 47),
(2005, 77, 77),
(2004, 78, 27),
(2000, 80, 60),
(2008, 80, 85),
(2007, 81, 29),
(2014, 83, 75),
(2002, 87, 60),
(2011, 90, 74),
(2006, 91, 69),
(2010, 92, 70),
(2003, 93, 6),
(2015, 94, 80),
(2007, 95, 36),
(2011, 96, 89),
(2015, 97, 87),
(2011, 99, 33),
(2009, 99, 37),
(2010, 100, 17);

-- --------------------------------------------------------

--
-- Structure de la table `appartenir`
--

CREATE TABLE `appartenir` (
  `habilitation` varchar(20) NOT NULL,
  `id_association` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `appartenir`
--

INSERT INTO `appartenir` (`habilitation`, `id_association`, `id_utilisateur`) VALUES
('benevole', 4, 21),
('benevole', 14, 14),
('administrateur', 14, 35),
('administrateur', 14, 58),
('benevole', 19, 9),
('benevole', 19, 43),
('benevole', 20, 7),
('benevole', 20, 70),
('administrateur', 24, 94),
('benevole', 26, 34),
('benevole', 26, 46),
('benevole', 27, 29),
('benevole', 37, 73),
('benevole', 38, 43),
('benevole', 38, 78),
('benevole', 42, 60),
('benevole', 44, 5),
('benevole', 44, 65),
('benevole', 45, 29),
('administrateur', 48, 41),
('benevole', 51, 77),
('benevole', 53, 45),
('benevole', 57, 69),
('benevole', 60, 66),
('benevole', 64, 61),
('administrateur', 66, 9),
('benevole', 67, 40),
('benevole', 67, 54),
('benevole', 68, 5),
('benevole', 70, 77),
('benevole', 72, 2),
('administrateur', 72, 26),
('benevole', 73, 5),
('benevole', 74, 89),
('benevole', 76, 34),
('administrateur', 76, 54),
('administrateur', 78, 62),
('benevole', 78, 83),
('benevole', 79, 96),
('benevole', 87, 51),
('benevole', 89, 95),
('benevole', 90, 67),
('benevole', 91, 83),
('benevole', 91, 85),
('administrateur', 94, 10),
('benevole', 94, 56),
('benevole', 95, 49),
('administrateur', 97, 41),
('benevole', 99, 78),
('benevole', 100, 59);

-- --------------------------------------------------------

--
-- Structure de la table `association`
--

CREATE TABLE `association` (
  `id_association` int(11) NOT NULL,
  `nom_association` varchar(200) NOT NULL,
  `prix_adhesion` float NOT NULL,
  `id_etablissement` int(11) DEFAULT NULL,
  `id_association_1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `association`
--

INSERT INTO `association` (`id_association`, `nom_association`, `prix_adhesion`, `id_etablissement`, `id_association_1`) VALUES
(1, 'Nielsen', 1, 84, NULL),
(2, 'Cooke', 11, 38, NULL),
(3, 'Skinner', 39, 63, NULL),
(4, 'Greer', 30, 28, NULL),
(5, 'Cortez', 18, 39, NULL),
(6, 'Ortega', 29, 82, NULL),
(7, 'Spears', 2, 38, NULL),
(8, 'Workman', 33, 93, NULL),
(9, 'Strickland', 15, 24, NULL),
(10, 'Torres', 31, 57, NULL),
(11, 'Becker', 1, 94, 2),
(12, 'Hardy', 7, 44, 10),
(13, 'Rush', 11, 60, 6),
(14, 'Kennedy', 10, 48, 7),
(15, 'Walker', 18, 91, 9),
(16, 'Beach', 3, 42, 3),
(17, 'Mckee', 7, 77, 10),
(18, 'Dyer', 5, 57, 6),
(19, 'Francis', 8, 13, 6),
(20, 'Reeves', 27, 86, 2),
(21, 'Spears', 12, 71, 10),
(22, 'Bass', 34, 13, 9),
(23, 'Acosta', 15, 96, 1),
(24, 'Valenzuela', 4, 30, 1),
(25, 'Harvey', 32, 98, 2),
(26, 'Lloyd', 34, 78, 9),
(27, 'Beach', 37, 27, 1),
(28, 'Baird', 1, 63, 6),
(29, 'Gillespie', 33, 17, 1),
(30, 'Tyson', 36, 60, 7),
(31, 'Perez', 11, 67, 6),
(32, 'Singleton', 11, 86, 7),
(33, 'Edwards', 28, 34, 9),
(34, 'Park', 11, 30, 8),
(35, 'Fox', 5, 39, 8),
(36, 'Tate', 21, 33, 1),
(37, 'Martin', 3, 20, 1),
(38, 'Greene', 28, 15, 3),
(39, 'Hooper', 1, 54, 8),
(40, 'Hanson', 13, 31, 10),
(41, 'Tran', 17, 12, 25),
(42, 'Morrison', 37, 58, 33),
(43, 'Fuentes', 10, 12, 21),
(44, 'Talley', 15, 20, 32),
(45, 'Herring', 24, 89, 40),
(46, 'Battle', 40, 39, 18),
(47, 'Dalton', 1, 35, 14),
(48, 'Madden', 6, 89, 10),
(49, 'Benson', 19, 43, 24),
(50, 'Mcgowan', 18, 60, 17),
(51, 'Marks', 13, 3, 30),
(52, 'Cotton', 34, 76, 19),
(53, 'Humphrey', 23, 18, 37),
(54, 'Nixon', 3, 22, 27),
(55, 'Holmes', 4, 81, 37),
(56, 'Ingram', 37, 1, 37),
(57, 'Cameron', 6, 83, 16),
(58, 'Hebert', 6, 67, 26),
(59, 'Short', 6, 51, 26),
(60, 'Dillard', 22, 88, 34),
(61, 'Rhodes', 30, 48, 35),
(62, 'Wood', 22, 31, 35),
(63, 'Wiggins', 27, 69, 34),
(64, 'Douglas', 3, 40, 12),
(65, 'Buchanan', 13, 30, 15),
(66, 'Baker', 2, 55, 10),
(67, 'Hopkins', 4, 74, 35),
(68, 'Daugherty', 40, 23, 17),
(69, 'Copeland', 31, 94, 26),
(70, 'Wilcox', 12, 57, 35),
(71, 'Gordon', 7, 71, 23),
(72, 'Carey', 17, 32, 14),
(73, 'Washington', 36, 71, 13),
(74, 'Merritt', 16, 81, 36),
(75, 'Pearson', 3, 64, 39),
(76, 'Powell', 1, 27, 20),
(77, 'Ingram', 13, 7, 35),
(78, 'Jackson', 21, 36, 20),
(79, 'Snow', 3, 74, 16),
(80, 'Britt', 30, 72, 21),
(81, 'Noel', 12, 9, 10),
(82, 'Holman', 19, 40, 23),
(83, 'Hunt', 5, 30, 13),
(84, 'Norris', 15, 100, 16),
(85, 'Cash', 40, 42, 26),
(86, 'Holland', 1, 39, 39),
(87, 'Ayala', 10, 70, 32),
(88, 'Nielsen', 18, 26, 38),
(89, 'Rosa', 33, 87, 22),
(90, 'Graham', 32, 13, 34),
(91, 'Martinez', 40, 88, 34),
(92, 'Wilson', 22, 90, 16),
(93, 'Larsen', 25, 35, 21),
(94, 'Christensen', 29, 23, 10),
(95, 'Burt', 8, 58, 37),
(96, 'Thompson', 37, 49, 22),
(97, 'Foley', 7, 36, 13),
(98, 'Pitts', 1, 50, 19),
(99, 'Holden', 13, 55, 34),
(100, 'Lamb', 2, 85, 28);

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `id_classe` int(11) NOT NULL,
  `nom_classe` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `classe`
--

INSERT INTO `classe` (`id_classe`, `nom_classe`) VALUES
(1, 'Ryder'),
(2, 'Clio'),
(3, 'Gabriel'),
(4, 'Jaquelyn'),
(5, 'Charissa'),
(6, 'Rama'),
(7, 'Camilla'),
(8, 'Alden'),
(9, 'Brent'),
(10, 'Eric'),
(11, 'Elliott'),
(12, 'Cooper'),
(13, 'April'),
(14, 'Abra'),
(15, 'Darrel'),
(16, 'Nicole'),
(17, 'Randall'),
(18, 'Calista'),
(19, 'Allistair'),
(20, 'Hannah'),
(21, 'Keith'),
(22, 'Cheyenne'),
(23, 'Daphne'),
(24, 'Ivory'),
(25, 'Donna'),
(26, 'Joelle'),
(27, 'Blaze'),
(28, 'Martena'),
(29, 'Solomon'),
(30, 'Xandra'),
(31, 'Addison'),
(32, 'Shannon'),
(33, 'Charity'),
(34, 'Emerson'),
(35, 'Susan'),
(36, 'Karen'),
(37, 'Channing'),
(38, 'Athena'),
(39, 'Lana'),
(40, 'Maite'),
(41, 'Kim'),
(42, 'Channing'),
(43, 'Jana'),
(44, 'Ifeoma'),
(45, 'Signe'),
(46, 'Porter'),
(47, 'Kalia'),
(48, 'William'),
(49, 'Kevin'),
(50, 'Abdul');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL,
  `date_commande` date NOT NULL,
  `montant_commande` float NOT NULL,
  `id_enfant` int(11) DEFAULT NULL,
  `numero_facture` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commande`
--

INSERT INTO `commande` (`id_commande`, `date_commande`, `montant_commande`, `id_enfant`, `numero_facture`) VALUES
(1, '0000-00-00', 26, 82, 71),
(2, '0000-00-00', 33, 99, 99),
(3, '0000-00-00', 35, 27, 87),
(4, '0000-00-00', 86, 13, 47),
(5, '0000-00-00', 67, 18, 80),
(6, '0000-00-00', 33, 32, 95),
(7, '0000-00-00', 88, 71, 44),
(8, '0000-00-00', 99, 16, 72),
(9, '0000-00-00', 80, 13, 11),
(10, '0000-00-00', 11, 61, 27),
(11, '0000-00-00', 41, 98, 2),
(12, '0000-00-00', 29, 25, 41),
(13, '0000-00-00', 20, 81, 34),
(14, '0000-00-00', 77, 5, 84),
(15, '0000-00-00', 99, 7, 97),
(16, '0000-00-00', 47, 10, 74),
(17, '0000-00-00', 56, 76, 94),
(18, '0000-00-00', 78, 59, 35),
(19, '0000-00-00', 67, 81, 25),
(20, '0000-00-00', 49, 26, 28),
(21, '0000-00-00', 57, 48, 25),
(22, '0000-00-00', 33, 31, 70),
(23, '0000-00-00', 60, 53, 24),
(24, '0000-00-00', 14, 61, 48),
(25, '0000-00-00', 25, 1, 62),
(26, '0000-00-00', 39, 49, 43),
(27, '0000-00-00', 56, 5, 99),
(28, '0000-00-00', 10, 2, 82),
(29, '0000-00-00', 14, 10, 88),
(30, '0000-00-00', 24, 70, 19),
(31, '0000-00-00', 37, 19, 41),
(32, '0000-00-00', 90, 25, 56),
(33, '0000-00-00', 92, 8, 57),
(34, '0000-00-00', 31, 77, 24),
(35, '0000-00-00', 22, 23, 54),
(36, '0000-00-00', 12, 69, 17),
(37, '0000-00-00', 17, 55, 34),
(38, '0000-00-00', 53, 98, 48),
(39, '0000-00-00', 73, 7, 41),
(40, '0000-00-00', 34, 64, 98),
(41, '0000-00-00', 83, 79, 17),
(42, '0000-00-00', 71, 14, 68),
(43, '0000-00-00', 59, 18, 59),
(44, '0000-00-00', 22, 35, 62),
(45, '0000-00-00', 22, 8, 65),
(46, '0000-00-00', 66, 21, 68),
(47, '0000-00-00', 12, 84, 27),
(48, '0000-00-00', 11, 72, 52),
(49, '0000-00-00', 63, 86, 31),
(50, '0000-00-00', 21, 9, 67),
(51, '0000-00-00', 58, 74, 23),
(52, '0000-00-00', 96, 76, 59),
(53, '0000-00-00', 45, 67, 79),
(54, '0000-00-00', 21, 74, 94),
(55, '0000-00-00', 60, 32, 89),
(56, '0000-00-00', 79, 64, 98),
(57, '0000-00-00', 48, 38, 65),
(58, '0000-00-00', 97, 6, 33),
(59, '0000-00-00', 40, 86, 33),
(60, '0000-00-00', 98, 27, 77),
(61, '0000-00-00', 87, 66, 73),
(62, '0000-00-00', 71, 84, 66),
(63, '0000-00-00', 23, 74, 3),
(64, '0000-00-00', 35, 63, 19),
(65, '0000-00-00', 73, 68, 65),
(66, '0000-00-00', 77, 79, 5),
(67, '0000-00-00', 25, 47, 100),
(68, '0000-00-00', 87, 60, 7),
(69, '0000-00-00', 14, 54, 72),
(70, '0000-00-00', 24, 20, 99),
(71, '0000-00-00', 60, 50, 84),
(72, '0000-00-00', 78, 43, 30),
(73, '0000-00-00', 96, 68, 79),
(74, '0000-00-00', 91, 43, 4),
(75, '0000-00-00', 77, 3, 24),
(76, '0000-00-00', 33, 55, 3),
(77, '0000-00-00', 30, 93, 64),
(78, '0000-00-00', 52, 16, 6),
(79, '0000-00-00', 65, 29, 74),
(80, '0000-00-00', 41, 54, 89),
(81, '0000-00-00', 100, 69, 39),
(82, '0000-00-00', 92, 16, 100),
(83, '0000-00-00', 13, 86, 6),
(84, '0000-00-00', 26, 21, 67),
(85, '0000-00-00', 11, 32, 38),
(86, '0000-00-00', 94, 63, 94),
(87, '0000-00-00', 99, 55, 11),
(88, '0000-00-00', 76, 75, 10),
(89, '0000-00-00', 49, 79, 9),
(90, '0000-00-00', 53, 77, 61),
(91, '0000-00-00', 15, 52, 95),
(92, '0000-00-00', 10, 70, 8),
(93, '0000-00-00', 96, 33, 67),
(94, '0000-00-00', 68, 4, 97),
(95, '0000-00-00', 23, 31, 48),
(96, '0000-00-00', 10, 64, 56),
(97, '0000-00-00', 35, 8, 24),
(98, '0000-00-00', 40, 6, 92),
(99, '0000-00-00', 71, 70, 53),
(100, '0000-00-00', 53, 76, 11);

-- --------------------------------------------------------

--
-- Structure de la table `commande_produit`
--

CREATE TABLE `commande_produit` (
  `id_commande` int(11) NOT NULL,
  `ISBN` varchar(25) NOT NULL,
  `id_etat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commande_produit`
--

INSERT INTO `commande_produit` (`id_commande`, `ISBN`, `id_etat`) VALUES
(4, '82', 1),
(83, '77', 1),
(89, '45', 1),
(81, '11', 2),
(6, '80', 3),
(22, '93', 3),
(66, '17', 3),
(93, '41', 3),
(95, '71', 3),
(98, '96', 3),
(5, '41', 4),
(49, '78', 4),
(54, '10', 4),
(63, '100', 4),
(12, '32', 5),
(14, '67', 5),
(31, '98', 5),
(28, '33', 6),
(44, '36', 6),
(91, '88', 6),
(92, '43', 6),
(99, '58', 6),
(11, '76', 7),
(23, '86', 7),
(39, '51', 7),
(40, '45', 7),
(46, '23', 7),
(56, '25', 7),
(77, '58', 7),
(85, '9', 7),
(94, '96', 7),
(30, '44', 8),
(42, '85', 8),
(43, '64', 8),
(53, '65', 8),
(72, '25', 8),
(29, '87', 9),
(38, '56', 9),
(65, '12', 9),
(69, '89', 9),
(78, '97', 9),
(16, '12', 10),
(41, '43', 10),
(74, '31', 10),
(82, '10', 10),
(18, '14', 11),
(88, '6', 11),
(20, '76', 12),
(55, '51', 12),
(68, '91', 12),
(76, '60', 12),
(90, '52', 12),
(97, '1', 12),
(7, '49', 13),
(9, '14', 13),
(26, '72', 13),
(33, '74', 13),
(36, '32', 13),
(64, '78', 13),
(8, '16', 14),
(21, '69', 14),
(27, '71', 14),
(37, '22', 14),
(60, '79', 14),
(70, '74', 14),
(84, '2', 14),
(96, '87', 14),
(10, '11', 15),
(24, '6', 15),
(47, '53', 15),
(73, '81', 15),
(86, '97', 15),
(19, '28', 16),
(57, '51', 16),
(87, '65', 16),
(59, '92', 17),
(79, '35', 17),
(50, '45', 18),
(75, '53', 18),
(13, '56', 19),
(15, '13', 19),
(45, '72', 19),
(71, '19', 19),
(2, '7', 20),
(25, '14', 20),
(62, '5', 20),
(32, '61', 21),
(34, '41', 21),
(61, '85', 21),
(80, '51', 21),
(52, '37', 22),
(58, '58', 22),
(67, '67', 22),
(3, '93', 23),
(35, '67', 23),
(48, '57', 23),
(51, '64', 23),
(1, '57', 24),
(17, '76', 24),
(100, '39', 25);

-- --------------------------------------------------------

--
-- Structure de la table `discipline`
--

CREATE TABLE `discipline` (
  `id_discipline` int(11) NOT NULL,
  `nom_discipline` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `discipline`
--

INSERT INTO `discipline` (`id_discipline`, `nom_discipline`) VALUES
(1, 'Megan'),
(2, 'Suki'),
(3, 'Judah'),
(4, 'Cecilia'),
(5, 'Jerry'),
(6, 'Micah'),
(7, 'Cody'),
(8, 'Colorado'),
(9, 'Eugenia'),
(10, 'Karyn'),
(11, 'Jonah'),
(12, 'Bethany'),
(13, 'Quentin'),
(14, 'Knox'),
(15, 'Indigo'),
(16, 'Raja'),
(17, 'Linda'),
(18, 'Halla'),
(19, 'Yvonne'),
(20, 'Nadine'),
(21, 'Grant'),
(22, 'Audrey'),
(23, 'TaShya'),
(24, 'Stewart'),
(25, 'Brandon'),
(26, 'Amethyst'),
(27, 'Kieran'),
(28, 'Jada'),
(29, 'Maryam'),
(30, 'Quon'),
(31, 'Violet'),
(32, 'Tobias'),
(33, 'Maggy'),
(34, 'Jana'),
(35, 'Echo'),
(36, 'Fulton'),
(37, 'Evelyn'),
(38, 'Shannon'),
(39, 'Scott'),
(40, 'Kiayada');

-- --------------------------------------------------------

--
-- Structure de la table `enfant`
--

CREATE TABLE `enfant` (
  `id_enfant` int(11) NOT NULL,
  `nom_enfant` varchar(100) NOT NULL,
  `prenom_enfant` varchar(100) NOT NULL,
  `id_etablissement` int(11) DEFAULT NULL,
  `id_tuteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `enfant`
--

INSERT INTO `enfant` (`id_enfant`, `nom_enfant`, `prenom_enfant`, `id_etablissement`, `id_tuteur`) VALUES
(1, 'Hammond', 'Murphy', 89, 84),
(2, 'Newman', 'Micah', 88, 63),
(3, 'Hebert', 'Howard', 4, 33),
(4, 'Silva', 'Vance', 21, 92),
(5, 'Moss', 'Porter', 25, 1),
(6, 'Lamb', 'Mohammad', 6, 54),
(7, 'Bolton', 'Talon', 58, 35),
(8, 'Case', 'James', 1, 18),
(9, 'Lott', 'Driscoll', 9, 55),
(10, 'Strickland', 'Acton', 86, 78),
(11, 'Jackson', 'Lucius', 58, 47),
(12, 'Morales', 'Abbot', 44, 35),
(13, 'Brock', 'Nathaniel', 74, 73),
(14, 'Figueroa', 'Nolan', 18, 21),
(15, 'Sanford', 'Kane', 43, 99),
(16, 'Franks', 'Nolan', 80, 38),
(17, 'Hardin', 'Vincent', 63, 49),
(18, 'Cooke', 'Giacomo', 34, 18),
(19, 'Gould', 'Cedric', 34, 36),
(20, 'Guerra', 'Zeus', 11, 20),
(21, 'Saunders', 'Carlos', 61, 60),
(22, 'Gamble', 'Geoffrey', 95, 47),
(23, 'Yates', 'Erasmus', 54, 90),
(24, 'Dudley', 'Murphy', 9, 16),
(25, 'Boyd', 'Solomon', 1, 53),
(26, 'Justice', 'Kasper', 17, 57),
(27, 'Hardin', 'Kelly', 35, 65),
(28, 'Benjamin', 'Akeem', 96, 8),
(29, 'Gregory', 'Clayton', 88, 70),
(30, 'Mckenzie', 'Charles', 18, 15),
(31, 'Flores', 'Hedley', 51, 1),
(32, 'Melton', 'Ezra', 12, 6),
(33, 'Randolph', 'Ashton', 57, 47),
(34, 'Holcomb', 'Ronan', 11, 49),
(35, 'Rios', 'Cedric', 71, 31),
(36, 'Mcintyre', 'Valentine', 42, 58),
(37, 'Whitaker', 'Keith', 78, 60),
(38, 'Wolfe', 'Burton', 46, 88),
(39, 'Bryan', 'Holmes', 23, 44),
(40, 'Wolf', 'Emerson', 57, 13),
(41, 'Martinez', 'Herman', 26, 7),
(42, 'Conrad', 'Joshua', 4, 12),
(43, 'Sweet', 'Mark', 32, 76),
(44, 'Mullen', 'Blake', 57, 70),
(45, 'Mclaughlin', 'Nolan', 8, 36),
(46, 'Rojas', 'Luke', 42, 67),
(47, 'Howard', 'Colorado', 61, 97),
(48, 'Bass', 'Nissim', 63, 29),
(49, 'Franklin', 'Curran', 76, 58),
(50, 'Ewing', 'Honorato', 55, 68),
(51, 'Buchanan', 'Dean', 62, 76),
(52, 'Thornton', 'Elmo', 54, 90),
(53, 'Fuentes', 'Wang', 40, 95),
(54, 'Murray', 'Kennan', 87, 68),
(55, 'Franks', 'Craig', 94, 10),
(56, 'Bailey', 'Damon', 93, 32),
(57, 'Glover', 'Josiah', 2, 21),
(58, 'Parks', 'Holmes', 22, 96),
(59, 'Lynch', 'Amal', 86, 33),
(60, 'Gutierrez', 'Neil', 48, 56),
(61, 'Long', 'Barclay', 90, 84),
(62, 'Lawson', 'Davis', 45, 61),
(63, 'David', 'Uriel', 33, 95),
(64, 'Beasley', 'Devin', 75, 97),
(65, 'Barrett', 'Lewis', 59, 55),
(66, 'Davenport', 'Thor', 39, 79),
(67, 'Willis', 'Cadman', 73, 84),
(68, 'Massey', 'William', 7, 20),
(69, 'Pitts', 'Ishmael', 74, 47),
(70, 'Bass', 'Wyatt', 73, 79),
(71, 'Evans', 'Zahir', 24, 74),
(72, 'Stephens', 'Ross', 26, 12),
(73, 'Michael', 'Joseph', 99, 70),
(74, 'Hall', 'Ian', 72, 27),
(75, 'Rosario', 'Gannon', 1, 30),
(76, 'Hammond', 'Victor', 78, 5),
(77, 'Harvey', 'Isaiah', 37, 14),
(78, 'Farley', 'Asher', 72, 65),
(79, 'Armstrong', 'Julian', 15, 94),
(80, 'Sexton', 'Quinn', 60, 13),
(81, 'Wiggins', 'Walker', 21, 87),
(82, 'Malone', 'Neil', 52, 50),
(83, 'Sanford', 'Aidan', 92, 96),
(84, 'Blackburn', 'Ivor', 64, 7),
(85, 'Morrison', 'Jesse', 13, 79),
(86, 'Swanson', 'Zahir', 53, 47),
(87, 'Thomas', 'Ryder', 42, 11),
(88, 'Mayo', 'Hiram', 42, 78),
(89, 'Leon', 'Reece', 91, 24),
(90, 'Curry', 'Elvis', 69, 25),
(91, 'Carpenter', 'Dalton', 90, 75),
(92, 'Small', 'Victor', 64, 68),
(93, 'Tillman', 'Peter', 100, 98),
(94, 'Mcintyre', 'Brenden', 67, 39),
(95, 'Buckley', 'Dylan', 99, 79),
(96, 'Mcmahon', 'Basil', 31, 39),
(97, 'Hicks', 'Drake', 87, 24),
(98, 'Vaughan', 'Phillip', 86, 6),
(99, 'Frost', 'Gavin', 76, 57),
(100, 'Burks', 'Adrian', 22, 67);

-- --------------------------------------------------------

--
-- Structure de la table `etablissement`
--

CREATE TABLE `etablissement` (
  `id_etablissement` int(11) NOT NULL,
  `nom_etablissement` varchar(25) NOT NULL,
  `adresse_etablissement` varchar(300) NOT NULL,
  `cp_etablissement` char(5) NOT NULL,
  `ville_etablissement` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etablissement`
--

INSERT INTO `etablissement` (`id_etablissement`, `nom_etablissement`, `adresse_etablissement`, `cp_etablissement`, `ville_etablissement`) VALUES
(1, 'Aliquet Diam Sed LLP', 'P.O. Box 169, 7504 Posuere St.', '49894', 'Belo Horizonte'),
(2, 'Vestibulum Nec Consulting', '574-672 Eu Ave', '77454', 'Whittlesey'),
(3, 'Neque Sed Inc.', 'Ap #239-3400 Luctus Street', 'WG1M', 'Ahmadpur East'),
(4, 'Eget Venenatis A Limited', '483 Mauris Street', '5906', 'Donk'),
(5, 'Ipsum Primis Limited', 'P.O. Box 909, 9110 Ultrices, Av.', '7300T', 'Dolceacqua'),
(6, 'Molestie Sodales Mauris I', 'P.O. Box 321, 7324 Ipsum Avenue', '7921', 'Grande Prairie'),
(7, 'Gravida Molestie Ltd', 'Ap #536-2346 Ut Rd.', '96055', 'Traiskirchen'),
(8, 'Arcu Curabitur PC', '9551 Cras Rd.', '5817', 'Montreal'),
(9, 'Non Quam Corporation', 'P.O. Box 387, 8136 Integer Avenue', '80-12', 'Zierikzee'),
(10, 'Cras Vehicula Aliquet LLP', 'Ap #798-4138 Sociis St.', '50111', 'Bo‘lhe'),
(11, 'Proin LLC', '909-457 Ligula Road', '44019', 'Filacciano'),
(12, 'Eu Erat Semper Foundation', '767-8693 Fringilla Avenue', 'K3 9I', 'Leonding'),
(13, 'Donec Industries', '5724 Dictum. Road', '29404', 'Merrickville-Wolford'),
(14, 'Libero Company', 'Ap #741-8232 Mattis Road', '54-52', 'Cuddalore'),
(15, 'Sed Diam Lorem Industries', 'P.O. Box 407, 5230 Sit Street', '1471', 'Saint-Brieuc'),
(16, 'Vulputate Posuere Vulputa', '7733 Convallis Ave', '57902', 'Schoonaarde'),
(17, 'Parturient Montes Consult', 'Ap #287-6637 Eu Road', '61829', 'Ramillies'),
(18, 'Interdum Sed Auctor Corp.', '378-9521 Nunc Avenue', '10804', 'Basildon'),
(19, 'Eu Tellus Associates', 'P.O. Box 485, 6306 Sed Ave', '78028', 'Halifax'),
(20, 'Pharetra Ut Limited', '4226 Interdum. Road', '38615', 'Pozzuolo del Friuli'),
(21, 'In Industries', 'Ap #360-673 Aliquam Av.', '81276', 'Chatteris'),
(22, 'Eu Erat Semper Corporatio', '6702 In Rd.', '50811', 'Orciano Pisano'),
(23, 'Et Arcu Imperdiet PC', 'P.O. Box 837, 3083 Elit. Road', 'K3K 8', 'Neusiedl am See'),
(24, 'Ridiculus Foundation', 'P.O. Box 521, 701 Sed Rd.', '20313', 'Bellante'),
(25, 'Non Ltd', 'Ap #454-9640 Accumsan St.', '4479', 'Reinbek'),
(26, 'Diam Nunc PC', 'Ap #461-5285 Eros. St.', 'QP8H', 'Joondalup'),
(27, 'Commodo Hendrerit Donec C', '3515 Pede Street', '8486', 'Annapolis'),
(28, 'Eu Odio Company', '513 Lectus. Av.', '3195', 'Boulogne-sur-Mer'),
(29, 'Ut LLC', '2152 Cras Av.', '27925', 'Pontarlier'),
(30, 'Mauris Erat Eget Ltd', '310-8255 Cursus St.', '4710', 'High Level'),
(31, 'Lorem Ut Aliquam Institut', '7815 Ut Rd.', '63660', 'Gonnosnò'),
(32, 'Nostra Per Inceptos Assoc', 'Ap #532-5465 Nascetur Rd.', '42782', 'Bischofshofen'),
(33, 'Urna Industries', 'P.O. Box 328, 1350 Auctor, St.', '90158', 'Gateshead'),
(34, 'Arcu Sed Incorporated', 'Ap #603-3046 Ante. Street', '82651', 'Crecchio'),
(35, 'Sit Industries', 'P.O. Box 172, 4548 Aenean St.', '6419', 'Cerro Navia'),
(36, 'Pharetra Ltd', '4920 Per Ave', '60019', 'Ingelheim'),
(37, 'Eu Incorporated', '6540 At St.', '54575', 'San Polo d\'Enza'),
(38, 'A Foundation', '421-8823 Dignissim. Road', '3843', 'Louth'),
(39, 'Suspendisse Aliquet LLP', '569-2375 Arcu. Street', '38751', 'Newtown'),
(40, 'Vel Venenatis Vel Ltd', '492-4928 Erat Street', '60-13', 'Outremont'),
(41, 'Sem Pellentesque Industri', '331-8454 Amet, Ave', '0926J', 'Lincoln'),
(42, 'Nibh Lacinia Institute', 'P.O. Box 183, 9195 Libero. St.', '9731', 'Palmiano'),
(43, 'Nec Metus Corporation', '5350 Leo. Avenue', '60419', 'Belcarra'),
(44, 'Vulputate Associates', 'P.O. Box 604, 2022 Lectus. St.', '76936', 'Vieux-Genappe'),
(45, 'In Hendrerit Consectetuer', 'Ap #327-2472 Molestie Street', '10747', 'Mores'),
(46, 'Scelerisque Limited', '2512 Sit St.', '0814J', 'Sperlinga'),
(47, 'Accumsan Neque Industries', '5014 Mauris Avenue', '41617', 'Stony Plain'),
(48, 'Ante Ipsum Limited', 'P.O. Box 334, 1125 Amet, St.', '72638', 'Chelsea'),
(49, 'Nullam Corp.', 'Ap #223-675 Ullamcorper Ave', '85825', 'Carcassonne'),
(50, 'Penatibus Et LLP', 'P.O. Box 434, 7640 Nisi. Ave', '2985W', 'Dessel'),
(51, 'Suspendisse Institute', 'Ap #955-7445 In Rd.', '37-14', 'Mobile'),
(52, 'Tempus Scelerisque Consul', 'P.O. Box 462, 2145 Vulputate Ave', '10001', 'Cochrane'),
(53, 'Nisi Mauris Nulla Limited', '4318 Nunc Ave', 'AG9W', 'Township of Minden Hills'),
(54, 'Ullamcorper Duis LLP', 'Ap #758-8345 Egestas Rd.', '61944', 'Lokeren'),
(55, 'Quisque Corporation', '4992 Mi Ave', '44807', 'Huechuraba'),
(56, 'Duis Ltd', '9323 Donec Road', '7088', 'Massarosa'),
(57, 'Metus Sit Amet PC', 'Ap #261-5661 Curabitur Avenue', '71004', 'Latinne'),
(58, 'Laoreet Ltd', '1160 Nunc Rd.', 'A0A 1', 'Elx'),
(59, 'Maecenas PC', 'Ap #564-9579 Aptent St.', '4059', 'Nemi'),
(60, 'Iaculis Aliquet Diam Inst', '5643 Phasellus Ave', '84549', 'Ferrazzano'),
(61, 'Nec Mollis Vitae Industri', 'P.O. Box 438, 8112 Eu St.', '31948', 'HavrŽ'),
(62, 'Suspendisse Company', '5089 Nunc St.', '1246', 'Fontecchio'),
(63, 'Curae; Limited', '7245 Donec St.', '52047', 'Wolfurt'),
(64, 'Ornare Industries', 'Ap #985-597 Cum Road', '6470', 'Mount Pearl'),
(65, 'Dolor Industries', 'P.O. Box 849, 2305 Felis. Ave', 'CN6 0', 'Monacilioni'),
(66, 'Nunc Id Consulting', 'Ap #390-5597 Aliquam Rd.', '11-30', 'Aurora'),
(67, 'Mauris Corporation', 'P.O. Box 392, 2725 Pede. St.', '1715', 'Florenville'),
(68, 'Elit Pede Institute', 'Ap #599-2249 Ornare, Road', '9296', 'Sainte-Flavie'),
(69, 'Libero Industries', '3106 Mi Street', '7383', 'Eksaarde'),
(70, 'Eu Neque Pellentesque LLC', '6992 Eros. Av.', '9565', 'Kolhapur'),
(71, 'Laoreet PC', 'Ap #232-3586 Vel, Ave', 'E4X 4', 'Bolano'),
(72, 'Ultricies Dignissim Corpo', '6105 Et Rd.', '81019', 'Whitchurch'),
(73, 'Sit Industries', '8412 Libero Ave', '08604', 'Castri di Lecce'),
(74, 'Felis Associates', '896-277 Cum St.', '32793', 'Valtournenche'),
(75, 'A Enim Corp.', 'P.O. Box 665, 1416 Placerat. St.', '08209', 'Korba'),
(76, 'Neque Limited', 'P.O. Box 828, 397 Nunc St.', '10509', 'Mussy-la-Ville'),
(77, 'Sodales Incorporated', 'Ap #122-4227 Fringilla, Av.', 'U53 6', 'Arzano'),
(78, 'Libero Lacus Varius Found', 'Ap #463-2301 Cum St.', '15086', 'Chandannagar'),
(79, 'Et Magna LLC', '2073 Varius Avenue', '13688', 'Avesta'),
(80, 'In Consequat Industries', '5067 Sem Rd.', '25952', 'Springfield'),
(81, 'Interdum Feugiat LLP', 'P.O. Box 802, 182 Lectus St.', '5187', 'Francavilla in Sinni'),
(82, 'Eu Corporation', '118-462 Elit, Street', '9083', 'Nederhasselt'),
(83, 'Sed Turpis Company', 'P.O. Box 785, 2774 Cum Ave', '2806', 'Sesto al Reghena'),
(84, 'Massa Non Ante Company', '257-3237 Ultrices. St.', '95044', 'Nässjö'),
(85, 'Ut Aliquam PC', 'Ap #233-1822 Ornare Road', '4341', 'Dollard-des-Ormeaux'),
(86, 'Ut Tincidunt Foundation', '486-7552 Torquent St.', '41310', 'Trazegnies'),
(87, 'Ridiculus Mus Proin Limit', '384-2403 Nostra, Avenue', '6586', 'Stonehaven'),
(88, 'Dolor Quisque LLC', 'P.O. Box 499, 6244 Neque Rd.', '9103X', 'Grande Prairie'),
(89, 'Fermentum LLP', 'Ap #109-6301 Senectus Ave', '68238', 'Gooik'),
(90, 'Lorem LLC', 'Ap #982-4890 Eleifend Rd.', '84301', 'Maringá'),
(91, 'Quisque Company', '871-4969 Massa. Avenue', '21005', 'Seloignes'),
(92, 'Elit Erat Inc.', '925-6838 Mollis Rd.', '18-55', 'Drayton Valley'),
(93, 'Nisi Mauris Nulla Limited', '6565 Duis Road', '9483', 'Maracanaú'),
(94, 'Metus Facilisis Corporati', '621-3072 Accumsan Avenue', '66634', 'Albagiara'),
(95, 'Malesuada Vel Limited', '475-3148 Penatibus St.', '01949', 'Meetkerke'),
(96, 'Cras Dictum Ultricies Fou', 'Ap #376-7440 Mauris St.', '73968', 'Villach'),
(97, 'Et Netus Ltd', '8186 Molestie Av.', '54098', 'Saintes'),
(98, 'Dolor LLP', '9881 Nec, Rd.', '05437', 'Van'),
(99, 'Lorem Vehicula Industries', 'P.O. Box 903, 3386 Aliquet Road', '8812', 'Ribeirão Preto'),
(100, 'Vel LLC', '450-5865 Id Road', '05329', 'Drumheller');

-- --------------------------------------------------------

--
-- Structure de la table `etat`
--

CREATE TABLE `etat` (
  `id_etat` int(11) NOT NULL,
  `designation_etat` varchar(100) NOT NULL,
  `ratio_decote_achat` float NOT NULL,
  `ratio_decote_vente` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etat`
--

INSERT INTO `etat` (`id_etat`, `designation_etat`, `ratio_decote_achat`, `ratio_decote_vente`) VALUES
(1, 'Jacob', 76, 90),
(2, 'Dorian', 100, 19),
(3, 'Keith', 83, 92),
(4, 'Ross', 48, 44),
(5, 'Oleg', 90, 64),
(6, 'Allen', 51, 94),
(7, 'Macaulay', 57, 27),
(8, 'Paki', 77, 75),
(9, 'William', 90, 34),
(10, 'Jameson', 21, 60),
(11, 'Vaughan', 39, 8),
(12, 'Kennan', 82, 27),
(13, 'Porter', 51, 90),
(14, 'Elton', 41, 79),
(15, 'Bruce', 28, 16),
(16, 'Thaddeus', 100, 26),
(17, 'Jason', 63, 15),
(18, 'Warren', 7, 90),
(19, 'Abel', 6, 96),
(20, 'Christian', 44, 19),
(21, 'Rashad', 91, 48),
(22, 'Denton', 92, 98),
(23, 'Solomon', 71, 19),
(24, 'Damian', 53, 28),
(25, 'Keith', 45, 52),
(26, 'Jerome', 25, 94),
(27, 'Driscoll', 7, 96),
(28, 'Abraham', 90, 41),
(29, 'Ryder', 57, 95),
(30, 'Mark', 99, 1);

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `numero_facture` int(11) NOT NULL,
  `date_facture` date NOT NULL,
  `id_tuteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `facture`
--

INSERT INTO `facture` (`numero_facture`, `date_facture`, `id_tuteur`) VALUES
(1, '0000-00-00', 60),
(2, '0000-00-00', 62),
(3, '0000-00-00', 8),
(4, '0000-00-00', 16),
(5, '0000-00-00', 6),
(6, '0000-00-00', 60),
(7, '0000-00-00', 39),
(8, '0000-00-00', 12),
(9, '0000-00-00', 73),
(10, '0000-00-00', 40),
(11, '0000-00-00', 64),
(12, '0000-00-00', 27),
(13, '0000-00-00', 62),
(14, '0000-00-00', 64),
(15, '0000-00-00', 58),
(16, '0000-00-00', 18),
(17, '0000-00-00', 54),
(18, '0000-00-00', 15),
(19, '0000-00-00', 77),
(20, '0000-00-00', 21),
(21, '0000-00-00', 10),
(22, '0000-00-00', 67),
(23, '0000-00-00', 5),
(24, '0000-00-00', 29),
(25, '0000-00-00', 4),
(26, '0000-00-00', 56),
(27, '0000-00-00', 97),
(28, '0000-00-00', 32),
(29, '0000-00-00', 72),
(30, '0000-00-00', 74),
(31, '0000-00-00', 12),
(32, '0000-00-00', 65),
(33, '0000-00-00', 30),
(34, '0000-00-00', 69),
(35, '0000-00-00', 97),
(36, '0000-00-00', 36),
(37, '0000-00-00', 58),
(38, '0000-00-00', 66),
(39, '0000-00-00', 70),
(40, '0000-00-00', 9),
(41, '0000-00-00', 77),
(42, '0000-00-00', 7),
(43, '0000-00-00', 1),
(44, '0000-00-00', 76),
(45, '0000-00-00', 1),
(46, '0000-00-00', 32),
(47, '0000-00-00', 95),
(48, '0000-00-00', 33),
(49, '0000-00-00', 89),
(50, '0000-00-00', 88),
(51, '0000-00-00', 98),
(52, '0000-00-00', 23),
(53, '0000-00-00', 51),
(54, '0000-00-00', 26),
(55, '0000-00-00', 39),
(56, '0000-00-00', 50),
(57, '0000-00-00', 62),
(58, '0000-00-00', 12),
(59, '0000-00-00', 30),
(60, '0000-00-00', 30),
(61, '0000-00-00', 84),
(62, '0000-00-00', 86),
(63, '0000-00-00', 48),
(64, '0000-00-00', 83),
(65, '0000-00-00', 91),
(66, '0000-00-00', 43),
(67, '0000-00-00', 65),
(68, '0000-00-00', 37),
(69, '0000-00-00', 85),
(70, '0000-00-00', 72),
(71, '0000-00-00', 32),
(72, '0000-00-00', 46),
(73, '0000-00-00', 71),
(74, '0000-00-00', 44),
(75, '0000-00-00', 6),
(76, '0000-00-00', 81),
(77, '0000-00-00', 52),
(78, '0000-00-00', 41),
(79, '0000-00-00', 15),
(80, '0000-00-00', 86),
(81, '0000-00-00', 62),
(82, '0000-00-00', 4),
(83, '0000-00-00', 72),
(84, '0000-00-00', 64),
(85, '0000-00-00', 8),
(86, '0000-00-00', 12),
(87, '0000-00-00', 36),
(88, '0000-00-00', 37),
(89, '0000-00-00', 50),
(90, '0000-00-00', 38),
(91, '0000-00-00', 74),
(92, '0000-00-00', 5),
(93, '0000-00-00', 29),
(94, '0000-00-00', 54),
(95, '0000-00-00', 79),
(96, '0000-00-00', 71),
(97, '0000-00-00', 57),
(98, '0000-00-00', 20),
(99, '0000-00-00', 73),
(100, '0000-00-00', 98);

-- --------------------------------------------------------

--
-- Structure de la table `fournir`
--

CREATE TABLE `fournir` (
  `prix_unitaire` float NOT NULL,
  `ISBN` varchar(25) NOT NULL,
  `id_fournisseur` int(11) NOT NULL,
  `id_association` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `fournir`
--

INSERT INTO `fournir` (`prix_unitaire`, `ISBN`, `id_fournisseur`, `id_association`) VALUES
(56, '1', 63, 68),
(16, '12', 99, 31),
(8, '13', 14, 35),
(87, '13', 89, 15),
(64, '15', 9, 98),
(45, '16', 6, 60),
(8, '16', 94, 48),
(61, '17', 83, 79),
(71, '2', 14, 77),
(41, '20', 48, 51),
(29, '22', 85, 3),
(64, '23', 73, 43),
(35, '24', 24, 18),
(39, '24', 64, 79),
(52, '24', 83, 53),
(58, '25', 80, 76),
(9, '25', 100, 58),
(63, '26', 76, 8),
(7, '26', 76, 47),
(28, '27', 60, 9),
(80, '29', 19, 78),
(13, '29', 83, 1),
(28, '3', 23, 94),
(100, '3', 70, 37),
(10, '3', 75, 74),
(67, '3', 77, 45),
(34, '30', 17, 4),
(39, '31', 40, 76),
(31, '32', 39, 72),
(15, '36', 16, 51),
(6, '36', 57, 78),
(18, '36', 58, 28),
(84, '36', 77, 14),
(13, '39', 15, 42),
(84, '39', 44, 79),
(25, '39', 85, 5),
(93, '4', 13, 41),
(82, '40', 37, 26),
(20, '41', 78, 68),
(47, '42', 58, 67),
(49, '43', 22, 41),
(19, '43', 74, 81),
(36, '44', 6, 51),
(11, '45', 78, 67),
(100, '46', 25, 65),
(34, '46', 73, 43),
(91, '48', 44, 32),
(75, '49', 47, 88),
(7, '50', 54, 9),
(90, '51', 62, 26),
(77, '55', 17, 32),
(91, '55', 96, 21),
(97, '58', 37, 64),
(19, '58', 57, 12),
(37, '58', 63, 75),
(88, '59', 10, 61),
(47, '59', 26, 85),
(42, '59', 71, 6),
(10, '61', 91, 89),
(40, '61', 99, 73),
(48, '62', 68, 7),
(23, '63', 26, 97),
(15, '63', 44, 95),
(68, '63', 77, 18),
(38, '63', 94, 23),
(89, '67', 65, 37),
(54, '69', 5, 95),
(55, '69', 22, 10),
(74, '69', 27, 83),
(93, '71', 15, 67),
(72, '71', 31, 73),
(32, '71', 58, 8),
(49, '72', 1, 65),
(35, '73', 31, 71),
(49, '73', 62, 76),
(19, '74', 100, 50),
(98, '76', 6, 5),
(20, '77', 70, 100),
(54, '79', 80, 76),
(48, '80', 2, 39),
(14, '81', 85, 16),
(6, '82', 4, 96),
(49, '83', 75, 87),
(32, '84', 8, 46),
(77, '86', 18, 78),
(48, '88', 19, 66),
(96, '9', 50, 95),
(8, '90', 72, 20),
(22, '90', 89, 61),
(59, '92', 94, 24),
(31, '93', 63, 18),
(53, '94', 1, 92),
(87, '94', 40, 80),
(49, '95', 61, 48),
(34, '97', 100, 9),
(78, '98', 18, 49),
(47, '98', 85, 10),
(63, '98', 90, 14),
(95, '99', 61, 97),
(80, '99', 84, 37);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `id_fournisseur` int(11) NOT NULL,
  `nom_fournisseur` varchar(100) NOT NULL,
  `adresse_fournisseur` varchar(300) DEFAULT NULL,
  `cp_fournisseur` char(5) NOT NULL,
  `ville_fournisseur` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `fournisseur`
--

INSERT INTO `fournisseur` (`id_fournisseur`, `nom_fournisseur`, `adresse_fournisseur`, `cp_fournisseur`, `ville_fournisseur`) VALUES
(1, 'Vel Convallis In Corp.', '509-7292 Molestie Rd.', '21604', 'Waren'),
(2, 'Quisque Company', '7046 Id Rd.', '61815', 'Zaragoza'),
(3, 'Fringilla Industries', '120-2581 Tempor Ave', '03609', 'Bodmin'),
(4, 'Vitae Mauris LLP', '9302 Arcu St.', '90-06', 'Viernheim'),
(5, 'Amet Diam Eu Limited', '301-1537 Sed Avenue', '59932', 'Olathe'),
(6, 'Aliquam Fringilla Incorporated', 'Ap #801-4115 Sapien Rd.', '2865', 'Lanark County'),
(7, 'Massa Non Ante Company', '553-2090 Enim Road', '76283', 'Grimaldi'),
(8, 'At Velit Pellentesque Institute', 'P.O. Box 946, 1727 Non Av.', '33616', 'Riparbella'),
(9, 'Neque Ltd', 'P.O. Box 583, 3909 Ut, Road', '3705', 'Athens'),
(10, 'Lorem Associates', 'P.O. Box 446, 7218 Magna. Rd.', 'S0S 3', 'Fallo'),
(11, 'Sit Amet Ornare LLC', '932 Nec St.', '94979', 'Veenendaal'),
(12, 'Tellus Company', 'P.O. Box 953, 2143 Donec Ave', '07555', 'Pagazzano'),
(13, 'Mauris Rhoncus Id Consulting', 'P.O. Box 277, 5297 Adipiscing Road', '48034', 'Ipswich'),
(14, 'Fusce Diam Nunc Corp.', 'Ap #622-6587 Ipsum Road', '52912', 'Chapadinha'),
(15, 'Tincidunt Tempus Risus LLP', 'P.O. Box 550, 3024 Sodales St.', '7359', 'Glovertown'),
(16, 'Neque PC', 'P.O. Box 180, 7529 Eu St.', '3798', 'Allahabad'),
(17, 'Auctor Velit Eget Company', 'Ap #311-3517 Malesuada Road', '90629', 'Quilaco'),
(18, 'Proin Incorporated', 'Ap #200-5954 Pellentesque, Street', '3735', 'H?rouxville'),
(19, 'Nisi LLC', 'P.O. Box 632, 2551 Mauris Rd.', '47236', 'San Giovanni in Galdo'),
(20, 'Quam Corporation', '230-777 Egestas, Rd.', '4392', 'Salihli'),
(21, 'Sed Et Libero Corp.', 'Ap #533-899 Diam Av.', 'V6E 3', 'Raiganj'),
(22, 'Morbi Quis Ltd', 'P.O. Box 852, 8059 Vestibulum Av.', '9517', 'Morvi'),
(23, 'Nisi Aenean Eget Associates', 'P.O. Box 559, 5420 Cum Rd.', '6025R', 'Breda'),
(24, 'Vel Nisl Industries', 'Ap #664-3912 Nibh Ave', '60476', 'Lavacherie'),
(25, 'Justo LLC', '515-540 Diam Road', '34306', 'Stilo'),
(26, 'Hymenaeos Mauris Corp.', '9152 Eros Ave', '2836', 'North Battleford'),
(27, 'Integer Sem Elit Corporation', '226-4643 Sed St.', '41100', 'Homburg'),
(28, 'A Corporation', 'Ap #493-2035 Felis, St.', '54013', 'Shawville'),
(29, 'Libero Lacus Varius Incorporated', '4668 Orci Av.', '89779', 'Milestone'),
(30, 'At Lacus Incorporated', 'P.O. Box 556, 4191 Justo. St.', '7346M', 'Bidar'),
(31, 'In LLP', 'Ap #659-2600 Consectetuer Street', '14465', 'Bellefontaine'),
(32, 'Elit Corp.', '5526 Eu Rd.', '13849', 'Bielefeld'),
(33, 'Tincidunt Corp.', 'Ap #927-9568 Quisque St.', '3546', 'Quarona'),
(34, 'Fringilla Donec Inc.', 'Ap #585-7575 Cum Ave', 'M1L 2', 'Nice'),
(35, 'Sit Consulting', 'P.O. Box 611, 4205 Semper St.', '6811', 'Ballarat'),
(36, 'Cursus A Foundation', '199 Libero St.', '38347', 'Crystal Springs'),
(37, 'Ac Libero Nec Foundation', '8140 Gravida Avenue', '30496', 'Kakinada'),
(38, 'Maecenas Limited', 'Ap #741-9329 Dolor, Rd.', '72407', 'Merrickville-Wolford'),
(39, 'Amet Incorporated', '2496 Dolor St.', '75555', 'Miranda'),
(40, 'Fames Limited', '6495 Eget, St.', '3155', 'Drayton Valley'),
(41, 'In Institute', 'Ap #980-6761 Pede Street', '05554', 'Augsburg'),
(42, 'Libero Nec Ligula Associates', 'P.O. Box 105, 8082 Nulla Avenue', '40371', 'Newbury'),
(43, 'Enim Etiam Imperdiet Industries', 'P.O. Box 208, 1319 Laoreet Avenue', '4757N', 'Tramatza'),
(44, 'Ante Vivamus Non Limited', '6235 Dictum St.', '28587', 'Wevelgem'),
(45, 'Arcu Ac Inc.', '4723 Cras Street', '81196', 'Mühlheim am Main'),
(46, 'Luctus Et Limited', 'P.O. Box 527, 787 Curabitur Street', '65505', 'Delianuova'),
(47, 'Ac Incorporated', 'Ap #742-1782 Nunc Rd.', '29220', 'Abbotsford'),
(48, 'Iaculis Odio Nam Inc.', 'Ap #990-4440 Libero Avenue', '82814', 'Castellafiume'),
(49, 'Pede Ultrices A Industries', '445 Faucibus Av.', '10-59', 'Petit-Hallet'),
(50, 'Mauris Sit Corp.', 'P.O. Box 619, 8884 Faucibus. Road', '7712', 'Okigwe'),
(51, 'Egestas Inc.', '5196 Erat St.', '12149', 'Grande Prairie'),
(52, 'Nec Orci Company', '4161 Erat. St.', '89252', 'Valverde'),
(53, 'Laoreet Inc.', '9034 Magna. Rd.', '2890', 'Montignies-Saint-Christophe'),
(54, 'Viverra Corporation', '785-5811 Nec, Avenue', '1975', 'Okara'),
(55, 'Vitae Foundation', '303-5754 Sollicitudin Av.', 'B8G 9', 'Thame'),
(56, 'Penatibus Et Magnis Institute', 'Ap #268-4119 Ligula. Rd.', '1925', 'Pugwash'),
(57, 'Aliquam Erat Volutpat LLC', 'P.O. Box 606, 4980 Sem, Road', '7806', 'Nagpur'),
(58, 'Pellentesque Habitant LLC', '7714 Et, Avenue', '67668', 'Norfolk County'),
(59, 'Lectus Incorporated', '189-788 Volutpat Street', '1176E', 'Cambridge'),
(60, 'Proin Vel Nisl Industries', 'Ap #267-9420 Orci, Avenue', '19564', 'Pilibhit'),
(61, 'Sagittis Consulting', 'Ap #527-752 Enim. St.', '8258', 'Göppingen'),
(62, 'Amet Consectetuer Adipiscing Consulting', '150-1104 Sit St.', '78824', 'Terzorio'),
(63, 'Libero Corp.', 'P.O. Box 582, 5573 Scelerisque Rd.', '7965', 'Tomé'),
(64, 'Mauris Ipsum Industries', 'P.O. Box 765, 5419 Cursus, Road', '32620', 'La Hulpe'),
(65, 'Aliquam Company', '9345 Vulputate St.', '05852', 'Monte San Savino'),
(66, 'Aliquet Libero Integer Industries', '459-1401 Fusce Road', '40029', 'HomprŽ'),
(67, 'Lorem Luctus Ut Associates', '109-3844 Turpis. St.', '8901', 'Beert'),
(68, 'Massa Rutrum PC', '5879 Turpis St.', '16083', 'Tubeke Tubize'),
(69, 'Sed Institute', '347-2578 Sed St.', 'V1E 6', 'Penzance'),
(70, 'Donec Institute', '5872 Commodo St.', '55-45', 'K?dzierzyn-Ko?le'),
(71, 'Natoque Penatibus Et LLC', '4511 In Avenue', '14984', '?slahiye'),
(72, 'Donec Est Nunc Limited', '2057 Sed Road', 'Z5W 2', 'Torgiano'),
(73, 'Per Conubia Nostra Industries', 'Ap #381-1151 Ornare St.', '48237', 'Pitt Meadows'),
(74, 'Imperdiet Ornare Associates', 'P.O. Box 867, 524 Aliquam Avenue', '06245', 'Aalst'),
(75, 'Velit Dui Semper Corporation', '617 Risus. Av.', '9438', 'Tranås'),
(76, 'Tempus Risus Incorporated', '6911 Porttitor Av.', '13362', 'St. Austell'),
(77, 'Semper Corporation', '3286 Fusce Rd.', '39-85', 'San Pablo'),
(78, 'Aliquam Erat Volutpat Ltd', '4299 Lorem, Road', '25280', 'Pencahue'),
(79, 'Nibh Incorporated', '6542 Ut, Road', '7708', 'Malderen'),
(80, 'Netus Et Inc.', 'P.O. Box 107, 777 Sem Rd.', '9035', 'Saint-Marc'),
(81, 'Eu Inc.', 'Ap #102-6196 Pellentesque Road', '4885', 'Rangiora'),
(82, 'Risus Company', '852-4979 Dui, Rd.', '09700', 'Montecarotto'),
(83, 'Nunc Ac Corp.', '7534 Aliquam Ave', '34881', 'Alcorcón'),
(84, 'Risus Company', '793-2230 Mauris St.', '88009', 'Cortil-Noirmont'),
(85, 'Ante Vivamus Inc.', 'Ap #299-1090 Turpis Rd.', '66271', 'Burgos'),
(86, 'Vitae Corp.', '1606 Tortor, Rd.', '44348', 'Montefalcone nel Sannio'),
(87, 'Ut Odio Vel PC', '254-6519 Elit. Ave', '21649', 'Dolceacqua'),
(88, 'Vivamus Corp.', 'Ap #471-3301 Ut, Av.', '59859', 'Lustin'),
(89, 'Sed Consequat Auctor Incorporated', '537-2874 Donec Ave', '2746', 'Koningshooikt'),
(90, 'Posuere At Velit LLC', '7691 Duis Avenue', '92804', 'Perpignan'),
(91, 'Rhoncus Donec Est Corp.', '892-5630 Dictum Rd.', '75625', 'Santa Croce sull\'Arno'),
(92, 'Aliquam Inc.', 'P.O. Box 714, 9771 Lacus Street', '3823', 'Viddalba'),
(93, 'Adipiscing Lobortis Company', '880-3080 Sed, Road', '63-18', 'Quinte West'),
(94, 'Nulla LLC', '1252 Aenean Rd.', '70808', 'Rum'),
(95, 'Erat Institute', '2521 Dis Road', '0239I', 'Cambridge Bay'),
(96, 'Nisl Quisque Limited', '725-3573 Dui. St.', '05054', 'Cerami'),
(97, 'Congue In Scelerisque Company', '207-7398 Quis Ave', '94530', 'Acquasanta Terme'),
(98, 'Eget Mollis Inc.', 'P.O. Box 723, 9189 Nulla Ave', '4872N', 'San Vicente'),
(99, 'Mi Company', 'Ap #215-3273 Adipiscing St.', '8561', 'Fermont'),
(100, 'Molestie LLP', 'P.O. Box 709, 2125 Vestibulum Rd.', '34290', 'Malle');

-- --------------------------------------------------------

--
-- Structure de la table `lister`
--

CREATE TABLE `lister` (
  `annee` year(4) DEFAULT NULL,
  `ISBN` varchar(25) NOT NULL,
  `id_etablissement` int(11) NOT NULL,
  `id_classe` int(11) NOT NULL,
  `id_discipline` int(11) NOT NULL,
  `id_specialite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lister`
--

INSERT INTO `lister` (`annee`, `ISBN`, `id_etablissement`, `id_classe`, `id_discipline`, `id_specialite`) VALUES
(2022, '1', 53, 14, 9, 16),
(2011, '10', 57, 15, 26, 33),
(2028, '14', 34, 26, 29, 2),
(2001, '15', 77, 25, 6, 22),
(2005, '18', 15, 24, 9, 28),
(2021, '19', 38, 33, 13, 5),
(2003, '19', 69, 22, 5, 7),
(2019, '19', 74, 35, 27, 20),
(2023, '19', 95, 1, 24, 39),
(2020, '2', 9, 15, 34, 32),
(2019, '20', 36, 38, 16, 7),
(2011, '21', 100, 33, 26, 13),
(2020, '22', 67, 11, 10, 15),
(2018, '22', 89, 3, 22, 38),
(2015, '23', 3, 4, 5, 17),
(2016, '23', 50, 30, 36, 9),
(2017, '26', 91, 9, 35, 22),
(2028, '26', 91, 30, 12, 15),
(2011, '27', 55, 35, 38, 35),
(2030, '27', 94, 19, 5, 40),
(2023, '28', 34, 5, 18, 38),
(2031, '28', 67, 31, 21, 20),
(2021, '29', 79, 37, 30, 14),
(2022, '29', 86, 40, 15, 36),
(2025, '3', 57, 23, 10, 40),
(2005, '31', 8, 33, 24, 35),
(2008, '31', 17, 15, 36, 1),
(2014, '32', 23, 29, 2, 17),
(2030, '34', 4, 18, 22, 18),
(2029, '34', 61, 40, 27, 15),
(2015, '38', 89, 27, 16, 23),
(2028, '39', 7, 25, 14, 38),
(2019, '40', 33, 21, 22, 31),
(2005, '42', 8, 36, 40, 35),
(2022, '42', 97, 28, 40, 21),
(2018, '46', 49, 25, 39, 19),
(2003, '47', 39, 11, 31, 25),
(2003, '49', 39, 38, 32, 17),
(2025, '49', 65, 29, 29, 14),
(2026, '49', 68, 22, 8, 28),
(2026, '49', 86, 5, 23, 36),
(2010, '5', 8, 39, 35, 1),
(2009, '51', 62, 6, 11, 25),
(2002, '54', 34, 30, 24, 23),
(2007, '55', 92, 14, 14, 33),
(2002, '56', 99, 32, 25, 35),
(2016, '57', 8, 26, 30, 14),
(2006, '57', 95, 3, 16, 10),
(2012, '58', 84, 20, 31, 18),
(2011, '60', 3, 7, 21, 16),
(2018, '60', 34, 29, 30, 19),
(2017, '61', 47, 28, 14, 10),
(2013, '61', 82, 4, 14, 21),
(2022, '61', 93, 21, 16, 28),
(2022, '62', 28, 13, 1, 12),
(2027, '62', 58, 32, 18, 8),
(2029, '64', 16, 1, 38, 20),
(2004, '64', 53, 16, 6, 4),
(2018, '64', 58, 30, 26, 23),
(2016, '64', 85, 5, 39, 22),
(2031, '68', 46, 33, 18, 2),
(2022, '68', 96, 36, 23, 7),
(2031, '69', 82, 22, 35, 15),
(2010, '70', 15, 21, 40, 26),
(2024, '71', 1, 17, 14, 8),
(2018, '71', 44, 17, 9, 7),
(2004, '71', 74, 40, 39, 16),
(2007, '71', 79, 16, 7, 29),
(2008, '72', 46, 7, 6, 13),
(2017, '72', 55, 40, 33, 10),
(2009, '73', 3, 34, 13, 17),
(2010, '73', 75, 36, 17, 27),
(2006, '75', 7, 11, 10, 3),
(2015, '75', 48, 20, 34, 28),
(2013, '76', 57, 21, 18, 21),
(2021, '76', 58, 28, 20, 16),
(2015, '78', 53, 23, 19, 39),
(2018, '79', 68, 28, 29, 32),
(2012, '8', 63, 4, 24, 7),
(2022, '80', 91, 10, 16, 16),
(2029, '81', 66, 10, 18, 3),
(2013, '81', 99, 26, 28, 19),
(2025, '81', 100, 12, 30, 22),
(2029, '82', 27, 36, 24, 13),
(2022, '82', 60, 19, 14, 39),
(2017, '84', 99, 35, 34, 4),
(2013, '86', 8, 11, 4, 6),
(2009, '86', 97, 24, 10, 3),
(2030, '87', 64, 24, 30, 28),
(2024, '90', 14, 16, 13, 33),
(2027, '90', 91, 14, 15, 6),
(2005, '91', 17, 15, 27, 19),
(2001, '94', 18, 6, 39, 31),
(2010, '94', 61, 38, 40, 1),
(2018, '98', 25, 14, 21, 27),
(2015, '98', 89, 19, 31, 18),
(2012, '98', 95, 25, 9, 36),
(2003, '99', 3, 29, 20, 2),
(2019, '99', 45, 13, 33, 15),
(2002, '99', 89, 2, 6, 36);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `ISBN` varchar(25) NOT NULL,
  `titre` varchar(25) NOT NULL,
  `auteur` varchar(25) NOT NULL,
  `editeur` varchar(25) NOT NULL,
  `annee_parution` year(4) NOT NULL,
  `reutilisable` tinyint(1) NOT NULL,
  `quantite_mini` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`ISBN`, `titre`, `auteur`, `editeur`, `annee_parution`, `reutilisable`, `quantite_mini`) VALUES
('1', 'Aimee Ingram', 'Giacomo', 'Arcu Sed Et Foundation', 2025, 0, 96),
('10', 'Aretha Terrell', 'Colt', 'Purus Ac Tellus Institute', 2006, 1, 46),
('100', 'Amena White', 'Quinn', 'Egestas Rhoncus Proin Ass', 2007, 1, 53),
('11', 'Phyllis Horn', 'Melvin', 'Velit In Aliquet LLP', 2010, 0, 53),
('12', 'Lillian Garcia', 'Ronan', 'Ut Ltd', 2019, 1, 66),
('13', 'Eliana Mccoy', 'Simon', 'In Corporation', 2029, 0, 42),
('14', 'Noel Garrison', 'Guy', 'Proin Institute', 2015, 0, 27),
('15', 'Kendall Nelson', 'Andrew', 'Mauris Ut Mi Ltd', 2029, 1, 67),
('16', 'Aurelia Henson', 'Wayne', 'Penatibus Et Limited', 2006, 1, 28),
('17', 'Danielle Nieves', 'Lee', 'Nunc Interdum PC', 2020, 0, 19),
('18', 'Ignacia Ware', 'Gil', 'Erat Sed Nunc Corp.', 2025, 0, 84),
('19', 'Melodie Watts', 'Zahir', 'Lobortis PC', 2006, 0, 70),
('2', 'Genevieve Burnett', 'Ahmed', 'Vel Turpis Aliquam Ltd', 2009, 1, 26),
('20', 'Cassidy Ewing', 'Kirk', 'Eros Proin LLP', 2007, 0, 18),
('21', 'Deanna Hebert', 'Alfonso', 'Dolor Egestas Consulting', 2025, 1, 48),
('22', 'Moana Carpenter', 'Vladimir', 'Donec Ltd', 2012, 1, 79),
('23', 'Leigh Cherry', 'Mohammad', 'Neque Nullam Industries', 2010, 1, 38),
('24', 'Erin Faulkner', 'Zachary', 'Tempus Risus Donec Ltd', 2001, 0, 83),
('25', 'Heather Elliott', 'Cole', 'Libero Et Tristique Found', 2016, 0, 82),
('26', 'Dorothy Coffey', 'Justin', 'Egestas A Scelerisque LLP', 2009, 0, 29),
('27', 'Nita Black', 'Duncan', 'Auctor Velit PC', 2013, 1, 51),
('28', 'Marny Hoffman', 'Timon', 'Vestibulum Lorem Incorpor', 2007, 1, 13),
('29', 'Dominique Gilliam', 'Eric', 'Nec Corporation', 2029, 1, 68),
('3', 'Zenaida Preston', 'Allen', 'Felis Adipiscing Corporat', 2031, 0, 56),
('30', 'Athena Ruiz', 'Reece', 'Fermentum Convallis Ltd', 2017, 1, 20),
('31', 'Kendall Browning', 'Caleb', 'Dictum Placerat Inc.', 2009, 0, 49),
('32', 'Rebecca Diaz', 'Alfonso', 'Malesuada Vel Limited', 2004, 1, 43),
('33', 'Ursa Sloan', 'Clark', 'Neque Nullam Nisl PC', 2008, 1, 25),
('34', 'Yetta Padilla', 'Tanner', 'Congue In LLP', 2002, 1, 84),
('35', 'Ignacia Yang', 'Hashim', 'Ante Industries', 2018, 1, 67),
('36', 'Carissa Charles', 'Levi', 'Magna Nam Company', 2024, 0, 68),
('37', 'Jessamine Dorsey', 'Kamal', 'Vehicula Industries', 2026, 0, 43),
('38', 'Colette Vincent', 'Nero', 'Ut Erat LLC', 2011, 0, 46),
('39', 'Carly Mcneil', 'Jelani', 'Aliquam LLP', 2031, 0, 91),
('4', 'Tara May', 'Ronan', 'Feugiat Inc.', 2004, 1, 27),
('40', 'Gisela Coleman', 'Price', 'Sagittis PC', 2014, 1, 48),
('41', 'Patricia Flowers', 'Norman', 'Eleifend Cras Sed Limited', 2016, 1, 81),
('42', 'Justina Pittman', 'Brock', 'Primis In Associates', 2010, 1, 42),
('43', 'Hadassah Mcintosh', 'Ali', 'Lectus Ante Dictum Corpor', 2026, 0, 60),
('44', 'Roanna Melendez', 'Kennan', 'A Inc.', 2026, 1, 33),
('45', 'Kimberley Lawrence', 'Daniel', 'Non Enim Commodo PC', 2021, 1, 98),
('46', 'Cameran Pacheco', 'Zephania', 'Ipsum Nunc Associates', 2027, 1, 96),
('47', 'Maggie Tate', 'Zachery', 'Urna Ut PC', 2011, 1, 76),
('48', 'Melanie Lynch', 'Yardley', 'Nulla Tincidunt Consultin', 2004, 1, 40),
('49', 'Clio Holcomb', 'Hunter', 'Suscipit Est Ac Foundatio', 2027, 0, 95),
('5', 'Sarah Pittman', 'Cade', 'Aliquam Incorporated', 2007, 1, 51),
('50', 'Shelby Delgado', 'Stephen', 'Vel LLC', 2027, 0, 88),
('51', 'Wilma Carney', 'Joshua', 'Tempor Associates', 2023, 1, 15),
('52', 'Yeo Knox', 'Isaiah', 'Nec Corporation', 2025, 1, 65),
('53', 'Amela Rose', 'Wang', 'Sed PC', 2028, 0, 96),
('54', 'Ima Velasquez', 'Dieter', 'Eget Institute', 2014, 1, 32),
('55', 'Carla Moreno', 'Stuart', 'Natoque Penatibus Associa', 2005, 1, 93),
('56', 'Noel White', 'Zephania', 'Scelerisque Foundation', 2025, 1, 77),
('57', 'Ava Sandoval', 'Kasimir', 'Nec Euismod In Corp.', 2009, 0, 54),
('58', 'Audrey Carr', 'Bruno', 'Sed Dictum Eleifend Assoc', 2013, 0, 13),
('59', 'Lucy Boone', 'Josiah', 'Posuere Consulting', 2030, 0, 39),
('6', 'Ila Combs', 'Dale', 'Lacus Ltd', 2028, 1, 47),
('60', 'Willow Cantrell', 'Avram', 'Et Netus Et Institute', 2020, 0, 55),
('61', 'Inez Wiley', 'Kieran', 'Arcu Inc.', 2015, 1, 45),
('62', 'Alma Vang', 'Phillip', 'Gravida Non Sollicitudin ', 2017, 1, 37),
('63', 'Aretha Mccarthy', 'Reece', 'Nunc Pulvinar Arcu Associ', 2029, 0, 26),
('64', 'Shea Dodson', 'Derek', 'Lorem Vehicula Associates', 2013, 1, 33),
('65', 'Jenna Guerra', 'Dorian', 'Pellentesque Habitant Inc', 2005, 1, 22),
('66', 'Hadley Weeks', 'Matthew', 'Aenean Gravida Corp.', 2018, 0, 94),
('67', 'Karyn Bush', 'Arsenio', 'Nec Quam Curabitur Limite', 2013, 1, 85),
('68', 'Bell Richardson', 'Kermit', 'Gravida LLP', 2020, 1, 77),
('69', 'Shaeleigh Miranda', 'Dorian', 'Gravida Corp.', 2015, 1, 18),
('7', 'Amity Valenzuela', 'Kenneth', 'Justo Proin Inc.', 2013, 1, 70),
('70', 'Camille White', 'Martin', 'Dui Lectus Rutrum LLP', 2003, 1, 19),
('71', 'Fatima Kent', 'Barclay', 'Ligula Donec Inc.', 2006, 0, 78),
('72', 'Idola Fitzpatrick', 'Zahir', 'Nam Consequat Foundation', 2027, 1, 31),
('73', 'Jaquelyn Preston', 'Castor', 'Scelerisque Mollis Compan', 2016, 1, 66),
('74', 'Tanisha Alston', 'Ethan', 'Elementum Dui Quis Indust', 2007, 0, 96),
('75', 'Fallon Compton', 'Porter', 'Vitae Mauris Sit Associat', 2031, 1, 56),
('76', 'Serina Stuart', 'Gil', 'Semper Foundation', 2030, 0, 61),
('77', 'Naida Park', 'Brent', 'Tortor Nibh Sit Ltd', 2024, 1, 76),
('78', 'Stacy Joyner', 'Wang', 'Aliquet Associates', 2022, 0, 88),
('79', 'Alisa Thornton', 'Price', 'Vestibulum Ut Industries', 2004, 0, 28),
('8', 'Montana Lancaster', 'Colby', 'Cras LLP', 2001, 1, 89),
('80', 'Leila Brown', 'Reed', 'Sem Molestie Incorporated', 2006, 0, 61),
('81', 'Nina Miller', 'Zeus', 'Mauris Ipsum Porta LLC', 2023, 1, 94),
('82', 'India Robles', 'Darius', 'At Foundation', 2007, 0, 63),
('83', 'Aiko Ramos', 'Jasper', 'Malesuada LLP', 2020, 0, 24),
('84', 'Autumn Hutchinson', 'Hamish', 'Iaculis Enim Sit Associat', 2021, 0, 15),
('85', 'Iris Albert', 'Yardley', 'Sit Consulting', 2001, 0, 99),
('86', 'Mechelle Daugherty', 'Warren', 'Magna Nam Ligula Corp.', 2030, 0, 65),
('87', 'Nerea Mcmillan', 'Nero', 'Ac Company', 2014, 1, 91),
('88', 'Jillian Herring', 'Carl', 'Purus LLC', 2012, 1, 95),
('89', 'Nyssa Quinn', 'Davis', 'Ultrices Iaculis Ltd', 2018, 1, 35),
('9', 'Kitra Callahan', 'Thane', 'Enim Condimentum LLC', 2009, 1, 51),
('90', 'Meredith Santiago', 'Gannon', 'A Odio Associates', 2014, 1, 20),
('91', 'Cameran Dillard', 'Stuart', 'Consectetuer Industries', 2024, 0, 42),
('92', 'Christen Ware', 'Russell', 'Nam Porttitor LLP', 2002, 1, 81),
('93', 'Maggy Campbell', 'Jermaine', 'Sit Associates', 2019, 0, 86),
('94', 'Kirsten Walters', 'Yuli', 'At Libero Inc.', 2028, 1, 20),
('95', 'Carly Cherry', 'Hiram', 'Neque Institute', 2017, 0, 56),
('96', 'Madeson Sanchez', 'Kennan', 'Nullam Consulting', 2012, 1, 63),
('97', 'India Sanchez', 'Ian', 'Fusce Aliquam Enim Indust', 2023, 1, 73),
('98', 'Anastasia Henderson', 'Drake', 'Auctor Non Associates', 2031, 0, 68),
('99', 'Vera Green', 'Rahim', 'Faucibus Ut Foundation', 2030, 0, 19);

-- --------------------------------------------------------

--
-- Structure de la table `reglement`
--

CREATE TABLE `reglement` (
  `id_reglement` int(11) NOT NULL,
  `date_reglement` date NOT NULL,
  `montant_reglement` float NOT NULL,
  `type` varchar(10) NOT NULL,
  `numero_cheque` varchar(25) NOT NULL,
  `nom_banque` varchar(250) NOT NULL,
  `numero_facture` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `reglement`
--

INSERT INTO `reglement` (`id_reglement`, `date_reglement`, `montant_reglement`, `type`, `numero_cheque`, `nom_banque`, `numero_facture`) VALUES
(1, '0000-00-00', 159, 'cheque', '1297', 'Sagittis Nullam Incorporated', 2),
(2, '0000-00-00', 9, 'cheque', '7804', 'Magna PC', 5),
(3, '0000-00-00', 141, 'cheque', '8065', 'Montes Nascetur Ridiculus Foundation', 7),
(4, '0000-00-00', 128, 'cheque', '6864', 'Metus PC', 3),
(5, '0000-00-00', 161, 'cheque', '995', 'Pellentesque Inc.', 1),
(6, '0000-00-00', 184, 'cheque', '6301', 'Et Netus PC', 1),
(7, '0000-00-00', 180, 'cheque', '790', 'Quisque Ac Libero Corporation', 10),
(8, '0000-00-00', 135, 'cheque', '2297', 'Urna Suscipit Industries', 9),
(9, '0000-00-00', 23, 'cheque', '9033', 'Auctor Ullamcorper Inc.', 6),
(10, '0000-00-00', 55, 'cheque', '5475', 'Ad LLP', 4),
(11, '0000-00-00', 51, 'cheque', '6657', 'Commodo Auctor Foundation', 7),
(12, '0000-00-00', 114, 'cheque', '8578', 'Sed Auctor LLP', 3),
(13, '0000-00-00', 111, 'cheque', '420', 'Dignissim Lacus Aliquam Company', 7),
(14, '0000-00-00', 166, 'cheque', '5936', 'Purus Associates', 5),
(15, '0000-00-00', 137, 'cheque', '2973', 'Justo Faucibus Corp.', 2),
(16, '0000-00-00', 128, 'cheque', '594', 'Ac Institute', 9),
(17, '0000-00-00', 146, 'cheque', '760', 'Est Company', 7),
(18, '0000-00-00', 55, 'cheque', '4430', 'Vulputate PC', 4),
(19, '0000-00-00', 77, 'cheque', '1171', 'Et Magnis Industries', 3),
(20, '0000-00-00', 129, 'cheque', '9437', 'Amet Ultricies Ltd', 2),
(21, '0000-00-00', 36, 'cheque', '6547', 'Parturient Montes Associates', 2),
(22, '0000-00-00', 21, 'cheque', '8032', 'Ad Litora Consulting', 10),
(23, '0000-00-00', 104, 'cheque', '3552', 'Non Cursus Non Ltd', 7),
(24, '0000-00-00', 36, 'cheque', '9578', 'Vel Arcu Eu Corp.', 2),
(25, '0000-00-00', 63, 'cheque', '4302', 'Ac LLP', 5),
(26, '0000-00-00', 80, 'cheque', '8558', 'Gravida Foundation', 6),
(27, '0000-00-00', 9, 'cheque', '4224', 'At Inc.', 8),
(28, '0000-00-00', 71, 'cheque', '7036', 'Eu Associates', 10),
(29, '0000-00-00', 80, 'cheque', '2471', 'Eu Nulla Associates', 7),
(30, '0000-00-00', 111, 'cheque', '7677', 'Tellus Imperdiet Non Incorporated', 6),
(31, '0000-00-00', 16, 'cheque', '1646', 'Ac Corporation', 9),
(32, '0000-00-00', 195, 'cheque', '6239', 'Nec Eleifend Non Corporation', 5),
(33, '0000-00-00', 160, 'cheque', '1167', 'Ornare Libero Corporation', 9),
(34, '0000-00-00', 145, 'cheque', '9380', 'Mauris LLC', 3),
(35, '0000-00-00', 105, 'cheque', '5219', 'Non Quam Incorporated', 4),
(36, '0000-00-00', 193, 'cheque', '9617', 'Augue Scelerisque LLP', 9),
(37, '0000-00-00', 50, 'cheque', '5994', 'Nisi Aenean Foundation', 10),
(38, '0000-00-00', 135, 'cheque', '2605', 'Ipsum Primis Industries', 5),
(39, '0000-00-00', 8, 'cheque', '2644', 'Donec At Arcu Associates', 7),
(40, '0000-00-00', 11, 'cheque', '5997', 'Nunc Sit Institute', 9),
(41, '0000-00-00', 163, 'cheque', '1828', 'Ligula Industries', 2),
(42, '0000-00-00', 67, 'cheque', '4316', 'Duis LLP', 9),
(43, '0000-00-00', 117, 'cheque', '6051', 'Non Lobortis Quis Corp.', 8),
(44, '0000-00-00', 77, 'cheque', '7606', 'Non Quam PC', 8),
(45, '0000-00-00', 185, 'cheque', '7563', 'Ipsum Company', 6),
(46, '0000-00-00', 16, 'cheque', '6572', 'Accumsan Corporation', 1),
(47, '0000-00-00', 24, 'cheque', '5582', 'Aliquet Corp.', 1),
(48, '0000-00-00', 193, 'cheque', '2141', 'Eget Metus Foundation', 3),
(49, '0000-00-00', 162, 'cheque', '4324', 'Ligula Elit Foundation', 5),
(50, '0000-00-00', 41, 'cheque', '1600', 'Enim Mauris Corporation', 8),
(51, '0000-00-00', 56, 'especes', '900', 'Lobortis Ultrices Vivamus Industries', 1),
(52, '0000-00-00', 103, 'especes', '5988', 'Donec Est Company', 9),
(53, '0000-00-00', 125, 'especes', '5442', 'Ut Pharetra Sed Company', 8),
(54, '0000-00-00', 91, 'especes', '3242', 'Faucibus Lectus Associates', 8),
(55, '0000-00-00', 71, 'especes', '6549', 'Dapibus Rutrum Justo Inc.', 6),
(56, '0000-00-00', 54, 'especes', '8135', 'Vel Arcu Curabitur Associates', 7),
(57, '0000-00-00', 109, 'especes', '3824', 'Non Luctus Sit Foundation', 2),
(58, '0000-00-00', 129, 'especes', '7904', 'Ligula Incorporated', 10),
(59, '0000-00-00', 100, 'especes', '1321', 'Orci Associates', 1),
(60, '0000-00-00', 179, 'especes', '3739', 'Porta Foundation', 2),
(61, '0000-00-00', 80, 'especes', '5088', 'Non Bibendum Sed Ltd', 1),
(62, '0000-00-00', 19, 'especes', '2643', 'Nec Quam Corp.', 2),
(63, '0000-00-00', 148, 'especes', '6103', 'Congue In LLC', 4),
(64, '0000-00-00', 186, 'especes', '7786', 'Pede Inc.', 2),
(65, '0000-00-00', 59, 'especes', '1510', 'Tellus Limited', 2),
(66, '0000-00-00', 110, 'especes', '6859', 'Dapibus Ltd', 3),
(67, '0000-00-00', 160, 'especes', '9314', 'Vel Sapien Company', 9),
(68, '0000-00-00', 51, 'especes', '4400', 'Scelerisque Neque Consulting', 8),
(69, '0000-00-00', 58, 'especes', '2033', 'Ornare Sagittis Felis Inc.', 1),
(70, '0000-00-00', 170, 'especes', '2987', 'Vel Faucibus Ltd', 5),
(71, '0000-00-00', 116, 'especes', '1841', 'Ac Turpis LLP', 7),
(72, '0000-00-00', 153, 'especes', '6110', 'Commodo Auctor Velit Consulting', 9),
(73, '0000-00-00', 187, 'especes', '7855', 'Fusce Ltd', 4),
(74, '0000-00-00', 38, 'especes', '5841', 'Quam Inc.', 8),
(75, '0000-00-00', 59, 'especes', '9258', 'Eget Associates', 6),
(76, '0000-00-00', 113, 'especes', '7254', 'Tincidunt Neque Foundation', 8),
(77, '0000-00-00', 168, 'especes', '1890', 'Metus Vitae Velit Institute', 4),
(78, '0000-00-00', 135, 'especes', '8283', 'Lorem Auctor Quis Institute', 2),
(79, '0000-00-00', 60, 'especes', '5585', 'Accumsan Incorporated', 9),
(80, '0000-00-00', 47, 'especes', '675', 'Nunc Consulting', 2),
(81, '0000-00-00', 169, 'especes', '6356', 'Feugiat Sed PC', 2),
(82, '0000-00-00', 167, 'especes', '7306', 'Et Magna Praesent Company', 7),
(83, '0000-00-00', 79, 'especes', '5336', 'Dui PC', 10),
(84, '0000-00-00', 115, 'especes', '6501', 'Velit LLC', 2),
(85, '0000-00-00', 96, 'especes', '5330', 'Lorem Corp.', 8),
(86, '0000-00-00', 119, 'especes', '6642', 'Nec Urna Et Limited', 6),
(87, '0000-00-00', 177, 'especes', '9506', 'Proin Vel LLC', 3),
(88, '0000-00-00', 86, 'especes', '8445', 'Dolor Sit Company', 4),
(89, '0000-00-00', 17, 'especes', '6905', 'Tincidunt Neque Vitae Consulting', 2),
(90, '0000-00-00', 50, 'especes', '1385', 'Blandit Incorporated', 5),
(91, '0000-00-00', 113, 'especes', '6619', 'Posuere Vulputate Inc.', 9),
(92, '0000-00-00', 152, 'especes', '8956', 'Odio Phasellus At Industries', 3),
(93, '0000-00-00', 95, 'especes', '3899', 'Proin Sed Turpis Industries', 3),
(94, '0000-00-00', 74, 'especes', '5716', 'Odio Etiam Foundation', 5),
(95, '0000-00-00', 100, 'especes', '1290', 'Donec Non Justo Corporation', 4),
(96, '0000-00-00', 161, 'especes', '1337', 'Dignissim Ltd', 2),
(97, '0000-00-00', 162, 'especes', '1351', 'Ullamcorper Eu Ltd', 5),
(98, '0000-00-00', 169, 'especes', '6260', 'Dui Cras Institute', 7),
(99, '0000-00-00', 13, 'especes', '9230', 'Eget Ltd', 4),
(100, '0000-00-00', 121, 'especes', '433', 'Malesuada Ltd', 5);

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

CREATE TABLE `specialite` (
  `id_specialite` int(11) NOT NULL,
  `nom_specialite` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `specialite`
--

INSERT INTO `specialite` (`id_specialite`, `nom_specialite`) VALUES
(1, 'Wayne'),
(2, 'Germane'),
(3, 'Alexa'),
(4, 'Simon'),
(5, 'Sheila'),
(6, 'Tanek'),
(7, 'Brennan'),
(8, 'Deirdre'),
(9, 'Mark'),
(10, 'Britanni'),
(11, 'Cora'),
(12, 'Regan'),
(13, 'Hedwig'),
(14, 'Stacy'),
(15, 'Yardley'),
(16, 'Gary'),
(17, 'Penelope'),
(18, 'Leah'),
(19, 'Roth'),
(20, 'Kristen'),
(21, 'Isabelle'),
(22, 'Camden'),
(23, 'Xyla'),
(24, 'Hiroko'),
(25, 'Vera'),
(26, 'Charles'),
(27, 'Zorita'),
(28, 'Shelly'),
(29, 'Ignacia'),
(30, 'Kuame'),
(31, 'Emily'),
(32, 'Hayden'),
(33, 'Ebony'),
(34, 'Dai'),
(35, 'Brittany'),
(36, 'Xander'),
(37, 'Lillian'),
(38, 'Destiny'),
(39, 'Martha'),
(40, 'Davis');

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

CREATE TABLE `stock` (
  `quantite` int(11) NOT NULL,
  `ISBN` varchar(25) NOT NULL,
  `id_etat` int(11) NOT NULL,
  `id_association` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `stock`
--

INSERT INTO `stock` (`quantite`, `ISBN`, `id_etat`, `id_association`) VALUES
(85, '11', 1, 56),
(105, '13', 15, 70),
(70, '14', 3, 77),
(33, '15', 12, 36),
(130, '16', 6, 7),
(14, '17', 24, 99),
(131, '19', 17, 34),
(111, '2', 1, 24),
(31, '2', 20, 91),
(109, '21', 9, 63),
(133, '21', 16, 8),
(17, '23', 15, 75),
(59, '25', 3, 56),
(73, '26', 3, 49),
(146, '28', 1, 50),
(124, '3', 20, 79),
(22, '30', 8, 64),
(4, '30', 17, 42),
(67, '31', 13, 71),
(11, '32', 17, 48),
(72, '32', 22, 60),
(8, '33', 1, 48),
(37, '33', 2, 96),
(141, '34', 15, 60),
(115, '35', 18, 70),
(148, '35', 21, 37),
(119, '36', 14, 96),
(4, '38', 6, 28),
(79, '38', 9, 43),
(65, '39', 22, 80),
(116, '39', 25, 92),
(2, '4', 19, 4),
(78, '40', 20, 99),
(147, '43', 23, 45),
(120, '44', 5, 83),
(15, '44', 17, 57),
(84, '45', 16, 52),
(130, '46', 1, 87),
(93, '47', 8, 46),
(95, '47', 21, 74),
(70, '49', 20, 4),
(47, '5', 18, 59),
(137, '5', 21, 58),
(147, '50', 3, 59),
(67, '50', 9, 33),
(36, '50', 14, 29),
(133, '51', 2, 27),
(78, '52', 2, 98),
(73, '52', 17, 64),
(83, '52', 18, 79),
(112, '54', 2, 92),
(92, '55', 4, 34),
(73, '55', 20, 12),
(98, '56', 7, 76),
(89, '57', 13, 63),
(142, '58', 12, 94),
(142, '58', 18, 97),
(20, '59', 9, 44),
(67, '60', 1, 59),
(144, '61', 5, 49),
(83, '61', 12, 85),
(139, '61', 20, 29),
(50, '62', 16, 61),
(41, '63', 13, 23),
(44, '64', 3, 45),
(17, '64', 19, 5),
(73, '67', 20, 35),
(125, '7', 1, 56),
(114, '7', 7, 5),
(108, '71', 21, 8),
(73, '72', 20, 14),
(150, '75', 5, 91),
(52, '77', 1, 8),
(76, '78', 23, 97),
(9, '79', 12, 16),
(141, '8', 5, 94),
(14, '8', 13, 19),
(92, '80', 22, 63),
(39, '81', 23, 78),
(140, '84', 1, 85),
(62, '84', 10, 60),
(120, '84', 18, 40),
(36, '85', 12, 69),
(77, '85', 23, 48),
(66, '87', 8, 7),
(18, '87', 23, 70),
(106, '88', 22, 78),
(117, '88', 23, 36),
(58, '89', 6, 67),
(91, '89', 15, 8),
(82, '9', 3, 56),
(50, '9', 11, 75),
(129, '9', 17, 59),
(118, '91', 10, 17),
(145, '92', 23, 30),
(101, '93', 8, 60),
(64, '96', 16, 8),
(28, '97', 1, 60),
(97, '98', 5, 53),
(63, '98', 25, 38);

-- --------------------------------------------------------

--
-- Structure de la table `tuteur`
--

CREATE TABLE `tuteur` (
  `id_tuteur` int(11) NOT NULL,
  `nom_tuteur` varchar(100) NOT NULL,
  `prenom_tuteur` varchar(100) NOT NULL,
  `adresse_tuteur` varchar(25) NOT NULL,
  `tel_tuteur` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tuteur`
--

INSERT INTO `tuteur` (`id_tuteur`, `nom_tuteur`, `prenom_tuteur`, `adresse_tuteur`, `tel_tuteur`) VALUES
(1, 'Paul', 'Nyssa', '7558 In, St.', ''),
(2, 'Galvin', 'Melanie', '873-3513 Hendrerit. St.', ''),
(3, 'Clarke', 'Claudia', 'Ap #961-5790 Amet, Avenue', ''),
(4, 'Brian', 'Elaine', '522-1279 Quis, St.', ''),
(5, 'John', 'Teagan', 'Ap #705-3737 Tellus. St.', ''),
(6, 'Tyrone', 'Olivia', '4651 Pulvinar Ave', ''),
(7, 'Garrison', 'Francesca', '2357 Proin St.', ''),
(8, 'Moses', 'Holly', '9373 Lobortis Av.', ''),
(9, 'Gannon', 'Tamekah', 'Ap #211-8352 At Avenue', ''),
(10, 'Cullen', 'Wyoming', '762-2316 Sed Avenue', ''),
(11, 'Rudyard', 'Pamela', '396-8800 Suspendisse Ave', ''),
(12, 'Damon', 'Guinevere', 'Ap #268-2150 Dictum Road', ''),
(13, 'Cadman', 'Emi', 'Ap #182-2705 Sodales Av.', ''),
(14, 'Hasad', 'Ivana', '6814 Ornare, St.', ''),
(15, 'John', 'Yen', '5419 Adipiscing Road', ''),
(16, 'Owen', 'Yael', '7760 Ornare Street', ''),
(17, 'Simon', 'Deborah', 'Ap #585-9481 Porttitor Rd', ''),
(18, 'Cruz', 'Whoopi', 'P.O. Box 204, 547 Molesti', ''),
(19, 'Geoffrey', 'Signe', '106-6412 Eget Road', ''),
(20, 'Austin', 'Beatrice', 'P.O. Box 995, 8881 Risus.', ''),
(21, 'Uriah', 'Ingrid', 'P.O. Box 144, 6548 Vulput', ''),
(22, 'Amal', 'Leigh', '933-8260 Nulla Ave', ''),
(23, 'Solomon', 'Hannah', 'P.O. Box 553, 9002 Nisl A', ''),
(24, 'Dillon', 'Virginia', '129-8055 Maecenas Avenue', ''),
(25, 'Julian', 'Brynne', 'Ap #449-1958 Nec St.', ''),
(26, 'Ferdinand', 'Xena', '106-5571 Per Rd.', ''),
(27, 'Ashton', 'Ciara', '949-458 Vitae, Av.', ''),
(28, 'Judah', 'Sybil', '1819 Quis Av.', ''),
(29, 'Bradley', 'Jana', '2485 Consectetuer Ave', ''),
(30, 'Wallace', 'Bo', '263-4788 Ac St.', ''),
(31, 'Hedley', 'Lois', 'P.O. Box 212, 9285 Sollic', ''),
(32, 'Melvin', 'Hanae', 'P.O. Box 728, 2139 Ut Rd.', ''),
(33, 'Rajah', 'Lynn', '890-5062 Urna. Av.', ''),
(34, 'Leo', 'Ann', '110-9050 Dictum Av.', ''),
(35, 'Yuli', 'Riley', '700-8204 Egestas Ave', ''),
(36, 'Kenyon', 'Justine', 'P.O. Box 629, 2427 Euismo', ''),
(37, 'Herrod', 'Jasmine', 'P.O. Box 739, 5930 Malesu', ''),
(38, 'Walter', 'Blaine', '1775 Proin Avenue', ''),
(39, 'Linus', 'Gay', '860-5259 Felis, Avenue', ''),
(40, 'Yardley', 'Neve', 'P.O. Box 618, 4430 Alique', ''),
(41, 'Louis', 'Noelle', 'P.O. Box 818, 6040 Tempor', ''),
(42, 'Jerome', 'Mari', '2916 Curae; Road', ''),
(43, 'Silas', 'Lysandra', 'P.O. Box 767, 8087 At, Av', ''),
(44, 'Armand', 'Aurora', '8862 Aliquam St.', ''),
(45, 'Nash', 'Bryar', 'P.O. Box 631, 5009 Dolor,', ''),
(46, 'Barclay', 'Yen', '5714 Mattis Street', ''),
(47, 'Amir', 'Halla', 'Ap #252-9710 Quis, Ave', ''),
(48, 'Marsden', 'Dakota', 'Ap #277-5706 Nulla Avenue', ''),
(49, 'Channing', 'Justina', '6063 Sem Rd.', ''),
(50, 'Drew', 'Vivian', '4053 Nullam St.', ''),
(51, 'Vernon', 'Adria', 'P.O. Box 285, 1702 Sem St', ''),
(52, 'Caldwell', 'McKenzie', '4947 Lorem, Ave', ''),
(53, 'Dennis', 'Indira', '500-4163 Enim. Av.', ''),
(54, 'Tanner', 'Yoko', '4803 Nunc Rd.', ''),
(55, 'Mark', 'Cally', '583-4759 Viverra. St.', ''),
(56, 'Holmes', 'Sandra', '148 Lorem Road', ''),
(57, 'Walker', 'Latifah', 'P.O. Box 502, 9731 Lacus.', ''),
(58, 'Solomon', 'Wynter', '1339 Varius. Rd.', ''),
(59, 'Oliver', 'Shafira', 'Ap #697-690 Vel St.', ''),
(60, 'Len', 'Ivory', 'Ap #507-1832 Est Rd.', ''),
(61, 'Nathaniel', 'Catherine', '7100 Tristique St.', ''),
(62, 'Dane', 'Avye', 'Ap #583-6383 Nascetur Str', ''),
(63, 'Carlos', 'September', 'Ap #610-5305 Hendrerit St', ''),
(64, 'Chancellor', 'Grace', 'Ap #206-5374 Porttitor Av', ''),
(65, 'Steven', 'Robin', 'P.O. Box 125, 7129 Dictum', ''),
(66, 'Alvin', 'Buffy', 'Ap #727-8666 Nec, Avenue', ''),
(67, 'Quentin', 'Rana', 'Ap #856-4547 Et Street', ''),
(68, 'Devin', 'Zenia', 'Ap #219-3998 Nonummy Av.', ''),
(69, 'Aidan', 'Hanna', '8617 Et, Ave', ''),
(70, 'Hunter', 'Erin', 'P.O. Box 978, 7033 Nec Av', ''),
(71, 'Chandler', 'Isabelle', '899-4272 Integer Ave', ''),
(72, 'Quinlan', 'Mallory', 'P.O. Box 280, 5234 Nullam', ''),
(73, 'Patrick', 'Naida', '942-9103 Auctor St.', ''),
(74, 'Justin', 'Rinah', 'Ap #569-2573 Nisi Av.', ''),
(75, 'Reece', 'TaShya', 'P.O. Box 398, 5318 Maecen', ''),
(76, 'Grant', 'Iola', 'P.O. Box 343, 589 Ipsum. ', ''),
(77, 'Jordan', 'Joelle', 'Ap #982-9205 Vulputate, R', ''),
(78, 'Warren', 'Lesley', 'Ap #227-4919 Nec Av.', ''),
(79, 'Connor', 'Heather', 'P.O. Box 600, 5745 Nisi S', ''),
(80, 'Ray', 'Wyoming', 'P.O. Box 846, 1880 Bibend', ''),
(81, 'Cade', 'Brenda', 'Ap #791-3039 Quis Avenue', ''),
(82, 'Brady', 'May', 'P.O. Box 251, 523 Ullamco', ''),
(83, 'Jermaine', 'Ashely', '3800 Nulla Rd.', ''),
(84, 'Colton', 'Madeline', 'Ap #830-6720 Erat Rd.', ''),
(85, 'Lance', 'Jillian', 'Ap #790-4781 Vestibulum A', ''),
(86, 'Lucas', 'Kylynn', '125-9093 Iaculis Ave', ''),
(87, 'Plato', 'Sara', 'Ap #791-4442 Nibh. Av.', ''),
(88, 'Zachery', 'Shelly', 'P.O. Box 973, 2702 Intege', ''),
(89, 'Slade', 'Nevada', 'P.O. Box 907, 6322 Ante A', ''),
(90, 'Hop', 'Kaden', '355-6336 Elementum Ave', ''),
(91, 'Craig', 'Hilary', 'P.O. Box 829, 3812 Nunc A', ''),
(92, 'Charles', 'Celeste', '5815 Fusce Road', ''),
(93, 'Alexander', 'Blair', '2891 Consequat St.', ''),
(94, 'Cade', 'Rinah', '2621 Fusce St.', ''),
(95, 'Edan', 'Tanisha', 'Ap #452-2551 Ac St.', ''),
(96, 'Nicholas', 'Shelley', '448-3724 Sagittis Ave', ''),
(97, 'Jamal', 'Shana', '935-8992 Cras Av.', ''),
(98, 'Keegan', 'Ruby', '516-5326 Et, Av.', ''),
(99, 'Jerome', 'Laura', '3862 Ut St.', ''),
(100, 'Drew', 'Harriet', 'Ap #241-7128 Faucibus Roa', '');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int(11) NOT NULL,
  `login` varchar(25) NOT NULL,
  `mot_de_passe` char(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `login`, `mot_de_passe`) VALUES
(1, 'Malcolm', 'mdp'),
(2, 'Tucker', 'mdp'),
(3, 'Chaney', 'mdp'),
(4, 'Kenyon', 'mdp'),
(5, 'Devin', 'mdp'),
(6, 'Honorato', 'mdp'),
(7, 'Ronan', 'mdp'),
(8, 'Beau', 'mdp'),
(9, 'Phillip', 'mdp'),
(10, 'Noah', 'mdp'),
(11, 'Evan', 'mdp'),
(12, 'Chancellor', 'mdp'),
(13, 'Abdul', 'mdp'),
(14, 'Craig', 'mdp'),
(15, 'Raja', 'mdp'),
(16, 'Ryder', 'mdp'),
(17, 'Mufutau', 'mdp'),
(18, 'Norman', 'mdp'),
(19, 'Talon', 'mdp'),
(20, 'Ferris', 'mdp'),
(21, 'Elvis', 'mdp'),
(22, 'Troy', 'mdp'),
(23, 'Octavius', 'mdp'),
(24, 'Alden', 'mdp'),
(25, 'Xavier', 'mdp'),
(26, 'Kenyon', 'mdp'),
(27, 'Tanek', 'mdp'),
(28, 'Herman', 'mdp'),
(29, 'Steven', 'mdp'),
(30, 'Hoyt', 'mdp'),
(31, 'Richard', 'mdp'),
(32, 'Dexter', 'mdp'),
(33, 'Henry', 'mdp'),
(34, 'Martin', 'mdp'),
(35, 'Barclay', 'mdp'),
(36, 'Plato', 'mdp'),
(37, 'Christopher', 'mdp'),
(38, 'Hammett', 'mdp'),
(39, 'Jeremy', 'mdp'),
(40, 'Harding', 'mdp'),
(41, 'Oren', 'mdp'),
(42, 'Connor', 'mdp'),
(43, 'Cameron', 'mdp'),
(44, 'Gannon', 'mdp'),
(45, 'Joseph', 'mdp'),
(46, 'Josiah', 'mdp'),
(47, 'Acton', 'mdp'),
(48, 'Anthony', 'mdp'),
(49, 'Hall', 'mdp'),
(50, 'Curran', 'mdp'),
(51, 'Mufutau', 'mdp'),
(52, 'Nero', 'mdp'),
(53, 'Perry', 'mdp'),
(54, 'Joel', 'mdp'),
(55, 'Francis', 'mdp'),
(56, 'Shad', 'mdp'),
(57, 'Hector', 'mdp'),
(58, 'Jerry', 'mdp'),
(59, 'Byron', 'mdp'),
(60, 'Jin', 'mdp'),
(61, 'Quinlan', 'mdp'),
(62, 'Hector', 'mdp'),
(63, 'Kennan', 'mdp'),
(64, 'Lucian', 'mdp'),
(65, 'Abel', 'mdp'),
(66, 'Keegan', 'mdp'),
(67, 'Murphy', 'mdp'),
(68, 'Knox', 'mdp'),
(69, 'Wade', 'mdp'),
(70, 'Hu', 'mdp'),
(71, 'Arsenio', 'mdp'),
(72, 'Blaze', 'mdp'),
(73, 'Blaze', 'mdp'),
(74, 'Carlos', 'mdp'),
(75, 'Hakeem', 'mdp'),
(76, 'Boris', 'mdp'),
(77, 'Simon', 'mdp'),
(78, 'Sean', 'mdp'),
(79, 'Dennis', 'mdp'),
(80, 'Vincent', 'mdp'),
(81, 'Ronan', 'mdp'),
(82, 'Omar', 'mdp'),
(83, 'Damian', 'mdp'),
(84, 'Kenneth', 'mdp'),
(85, 'Ignatius', 'mdp'),
(86, 'Peter', 'mdp'),
(87, 'Zane', 'mdp'),
(88, 'Sebastian', 'mdp'),
(89, 'Damian', 'mdp'),
(90, 'Damian', 'mdp'),
(91, 'Ciaran', 'mdp'),
(92, 'Roth', 'mdp'),
(93, 'Nehru', 'mdp'),
(94, 'Jeremy', 'mdp'),
(95, 'Marsden', 'mdp'),
(96, 'Solomon', 'mdp'),
(97, 'Quentin', 'mdp'),
(98, 'Hilel', 'mdp'),
(99, 'Joshua', 'mdp'),
(100, 'Kenyon', 'mdp');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `adherer`
--
ALTER TABLE `adherer`
  ADD PRIMARY KEY (`id_tuteur`,`id_association`),
  ADD KEY `FK_adherer_id_association` (`id_association`);

--
-- Index pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD PRIMARY KEY (`id_association`,`id_utilisateur`),
  ADD KEY `FK_appartenir_id_utilisateur` (`id_utilisateur`);

--
-- Index pour la table `association`
--
ALTER TABLE `association`
  ADD PRIMARY KEY (`id_association`),
  ADD KEY `FK_association_id_etablissement` (`id_etablissement`),
  ADD KEY `FK_association_id_association_1` (`id_association_1`);

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`id_classe`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`),
  ADD KEY `FK_commande_id_enfant` (`id_enfant`),
  ADD KEY `FK_commande_numero_facture` (`numero_facture`);

--
-- Index pour la table `commande_produit`
--
ALTER TABLE `commande_produit`
  ADD PRIMARY KEY (`id_commande`,`ISBN`,`id_etat`),
  ADD KEY `FK_commande_produit_ISBN` (`ISBN`),
  ADD KEY `FK_commande_produit_id_etat` (`id_etat`);

--
-- Index pour la table `discipline`
--
ALTER TABLE `discipline`
  ADD PRIMARY KEY (`id_discipline`);

--
-- Index pour la table `enfant`
--
ALTER TABLE `enfant`
  ADD PRIMARY KEY (`id_enfant`),
  ADD KEY `FK_enfant_id_etablissement` (`id_etablissement`),
  ADD KEY `FK_enfant_id_tuteur` (`id_tuteur`);

--
-- Index pour la table `etablissement`
--
ALTER TABLE `etablissement`
  ADD PRIMARY KEY (`id_etablissement`);

--
-- Index pour la table `etat`
--
ALTER TABLE `etat`
  ADD PRIMARY KEY (`id_etat`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`numero_facture`),
  ADD KEY `FK_facture_id_tuteur` (`id_tuteur`);

--
-- Index pour la table `fournir`
--
ALTER TABLE `fournir`
  ADD PRIMARY KEY (`ISBN`,`id_fournisseur`,`id_association`),
  ADD KEY `FK_fournir_id_fournisseur` (`id_fournisseur`),
  ADD KEY `FK_fournir_id_association` (`id_association`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`id_fournisseur`);

--
-- Index pour la table `lister`
--
ALTER TABLE `lister`
  ADD PRIMARY KEY (`ISBN`,`id_etablissement`,`id_classe`,`id_discipline`,`id_specialite`),
  ADD KEY `FK_lister_id_etablissement` (`id_etablissement`),
  ADD KEY `FK_lister_id_classe` (`id_classe`),
  ADD KEY `FK_lister_id_discipline` (`id_discipline`),
  ADD KEY `FK_lister_id_specialite` (`id_specialite`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`ISBN`);

--
-- Index pour la table `reglement`
--
ALTER TABLE `reglement`
  ADD PRIMARY KEY (`id_reglement`),
  ADD KEY `FK_reglement_numero_facture` (`numero_facture`);

--
-- Index pour la table `specialite`
--
ALTER TABLE `specialite`
  ADD PRIMARY KEY (`id_specialite`);

--
-- Index pour la table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`ISBN`,`id_etat`,`id_association`),
  ADD KEY `FK_stock_id_etat` (`id_etat`),
  ADD KEY `FK_stock_id_association` (`id_association`);

--
-- Index pour la table `tuteur`
--
ALTER TABLE `tuteur`
  ADD PRIMARY KEY (`id_tuteur`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `association`
--
ALTER TABLE `association`
  MODIFY `id_association` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT pour la table `classe`
--
ALTER TABLE `classe`
  MODIFY `id_classe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT pour la table `discipline`
--
ALTER TABLE `discipline`
  MODIFY `id_discipline` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT pour la table `enfant`
--
ALTER TABLE `enfant`
  MODIFY `id_enfant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT pour la table `etablissement`
--
ALTER TABLE `etablissement`
  MODIFY `id_etablissement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT pour la table `etat`
--
ALTER TABLE `etat`
  MODIFY `id_etat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `facture`
--
ALTER TABLE `facture`
  MODIFY `numero_facture` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `id_fournisseur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT pour la table `reglement`
--
ALTER TABLE `reglement`
  MODIFY `id_reglement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT pour la table `specialite`
--
ALTER TABLE `specialite`
  MODIFY `id_specialite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT pour la table `tuteur`
--
ALTER TABLE `tuteur`
  MODIFY `id_tuteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `adherer`
--
ALTER TABLE `adherer`
  ADD CONSTRAINT `FK_adherer_id_association` FOREIGN KEY (`id_association`) REFERENCES `association` (`id_association`),
  ADD CONSTRAINT `FK_adherer_id_tuteur` FOREIGN KEY (`id_tuteur`) REFERENCES `tuteur` (`id_tuteur`);

--
-- Contraintes pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD CONSTRAINT `FK_appartenir_id_association` FOREIGN KEY (`id_association`) REFERENCES `association` (`id_association`),
  ADD CONSTRAINT `FK_appartenir_id_utilisateur` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `association`
--
ALTER TABLE `association`
  ADD CONSTRAINT `FK_association_id_association_1` FOREIGN KEY (`id_association_1`) REFERENCES `association` (`id_association`),
  ADD CONSTRAINT `FK_association_id_etablissement` FOREIGN KEY (`id_etablissement`) REFERENCES `etablissement` (`id_etablissement`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_commande_numero_facture` FOREIGN KEY (`numero_facture`) REFERENCES `facture` (`numero_facture`),
  ADD CONSTRAINT `FK_commande_id_enfant` FOREIGN KEY (`id_enfant`) REFERENCES `enfant` (`id_enfant`);

--
-- Contraintes pour la table `commande_produit`
--
ALTER TABLE `commande_produit`
  ADD CONSTRAINT `FK_commande_produit_id_etat` FOREIGN KEY (`id_etat`) REFERENCES `etat` (`id_etat`),
  ADD CONSTRAINT `FK_commande_produit_id_commande` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id_commande`),
  ADD CONSTRAINT `FK_commande_produit_ISBN` FOREIGN KEY (`ISBN`) REFERENCES `produit` (`ISBN`);

--
-- Contraintes pour la table `enfant`
--
ALTER TABLE `enfant`
  ADD CONSTRAINT `FK_enfant_id_tuteur` FOREIGN KEY (`id_tuteur`) REFERENCES `tuteur` (`id_tuteur`),
  ADD CONSTRAINT `FK_enfant_id_etablissement` FOREIGN KEY (`id_etablissement`) REFERENCES `etablissement` (`id_etablissement`);

--
-- Contraintes pour la table `facture`
--
ALTER TABLE `facture`
  ADD CONSTRAINT `FK_facture_id_tuteur` FOREIGN KEY (`id_tuteur`) REFERENCES `tuteur` (`id_tuteur`);

--
-- Contraintes pour la table `fournir`
--
ALTER TABLE `fournir`
  ADD CONSTRAINT `FK_fournir_id_association` FOREIGN KEY (`id_association`) REFERENCES `association` (`id_association`),
  ADD CONSTRAINT `FK_fournir_id_fournisseur` FOREIGN KEY (`id_fournisseur`) REFERENCES `fournisseur` (`id_fournisseur`),
  ADD CONSTRAINT `FK_fournir_ISBN` FOREIGN KEY (`ISBN`) REFERENCES `produit` (`ISBN`);

--
-- Contraintes pour la table `lister`
--
ALTER TABLE `lister`
  ADD CONSTRAINT `FK_lister_id_specialite` FOREIGN KEY (`id_specialite`) REFERENCES `specialite` (`id_specialite`),
  ADD CONSTRAINT `FK_lister_id_classe` FOREIGN KEY (`id_classe`) REFERENCES `classe` (`id_classe`),
  ADD CONSTRAINT `FK_lister_id_discipline` FOREIGN KEY (`id_discipline`) REFERENCES `discipline` (`id_discipline`),
  ADD CONSTRAINT `FK_lister_id_etablissement` FOREIGN KEY (`id_etablissement`) REFERENCES `etablissement` (`id_etablissement`),
  ADD CONSTRAINT `FK_lister_ISBN` FOREIGN KEY (`ISBN`) REFERENCES `produit` (`ISBN`);

--
-- Contraintes pour la table `reglement`
--
ALTER TABLE `reglement`
  ADD CONSTRAINT `FK_reglement_numero_facture` FOREIGN KEY (`numero_facture`) REFERENCES `facture` (`numero_facture`);

--
-- Contraintes pour la table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `FK_stock_id_association` FOREIGN KEY (`id_association`) REFERENCES `association` (`id_association`),
  ADD CONSTRAINT `FK_stock_id_etat` FOREIGN KEY (`id_etat`) REFERENCES `etat` (`id_etat`),
  ADD CONSTRAINT `FK_stock_ISBN` FOREIGN KEY (`ISBN`) REFERENCES `produit` (`ISBN`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
