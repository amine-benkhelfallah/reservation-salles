-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 20 déc. 2022 à 20:27
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `reservationsalles`
--

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE IF NOT EXISTS `reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `debut` datetime NOT NULL,
  `fin` datetime NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`id`, `titre`, `description`, `debut`, `fin`, `id_utilisateur`) VALUES
(59, 'svfsdvf', 'gfd', '2022-12-21 16:00:00', '2022-12-21 17:00:00', 12),
(58, 'TEST', 'TEST TEST TEST TEST', '2022-12-21 08:00:00', '2022-12-21 09:00:00', 11),
(51, 'amine', 'aaa', '2022-12-22 13:00:00', '2022-12-22 14:00:00', 4),
(52, 'zozo', 'a', '2022-12-20 17:00:00', '2022-12-20 19:00:00', 4),
(57, 'RÃ©union Dev ', 'RÃ©vision cours', '2022-12-23 08:00:00', '2022-12-23 09:00:00', 10);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `login`, `password`) VALUES
(1, 'a', '$2y$10$AEtQFsPpmNZ81HWR8Twyw.CKuiziopoh3sM.A2YTMNu3YZNNICUFm'),
(11, 'kamel', '$2y$10$vrYgYNF7msGp9WvPYYBNCuD/CMc8rfhUlAMXw9oog.G2mmWlxl9cy'),
(4, 'mimi', '$2y$10$yb5iD.VemCwJMQrvhWb2VO6jaaWWlKLYOvED4oGWQDH0ywQh1WbfW'),
(7, 'toto', '$2y$10$5GHjCuwyz53e2/UU6eOs9un8LkG6QHDhfOLh85BZ1zU/QRx3cAYw.'),
(10, 'Amine', '$2y$10$l3tZSriu2jWJvY9108.d5.EP0tmxqP6rj9QSzeS4Ma4jNxMaVwzzS'),
(9, 'lila', '$2y$10$c7Dqcs5wXTxF3VZh5H8R.uXoXnDDdN/13rjcpfj81L.km8FtpSw5u'),
(12, 'lali', '$2y$10$XtaZdXEvYfq03qyd/iwQbe1FGsSRkts72ZBblXFtteULBmuRC3UVm');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
