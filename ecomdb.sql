-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : lun. 04 avr. 2022 à 05:54
-- Version du serveur : 5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecomdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `idproduct` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `price` bigint(20) NOT NULL,
  `img` text,
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedat` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`idproduct`, `name`, `price`, `img`, `createdat`, `updatedat`) VALUES
(2, 'Voiture', 40000, 'https://picsum.photos/id/237/300', '2022-04-03 11:42:11', '2022-04-03 15:46:44'),
(3, 'Maison', 100000, 'https://picsum.photos/id/200/300', '2022-04-03 11:42:11', '2022-04-03 12:33:13'),
(4, 'Coca-cola', 500, 'https://picsum.photos/id/1004/300', '2022-04-03 11:42:11', '2022-04-03 12:37:47'),
(6, 'Ananas', 2500, 'https://picsum.photos/id/900/300', '2022-04-03 12:29:31', '2022-04-03 12:29:43'),
(7, 'Article1', 2000, 'https://picsum.photos/id/239/300', '2022-04-03 12:31:19', '2022-04-03 12:31:27'),
(9, 'Article3', 3400, 'https://picsum.photos/id/232/300', '2022-04-03 12:32:21', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`idproduct`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `idproduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
