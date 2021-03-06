-- phpMyAdmin SQL Dump
-- version 4.6.2
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mer 22 Juin 2016 à 16:57
-- Version du serveur :  5.5.42
-- Version de PHP :  7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `partiel_silex`
--

-- --------------------------------------------------------

--
-- Structure de la table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `id_year` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `skill_development` tinyint(4) NOT NULL,
  `skill_design` tinyint(4) NOT NULL,
  `skill_marketing` tinyint(4) NOT NULL,
  `skill_general_culture` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `students`
--

INSERT INTO `students` (`id`, `id_year`, `first_name`, `last_name`, `slug`, `skill_development`, `skill_design`, `skill_marketing`, `skill_general_culture`) VALUES
(1, 1, 'Barbé', 'Cynthia', 'barbe_cynthia', 2, 3, 2, 4),
(2, 1, 'Beltran', 'Jonathan', 'beltran_jonathan', 2, 4, 4, 4),
(3, 1, 'Berthet', 'Solène', 'berthet_solene', 3, 4, 4, 4),
(4, 1, 'Bouhanna', 'Arthur', 'bouhanna_arthur', 2, 4, 2, 3),
(5, 1, 'Bregeon', 'Mégane', 'bregeon_megane', 2, 4, 3, 5),
(6, 1, 'Caillard', 'Hugo', 'caillard_hugo', 5, 2, 3, 2),
(7, 1, 'Carrot', 'Benjamin', 'carrot_benjamin', 4, 4, 4, 4),
(8, 1, 'Charachon', 'Louis', 'charachon_louis', 5, 2, 3, 2),
(9, 1, 'Chartier', 'Victor', 'chartier_victor', 4, 4, 5, 4),
(10, 1, 'Chenais', 'Louis', 'chenais_louis', 2, 3, 3, 4),
(11, 1, 'Chounramany', 'Vannaly', 'chounramany_vannaly', 2, 5, 2, 2),
(12, 1, 'Combes', 'Antoine', 'combes_antoine', 4, 2, 4, 4),
(13, 1, 'Corsini', 'Alexandre', 'corsini_alexandre', 5, 2, 4, 4),
(14, 1, 'Dachaud', 'Julien', 'dachaud_julien', 3, 5, 5, 5),
(15, 1, 'Darco', 'Clara', 'darco_clara', 3, 3, 4, 3),
(16, 1, 'David', 'Valentin', 'david_valentin', 4, 5, 3, 2),
(17, 1, 'De Kerpoisson', 'Maxence', 'de_kerpoisson_maxence', 3, 2, 5, 4),
(18, 1, 'De Sousa', 'Wladimir', 'de_sousa_wladimir', 4, 2, 2, 4),
(19, 1, 'Decherf', 'Jean', 'decherf_jean', 2, 3, 4, 4),
(20, 1, 'Delaunay', 'Clément', 'delaunay_clement', 4, 3, 2, 3),
(21, 1, 'Deloizy', 'Oscar', 'deloizy_oscar', 3, 4, 5, 4),
(22, 1, 'Delusier', 'Pauline', 'delusier_pauline', 3, 5, 4, 5),
(23, 1, 'Denis', 'Joanna', 'denis_joanna', 2, 2, 2, 4),
(24, 1, 'Des champs de Boishebert', 'Thibault', 'des_champs_de_boishebert_thibault', 2, 4, 5, 4),
(25, 1, 'Deverriere', 'Camille', 'deverriere_camille', 4, 4, 2, 3),
(26, 1, 'Devilliere', 'Loïc', 'devilliere_loic', 5, 3, 5, 5),
(27, 1, 'Doh', 'Youna', 'doh_youna', 4, 4, 3, 2),
(28, 1, 'Domercq', 'Eléna', 'domercq_elena', 5, 4, 3, 3),
(29, 1, 'Farge', 'Nina', 'farge_nina', 3, 3, 2, 5),
(30, 1, 'Farneau', 'Tristan', 'farneau_tristan', 2, 4, 4, 3),
(31, 1, 'Friedli', 'Alain', 'friedli_alain', 5, 5, 5, 2),
(32, 1, 'Glable', 'Rachel', 'glable_rachel', 3, 5, 5, 2),
(33, 1, 'Goguelin', 'Vincent', 'goguelin_vincent', 4, 5, 3, 3),
(34, 1, 'Guioneau', 'Maxime', 'guioneau_maxime', 2, 3, 2, 5),
(35, 1, 'Harreau', 'Matthieu', 'harreau_matthieu', 5, 4, 5, 5),
(36, 1, 'Hauteville', 'Héloïse', 'hauteville_heloise', 3, 3, 2, 4),
(37, 1, 'Houcke', 'Sylvain', 'houcke_sylvain', 4, 3, 3, 4),
(38, 1, 'Juvenet', 'Guillaume', 'juvenet_guillaume', 5, 2, 5, 5),
(39, 1, 'Kokou', 'Jean-Yves', 'kokou_jean_yves', 5, 5, 2, 3),
(40, 1, 'Lachassagne', 'Matthieu', 'lachassagne_matthieu', 4, 5, 3, 2),
(41, 1, 'Lalanne', 'Cécile', 'lalanne_cecile', 4, 5, 4, 5),
(42, 1, 'Le Tyrant', 'Mathieu', 'le_tyrant_mathieu', 2, 5, 4, 5),
(43, 1, 'Lemaitre', 'Pierre-Antoine', 'lemaitre_pierre_antoine', 3, 4, 5, 4),
(44, 1, 'Lemée', 'Thomas', 'lemee_thomas', 5, 2, 3, 3),
(45, 1, 'Magnan', 'Aurélien', 'magnan_aurelien', 3, 4, 2, 3),
(46, 1, 'Mayet', 'Aina', 'mayet_aina', 4, 2, 2, 4),
(47, 1, 'Menant', 'Centis', 'menant_centis', 2, 2, 5, 4),
(48, 1, 'Meyer', 'Rémy', 'meyer_remy', 5, 2, 5, 4),
(49, 1, 'Michay', 'Allan', 'michay_allan', 2, 3, 4, 2),
(50, 1, 'Monjol', 'Alexandre', 'monjol_alexandre', 3, 3, 2, 4),
(51, 1, 'Nguyen', 'Dac Davy', 'nguyen_dac_davy', 5, 5, 3, 4),
(52, 1, 'Nogaret', 'Alban', 'nogaret_alban', 5, 5, 2, 2),
(53, 1, 'Parrinello', 'Julia', 'parrinello_julia', 3, 3, 4, 2),
(54, 1, 'Pascal', 'Justine', 'pascal_justine', 3, 4, 4, 3),
(55, 1, 'Paugam', 'Thomas', 'paugam_thomas', 5, 3, 2, 5),
(56, 1, 'Petit', 'Jean-Christophe', 'petit_jean_christophe', 4, 2, 4, 4),
(57, 1, 'Peyrot', 'Justine', 'peyrot_justine', 4, 2, 5, 5),
(58, 1, 'Ponrajah', 'Michaël', 'ponrajah_michaël', 3, 5, 4, 3),
(59, 1, 'Poteloin', 'Hugo', 'poteloin_hugo', 5, 2, 2, 5),
(60, 1, 'Regior', 'Meghan', 'regior_meghan', 5, 2, 2, 3),
(61, 1, 'Ribes', 'Marion', 'ribes_marion', 4, 4, 3, 5),
(62, 1, 'Rua', 'Clara', 'rua_clara', 3, 2, 3, 2),
(63, 1, 'Ruiz', 'Annabelle', 'ruiz_annabelle', 3, 4, 5, 2),
(64, 1, 'Serrano', 'Alexandre', 'serrano_alexandre', 5, 4, 4, 4),
(65, 1, 'Thorwirth', 'Axel', 'thorwirth_axel', 4, 3, 4, 2),
(66, 1, 'Trimoulet', 'Alexandre', 'trimoulet_alexandre', 3, 2, 3, 3),
(67, 1, 'Truong', 'Richard', 'truong_richard', 3, 3, 2, 2),
(68, 1, 'Vanstaevel', 'Elise', 'vanstaevel_elise', 4, 3, 4, 2),
(69, 1, 'Xu', 'Giovanni', 'xu_giovanni', 5, 5, 2, 2),
(70, 1, 'Zrihen', 'Alexis', 'zrihen_alexis', 2, 4, 3, 3),
(71, 2, 'Achour', 'Leslie', 'achour_leslie', 3, 3, 3, 3),
(72, 2, 'Aguado', 'Nicolas', 'aguado_nicolas', 5, 2, 5, 3),
(73, 2, 'Allouis', 'Arnaud', 'allouis_arnaud', 4, 3, 4, 2),
(74, 2, 'Alouani', 'Nawelle', 'alouani_nawelle', 4, 5, 3, 5),
(75, 2, 'Amiot', 'Louis', 'amiot_louis', 3, 4, 2, 2),
(76, 2, 'Bancquart', 'Julien', 'bancquart_julien', 2, 4, 2, 5),
(77, 2, 'Batchevitch', 'Boris', 'batchevitch_boris', 4, 3, 2, 4),
(78, 2, 'Benichou', 'Jeanne', 'benichou_jeanne', 2, 4, 2, 3),
(79, 2, 'Bigot', 'Valentin', 'bigot_valentin', 5, 4, 4, 5),
(80, 2, 'Bonnike', 'Tom', 'bonnike_tom', 4, 3, 3, 3),
(81, 2, 'Bosom', 'Orane', 'bosom_orane', 5, 5, 3, 3),
(82, 2, 'Bouneggar', 'Amine', 'bouneggar_amine', 5, 5, 2, 2),
(83, 2, 'Cabrol', 'Margaux', 'cabrol_margaux', 3, 3, 2, 3),
(84, 2, 'Camhaji', 'Thibaud', 'camhaji_thibaud', 5, 3, 3, 4),
(85, 2, 'Caron', 'Morgan', 'caron_morgan', 4, 4, 3, 5),
(86, 2, 'Chalon', 'Axel', 'chalon_axel', 2, 3, 2, 2),
(87, 2, 'Charrassin', 'Grégoire', 'charrassin_gregoire', 5, 5, 5, 4),
(88, 2, 'Chavardes', 'Gaspard', 'chavardes_gaspard', 3, 3, 5, 2),
(89, 2, 'Chesnais', 'Odon', 'chesnais_odon', 2, 2, 3, 5),
(90, 2, 'Dadon', 'David', 'dadon_david', 5, 4, 2, 3),
(91, 2, 'Dauzidou', 'Juliette', 'dauzidou_juliette', 5, 2, 5, 5),
(92, 2, 'Ferret', 'Noémie', 'ferret_noemie', 4, 2, 4, 3),
(93, 2, 'Frebault', 'Antoine', 'frebault_antoine', 5, 5, 2, 5),
(94, 2, 'Gabriel', 'Paul', 'gabriel_paul', 3, 3, 2, 3),
(95, 2, 'Gaeremynck', 'Anthony', 'gaeremynck_anthony', 2, 2, 5, 3),
(96, 2, 'Gaillard', 'Raoul', 'gaillard_raoul', 3, 5, 4, 3),
(97, 2, 'Gay', 'Simon', 'gay_simon', 2, 2, 3, 2),
(98, 2, 'Gouret', 'Thomas', 'gouret_thomas', 4, 3, 3, 4),
(99, 2, 'Goutry', 'Martin', 'goutry_martin', 4, 2, 4, 2),
(100, 2, 'Govtepe', 'Julien', 'govtepe_julien', 3, 3, 3, 2),
(101, 2, 'Gozlan-Dantoni', 'Julien', 'gozlan_dantoni_julien', 3, 4, 2, 4),
(102, 2, 'Grivet', 'Rodolphe', 'grivet_rodolphe', 5, 3, 2, 5),
(103, 2, 'Gulmez', 'Anouche', 'gulmez_anouche', 3, 2, 3, 4),
(104, 2, 'Hazgui', 'Mohamed-Ali', 'hazgui_mohamed_ali', 5, 5, 2, 5),
(105, 2, 'Hentati', 'Akram', 'hentati_akram', 5, 3, 5, 4),
(106, 2, 'Jacoty', 'Antoine', 'jacoty_antoine', 4, 3, 3, 3),
(107, 2, 'Jakubec', 'Kevin', 'jakubec_kevin', 4, 2, 3, 2),
(108, 2, 'Lachot', 'Cédrick', 'lachot_cedrick', 3, 5, 2, 4),
(109, 2, 'Landanger', 'Lucien', 'landanger_lucien', 4, 3, 3, 3),
(110, 2, 'Lapi', 'Romain', 'lapi_romain', 4, 3, 2, 2),
(111, 2, 'Laporte', 'Boris', 'laporte_boris', 3, 4, 4, 3),
(112, 2, 'Law Yim Wan', 'Jean', 'law_yim_wan_jean', 3, 5, 3, 3),
(113, 2, 'Le Saout', 'Morgane', 'le_saout_morgane', 2, 3, 2, 5),
(114, 2, 'Lemahieu', 'Lucas', 'lemahieu_lucas', 4, 3, 2, 3),
(115, 2, 'Lener', 'Luca', 'lener_luca', 4, 4, 3, 5),
(116, 2, 'Lozingue', 'Julien', 'lozingue_julien', 4, 4, 4, 2),
(117, 2, 'Manad', 'Youssra', 'manad_youssra', 5, 5, 4, 4),
(118, 2, 'Medvedeva', 'Daria', 'medvedeva_daria', 3, 4, 5, 5),
(119, 2, 'Meziani', 'Adel', 'meziani_adel', 3, 4, 2, 4),
(120, 2, 'Monnier', 'Antoine', 'monnier_antoine', 3, 3, 2, 3),
(121, 2, 'Moussi', 'Nahel', 'moussi_nahel', 5, 2, 3, 3),
(122, 2, 'Nieder', 'Raphaël', 'nieder_raphaël', 4, 4, 4, 2),
(123, 2, 'Oumakhlouf', 'Tarik', 'oumakhlouf_tarik', 3, 5, 2, 5),
(124, 2, 'Pages', 'Annabelle', 'pages_annabelle', 3, 4, 2, 3),
(125, 2, 'Pereira', 'Cédric', 'pereira_cedric', 4, 4, 2, 2),
(126, 2, 'Peuvergne', 'Evan', 'peuvergne_evan', 3, 5, 5, 4),
(127, 2, 'Philippe', 'Jérémy', 'philippe_jeremy', 3, 5, 3, 4),
(128, 2, 'Phivilay', 'Kris-Surya', 'phivilay_kris_surya', 3, 4, 2, 2),
(129, 2, 'Piechowiak', 'Louis', 'piechowiak_louis', 5, 3, 4, 4),
(130, 2, 'Polin', 'Ronan', 'polin_ronan', 2, 3, 5, 3),
(131, 2, 'Quellery', 'Lionel', 'quellery_lionel', 3, 5, 3, 5),
(132, 2, 'Rajathurai', 'Chrissen', 'rajathurai_chrissen', 4, 4, 2, 3),
(133, 2, 'Richard', 'Stephen', 'richard_stephen', 3, 3, 3, 4),
(134, 2, 'Riviere', 'Magali', 'riviere_magali', 2, 2, 3, 4),
(135, 2, 'Sakamesso', 'Moïse', 'sakamesso_moise', 2, 5, 3, 4),
(136, 2, 'Sans', 'Aymeric', 'sans_aymeric', 4, 3, 5, 3),
(137, 2, 'Sniezak', 'Paul', 'sniezak_paul', 5, 4, 5, 2),
(138, 2, 'Soler', 'Clément', 'soler_clement', 5, 4, 3, 3),
(139, 2, 'Soum', 'Matthieu', 'soum_matthieu', 4, 5, 2, 3),
(140, 2, 'Subias', 'Alexis', 'subias_alexis', 3, 3, 4, 4),
(141, 2, 'Suijlen', 'Inès', 'suijlen_ines', 4, 2, 3, 5),
(142, 2, 'Sylla', 'Valy', 'sylla_valy', 3, 5, 3, 4),
(143, 2, 'Tarriere', 'Miléna', 'tarriere_milena', 4, 5, 3, 2),
(144, 2, 'Tchoreloff', 'Alexandra', 'tchoreloff_alexandra', 3, 3, 4, 3),
(145, 2, 'Tillay', 'Alexandre', 'tillay_alexandre', 5, 4, 3, 5),
(146, 2, 'Tourdes', 'Matthieu', 'tourdes_matthieu', 2, 4, 3, 5),
(147, 2, 'Vaubourg', 'Thibaud', 'vaubourg_thibaud', 4, 3, 3, 5),
(148, 2, 'Victoria', 'Thomas', 'victoria_thomas', 4, 2, 3, 3),
(149, 2, 'Wetteren', 'Rémi', 'wetteren_remi', 2, 5, 2, 4),
(150, 2, 'Wsevolojsky', 'Serge', 'wsevolojsky_serge', 4, 4, 2, 2),
(151, 2, 'Ziserman', 'Martin', 'ziserman_martin', 3, 4, 3, 4),
(152, 3, 'ALLALI', 'Amine', 'allali_amine', 5, 2, 5, 5),
(153, 3, 'ALLOUCH', 'Max', 'allouch_max', 4, 3, 4, 5),
(154, 3, 'ALVAREZ DE JESUS', 'Camille', 'alvarez_de_jesus_camille', 2, 5, 4, 4),
(155, 3, 'ALVIZ', 'Blas', 'alviz_blas', 3, 5, 3, 2),
(156, 3, 'ANTHONY', 'Kelly', 'anthony_kelly', 5, 5, 3, 2),
(157, 3, 'ATLAN', 'Yohan', 'atlan_yohan', 4, 4, 4, 2),
(158, 3, 'BACHOLIER', 'Théo', 'bacholier_theo', 3, 5, 3, 5),
(159, 3, 'BASSET', 'Camille', 'basset_camille', 3, 5, 3, 2),
(160, 3, 'BELAMY', 'Jules', 'belamy_jules', 5, 3, 5, 3),
(161, 3, 'BERGAGLIA', 'Bastien', 'bergaglia_bastien', 4, 4, 2, 5),
(162, 3, 'BERNEAU', 'Alex', 'berneau_alex', 4, 5, 3, 2),
(163, 3, 'BETOLIERE', 'Adrien', 'betoliere_adrien', 5, 4, 2, 4),
(164, 3, 'BLANCO', 'Timothé', 'blanco_timothe', 4, 4, 5, 2),
(165, 3, 'BORENSZTEIN', 'Paul', 'borensztein_paul', 2, 3, 3, 4),
(166, 3, 'CASTEL', 'Cyprien', 'castel_cyprien', 3, 5, 3, 4),
(167, 3, 'CASTELLS', 'Nicolas', 'castells_nicolas', 4, 4, 5, 3),
(168, 3, 'CHADDOUK', 'Vanessa', 'chaddouk_vanessa', 2, 4, 5, 5),
(169, 3, 'CHANTHAPANYA', 'Mathilde', 'chanthapanya_mathilde', 3, 5, 4, 5),
(170, 3, 'CHAPPUY', 'Aymeric', 'chappuy_aymeric', 4, 5, 5, 4),
(171, 3, 'CHARVET', 'Clément', 'charvet_clement', 4, 2, 3, 2),
(172, 3, 'CHASSIN', 'Arthur', 'chassin_arthur', 4, 2, 3, 5),
(173, 3, 'CLERC', 'Jonathan', 'clerc_jonathan', 4, 5, 3, 5),
(174, 3, 'COLLEN', 'Brandon', 'collen_brandon', 4, 4, 3, 2),
(175, 3, 'CORSINI', 'Benjamin', 'corsini_benjamin', 3, 2, 4, 4),
(176, 3, 'COSSID', 'Alexandra', 'cossid_alexandra', 5, 3, 3, 3),
(177, 3, 'DANCER-MICHEL', 'Sébastien', 'dancer_michel_sebastien', 3, 2, 3, 2),
(178, 3, 'DE GOURCY', 'Pierre', 'de_gourcy_pierre', 2, 3, 4, 4),
(179, 3, 'DELORME', 'Dorian', 'delorme_dorian', 3, 5, 5, 2),
(180, 3, 'DERILLEUX-BES', 'Gauthier', 'derilleux_bes_gauthier', 2, 3, 5, 4),
(181, 3, 'DINE', 'Matthis', 'dine_matthis', 2, 2, 3, 4),
(182, 3, 'DJAMDJIAN', 'Léonard', 'djamdjian_leonard', 5, 5, 5, 2),
(183, 3, 'DRICHE', 'Bilal', 'driche_bilal', 2, 4, 4, 2),
(184, 3, 'DUBOUST', 'Arnaud', 'duboust_arnaud', 2, 2, 3, 3),
(185, 3, 'DUPUIS', 'Léonard', 'dupuis_leonard', 3, 4, 4, 3),
(186, 3, 'ESPINASSE DE SANGLIER DE LA BASTIE', 'David', 'espinasse_de_sanglier_de_la_bastie_david', 5, 3, 2, 3),
(187, 3, 'FAUQUEUR', 'Valérian', 'fauqueur_valerian', 2, 2, 3, 2),
(188, 3, 'FERHAOUI', 'Jasmine', 'ferhaoui_jasmine', 3, 2, 5, 4),
(189, 3, 'FICHEUX', 'Aude', 'ficheux_aude', 3, 3, 3, 3),
(190, 3, 'FOURREAU', 'Ronan', 'fourreau_ronan', 3, 3, 3, 4),
(191, 3, 'GAONAC\'H', 'Maëlle', 'gaonach_maelle', 5, 2, 4, 2),
(192, 3, 'GIRARDEAU', 'Julien', 'girardeau_julien', 3, 2, 3, 4),
(193, 3, 'GOSSIOUX', 'Victor', 'gossioux_victor', 5, 2, 2, 5),
(194, 3, 'GOUTORBE', 'Boris', 'goutorbe_boris', 3, 2, 2, 4),
(195, 3, 'GRESSE', 'Bethsabée', 'gresse_bethsabee', 3, 3, 5, 5),
(196, 3, 'HAENEL', 'Luca', 'haenel_luca', 4, 4, 3, 2),
(197, 3, 'HAURIE', 'Pierre-Brice', 'haurie_pierre_brice', 5, 4, 3, 2),
(198, 3, 'HOOGSTOËL', 'Thomas', 'hoogstoel_thomas', 5, 5, 5, 5),
(199, 3, 'INESTA', 'Pierrick', 'inesta_pierrick', 5, 3, 5, 3),
(200, 3, 'JACOTY', 'Antoine', 'jacoty_antoine', 4, 3, 5, 3),
(201, 3, 'KUNETZ', 'Théo', 'kunetz_theo', 4, 5, 2, 5),
(202, 3, 'LE BRAS', 'Léo', 'le_bras_leo', 2, 2, 3, 4),
(203, 3, 'LEBELT', 'Guillaume', 'lebelt_guillaume', 4, 2, 3, 2),
(204, 3, 'LEPOUTRE', 'Hadrien', 'lepoutre_hadrien', 5, 4, 3, 5),
(205, 3, 'LESELLIER', 'Marie-Alix', 'lesellier_marie_alix', 3, 4, 5, 3),
(206, 3, 'LHERM', 'Jean-René', 'lherm_jean_rene', 4, 5, 2, 3),
(207, 3, 'LIMOGES', 'Raphaëlle', 'limoges_raphaelle', 2, 2, 5, 4),
(208, 3, 'LIN', 'Antoine', 'lin_antoine', 4, 4, 2, 2),
(209, 3, 'LONG', 'Clement', 'long_clement', 4, 2, 2, 5),
(210, 3, 'LORIOL', 'Léo', 'loriol_leo', 3, 4, 3, 5),
(211, 3, 'LUSSIANA', 'Maxime', 'lussiana_maxime', 5, 4, 2, 4),
(212, 3, 'MANGWA CHUISSE', 'Charles', 'mangwa_chuisse_charles', 3, 3, 3, 4),
(213, 3, 'MARRAST', 'Aurélien', 'marrast_aurelien', 2, 3, 5, 4),
(214, 3, 'MARZIN', 'Corentin', 'marzin_corentin', 2, 2, 2, 3),
(215, 3, 'MAURICE-PEROUMAL', 'Anne', 'maurice_peroumal_anne', 3, 5, 5, 5),
(216, 3, 'MENEGAUX', 'Adrien', 'menegaux_adrien', 4, 2, 2, 3),
(217, 3, 'MENEUR', 'Thaddé', 'meneur_thadde', 2, 2, 3, 3),
(218, 3, 'MICHAY', 'Robin', 'michay_robin', 4, 5, 3, 3),
(219, 3, 'MILLET', 'Jennyfer', 'millet_jennyfer', 4, 3, 5, 5),
(220, 3, 'MORALES', 'Maeva', 'morales_maeva', 5, 3, 4, 2),
(221, 3, 'MORAND', 'Axel', 'morand_axel', 4, 3, 5, 4),
(222, 3, 'MORGAUT', 'Louis-Victor', 'morgaut_louis_victor', 4, 5, 2, 5),
(223, 3, 'NAÏM', 'Emmanuel', 'naim_emmanuel', 5, 2, 4, 4),
(224, 3, 'NATAF', 'Raphaël', 'nataf_raphael', 2, 5, 2, 2),
(225, 3, 'NGUYEN', 'Sulivan', 'nguyen_sulivan', 5, 4, 4, 3),
(226, 3, 'PAULUS', 'Lionel', 'paulus_lionel', 3, 5, 5, 2),
(227, 3, 'PAVRET DE LA ROCHEFO', 'Arthur', 'pavret_de_la_rochefo_arthur', 3, 5, 5, 3),
(228, 3, 'PELTRE', 'Antoine', 'peltre_antoine', 2, 3, 3, 4),
(229, 3, 'PIACITELLI', 'Raphaël', 'piacitelli_raphael', 5, 3, 3, 3),
(230, 3, 'PILLOT', 'Gala', 'pillot_gala', 2, 3, 3, 2),
(231, 3, 'POZO', 'Mélissandre', 'pozo_melissandre', 3, 5, 5, 4),
(232, 3, 'QUINCEY', 'Hugo', 'quincey_hugo', 4, 2, 4, 4),
(233, 3, 'RIALLAND', 'Louis', 'rialland_louis', 5, 3, 2, 3),
(234, 3, 'RISSER', 'Anthelme', 'risser_anthelme', 3, 5, 3, 5),
(235, 3, 'ROUGE', 'Laurence', 'rouge_laurence', 4, 3, 2, 4),
(236, 3, 'SADOUNE', 'Léo', 'sadoune_leo', 4, 4, 3, 4),
(237, 3, 'SANLIS', 'Thomas', 'sanlis_thomas', 5, 5, 5, 2),
(238, 3, 'SAULNIER', 'Clément', 'saulnier_clement', 2, 2, 3, 4),
(239, 3, 'SCHIRRMANN', 'Julie', 'schirrmann_julie', 2, 2, 2, 5),
(240, 3, 'SCHREIBER', 'Simon', 'schreiber_simon', 3, 5, 4, 2),
(241, 3, 'TAING', 'David', 'taing_david', 3, 4, 3, 4),
(242, 3, 'TALLEPIED', 'Ulysse', 'tallepied_ulysse', 3, 4, 3, 5),
(243, 3, 'TAN', 'Suong Kévin', 'tan_suong_kevin', 5, 3, 4, 4),
(244, 3, 'TELLIER', 'Margaux', 'tellier_margaux', 2, 5, 2, 5),
(245, 3, 'THOMAS', 'Nans', 'thomas_nans', 4, 2, 5, 5),
(246, 3, 'TROTSKY', 'Pierre', 'trotsky_pierre', 3, 2, 4, 4),
(247, 3, 'VILLANI', 'Arnaud', 'villani_arnaud', 3, 5, 4, 5),
(248, 3, 'VION', 'Clément', 'vion_clement', 4, 2, 5, 2),
(249, 3, 'YAICI', 'Guillaume', 'yaici_guillaume', 4, 3, 4, 2),
(250, 3, 'ZACCARDI', 'Michaël', 'zaccardi_michael', 5, 2, 5, 5),
(251, 3, 'ZAGANELLI', 'Adrien', 'zaganelli_adrien', 3, 4, 4, 4),
(252, 3, 'ZERBIB', 'Raphaël', 'zerbib_raphael', 3, 5, 3, 2),
(253, 3, 'ZEVACO', 'Lucie', 'zevaco_lucie', 5, 3, 5, 3),
(254, 3, 'ZHANG', 'Mickael', 'zhang_mickael', 4, 3, 2, 5),
(255, 3, 'ZUNDA', 'Claire', 'zunda_claire', 2, 4, 4, 5);

-- --------------------------------------------------------

--
-- Structure de la table `years`
--

CREATE TABLE `years` (
  `id` int(11) NOT NULL,
  `graduation_year` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `years`
--

INSERT INTO `years` (`id`, `graduation_year`, `name`, `description`) VALUES
(1, 2017, 'p2017', 'The HTML legends'),
(2, 2018, 'p2018', 'The mighty p2018'),
(3, 2019, 'p2019', 'The developers brigad');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;
--
-- AUTO_INCREMENT pour la table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
