-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 10, 2022 at 07:48 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sahti`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `passwd` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nom`, `prenom`, `email`, `passwd`) VALUES
(1, 'Mr', 'Admin', 'Admin@sahti.com', '1ccc8a35579fa86523ca7193b08bd66a');

-- --------------------------------------------------------

--
-- Table structure for table `aliment`
--

DROP TABLE IF EXISTS `aliment`;
CREATE TABLE IF NOT EXISTS `aliment` (
  `id_aliment` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `image` varchar(255) NOT NULL,
  `calories` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id_aliment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aliment`
--

INSERT INTO `aliment` (`id_aliment`, `nom`, `type`, `image`, `calories`, `description`) VALUES
(3, 'fraise', 'Fruits', 'C:/Users/user/Pictures/Cpatur1 switch6.PNG', 1123, 'dsqz'),
(5, 'lll', 'lll', 'f9646a9c2d72bde8282e8725fec33d0d.png', 3, '223'),
(6, 'fghj', 'swfgh', '9cf8309ca25d6e77c1e4a0534475a49c.jpg', 3, '2233'),
(8, 'dddd', 'ee', '4ce4a518e73bc01ff8b5b6f8652c202a.png', 3, '11'),
(9, 'dddd', 'ee', 'ca1b501df0d059d8c34e5c447e24216e.png', 5, 'd'),
(12, 'epinard', 'Légumes', '', 12, 'dand une seule repas'),
(15, 'aa', 'aa', '80b7895959dfae2973e4a8119432f359.png', 2, 'aa'),
(16, 'abricot', 'fruits', 'f3523ce80b63616a6ba3e8e757a7f628.jpeg', 3, '<p>qsdxcfg</p>'),
(17, 'dddd', 'ee', '67f635f9123873a1197f7a3a8a5a0fc4.jpeg', 3, '<p>qsxdcfgh</p>'),
(18, 'aaa', 'aa', '22adad59ad1fcab7aae3075044edd68b.jpeg', 3, '<p>sdfg</p>'),
(19, 'aa', 'aa', '3e463cb482f9d07e30a0d45d0fb47514.jpeg', 3, '<p>aaaaa</p>'),
(1233, 'epinard', 'Légumes', 'C:/Users/user/Pictures/Cpatur1 switch6.PNG', 12, 'dand une seule repas');

-- --------------------------------------------------------

--
-- Table structure for table `ali_repas`
--

DROP TABLE IF EXISTS `ali_repas`;
CREATE TABLE IF NOT EXISTS `ali_repas` (
  `id_aliment` int(11) NOT NULL,
  `id_repas` int(11) NOT NULL,
  PRIMARY KEY (`id_aliment`,`id_repas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ali_repas`
--

INSERT INTO `ali_repas` (`id_aliment`, `id_repas`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(11, 0),
(20, 0),
(21, 0),
(22, 0),
(23, 0),
(455, 0),
(456, 0);

-- --------------------------------------------------------

--
-- Table structure for table `avis`
--

DROP TABLE IF EXISTS `avis`;
CREATE TABLE IF NOT EXISTS `avis` (
  `id` int(20) NOT NULL,
  `idClient` int(20) DEFAULT NULL,
  `idCoach` int(20) DEFAULT NULL,
  `idNutritioniste` int(20) DEFAULT NULL,
  `idProduit` int(20) DEFAULT NULL,
  `commentaire` varchar(150) DEFAULT NULL,
  `rating` int(20) NOT NULL,
  `dateAvis` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `avis`
--

INSERT INTO `avis` (`id`, `idClient`, `idCoach`, `idNutritioniste`, `idProduit`, `commentaire`, `rating`, `dateAvis`) VALUES
(2, 0, NULL, NULL, NULL, 'test', 3, '2022-03-08'),
(3, 0, NULL, NULL, NULL, 'tyt', 3, '2022-03-08'),
(4, 10010, NULL, NULL, NULL, 'sqdf', 2, '2022-03-08'),
(5, 10010, NULL, NULL, NULL, 'h', 3, '2022-03-08');

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_cat` int(11) NOT NULL,
  `titre` varchar(30) DEFAULT NULL,
  `img_cat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_cat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id_cat`, `titre`, `img_cat`) VALUES
