-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 25 mai 2018 à 21:50
-- Version du serveur :  5.7.19
-- Version de PHP :  7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `m2l_maha`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
CREATE TABLE IF NOT EXISTS `adresse` (
  `id_a` int(11) NOT NULL AUTO_INCREMENT,
  `rue` varchar(255) NOT NULL,
  `numero` int(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `code_postal` int(255) NOT NULL,
  PRIMARY KEY (`id_a`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `adresse`
--

INSERT INTO `adresse` (`id_a`, `rue`, `numero`, `ville`, `code_postal`) VALUES
(1, 'Poisson rouge', 32, 'Saint-Ouen', 93400),
(2, 'Le requin', 99, 'Saumon', 92500),
(3, 'Rue du futuroscope', 25, 'Acheres', 94300),
(13, 'Dauphin bleu', 2, 'Dauphine', 85412);

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

DROP TABLE IF EXISTS `formation`;
CREATE TABLE IF NOT EXISTS `formation` (
  `id_f` int(11) NOT NULL AUTO_INCREMENT,
  `id_p` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `date_debut` date NOT NULL,
  `nb_jour` int(255) NOT NULL,
  `nb_place` int(255) NOT NULL,
  PRIMARY KEY (`id_f`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id_f`, `id_p`, `titre`, `contenu`, `date_debut`, `nb_jour`, `nb_place`) VALUES
(10, 1, 'Tennis', 'Le tennis est un sport de raquette qui oppose soit deux joueurs (on parle alors de jeu en simple) soit quatre joueurs qui forment deux équipes de deux (on parle alors de jeu en double). Les joueurs utilisent une raquette cordée verticalement et horizontalement à une tension variant avec la puissance ou l\'effet que l\'on veut obtenir.\r\n\r\nCette raquette, dont les matériaux peuvent varier, sert à frapper une balle en caoutchouc, remplie d\'air et recouverte de feutre. Le but du jeu est de frapper la balle de telle sorte que l\'adversaire ne puisse la remettre dans les limites du terrain, soit en marquant le point en mettant l\'adversaire hors de portée de la balle, soit en l\'obligeant à commettre une faute (si sa balle ne retombe pas dans les limites du court, ou si elle ne passe pas le filet).\r\n\r\nLe nombre de sets (ou manches) nécessaires pour gagner un match varie selon plusieurs critères (comme le sexe, l\'âge ou le tournoi). Les limites du terrain et certaines règles sont différentes pour les matchs de simple et de double.', '2018-04-18', 3, 20),
(4, 1, 'Volley', 'Le volley-ball, ou volleyball , est un sport collectif mettant en jeu deux équipes de six joueurs séparés par un filet, qui s\'affrontent avec un ballon sur un terrain rectangulaire de 18 mètres de long sur 9 mètres de large. Avec 269 millions de pratiquants, il s\'agit d\'un des sports les plus pratiqués dans le monde.', '2018-02-01', 3, 1),
(5, 1, 'Foot', 'Le football(dans la langue orale, par apocope, le foot), ou soccer (en Amérique du Nord), est un sport collectif qui se joue principalement au pied avec un ballon sphérique. Il oppose deux équipes de onze joueurs dans un stade, que ce soit sur un terrain gazonné ou sur un plancher. L\'objectif de chaque camp est de mettre le ballon dans le but adverse, sans utiliser les bras, et de le faire plus souvent que l\'autre équipe.', '2018-01-31', 5, 2),
(6, 1, 'Equitation', 'L’équitation est la technique de la conduite du cheval sous l\'action humaine. On considère l\'équitation comme étant un art, un loisir ou un sport. Dans cette discipline, l\'être humain a pour partenaire un équidé, le plus souvent un cheval ou un poney. Le mot vient du latin equitare, qui signifie « aller à cheval ».', '2018-02-15', 15, 2),
(8, 12, 'Parachutisme', 'Le parachutisme est une activité consistant à chuter d\'une hauteur allant d\'une centaine de mètres à plusieurs milliers (en sortant généralement d\'un avion, mais tout autre aéronef peut être utilisé) pour ensuite retourner sur terre avec l\'aide d\'un parachute. Si la personne s\'élance d\'un point fixe (pont, falaise, etc), on parle alors plutôt de saut de base (base jump).', '2018-02-16', 25, 2);

-- --------------------------------------------------------

--
-- Structure de la table `prestataire`
--

DROP TABLE IF EXISTS `prestataire`;
CREATE TABLE IF NOT EXISTS `prestataire` (
  `id_p` int(11) NOT NULL AUTO_INCREMENT,
  `id_a` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `tel` varchar(25) NOT NULL,
  `mail` varchar(40) NOT NULL,
  PRIMARY KEY (`id_p`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `prestataire`
--

INSERT INTO `prestataire` (`id_p`, `id_a`, `nom`, `tel`, `mail`) VALUES
(1, 1, 'EcoDeco', '0601020304', 'ecodeco@gmail.com'),
(2, 2, 'Lamaphp', 'Lamaphp', 'lamaphp@gmail.com'),
(5, 5, 'java', '0625947682', 'java@gmail.com'),
(3, 3, 'Razer', '0601020807', 'razer@gmail.com'),
(4, 4, 'Arx', '0608749531', 'arx@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `salarie`
--

DROP TABLE IF EXISTS `salarie`;
CREATE TABLE IF NOT EXISTS `salarie` (
  `id_s` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `lvl` int(11) NOT NULL,
  `credits` int(25) NOT NULL,
  `id_chef` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_s`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `salarie`
--

INSERT INTO `salarie` (`id_s`, `nom`, `prenom`, `login`, `email`, `mdp`, `lvl`, `credits`, `id_chef`) VALUES
(1, 'Admin', 'Admin', 'admin', 'admin@admin.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 3, 100, NULL),
(2, 'test', 'testt', 'testt', 'testt@gmail.com', '453cf2486f88c411f9ad608b563aef965cedb15d', 1, 20, 3),
(3, 'Chef', 'Chef', 'chef', 'chef@chef.com', 'd5f2e5c77054c44c2c72a1b017deca06fc637c99', 2, 197, 3),
(9, 'salarie', 'salarie', 'salarie', 'salarie@gmail.com', '47072858c4accf77465a574a725e591f44d6ed99', 1, 47, 3);

-- --------------------------------------------------------

--
-- Structure de la table `type_formation`
--

DROP TABLE IF EXISTS `type_formation`;
CREATE TABLE IF NOT EXISTS `type_formation` (
  `id_t` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) NOT NULL,
  `id_s` int(25) NOT NULL,
  `id_f` int(25) NOT NULL,
  PRIMARY KEY (`id_t`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_formation`
--

INSERT INTO `type_formation` (`id_t`, `libelle`, `id_s`, `id_f`) VALUES
(18, 'Effectuée', 2, 4),
(17, 'En attente', 2, 2),
(19, 'Effectuée', 9, 10),
(20, 'Refusée', 3, 10);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