(1, 'Matériel De Sport', 'db2a3fa33d7547ef7fbbb62e0c9b7f36.jpeg'),
(2, 'Accessoires', '67a9d1802df4a38f86651f615c4b48b8.jpeg'),
(3, 'Aliment', '4cd257a971d5e75b8a3e14499bb3d137.jpeg'),
(15, 'Poids et haltère', '828559dd58e6e86aefbb3f9e02fabc4f.png'),
(24, 'sdfghjklmùlkjhgfd', 'a8520b817437844bede3881a5c2ff41d.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `passwd` varchar(100) DEFAULT NULL,
  `adresse` varchar(30) DEFAULT NULL,
  `datenaiss` varchar(30) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `IsBlocked` tinyint(1) DEFAULT '0',
  `id_coach` int(11) DEFAULT NULL,
  `id_nutri` int(11) DEFAULT NULL,
  `id_progclient` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `id_coach` (`id_coach`),
  KEY `id_nutri` (`id_nutri`),
  KEY `fk` (`id_progclient`)
) ENGINE=InnoDB AUTO_INCREMENT=10016 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `email`, `passwd`, `adresse`, `datenaiss`, `img`, `IsBlocked`, `id_coach`, `id_nutri`, `id_progclient`) VALUES
(1, 'admin', 'admin', 'Admin@sahti.com', NULL, 'test address', NULL, NULL, 0, NULL, NULL, NULL),
(41, 'aaaaaaaaa', 'aaaaaaaa', 'aa@eee.tn', 'a0222d70fe09c2a5f6b3e917c691a186', 'aaaaa', '2022-04-21', '4c3bc5590fa5b79f56b83c20710938e8dae7bddec79a6746116962bbcb4c394d.jpeg', 0, NULL, NULL, NULL),
(42, 'aassa', 'sasasas', 'qsqsqsqs@qsqsq.tn', '809bec5d43aad82205437cf3ca13002f', 'adszdsd', '2022-04-20', 'anfield1fc17f96057c25015c39380470e40c75.jpeg', 0, NULL, NULL, NULL),
(43, 'test', 'test', 'test@test.tn', 'ce0f43b2681e5b0fc657a1df479889a2', 'tunis', '2022-04-13', 'EpDTMpeXMAML6lo2c63d4b452cc3813abf1f2342673657e.jpeg', 1, NULL, NULL, NULL),
(223, 'hello', 'world', 'hello@world.tn', '97a7b9c8cbf7eb25121c02dabe9a157d', 'tunis', '2022-04-01', 'BGIMG046a2bd52dcf506ef71489aeb40699d5.png', 0, NULL, NULL, NULL),
(3734, 'aa', 'aaa', 'aa', 'aaa', 'aa', 'aa\n', NULL, 0, NULL, NULL, NULL),
(3738, 'dzzdqd', 'dqsdqsd', 'sdqsdqsd', 'dqsdqsd', 'sdsqdqsd', 'sdqdqsd', NULL, 0, NULL, NULL, NULL),
(3739, 'dsqdqsd', 'dqsdq', 'qsdqsd', 'dqsdqsd', 'dqsdqsd', 'ddsdqsdqsd', NULL, 0, NULL, NULL, NULL),
(10010, 'dd', 'dd', 'akrimi@akrimi.com', '9016837b58ba8b417f8fc01d9e31a02f', 'tunis', '2022-03-17', 'nutritionniste.jpg', 0, NULL, NULL, NULL),
(10013, 'test11', 'test11', 'test11@test.tn', '83422503bcfc01d303030e8a7cc80efc', 'hdhdh', '2022-05-23', 'Damocles60106fa246814ee38a5865fdd7372d1b.png', 0, NULL, NULL, NULL),
(10014, 'aazzaz', 'za', 'za', 'zaazz', 'z', 'az', NULL, 0, NULL, NULL, NULL),
(10015, 'test', 'test', 'elakrimiheb@gmail.com', '1db5aa20c50428e1c1c61c3c65c1218b', 'testttt', '1999-02-18', '32bfaca9e7426275146f1022cebf49750.png', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `commandes`
--

DROP TABLE IF EXISTS `commandes`;
CREATE TABLE IF NOT EXISTS `commandes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_cmd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `montant_cmd` double NOT NULL,
  `commentaire` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat` tinyint(1) NOT NULL,
  `qtecmd` int(11) NOT NULL,
  `mode_pay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_commande` datetime DEFAULT NULL,
  `date_modif` datetime DEFAULT NULL,
  `livraison_id` int(11) DEFAULT NULL,
  `id_client` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_35D4282C8E54FB25` (`livraison_id`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commandes`
--

INSERT INTO `commandes` (`id`, `num_cmd`, `montant_cmd`, `commentaire`, `etat`, `qtecmd`, `mode_pay`, `date_commande`, `date_modif`, `livraison_id`, `id_client`) VALUES
(1, '1', 5440.9, 'test Comment', 1, 3, 'carte', NULL, NULL, NULL, 1),
(2, '2', 5440.9, 'test Comment', 0, 3, 'carte', NULL, NULL, NULL, 1),
(3, '3', 5440.9, 'test Comment', 1, 3, 'carte', NULL, NULL, NULL, 1),
(4, '4', 40.9, 'test Comment', 1, 1, 'carte', NULL, NULL, NULL, NULL),
(5, '5', 40.9, 'test Comment', 1, 1, 'carte', NULL, NULL, NULL, NULL),
(6, '6', 40.9, 'test Comment', 1, 1, 'carte', NULL, NULL, NULL, NULL),
(7, '7', 40.9, 'test Comment', 1, 1, 'carte', NULL, NULL, NULL, NULL),
(8, '8', 40.9, 'test Comment', 1, 1, 'carte', NULL, NULL, NULL, NULL),
(9, '9', 290.9, 'test Comment', 1, 1, 'carte', NULL, NULL, NULL, NULL),
(10, '10', 290.9, 'test Comment', 1, 1, 'carte', NULL, NULL, NULL, NULL),
(11, '11', 290.9, 'test Comment', 1, 1, 'carte', NULL, NULL, NULL, NULL),
(12, '12', 290.9, 'test Comment', 1, 1, 'carte', NULL, NULL, NULL, NULL),
(13, '13', 290.9, 'test Comment', 1, 1, 'carte', NULL, NULL, NULL, NULL),
(14, '14', 290.9, 'test Comment', 1, 1, 'carte', NULL, NULL, NULL, NULL),
(15, '15', 290.9, 'test Comment', 1, 1, 'carte', NULL, NULL, NULL, NULL),
(16, '16', 290.9, 'test Comment', 1, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(17, '17', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(18, '18', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(19, '19', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(20, '20', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(21, '21', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(22, '22', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(23, '23', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(24, '24', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(25, '25', 290.9, 'test Comment', 1, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(51, '51', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(52, '52', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(53, '53', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(54, '54', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(55, '55', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(56, '56', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(57, '57', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(58, '58', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(59, '59', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(60, '60', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(61, '61', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(62, '62', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(63, '63', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(64, '64', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(65, '65', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(66, '66', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(67, '67', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(68, '68', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(69, '69', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(70, '70', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(71, '71', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(72, '72', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(73, '73', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(74, '74', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(75, '75', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(76, '76', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(77, '77', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(78, '78', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(79, '79', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(80, '80', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(81, '81', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(82, '82', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(83, '83', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(84, '84', 290.9, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(85, '85', 1860, 'test Comment', 1, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(86, '86', 2110, 'test Comment', 1, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(87, '87', 16.9, 'test Comment', 1, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(88, '88', 16.9, 'test Comment', 1, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(89, '89', 16.9, 'test Comment', 1, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(90, '90', 16.9, 'test Comment', 1, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(91, '91', 18.82, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(92, '92', 18.82, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(93, '93', 18.82, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(94, '94', 18.82, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(95, '95', 18.82, 'test Comment', 0, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(96, '96', 18.82, 'test Comment', 1, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(97, '97', 76, 'test Comment', 1, 1, 'Carte bancaire', NULL, NULL, NULL, NULL),
(101, '98', 360, 'test Comment', 1, 1, 'Carte bancaire', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `commandes_produit`
--

DROP TABLE IF EXISTS `commandes_produit`;
CREATE TABLE IF NOT EXISTS `commandes_produit` (
  `commandes_id` int(11) NOT NULL,
  `produit_id` int(11) NOT NULL,
  KEY `IDX_EF0864778BF5C2E6` (`commandes_id`),
  KEY `IDX_EF086477F347EFB` (`produit_id`),
  KEY `commandes_id` (`commandes_id`,`produit_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commandes_produit`
--

INSERT INTO `commandes_produit` (`commandes_id`, `produit_id`) VALUES
(1, 1),
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `entraineur`
--

DROP TABLE IF EXISTS `entraineur`;
CREATE TABLE IF NOT EXISTS `entraineur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `passwd` varchar(50) DEFAULT NULL,
  `adresse` varchar(30) DEFAULT NULL,
  `bio` varchar(30) DEFAULT NULL,
  `certification` varchar(30) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `IsBlocked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `entraineur`
--

INSERT INTO `entraineur` (`id`, `nom`, `prenom`, `email`, `passwd`, `adresse`, `bio`, `certification`, `img`, `IsBlocked`) VALUES
(1, 'aa', 'aa', 'rayenoueslati60@gmail.com', '6e35801cd8bef2af7ef45f520c494243', 'tunis', 'this is my bio', 'cert', 'lead-img-march-15-coding-courses-on-sale3284d2beeaed3976b4cfd19445ca3211.jpeg', 0),
(2, 'aezazaz', 'azazaz', 'azazaz@aaa.tn', '123456789aaa', 'azazaz', 'zaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'The_Black_Centurion4f7103d1e3cb5d4f41de9dcbd0c081bd.png', 0),
(4, 'testcoach', 'testcoach', 'test@hotmail.com', '0402745cab096c4ec2ba6913c67a4779', 'tunis', 'i am a pro IFBB coach', 'Certificated by IFBB', '1112741a59b10000c3152706a2b231425a68acd.jpeg', 0),
(5, 'aaz', 'aaa', 'aaa', 'aaa', 'aa', 'aa', 'aa', NULL, 0),
(15, 'test', 'test', 'coach@test.com', '9016837b58ba8b417f8fc01d9e31a02f', 'test', 'test', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `facture`
--

DROP TABLE IF EXISTS `facture`;
CREATE TABLE IF NOT EXISTS `facture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commande_id` int(11) NOT NULL,
  `num_fact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FE86641082EA2E54` (`commande_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ligne_commande`
--

DROP TABLE IF EXISTS `ligne_commande`;
CREATE TABLE IF NOT EXISTS `ligne_commande` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idCommande` int(22) DEFAULT NULL,
  `idProduit` int(22) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ligne_commande`
--

INSERT INTO `ligne_commande` (`id`, `idCommande`, `idProduit`) VALUES
(36, 82, 2),
(37, 82, 3),
(38, 82, 6),
(39, 83, 2),
(40, 83, 3),
(41, 83, 6),
(42, 84, 2),
(43, 84, 3),
(44, 84, 6),
(45, 85, 5),
(46, 85, 1),
(47, 86, 5),
(48, 86, 1),
(49, 86, 6),
(50, 87, 3),
(51, 88, 3),
(52, 89, 3),
(53, 90, 3),
(54, 96, 3),
(55, 96, 2),
(56, 97, 0),
(57, 101, 5);

-- --------------------------------------------------------

--
-- Table structure for table `livraison`
--

DROP TABLE IF EXISTS `livraison`;
CREATE TABLE IF NOT EXISTS `livraison` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commande_id` int(11) DEFAULT NULL,
  `id_client` int(20) NOT NULL,
  `etat_livraison` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A60C9F1F82EA2E54` (`commande_id`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `livraison`
--

INSERT INTO `livraison` (`id`, `commande_id`, `id_client`, `etat_livraison`, `created_at`, `modified_at`) VALUES
(7, 2, 1, '', NULL, NULL),
(8, 2, 1, '1', NULL, NULL),
(9, 2, 1, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `membre`
--

DROP TABLE IF EXISTS `membre`;
CREATE TABLE IF NOT EXISTS `membre` (
  `id_membre` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `date_naissance` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `taille` double NOT NULL,
  `poids` double NOT NULL,
  `type_corps` varchar(50) NOT NULL,
  PRIMARY KEY (`id_membre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nutritioniste`
--

DROP TABLE IF EXISTS `nutritioniste`;
CREATE TABLE IF NOT EXISTS `nutritioniste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `passwd` varchar(100) DEFAULT NULL,
  `adresse` varchar(30) DEFAULT NULL,
  `bio` varchar(30) DEFAULT NULL,
  `certification` varchar(30) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `IsBlocked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nutritioniste`
--

INSERT INTO `nutritioniste` (`id`, `nom`, `prenom`, `email`, `passwd`, `adresse`, `bio`, `certification`, `img`, `IsBlocked`) VALUES
(1, 'rayen', 'oueslati', 'oueslati.rayen@esprit.tn', 'c7390874d1c40165072d0a2e6150cf93', 'tunis', 'this is my new bio', 'cert', '111274198c872acdc506845af5fc6f305e07487.jpeg', 0),
(8, 'fsddqsd', 'dssdsd', 'sdsqdqsd@sdqdsqd.tn', '123456789az', 'dfsfdfs', 'dfsdfsdfsd', 'dfsdfsdfsf', '11127415092a6998c1cf374f8bcbaba4fd7c750.jpeg', 0),
(11, 'testnutri', 'testnutri', 'testnutri@hotmail.com', '83422503bcfc01d303030e8a7cc80efc', 'tunis', 'I am a good doctor', 'MASTER DEGREE AT JDJNRRRDFN', '12848c33c1e42a8421a3d3b3c10a0b094.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id_prod` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prix` double DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `quantite` int(11) DEFAULT NULL,
  `descProd` varchar(255) DEFAULT NULL,
  `id_cat` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_prod`),
  KEY `id_cat` (`id_cat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produit`
--

INSERT INTO `produit` (`id_prod`, `nom`, `prix`, `image`, `quantite`, `descProd`, `id_cat`) VALUES
(0, 'wsdfghj', 76, '29edc971a3b01cc7da0f139824be525a.jpeg', 12, '<p>qsdfghjk</p>', 1),
(1, 'Vitscan Gourde', 20.7, 'f23e4d7a9ee21af76f4dc82dc841c5cc.jpeg', 50, '<p><strong>Bouteille d&#39;eau</strong> de Motivation</p>\r\n\r\n<p>avec marqueur de Temps Transparente et poign&eacute;e.</p>', 2),
(2, 'Tapis training', 1.92, '95b12c6b6797ae9a3a999c2b8010eaa6.jpeg', 30, '<p><strong>Offre douceur et confort</strong></p>\r\n\r\n<p>Poss&egrave;de des &oelig;illets Surface stri&eacute;e Livr&eacute;</p>\r\n\r\n<p>avec poign&eacute;e de transport.</p>', 2),
(3, 'Nike x Pantalons Mixte', 16.9, 'd465a2214fa75c9e203953e32079728b.jpeg', 20, '<p><strong>74% Coton, 21% Polyamides, 3% Rubber, 2% Elastane.</strong></p>\r\n\r\n<p>Lavage en machine Fermeture: Fermeture &eacute;clair.</p>', 2),
(4, 'Vélo Sport Biking Indoor', 1500, 'a4b0ee1ff5f531edda05043231351231.jpeg', 10, '<p><strong>V&eacute;lo d&#39;exercice </strong></p>\r\n\r\n<p>ergonomique stationnaire lisse &agrave; haut renforcement:</p>\r\n\r\n<p>Garantit la stabilit&eacute; pendant le cyclisme.</p>', 1),
(5, 'Tapis de course', 360, '0fb37b1cdc10b6620afa9fd212539d54.jpeg', 20, '<p><strong>Portable</strong></p>\r\n\r\n<p><strong>Mince marche </strong></p>\r\n\r\n<p><strong>Faible bruit&nbsp;</strong></p>\r\n\r\n<p><strong>&Eacute;cran HD</strong></p>', 1),
(6, 'Protéine masse musculaire', 75, '098c65e12a591aaa52c1f357277c6a1f.jpeg', 45, '<p><strong>Gout Chocolate 2.5 Kg</strong></p>', 3),
(7, 'Protéine Whey Collagène', 24.96, 'cfe5dade08437408df3529288f0c0e86.jpeg', 45, '<p>Go&ucirc;t <strong>Praline Beurre Sal&eacute;</strong> 750 Grammes.</p>', 3),
(8, 'Poids Cheville', 78.99, '92cdbcda1e90d172c29f942cd9e1183d.jpeg', 30, '<p><strong>Taille 0.5kg (x2) </strong></p>\r\n\r\n<p><strong>Livr&eacute; en 2 poids de cheville (1 paire),</strong></p>\r\n\r\n<p><strong>0.5kg/chacun (1kg/paire).</strong></p>\r\n\r\n<p>Avec&nbsp;<u>5 sacs de poids s&eacute;parables</u></p>\r\n\r\n<p>&nbsp;</p>', 15),
(9, 'Vélo elliptique', 499, '2445b81473c85a783273392194950769.jpeg', 20, '<p>le <strong>Crosswalker </strong>permet non seulement</p>\r\n\r\n<p>un mouvement vertical vers l&#39;avant,</p>\r\n\r\n<p>mais aussi un mouvement</p>\r\n\r\n<p>lat&eacute;ral horizontal.</p>', 1),
(29, 'change2', 41.92, '6e9377b265b30c3cd6d78917ef4b7495.jpeg', 12, 'wdsfgtyhjklkjghfd', 1),
(30, 'dfgwrsgdthfyju', 541, '14048fbffba2d7bfef5269208486c6d3.jpeg', 13, 'qzerdtfgyhuj', 1),
(33, 'sedrftgyhjk', 5244, 'c84b6a17d61542c1c9fd253d6cd2d473.jpeg', 1, '<h2 style=\"font-style:italic\"><u><strong><em>qsdfgth</em></strong></u></h2>', 2),
(42, 'sdfrtgyhuiop^mloi', 23, 'fdbb8b5e8e8457658808b5c5acf5ba0c.png', 1, '<p>sedrtgyhj</p>', 1),
(43, 'sdfghyjk', 200, '053a3ed511c3c0abd0c81228f817a262.png', 14, '<p>zertgyhujikolpm</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `progclient`
--

DROP TABLE IF EXISTS `progclient`;
CREATE TABLE IF NOT EXISTS `progclient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idprog` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk1_idprog` (`idprog`),
  KEY `FK2` (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `progclient`
--

INSERT INTO `progclient` (`id`, `idprog`, `iduser`) VALUES
(2, 2, 5),
(3, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `programmeentraineur`
--

DROP TABLE IF EXISTS `programmeentraineur`;
CREATE TABLE IF NOT EXISTS `programmeentraineur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idExercice` varchar(100) NOT NULL,
  `nomPack` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programmeentraineur`
--

INSERT INTO `programmeentraineur` (`id`, `idExercice`, `nomPack`, `type`) VALUES
(7, 'bandes de résistance, une barre de traction, un banc de musculation', 'exercices cali', 'Fitness'),
(8, '0', 'running only', 'cardio'),
(9, '3', 'circuit training', 'strength training'),
(11, '1/La corde à sauter', 'pour client vip', 'Fitness'),
(12, '1/ 5 pompes  2/ 20 tour sur terrain', 'premium pack', 'fitness'),
(13, '1/aaaaa\n2/aaaaaaaaa\n3/bbbbbbbb', 'premm', 'zzzz'),
(15, '10 pompes et pull ups chaque jour', 'pack beginner', 'fitness');

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
CREATE TABLE IF NOT EXISTS `promotion` (
  `id_prom` int(11) NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `porcentage` double DEFAULT NULL,
  `ancienPrix` double DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `descProm` varchar(255) DEFAULT NULL,
  `id_prod` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_prom`),
  KEY `id_prod` (`id_prod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`id_prom`, `titre`, `porcentage`, `ancienPrix`, `image`, `descProm`, `id_prod`) VALUES
(21, 'fghjklm', 50, 96, '41d1e918e297dd92e80c046a6816a5ab.jpeg', 'qsdfgbh', 7),
(22, 'test26', 52, 48, '0380cd74db2faf5c8657a470766812c3.jpeg', 'xdfghnsdfgh', 7),
(23, 'fghjklm', 50, 100, '68756b3c4d42a5786e37a62b435b590b.jpeg', 'QSDFGHGFQZSEDFG', 1),
(24, 'sedrftgyhujk', 552, 50, 'acb62c23af9c5f6f93490e4f035d1f7e.jpeg', '<p>qsdrftyhujikl</p>', 1),
(25, 'fuck off', 20, 524, '037de44877f10843d202ac325c893d31.jpeg', '<p>dfghjuk</p>', 29),
(26, 'fuck off', 20, 1800, '32e9c7be318449af0e4ada769c1772e8.jpeg', '<p><strong><u>plzzzzzzzzzzzzzzzzzzzzzzzz</u></strong></p>', 5),
(27, 'sdfghjk', 8, 24, 'fdc53a632e1ebeb80490bc1c70f53605.jpeg', '<p><strong>sdfghjkl</strong></p>', 2),
(28, 'testsdftgyhjkl', 30, 276, 'f72f9bab81d938e065ffc4fd813439f3.jpeg', '<p>sdfgh</p>', 1),
(29, 'newnew', 40, 104.8, '43fe2589609db622d0f32c82c742a3e8.png', '<p>newnew</p>', 29),
(30, 'testing', 50, 82.8, '4e80ad93102d2c839662321f8103284a.jpeg', '<p><ins><u><strong><span style=\"font-size:18px\">sdfghjk</span></strong></u></ins></p>', 1),
(31, 'testtttttt', 50, 41.4, 'c320687aab00aef2970bef54d177b3e5.png', '<p>rrrrrrrrrrrrrrrrrrr</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reclamations`
--

DROP TABLE IF EXISTS `reclamations`;
CREATE TABLE IF NOT EXISTS `reclamations` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `idEntraineur` int(20) DEFAULT NULL,
  `idNutritionniste` int(20) DEFAULT NULL,
  `idClient` int(20) DEFAULT NULL,
  `numReclamation` varchar(50) DEFAULT NULL,
  `titre` varchar(60) DEFAULT NULL,
  `message` varchar(65000) DEFAULT NULL,
  `type` varchar(150) DEFAULT NULL,
  `image` varchar(60) DEFAULT NULL,
  `etat` tinyint(1) DEFAULT NULL,
  `cloturer` tinyint(1) DEFAULT NULL,
  `dateReclamation` varchar(60) DEFAULT NULL,
  `dateCloture` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idEntraineur` (`idEntraineur`),
  KEY `idNutritionniste` (`idNutritionniste`),
  KEY `idClient` (`idClient`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reclamations`
--

INSERT INTO `reclamations` (`id`, `idEntraineur`, `idNutritionniste`, `idClient`, `numReclamation`, `titre`, `message`, `type`, `image`, `etat`, `cloturer`, `dateReclamation`, `dateCloture`) VALUES
(6, NULL, NULL, 1, '22-040', 'test', 'iheb iheb', 'Systeme', 'coach.jpg', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `regime`
--

DROP TABLE IF EXISTS `regime`;
CREATE TABLE IF NOT EXISTS `regime` (
  `id_regime` int(11) NOT NULL,
  `objectif` varchar(20) NOT NULL,
  `date_debut` date NOT NULL,
  `duree` int(11) NOT NULL,
  `max_calories` int(11) NOT NULL,
  `nb_repas` int(11) NOT NULL,
  `id_specialiste` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regime`
--

INSERT INTO `regime` (`id_regime`, `objectif`, `date_debut`, `duree`, `max_calories`, `nb_repas`, `id_specialiste`, `image`) VALUES
(14, 'Perdre du poids', '2022-04-13', 22, 13, 10, 123, '1f860b871ffea4021e6f3e209e63ed7f.jpg'),
(130, 'Gagner du poids', '2022-04-06', 2, 1, 2, 3, '43c635b92ffed5a62368546030a4055f.jpeg'),
(131, 'sdcxsc', '2022-04-06', 2, 0, 2, 3, '138e5095b0ddb6148fb2f256b683c489.jpg'),
(133, '11', '2021-01-01', 3, 2, 2, 2, '827d7b870e527ac0202cba09a6797757.png'),
(134, 'ss', '2017-04-01', 2, 2, 2, 2, '694b22b2d932bf59dfdf5ff678c25854.jpg'),
(135, '000', '2017-01-01', 2, 3, 6, 3, '3d1e836b74aba9b8f3f6c7e2691b3a92.jpg'),
(136, 'Maintenir le poids', '2017-01-01', 4, 3, 2, 3, 'cb5e6194838500294af27c94f11b085e.jpeg'),
(137, '111', '2017-01-01', 2, 2, 2, 2, '8714c2eea64da5531b6451a17a8badff.jpg'),
(138, '111', '2017-01-01', 2, 2, 2, 2, '8708d45badbbcb9f19c741b52a0f2675.jpg'),
(139, '11', '2018-01-01', 11, 2, 3, 2, 'a445e0d7cb9adc83a073a4d56d9859ab.jpg'),
(140, 'sdcxsc', '2017-01-01', 3, 3, 2, 1, 'bd6c3388c446de1ba1863dfb8942ce47.jpg'),
(141, 'sdcxsc', '2017-01-01', 3, 3, 2, 1, 'fa50fa6277ee03e50bcb8ebab1d94ba4.jpg'),
(142, 'Perdre du poids', '2017-01-01', 3, 3, 2, 1, 'c4c1606f246ae99123d3520a079b1de0.png'),
(143, 'Perdre du poids', '2022-04-20', 1, 3, 3, 2, '00d3858925506c94e838b8e55135fbb7.png'),
(144, 'Perdre du poids', '2022-04-06', 3, 3, 3, 4, 'f321299a3ec6d8bf6bc0888c84a4aa75.jpg'),
(145, 'Perdre du poids', '2022-04-05', 2, 3, 2, 3, 'bb103153c67140ab6ebf116f1d5f0579.jpg'),
(146, 'Maintenir le poids', '2022-09-14', 2, 2, 2, 2, '95fae5e47e5f7a7c42d3515d0bd25b45.jpg'),
(147, 'Gagner du poids', '2022-04-13', 4, 7, 3, 3, 'e5a18277a0a8ee286c06353ba225b559.jpg'),
(148, 'Perdre du poids', '2022-03-30', 6, 2, 4, 1, 'f5a660455403fcdc188a5be09410dbc6.jpg'),
(149, 'Perdre du poids', '2022-04-13', 2, 3, 4, 5, 'd7e0df021cdfe3ac9deb1d1e85a0f117.jpg'),
(150, 'Perdre du poids', '2022-04-13', -3, -5, 3, 2, 'd97d4eb0c8619a80de344dc1a59ed437.jpg'),
(151, 'Perdre du poids', '2022-04-06', 4, 3, -6, 4, 'e5e260327da3fec10f4a3326d8ce4539.jpg'),
(152, 'Perdre du poids', '2022-04-06', 4, 3, -6, 4, 'e6fbf056a57ee63e0a1d48f3ef701837.jpg'),
(153, 'Perdre du poids', '2022-04-06', 4, 3, -6, 4, '3ab89978059f6cde6ba6a9bdcdf0160c.jpg'),
(154, 'Perdre du poids', '2022-04-20', 3, 3, 3, 3, 'e8cc470945bdefdd805fd6688278b009.jpg'),
(155, 'Perdre du poids', '2022-04-20', 3, 3, 3, 3, 'ac787acc2878d0b59bafea81749b7a6e.jpg'),
(156, 'Maintenir le poids', '2022-03-31', 5, 5, 4, 4, 'ae5d6240fb558e501b9f6599c4b64081.jpg'),
(157, 'Maintenir le poids', '2022-04-13', 3, 3, 3, 2, '019664f966e0ab640006c2c30fef9f7c.jpg'),
(158, 'Maintenir le poids', '2022-04-13', 3, 3, 3, 2, '7c0a293f53b4d420c1aa8bd2073810ba.jpg'),
(159, 'Maintenir le poids', '2022-04-13', 3, 3, 3, 2, 'ecd0821976d3c8aea23a8124539e3804.jpg'),
(160, 'Perdre du poids', '2022-03-30', 3, 3, 2, 4, '26f9960a4651e02231330b10313f7bf0.jpeg'),
(161, 'Perdre du poids', '2022-04-11', 2, 3, 2, 2, '113861ff206b4aea0b4b68cf27bd54f2.txt'),
(162, 'Perdre du poids', '2022-04-18', 3, 2, 2, 2, '5462cb48b1c8f69d588e205e33afa539.txt'),
(163, 'Perdre du poids', '2022-04-12', 2, -2, 4, 7, 'bec8d4dcad8bca27fe3a4924f6836ac5.pdf'),
(164, 'Perdre du poids', '2022-03-29', 2, 2, 3, 3, '79727d068e06c5fcd009f0302eaffafc.png'),
(165, 'Gagner du poids', '2022-04-14', 2, 2, 2, 2, 'beedea0bd916324d07b8dcc2865ee6e6.png'),
(166, 'Gagner du poids', '2022-04-21', 2, 2, 2, 2, '7c6ca7985e1704af6d42749e7b62e831.jpeg'),
(0, 'Gagner du poids', '2022-05-09', 3, 3, 2, 3, 'f5e573fbf16ac4d37e7b02c35344651b.png'),
(0, 'Gagner du poids', '2022-05-09', 3, 3, 2, 3, 'f4a598145ef830cda23e9be0e96da8d5.png'),
(0, 'Perdre du poids', '2022-05-26', 3, 10, 9, 4, '29d76d178b6fc9b369aea8511d3674e3.png'),
(1, 'Gagner du Poids ', '0000-00-00', 1235, 125, 4, 45, 'C:/Users/user/Desktop/market/kiwi.jpg'),
(2, 'Perdre du Poids', '0000-00-00', 12300, 12, 3, 45, 'C:/Users/user/Desktop/market/kiwi.jpg'),
(3, 'Perdre du Poids', '0000-00-00', 1225, 12, 3, 455, 'C:/Users/user/Desktop/market/kiwi.jpg'),
(4, 'Gagner du Poids ', '0000-00-00', 445, 121, 11, 44144, ''),
(5, 'Perdre du Poids', '0000-00-00', 2, 123, 3, 5, '55'),
(10, 'Gagner du Poids ', '0000-00-00', 1455, 5, 4, 455, 'C:/Users/user/Desktop/market/kiwi.jpg'),
(14, 'Gagner du Poids ', '0000-00-00', 22, 13, 10, 123, 'dfsq'),
(21, 'Gagner du Poids ', '0000-00-00', 22, 32, 123, 11, ''),
(22, 'Gagner du Poids ', '0000-00-00', 42, 22, 22, 222, ''),
(112, 'Maintenir le Poids', '0000-00-00', 23, 1235, 3, 123, ''),
(123, 'Maintenir le Poids', '0000-00-00', 4, 5, 5, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `reg_repas`
--

DROP TABLE IF EXISTS `reg_repas`;
CREATE TABLE IF NOT EXISTS `reg_repas` (
  `id_regime` int(11) NOT NULL,
  `id_repas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reg_repas`
--

INSERT INTO `reg_repas` (`id_regime`, `id_repas`) VALUES
(14, 35),
(142, 34),
(143, 35),
(144, 34),
(145, 33),
(147, 33),
(148, 34),
(149, 34),
(150, 34),
(151, 34),
(152, 34),
(153, 34),
(156, 34),
(157, 34),
(158, 34),
(159, 34),
(160, 34),
(161, 34),
(162, 35),
(163, 35),
(164, 34),
(165, 37),
(166, 34),
(0, 33),
(0, 33),
(0, 34);

-- --------------------------------------------------------

--
-- Table structure for table `repas`
--

DROP TABLE IF EXISTS `repas`;
CREATE TABLE IF NOT EXISTS `repas` (
  `id_repas` int(11) NOT NULL,
  `nom_rep` varchar(100) NOT NULL,
  `nb_cal` int(11) NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `repas`
--

INSERT INTO `repas` (`id_repas`, `nom_rep`, `nb_cal`, `quantite`) VALUES
(33, 'djeuner', 2, 8),
(34, 'nourchen', 13, 25),
(35, 'eeee', 2, 3),
(37, 'a', 2, 2),
(42, 'djeuner', 2, 2),
(43, 'fee', 2, 2),
(44, 'djeuner', 1, 5),
(45, 'nourchen', 4, 7),
(46, 'nourchen', 1, 1),
(13, '52', 768569, 8796879),
(26, '123', 5, 2424),
(28, '323', 4524, 45637),
(30, 'friio', 112, 1425);

-- --------------------------------------------------------

--
-- Table structure for table `suivieevolution`
--

DROP TABLE IF EXISTS `suivieevolution`;
CREATE TABLE IF NOT EXISTS `suivieevolution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  `poids` int(11) NOT NULL,
  `dateDebutProgramme` date NOT NULL,
  `dateEvolution` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suivieevolution`
--

INSERT INTO `suivieevolution` (`id`, `idUser`, `poids`, `dateDebutProgramme`, `dateEvolution`) VALUES
(1, 12, 65, '2022-02-08', '2024-02-16'),
(2, 2, 58, '2022-02-14', '2022-02-18'),
(6, 12, 61, '2022-02-08', '2022-03-16'),
(9, 1, 33, '2017-01-01', '2019-01-01'),
(10, 2, 75, '2017-01-01', '2020-01-01'),
(11, 2, 63, '2019-03-31', '2022-01-18');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`id_coach`) REFERENCES `entraineur` (`id`),
  ADD CONSTRAINT `client_ibfk_2` FOREIGN KEY (`id_nutri`) REFERENCES `nutritioniste` (`id`),
  ADD CONSTRAINT `fk` FOREIGN KEY (`id_progclient`) REFERENCES `progclient` (`id`);

--
-- Constraints for table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`);

--
-- Constraints for table `livraison`
--
ALTER TABLE `livraison`
  ADD CONSTRAINT `livraison_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reclamations`
--
ALTER TABLE `reclamations`
  ADD CONSTRAINT `reclamations_ibfk_1` FOREIGN KEY (`idEntraineur`) REFERENCES `entraineur` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reclamations_ibfk_2` FOREIGN KEY (`idNutritionniste`) REFERENCES `nutritioniste` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reclamations_ibfk_3` FOREIGN KEY (`idClient`) REFERENCES `client` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
