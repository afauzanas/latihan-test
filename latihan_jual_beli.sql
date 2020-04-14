-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Feb 2020 pada 13.59
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latihan_jual_beli`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `beli_detail`
--

CREATE TABLE `beli_detail` (
  `id` int(11) NOT NULL,
  `nomor_beli` varchar(10) NOT NULL,
  `kode_barang` varchar(15) NOT NULL,
  `harga` int(11) NOT NULL,
  `unit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `beli_master`
--

CREATE TABLE `beli_master` (
  `id` int(11) NOT NULL,
  `nomor_beli` varchar(10) NOT NULL,
  `kode_pemasok` varchar(15) NOT NULL,
  `tgl_beli` date NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jual_detail`
--

CREATE TABLE `jual_detail` (
  `id` int(11) NOT NULL,
  `nomor_jual` varchar(10) NOT NULL,
  `kode_barang` varchar(15) NOT NULL,
  `harga` int(11) NOT NULL,
  `unit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jual_detail`
--

INSERT INTO `jual_detail` (`id`, `nomor_jual`, `kode_barang`, `harga`, `unit`) VALUES
(1, 'TJ_01', 'BRG_11', 11900, 9),
(2, 'TJ_01', 'BRG_14', 8000, 19),
(3, 'TJ_01', 'BRG_19', 411900, 13),
(4, 'TJ_01', 'BRG_22', 11500, 17),
(5, 'TJ_01', 'BRG_24', 240100, 12),
(6, 'TJ_02', 'BRG_08', 97800, 19),
(7, 'TJ_02', 'BRG_11', 11300, 18),
(8, 'TJ_02', 'BRG_16', 12100, 18),
(9, 'TJ_02', 'BRG_18', 174800, 6),
(10, 'TJ_02', 'BRG_30', 184900, 16),
(11, 'TJ_03', 'BRG_09', 112700, 7),
(12, 'TJ_03', 'BRG_10', 6200, 7),
(13, 'TJ_03', 'BRG_19', 446600, 15),
(14, 'TJ_03', 'BRG_24', 242600, 16),
(15, 'TJ_03', 'BRG_26', 168500, 12),
(16, 'TJ_03', 'BRG_30', 184900, 11),
(17, 'TJ_03', 'BRG_31', 165900, 17),
(18, 'TJ_03', 'BRG_34', 338400, 18),
(19, 'TJ_04', 'BRG_02', 144500, 18),
(20, 'TJ_04', 'BRG_09', 119600, 16),
(21, 'TJ_04', 'BRG_19', 416200, 17),
(22, 'TJ_04', 'BRG_21', 689000, 8),
(23, 'TJ_05', 'BRG_05', 53900, 16),
(24, 'TJ_05', 'BRG_07', 94000, 6),
(25, 'TJ_05', 'BRG_09', 109300, 5),
(26, 'TJ_05', 'BRG_10', 6700, 14),
(27, 'TJ_05', 'BRG_16', 12800, 17),
(28, 'TJ_05', 'BRG_20', 443700, 9),
(29, 'TJ_05', 'BRG_24', 235200, 19),
(30, 'TJ_05', 'BRG_26', 175500, 9),
(31, 'TJ_05', 'BRG_27', 115500, 19),
(32, 'TJ_05', 'BRG_28', 441400, 6),
(33, 'TJ_05', 'BRG_29', 450500, 19),
(34, 'TJ_05', 'BRG_30', 179500, 15),
(35, 'TJ_05', 'BRG_34', 328300, 6),
(36, 'TJ_06', 'BRG_06', 61500, 7),
(37, 'TJ_06', 'BRG_09', 120800, 14),
(38, 'TJ_06', 'BRG_31', 164300, 9),
(39, 'TJ_07', 'BRG_01', 208100, 9),
(40, 'TJ_07', 'BRG_11', 11400, 10),
(41, 'TJ_07', 'BRG_13', 7400, 14),
(42, 'TJ_07', 'BRG_17', 259700, 13),
(43, 'TJ_07', 'BRG_28', 455000, 12),
(44, 'TJ_07', 'BRG_29', 477800, 17),
(45, 'TJ_07', 'BRG_31', 162700, 15),
(46, 'TJ_07', 'BRG_34', 328300, 19),
(47, 'TJ_08', 'BRG_08', 95000, 11),
(48, 'TJ_08', 'BRG_15', 12700, 6),
(49, 'TJ_08', 'BRG_17', 262400, 18),
(50, 'TJ_08', 'BRG_25', 121900, 5),
(51, 'TJ_09', 'BRG_10', 6900, 19),
(52, 'TJ_09', 'BRG_19', 433500, 8),
(53, 'TJ_09', 'BRG_25', 120700, 5),
(54, 'TJ_09', 'BRG_26', 180800, 17),
(55, 'TJ_09', 'BRG_28', 432300, 13),
(56, 'TJ_09', 'BRG_30', 179500, 6),
(57, 'TJ_09', 'BRG_34', 341700, 8),
(58, 'TJ_10', 'BRG_02', 151800, 19),
(59, 'TJ_10', 'BRG_03', 114200, 16),
(60, 'TJ_10', 'BRG_05', 53900, 11),
(61, 'TJ_10', 'BRG_14', 7600, 10),
(62, 'TJ_10', 'BRG_16', 12800, 16),
(63, 'TJ_10', 'BRG_21', 674900, 12),
(64, 'TJ_10', 'BRG_26', 173800, 6),
(65, 'TJ_10', 'BRG_33', 363000, 5),
(66, 'TJ_11', 'BRG_05', 52800, 11),
(67, 'TJ_11', 'BRG_10', 6400, 19),
(68, 'TJ_11', 'BRG_11', 11900, 19),
(69, 'TJ_11', 'BRG_16', 12200, 11),
(70, 'TJ_11', 'BRG_19', 433500, 10),
(71, 'TJ_11', 'BRG_22', 10900, 18),
(72, 'TJ_11', 'BRG_24', 232800, 6),
(73, 'TJ_11', 'BRG_30', 188500, 20),
(74, 'TJ_12', 'BRG_05', 54400, 17),
(75, 'TJ_12', 'BRG_07', 90400, 13),
(76, 'TJ_12', 'BRG_08', 98700, 13),
(77, 'TJ_12', 'BRG_10', 6700, 10),
(78, 'TJ_12', 'BRG_18', 174800, 14),
(79, 'TJ_12', 'BRG_23', 16200, 18),
(80, 'TJ_12', 'BRG_24', 254800, 8),
(81, 'TJ_12', 'BRG_25', 121900, 14),
(82, 'TJ_12', 'BRG_26', 175500, 10),
(83, 'TJ_12', 'BRG_34', 331700, 19),
(84, 'TJ_13', 'BRG_01', 201900, 5),
(85, 'TJ_13', 'BRG_04', 77200, 16),
(86, 'TJ_13', 'BRG_05', 58300, 10),
(87, 'TJ_13', 'BRG_17', 259700, 9),
(88, 'TJ_13', 'BRG_27', 116700, 10),
(89, 'TJ_14', 'BRG_04', 74300, 17),
(90, 'TJ_14', 'BRG_11', 12100, 7),
(91, 'TJ_14', 'BRG_28', 468700, 19),
(92, 'TJ_15', 'BRG_09', 112700, 15),
(93, 'TJ_15', 'BRG_10', 6400, 13),
(94, 'TJ_15', 'BRG_16', 12600, 19),
(95, 'TJ_15', 'BRG_18', 176400, 14),
(96, 'TJ_15', 'BRG_19', 446600, 15),
(97, 'TJ_15', 'BRG_20', 448100, 18),
(98, 'TJ_15', 'BRG_23', 16800, 9),
(99, 'TJ_15', 'BRG_29', 473200, 7),
(100, 'TJ_15', 'BRG_31', 165900, 6),
(101, 'TJ_16', 'BRG_01', 216300, 18),
(102, 'TJ_16', 'BRG_14', 8000, 10),
(103, 'TJ_16', 'BRG_16', 12800, 9),
(104, 'TJ_16', 'BRG_17', 273000, 11),
(105, 'TJ_16', 'BRG_22', 10800, 14),
(106, 'TJ_16', 'BRG_25', 117200, 9),
(107, 'TJ_16', 'BRG_26', 170300, 9),
(108, 'TJ_16', 'BRG_28', 441400, 8),
(109, 'TJ_16', 'BRG_32', 118500, 12),
(110, 'TJ_17', 'BRG_02', 151800, 15),
(111, 'TJ_17', 'BRG_13', 7600, 8),
(112, 'TJ_17', 'BRG_18', 174800, 14),
(113, 'TJ_17', 'BRG_19', 416200, 15),
(114, 'TJ_17', 'BRG_20', 422000, 11),
(115, 'TJ_17', 'BRG_22', 11200, 15),
(116, 'TJ_17', 'BRG_23', 17000, 9),
(117, 'TJ_17', 'BRG_24', 245000, 17),
(118, 'TJ_17', 'BRG_31', 159400, 5),
(119, 'TJ_18', 'BRG_04', 76500, 10),
(120, 'TJ_18', 'BRG_05', 52800, 13),
(121, 'TJ_18', 'BRG_10', 6800, 11),
(122, 'TJ_18', 'BRG_11', 11700, 13),
(123, 'TJ_18', 'BRG_12', 4700, 5),
(124, 'TJ_18', 'BRG_17', 251800, 5),
(125, 'TJ_18', 'BRG_18', 169700, 14),
(126, 'TJ_18', 'BRG_20', 413300, 18),
(127, 'TJ_18', 'BRG_26', 172000, 12),
(128, 'TJ_18', 'BRG_27', 126400, 5),
(129, 'TJ_19', 'BRG_01', 195700, 12),
(130, 'TJ_19', 'BRG_02', 137300, 10),
(131, 'TJ_19', 'BRG_07', 93100, 10),
(132, 'TJ_19', 'BRG_11', 11000, 8),
(133, 'TJ_19', 'BRG_12', 4300, 11),
(134, 'TJ_19', 'BRG_16', 11900, 20),
(135, 'TJ_19', 'BRG_26', 168500, 7),
(136, 'TJ_19', 'BRG_29', 464100, 15),
(137, 'TJ_19', 'BRG_31', 154600, 5),
(138, 'TJ_19', 'BRG_33', 342100, 12),
(139, 'TJ_20', 'BRG_04', 69900, 15),
(140, 'TJ_20', 'BRG_06', 57400, 13),
(141, 'TJ_20', 'BRG_09', 115000, 17),
(142, 'TJ_20', 'BRG_12', 4600, 7),
(143, 'TJ_20', 'BRG_30', 183100, 8),
(144, 'TJ_20', 'BRG_32', 119600, 5),
(145, 'TJ_21', 'BRG_07', 92200, 11),
(146, 'TJ_21', 'BRG_10', 6400, 6),
(147, 'TJ_21', 'BRG_11', 11400, 15),
(148, 'TJ_21', 'BRG_16', 12100, 18),
(149, 'TJ_21', 'BRG_18', 173100, 5),
(150, 'TJ_21', 'BRG_19', 437900, 14),
(151, 'TJ_21', 'BRG_24', 257300, 16),
(152, 'TJ_21', 'BRG_25', 123100, 11),
(153, 'TJ_21', 'BRG_34', 335000, 17),
(154, 'TJ_22', 'BRG_04', 73500, 10),
(155, 'TJ_22', 'BRG_06', 55600, 17),
(156, 'TJ_22', 'BRG_20', 448100, 11),
(157, 'TJ_22', 'BRG_21', 710100, 6),
(158, 'TJ_22', 'BRG_24', 249900, 13),
(159, 'TJ_22', 'BRG_27', 115500, 14),
(160, 'TJ_22', 'BRG_31', 169100, 19),
(161, 'TJ_23', 'BRG_19', 433500, 19),
(162, 'TJ_23', 'BRG_24', 242600, 18),
(163, 'TJ_23', 'BRG_26', 172000, 10),
(164, 'TJ_23', 'BRG_30', 179500, 9),
(165, 'TJ_24', 'BRG_02', 138800, 17),
(166, 'TJ_24', 'BRG_15', 12200, 18),
(167, 'TJ_24', 'BRG_23', 16300, 16),
(168, 'TJ_24', 'BRG_24', 240100, 19),
(169, 'TJ_24', 'BRG_25', 121900, 8),
(170, 'TJ_25', 'BRG_01', 199900, 15),
(171, 'TJ_25', 'BRG_06', 59100, 7),
(172, 'TJ_25', 'BRG_08', 98700, 16),
(173, 'TJ_25', 'BRG_10', 6600, 12),
(174, 'TJ_25', 'BRG_15', 13000, 6),
(175, 'TJ_25', 'BRG_16', 12200, 17),
(176, 'TJ_25', 'BRG_17', 273000, 13),
(177, 'TJ_25', 'BRG_25', 118400, 5),
(178, 'TJ_25', 'BRG_30', 172400, 9),
(179, 'TJ_25', 'BRG_31', 153000, 20),
(180, 'TJ_26', 'BRG_03', 107400, 19),
(181, 'TJ_26', 'BRG_10', 6700, 18),
(182, 'TJ_26', 'BRG_15', 11700, 14),
(183, 'TJ_26', 'BRG_22', 10800, 18),
(184, 'TJ_26', 'BRG_27', 122800, 12),
(185, 'TJ_26', 'BRG_28', 450500, 11),
(186, 'TJ_26', 'BRG_29', 436800, 5),
(187, 'TJ_26', 'BRG_33', 352500, 6),
(188, 'TJ_27', 'BRG_13', 7600, 6),
(189, 'TJ_27', 'BRG_23', 16200, 12),
(190, 'TJ_27', 'BRG_26', 177300, 11),
(191, 'TJ_27', 'BRG_33', 331600, 17),
(192, 'TJ_27', 'BRG_34', 351800, 12),
(193, 'TJ_28', 'BRG_04', 69900, 19),
(194, 'TJ_28', 'BRG_11', 12100, 7),
(195, 'TJ_28', 'BRG_13', 7900, 11),
(196, 'TJ_28', 'BRG_19', 429200, 9),
(197, 'TJ_28', 'BRG_21', 724100, 8),
(198, 'TJ_28', 'BRG_26', 166800, 6),
(199, 'TJ_29', 'BRG_02', 137300, 9),
(200, 'TJ_29', 'BRG_07', 93100, 8),
(201, 'TJ_29', 'BRG_14', 7600, 19),
(202, 'TJ_29', 'BRG_15', 12200, 12),
(203, 'TJ_29', 'BRG_22', 10500, 16),
(204, 'TJ_29', 'BRG_24', 247500, 5),
(205, 'TJ_29', 'BRG_26', 172000, 20),
(206, 'TJ_29', 'BRG_27', 115500, 16),
(207, 'TJ_29', 'BRG_32', 113900, 8),
(208, 'TJ_29', 'BRG_34', 325000, 6),
(209, 'TJ_30', 'BRG_01', 204000, 8),
(210, 'TJ_30', 'BRG_05', 54400, 12),
(211, 'TJ_30', 'BRG_14', 7900, 18),
(212, 'TJ_30', 'BRG_20', 456800, 13),
(213, 'TJ_30', 'BRG_22', 11600, 18),
(214, 'TJ_30', 'BRG_23', 17000, 12),
(215, 'TJ_30', 'BRG_26', 168500, 19),
(216, 'TJ_30', 'BRG_33', 338600, 9),
(217, 'TJ_31', 'BRG_01', 197800, 15),
(218, 'TJ_31', 'BRG_02', 148900, 11),
(219, 'TJ_31', 'BRG_03', 113000, 5),
(220, 'TJ_31', 'BRG_05', 52800, 18),
(221, 'TJ_31', 'BRG_06', 55600, 16),
(222, 'TJ_31', 'BRG_10', 6200, 10),
(223, 'TJ_31', 'BRG_12', 4500, 12),
(224, 'TJ_31', 'BRG_19', 420500, 15),
(225, 'TJ_31', 'BRG_21', 703000, 11),
(226, 'TJ_31', 'BRG_23', 16200, 13),
(227, 'TJ_31', 'BRG_25', 118400, 8),
(228, 'TJ_31', 'BRG_28', 441400, 12),
(229, 'TJ_32', 'BRG_01', 212200, 18),
(230, 'TJ_32', 'BRG_02', 140200, 11),
(231, 'TJ_32', 'BRG_23', 16300, 10),
(232, 'TJ_32', 'BRG_27', 126400, 11),
(233, 'TJ_32', 'BRG_29', 455000, 11),
(234, 'TJ_33', 'BRG_16', 12200, 15),
(235, 'TJ_33', 'BRG_19', 437900, 19),
(236, 'TJ_33', 'BRG_22', 10900, 8),
(237, 'TJ_33', 'BRG_25', 120700, 6),
(238, 'TJ_33', 'BRG_26', 177300, 7),
(239, 'TJ_34', 'BRG_01', 212200, 13),
(240, 'TJ_34', 'BRG_02', 151800, 9),
(241, 'TJ_34', 'BRG_08', 93100, 17),
(242, 'TJ_34', 'BRG_12', 4700, 15),
(243, 'TJ_34', 'BRG_23', 16200, 13),
(244, 'TJ_34', 'BRG_29', 464100, 15),
(245, 'TJ_35', 'BRG_01', 216300, 16),
(246, 'TJ_35', 'BRG_03', 107400, 20),
(247, 'TJ_35', 'BRG_06', 56200, 14),
(248, 'TJ_35', 'BRG_07', 86900, 16),
(249, 'TJ_35', 'BRG_10', 6800, 11),
(250, 'TJ_35', 'BRG_23', 16200, 9),
(251, 'TJ_35', 'BRG_26', 173800, 16),
(252, 'TJ_35', 'BRG_30', 177800, 6),
(253, 'TJ_35', 'BRG_34', 341700, 19),
(254, 'TJ_36', 'BRG_07', 86000, 15),
(255, 'TJ_36', 'BRG_09', 111600, 11),
(256, 'TJ_36', 'BRG_12', 4600, 9),
(257, 'TJ_36', 'BRG_20', 430700, 14),
(258, 'TJ_36', 'BRG_22', 10800, 19),
(259, 'TJ_36', 'BRG_34', 341700, 11),
(260, 'TJ_37', 'BRG_04', 76500, 8),
(261, 'TJ_37', 'BRG_08', 94000, 17),
(262, 'TJ_37', 'BRG_10', 6500, 15),
(263, 'TJ_37', 'BRG_12', 4500, 7),
(264, 'TJ_37', 'BRG_15', 12000, 16),
(265, 'TJ_37', 'BRG_16', 11700, 17),
(266, 'TJ_37', 'BRG_21', 667900, 12),
(267, 'TJ_37', 'BRG_24', 254800, 17),
(268, 'TJ_37', 'BRG_25', 121900, 18),
(269, 'TJ_37', 'BRG_27', 122800, 20),
(270, 'TJ_37', 'BRG_29', 455000, 18),
(271, 'TJ_38', 'BRG_03', 115300, 20),
(272, 'TJ_38', 'BRG_06', 55600, 10),
(273, 'TJ_38', 'BRG_07', 88700, 14),
(274, 'TJ_38', 'BRG_18', 166400, 8),
(275, 'TJ_38', 'BRG_20', 417600, 12),
(276, 'TJ_38', 'BRG_21', 717100, 20),
(277, 'TJ_38', 'BRG_34', 338400, 12),
(278, 'TJ_39', 'BRG_08', 95000, 6),
(279, 'TJ_39', 'BRG_11', 11700, 16),
(280, 'TJ_39', 'BRG_18', 173100, 19),
(281, 'TJ_39', 'BRG_21', 689000, 6),
(282, 'TJ_39', 'BRG_22', 11000, 13),
(283, 'TJ_39', 'BRG_23', 16300, 18),
(284, 'TJ_40', 'BRG_07', 90400, 12),
(285, 'TJ_40', 'BRG_10', 6300, 17),
(286, 'TJ_40', 'BRG_14', 8000, 8),
(287, 'TJ_40', 'BRG_15', 11700, 10),
(288, 'TJ_40', 'BRG_17', 275600, 6),
(289, 'TJ_40', 'BRG_18', 159600, 6),
(290, 'TJ_40', 'BRG_24', 242600, 8),
(291, 'TJ_40', 'BRG_30', 183100, 19),
(292, 'TJ_40', 'BRG_33', 363000, 11),
(293, 'TJ_41', 'BRG_10', 6600, 20),
(294, 'TJ_41', 'BRG_13', 7900, 11),
(295, 'TJ_41', 'BRG_16', 12200, 10),
(296, 'TJ_41', 'BRG_20', 439400, 7),
(297, 'TJ_41', 'BRG_26', 177300, 17),
(298, 'TJ_41', 'BRG_27', 119100, 6),
(299, 'TJ_41', 'BRG_28', 432300, 5),
(300, 'TJ_41', 'BRG_30', 179500, 7),
(301, 'TJ_41', 'BRG_31', 162700, 5),
(302, 'TJ_41', 'BRG_33', 359500, 14),
(303, 'TJ_42', 'BRG_04', 71300, 15),
(304, 'TJ_42', 'BRG_11', 11000, 17),
(305, 'TJ_42', 'BRG_12', 4500, 12),
(306, 'TJ_42', 'BRG_14', 7300, 7),
(307, 'TJ_42', 'BRG_24', 232800, 20),
(308, 'TJ_42', 'BRG_29', 436800, 14),
(309, 'TJ_42', 'BRG_31', 157800, 10),
(310, 'TJ_42', 'BRG_32', 119600, 20),
(311, 'TJ_43', 'BRG_01', 214300, 10),
(312, 'TJ_43', 'BRG_06', 55600, 12),
(313, 'TJ_43', 'BRG_11', 11800, 11),
(314, 'TJ_43', 'BRG_16', 12600, 19),
(315, 'TJ_43', 'BRG_19', 433500, 15),
(316, 'TJ_43', 'BRG_29', 459600, 6),
(317, 'TJ_44', 'BRG_01', 195700, 19),
(318, 'TJ_44', 'BRG_10', 6400, 12),
(319, 'TJ_44', 'BRG_12', 4400, 11),
(320, 'TJ_44', 'BRG_15', 11700, 20),
(321, 'TJ_44', 'BRG_16', 12200, 6),
(322, 'TJ_44', 'BRG_23', 15900, 14),
(323, 'TJ_44', 'BRG_27', 115500, 14),
(324, 'TJ_44', 'BRG_29', 459600, 15),
(325, 'TJ_44', 'BRG_30', 179500, 20),
(326, 'TJ_45', 'BRG_07', 94000, 8),
(327, 'TJ_45', 'BRG_10', 6800, 11),
(328, 'TJ_45', 'BRG_15', 12300, 16),
(329, 'TJ_46', 'BRG_11', 11200, 11),
(330, 'TJ_46', 'BRG_16', 12000, 15),
(331, 'TJ_46', 'BRG_19', 442200, 7),
(332, 'TJ_46', 'BRG_21', 667900, 19),
(333, 'TJ_46', 'BRG_24', 235200, 5),
(334, 'TJ_46', 'BRG_31', 169100, 13),
(335, 'TJ_47', 'BRG_05', 52800, 6),
(336, 'TJ_47', 'BRG_06', 56800, 6),
(337, 'TJ_47', 'BRG_12', 4700, 15),
(338, 'TJ_47', 'BRG_13', 7400, 5),
(339, 'TJ_47', 'BRG_17', 259700, 10),
(340, 'TJ_47', 'BRG_29', 441400, 15),
(341, 'TJ_47', 'BRG_30', 170600, 19),
(342, 'TJ_48', 'BRG_03', 111900, 15),
(343, 'TJ_48', 'BRG_05', 55500, 15),
(344, 'TJ_48', 'BRG_08', 89300, 15),
(345, 'TJ_48', 'BRG_14', 7500, 10),
(346, 'TJ_48', 'BRG_17', 254400, 8),
(347, 'TJ_48', 'BRG_25', 123100, 17),
(348, 'TJ_48', 'BRG_28', 450500, 17),
(349, 'TJ_48', 'BRG_33', 345600, 5),
(350, 'TJ_49', 'BRG_01', 206000, 7),
(351, 'TJ_49', 'BRG_15', 13000, 15),
(352, 'TJ_49', 'BRG_19', 437900, 8),
(353, 'TJ_49', 'BRG_21', 731200, 14),
(354, 'TJ_49', 'BRG_22', 11300, 8),
(355, 'TJ_49', 'BRG_29', 473200, 14),
(356, 'TJ_49', 'BRG_31', 156200, 8),
(357, 'TJ_49', 'BRG_33', 349000, 16),
(358, 'TJ_50', 'BRG_01', 214300, 15),
(359, 'TJ_50', 'BRG_13', 7500, 15),
(360, 'TJ_50', 'BRG_21', 717100, 17),
(361, 'TJ_50', 'BRG_23', 16200, 9),
(362, 'TJ_50', 'BRG_25', 119500, 13),
(363, 'TJ_50', 'BRG_29', 441400, 20),
(364, 'TJ_50', 'BRG_30', 179500, 16),
(365, 'TJ_50', 'BRG_31', 157800, 17),
(366, 'TJ_50', 'BRG_32', 115000, 11),
(367, 'TJ_50', 'BRG_34', 321600, 15),
(368, 'TJ_51', 'BRG_03', 115300, 5),
(369, 'TJ_51', 'BRG_08', 98700, 18),
(370, 'TJ_51', 'BRG_10', 6800, 19),
(371, 'TJ_51', 'BRG_23', 16700, 11),
(372, 'TJ_51', 'BRG_25', 116000, 12),
(373, 'TJ_52', 'BRG_03', 111900, 5),
(374, 'TJ_52', 'BRG_16', 12000, 11),
(375, 'TJ_52', 'BRG_19', 411900, 6),
(376, 'TJ_52', 'BRG_25', 124300, 13),
(377, 'TJ_52', 'BRG_26', 172000, 9),
(378, 'TJ_52', 'BRG_28', 468700, 14),
(379, 'TJ_52', 'BRG_29', 477800, 12),
(380, 'TJ_52', 'BRG_34', 331700, 15),
(381, 'TJ_53', 'BRG_06', 56800, 13),
(382, 'TJ_53', 'BRG_09', 118500, 8),
(383, 'TJ_53', 'BRG_17', 270300, 10),
(384, 'TJ_53', 'BRG_21', 689000, 5),
(385, 'TJ_53', 'BRG_24', 235200, 12),
(386, 'TJ_53', 'BRG_26', 175500, 17),
(387, 'TJ_53', 'BRG_32', 110400, 20),
(388, 'TJ_53', 'BRG_33', 366500, 14),
(389, 'TJ_54', 'BRG_10', 6400, 7),
(390, 'TJ_54', 'BRG_13', 7900, 17),
(391, 'TJ_54', 'BRG_22', 11500, 5),
(392, 'TJ_54', 'BRG_26', 170300, 5),
(393, 'TJ_54', 'BRG_27', 126400, 10),
(394, 'TJ_54', 'BRG_29', 432300, 13),
(395, 'TJ_54', 'BRG_33', 335100, 5),
(396, 'TJ_55', 'BRG_02', 143100, 19),
(397, 'TJ_55', 'BRG_04', 69900, 7),
(398, 'TJ_55', 'BRG_05', 53300, 6),
(399, 'TJ_55', 'BRG_06', 60300, 11),
(400, 'TJ_55', 'BRG_08', 96900, 18),
(401, 'TJ_55', 'BRG_14', 7600, 13),
(402, 'TJ_55', 'BRG_15', 12100, 14),
(403, 'TJ_55', 'BRG_19', 437900, 7),
(404, 'TJ_55', 'BRG_20', 417600, 16),
(405, 'TJ_55', 'BRG_26', 175500, 10),
(406, 'TJ_55', 'BRG_28', 473200, 11),
(407, 'TJ_55', 'BRG_32', 113900, 18),
(408, 'TJ_56', 'BRG_05', 53300, 10),
(409, 'TJ_56', 'BRG_18', 174800, 9),
(410, 'TJ_56', 'BRG_24', 254800, 5),
(411, 'TJ_56', 'BRG_26', 182600, 14),
(412, 'TJ_56', 'BRG_27', 122800, 15),
(413, 'TJ_56', 'BRG_29', 455000, 15),
(414, 'TJ_56', 'BRG_33', 349000, 7),
(415, 'TJ_57', 'BRG_10', 6300, 17),
(416, 'TJ_57', 'BRG_18', 159600, 16),
(417, 'TJ_57', 'BRG_23', 16300, 13),
(418, 'TJ_58', 'BRG_01', 210200, 19),
(419, 'TJ_58', 'BRG_07', 85100, 11),
(420, 'TJ_58', 'BRG_10', 6500, 13),
(421, 'TJ_58', 'BRG_13', 7300, 8),
(422, 'TJ_58', 'BRG_21', 738200, 19),
(423, 'TJ_58', 'BRG_22', 10700, 13),
(424, 'TJ_58', 'BRG_24', 242600, 20),
(425, 'TJ_58', 'BRG_33', 356000, 19),
(426, 'TJ_58', 'BRG_34', 331700, 14),
(427, 'TJ_59', 'BRG_04', 72800, 7),
(428, 'TJ_59', 'BRG_05', 56100, 20),
(429, 'TJ_59', 'BRG_07', 89500, 19),
(430, 'TJ_59', 'BRG_08', 95900, 16),
(431, 'TJ_59', 'BRG_20', 430700, 5),
(432, 'TJ_59', 'BRG_33', 363000, 10),
(433, 'TJ_60', 'BRG_03', 108500, 14),
(434, 'TJ_60', 'BRG_04', 71300, 13),
(435, 'TJ_60', 'BRG_06', 60300, 8),
(436, 'TJ_60', 'BRG_10', 6700, 13),
(437, 'TJ_60', 'BRG_22', 11600, 9),
(438, 'TJ_60', 'BRG_25', 113600, 13),
(439, 'TJ_60', 'BRG_30', 174200, 18),
(440, 'TJ_61', 'BRG_03', 110800, 5),
(441, 'TJ_61', 'BRG_04', 72800, 9),
(442, 'TJ_61', 'BRG_07', 89500, 10),
(443, 'TJ_61', 'BRG_08', 96900, 12),
(444, 'TJ_61', 'BRG_11', 12100, 10),
(445, 'TJ_61', 'BRG_15', 12700, 14),
(446, 'TJ_62', 'BRG_01', 216300, 9),
(447, 'TJ_62', 'BRG_02', 141700, 19),
(448, 'TJ_62', 'BRG_05', 57200, 14),
(449, 'TJ_62', 'BRG_06', 59100, 5),
(450, 'TJ_62', 'BRG_09', 120800, 12),
(451, 'TJ_62', 'BRG_15', 12300, 19),
(452, 'TJ_62', 'BRG_23', 17000, 12),
(453, 'TJ_62', 'BRG_30', 181300, 15),
(454, 'TJ_63', 'BRG_05', 56100, 18),
(455, 'TJ_63', 'BRG_11', 11800, 8),
(456, 'TJ_63', 'BRG_14', 7600, 9),
(457, 'TJ_63', 'BRG_21', 667900, 18),
(458, 'TJ_63', 'BRG_23', 15700, 15),
(459, 'TJ_63', 'BRG_29', 450500, 8),
(460, 'TJ_63', 'BRG_30', 176000, 13),
(461, 'TJ_64', 'BRG_05', 58300, 6),
(462, 'TJ_64', 'BRG_08', 97800, 5),
(463, 'TJ_64', 'BRG_11', 11000, 16),
(464, 'TJ_64', 'BRG_16', 12200, 19),
(465, 'TJ_64', 'BRG_18', 174800, 7),
(466, 'TJ_64', 'BRG_29', 450500, 9),
(467, 'TJ_64', 'BRG_34', 335000, 15),
(468, 'TJ_65', 'BRG_02', 151800, 19),
(469, 'TJ_65', 'BRG_03', 107400, 18),
(470, 'TJ_65', 'BRG_11', 11900, 13),
(471, 'TJ_65', 'BRG_21', 696000, 14),
(472, 'TJ_65', 'BRG_24', 252400, 10),
(473, 'TJ_65', 'BRG_27', 127600, 10),
(474, 'TJ_66', 'BRG_01', 212200, 8),
(475, 'TJ_66', 'BRG_04', 72100, 10),
(476, 'TJ_66', 'BRG_07', 90400, 7),
(477, 'TJ_66', 'BRG_15', 13000, 15),
(478, 'TJ_66', 'BRG_17', 251800, 18),
(479, 'TJ_66', 'BRG_19', 424900, 6),
(480, 'TJ_66', 'BRG_29', 473200, 9),
(481, 'TJ_66', 'BRG_32', 111600, 20),
(482, 'TJ_67', 'BRG_05', 56100, 8),
(483, 'TJ_67', 'BRG_08', 98700, 8),
(484, 'TJ_67', 'BRG_14', 7600, 12),
(485, 'TJ_67', 'BRG_28', 441400, 17),
(486, 'TJ_68', 'BRG_01', 199900, 5),
(487, 'TJ_68', 'BRG_20', 439400, 6),
(488, 'TJ_68', 'BRG_21', 682000, 8),
(489, 'TJ_68', 'BRG_28', 464100, 14),
(490, 'TJ_68', 'BRG_30', 183100, 8),
(491, 'TJ_68', 'BRG_31', 167500, 8),
(492, 'TJ_69', 'BRG_03', 113000, 5),
(493, 'TJ_69', 'BRG_10', 6500, 17),
(494, 'TJ_69', 'BRG_15', 12600, 6),
(495, 'TJ_69', 'BRG_24', 235200, 17),
(496, 'TJ_69', 'BRG_31', 164300, 16),
(497, 'TJ_70', 'BRG_01', 204000, 18),
(498, 'TJ_70', 'BRG_31', 161000, 8),
(499, 'TJ_70', 'BRG_34', 345100, 7),
(500, 'TJ_71', 'BRG_04', 74300, 10),
(501, 'TJ_71', 'BRG_11', 11300, 5),
(502, 'TJ_71', 'BRG_12', 4500, 20),
(503, 'TJ_71', 'BRG_16', 12200, 9),
(504, 'TJ_71', 'BRG_19', 416200, 14),
(505, 'TJ_71', 'BRG_24', 242600, 14),
(506, 'TJ_71', 'BRG_31', 157800, 16),
(507, 'TJ_71', 'BRG_33', 349000, 17),
(508, 'TJ_72', 'BRG_04', 75800, 13),
(509, 'TJ_72', 'BRG_08', 92200, 17),
(510, 'TJ_72', 'BRG_10', 6900, 5),
(511, 'TJ_72', 'BRG_11', 11800, 20),
(512, 'TJ_72', 'BRG_13', 7500, 8),
(513, 'TJ_72', 'BRG_20', 422000, 11),
(514, 'TJ_72', 'BRG_27', 126400, 20),
(515, 'TJ_72', 'BRG_29', 459600, 20),
(516, 'TJ_73', 'BRG_14', 7700, 17),
(517, 'TJ_73', 'BRG_16', 12700, 12),
(518, 'TJ_73', 'BRG_17', 278300, 14),
(519, 'TJ_73', 'BRG_25', 117200, 11),
(520, 'TJ_73', 'BRG_34', 345100, 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jual_master`
--

CREATE TABLE `jual_master` (
  `id` int(11) NOT NULL,
  `nomor_jual` varchar(10) NOT NULL,
  `kode_pelanggan` varchar(15) NOT NULL,
  `tgl_jual` date NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jual_master`
--

INSERT INTO `jual_master` (`id`, `nomor_jual`, `kode_pelanggan`, `tgl_jual`, `keterangan`) VALUES
(1, 'TJ_01', 'PLG_15', '2018-01-20', 'Penjualan secara  kredit kepada sdr Fatimah Azzahrah'),
(2, 'TJ_02', 'PLG_11', '2018-01-21', 'Penjualan secara  tunai kepada sdr Irwan'),
(3, 'TJ_03', 'PLG_05', '2018-01-22', 'Penjualan secara  tunai kepada sdr Hardyanti Indri Rukmini'),
(4, 'TJ_04', 'PLG_09', '2018-01-22', 'Penjualan secara  kredit kepada sdr Dian Eka Putri'),
(5, 'TJ_05', 'PLG_11', '2018-01-23', 'Penjualan secara  tunai kepada sdr Irwan'),
(6, 'TJ_06', 'PLG_02', '2018-01-24', 'Penjualan secara  tunai kepada sdr Abdul Rahman'),
(7, 'TJ_07', 'PLG_09', '2018-01-24', 'Penjualan secara  tunai kepada sdr Dian Eka Putri'),
(8, 'TJ_08', 'PLG_08', '2018-01-25', 'Penjualan secara  kredit kepada sdr Yusyar Yahya'),
(9, 'TJ_09', 'PLG_07', '2018-01-26', 'Penjualan secara  tunai kepada sdr Fachrul Fahtahti'),
(10, 'TJ_10', 'PLG_09', '2018-01-26', 'Penjualan secara  tunai kepada sdr Dian Eka Putri'),
(11, 'TJ_11', 'PLG_06', '2018-01-28', 'Penjualan secara  tunai kepada sdr Noor Alfatan'),
(12, 'TJ_12', 'PLG_17', '2018-01-28', 'Penjualan secara  kredit kepada sdr Reztu Try Maulana Akbar'),
(13, 'TJ_13', 'PLG_15', '2018-01-29', 'Penjualan secara  tunai kepada sdr Fatimah Azzahrah'),
(14, 'TJ_14', 'PLG_15', '2018-01-30', 'Penjualan secara  kredit kepada sdr Fatimah Azzahrah'),
(15, 'TJ_15', 'PLG_02', '2018-01-30', 'Penjualan secara  tunai kepada sdr Abdul Rahman'),
(16, 'TJ_16', 'PLG_17', '2018-01-30', 'Penjualan secara  kredit kepada sdr Reztu Try Maulana Akbar'),
(17, 'TJ_17', 'PLG_11', '2018-02-01', 'Penjualan secara  kredit kepada sdr Irwan'),
(18, 'TJ_18', 'PLG_03', '2018-02-01', 'Penjualan secara  kredit kepada sdr Sintia Mardatilla'),
(19, 'TJ_19', 'PLG_17', '2018-02-02', 'Penjualan secara  kredit kepada sdr Reztu Try Maulana Akbar'),
(20, 'TJ_20', 'PLG_14', '2018-02-04', 'Penjualan secara  kredit kepada sdr Awaliani Indah Safitri'),
(21, 'TJ_21', 'PLG_02', '2018-02-04', 'Penjualan secara  kredit kepada sdr Abdul Rahman'),
(22, 'TJ_22', 'PLG_05', '2018-02-06', 'Penjualan secara  kredit kepada sdr Hardyanti Indri Rukmini'),
(23, 'TJ_23', 'PLG_10', '2018-02-07', 'Penjualan secara  tunai kepada sdr Hasnaeni Syarif'),
(24, 'TJ_24', 'PLG_05', '2018-02-07', 'Penjualan secara  kredit kepada sdr Hardyanti Indri Rukmini'),
(25, 'TJ_25', 'PLG_07', '2018-02-08', 'Penjualan secara  kredit kepada sdr Fachrul Fahtahti'),
(26, 'TJ_26', 'PLG_06', '2018-02-08', 'Penjualan secara  kredit kepada sdr Noor Alfatan'),
(27, 'TJ_27', 'PLG_01', '2018-02-10', 'Penjualan secara  tunai kepada sdr Sitti Hajar'),
(28, 'TJ_28', 'PLG_16', '2018-02-11', 'Penjualan secara  tunai kepada sdr Sultan'),
(29, 'TJ_29', 'PLG_01', '2018-02-13', 'Penjualan secara  tunai kepada sdr Sitti Hajar'),
(30, 'TJ_30', 'PLG_01', '2018-02-15', 'Penjualan secara  kredit kepada sdr Sitti Hajar'),
(31, 'TJ_31', 'PLG_14', '2018-02-15', 'Penjualan secara  tunai kepada sdr Awaliani Indah Safitri'),
(32, 'TJ_32', 'PLG_10', '2018-02-16', 'Penjualan secara  tunai kepada sdr Hasnaeni Syarif'),
(33, 'TJ_33', 'PLG_11', '2018-02-18', 'Penjualan secara  kredit kepada sdr Irwan'),
(34, 'TJ_34', 'PLG_05', '2018-02-19', 'Penjualan secara  kredit kepada sdr Hardyanti Indri Rukmini'),
(35, 'TJ_35', 'PLG_08', '2018-02-20', 'Penjualan secara  tunai kepada sdr Yusyar Yahya'),
(36, 'TJ_36', 'PLG_07', '2018-02-20', 'Penjualan secara  tunai kepada sdr Fachrul Fahtahti'),
(37, 'TJ_37', 'PLG_12', '2018-02-22', 'Penjualan secara  kredit kepada sdr Ahmad Ilham'),
(38, 'TJ_38', 'PLG_17', '2018-02-22', 'Penjualan secara  kredit kepada sdr Reztu Try Maulana Akbar'),
(39, 'TJ_39', 'PLG_04', '2018-02-22', 'Penjualan secara  kredit kepada sdr Rezky Oktaviany'),
(40, 'TJ_40', 'PLG_05', '2018-02-23', 'Penjualan secara  tunai kepada sdr Hardyanti Indri Rukmini'),
(41, 'TJ_41', 'PLG_09', '2018-02-23', 'Penjualan secara  tunai kepada sdr Dian Eka Putri'),
(42, 'TJ_42', 'PLG_01', '2018-02-23', 'Penjualan secara  tunai kepada sdr Sitti Hajar'),
(43, 'TJ_43', 'PLG_09', '2018-02-25', 'Penjualan secara  kredit kepada sdr Dian Eka Putri'),
(44, 'TJ_44', 'PLG_16', '2018-02-26', 'Penjualan secara  kredit kepada sdr Sultan'),
(45, 'TJ_45', 'PLG_06', '2018-02-26', 'Penjualan secara  kredit kepada sdr Noor Alfatan'),
(46, 'TJ_46', 'PLG_03', '2018-02-27', 'Penjualan secara  kredit kepada sdr Sintia Mardatilla'),
(47, 'TJ_47', 'PLG_13', '2018-02-28', 'Penjualan secara  kredit kepada sdr Muhammad Ikhsan Nur'),
(48, 'TJ_48', 'PLG_09', '2018-02-28', 'Penjualan secara  kredit kepada sdr Dian Eka Putri'),
(49, 'TJ_49', 'PLG_14', '2018-02-28', 'Penjualan secara  kredit kepada sdr Awaliani Indah Safitri'),
(50, 'TJ_50', 'PLG_05', '2018-02-28', 'Penjualan secara  kredit kepada sdr Hardyanti Indri Rukmini'),
(51, 'TJ_51', 'PLG_12', '2018-03-02', 'Penjualan secara  tunai kepada sdr Ahmad Ilham'),
(52, 'TJ_52', 'PLG_11', '2018-03-03', 'Penjualan secara  tunai kepada sdr Irwan'),
(53, 'TJ_53', 'PLG_14', '2018-03-03', 'Penjualan secara  tunai kepada sdr Awaliani Indah Safitri'),
(54, 'TJ_54', 'PLG_14', '2018-03-04', 'Penjualan secara  kredit kepada sdr Awaliani Indah Safitri'),
(55, 'TJ_55', 'PLG_07', '2018-03-04', 'Penjualan secara  kredit kepada sdr Fachrul Fahtahti'),
(56, 'TJ_56', 'PLG_06', '2018-03-05', 'Penjualan secara  kredit kepada sdr Noor Alfatan'),
(57, 'TJ_57', 'PLG_15', '2018-03-07', 'Penjualan secara  kredit kepada sdr Fatimah Azzahrah'),
(58, 'TJ_58', 'PLG_11', '2018-03-09', 'Penjualan secara  tunai kepada sdr Irwan'),
(59, 'TJ_59', 'PLG_09', '2018-03-10', 'Penjualan secara  kredit kepada sdr Dian Eka Putri'),
(60, 'TJ_60', 'PLG_14', '2018-03-10', 'Penjualan secara  kredit kepada sdr Awaliani Indah Safitri'),
(61, 'TJ_61', 'PLG_04', '2018-03-10', 'Penjualan secara  tunai kepada sdr Rezky Oktaviany'),
(62, 'TJ_62', 'PLG_04', '2018-03-10', 'Penjualan secara  tunai kepada sdr Rezky Oktaviany'),
(63, 'TJ_63', 'PLG_16', '2018-03-12', 'Penjualan secara  kredit kepada sdr Sultan'),
(64, 'TJ_64', 'PLG_11', '2018-03-14', 'Penjualan secara  tunai kepada sdr Irwan'),
(65, 'TJ_65', 'PLG_08', '2018-03-15', 'Penjualan secara  tunai kepada sdr Yusyar Yahya'),
(66, 'TJ_66', 'PLG_17', '2018-03-15', 'Penjualan secara  tunai kepada sdr Reztu Try Maulana Akbar'),
(67, 'TJ_67', 'PLG_14', '2018-03-15', 'Penjualan secara  kredit kepada sdr Awaliani Indah Safitri'),
(68, 'TJ_68', 'PLG_09', '2018-03-16', 'Penjualan secara  tunai kepada sdr Dian Eka Putri'),
(69, 'TJ_69', 'PLG_01', '2018-03-16', 'Penjualan secara  tunai kepada sdr Sitti Hajar'),
(70, 'TJ_70', 'PLG_17', '2018-03-17', 'Penjualan secara  kredit kepada sdr Reztu Try Maulana Akbar'),
(71, 'TJ_71', 'PLG_17', '2018-03-17', 'Penjualan secara  kredit kepada sdr Reztu Try Maulana Akbar'),
(72, 'TJ_72', 'PLG_05', '2018-03-17', 'Penjualan secara  tunai kepada sdr Hardyanti Indri Rukmini'),
(73, 'TJ_73', 'PLG_05', '2018-03-19', 'Penjualan secara  kredit kepada sdr Hardyanti Indri Rukmini');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_barang`
--

CREATE TABLE `ref_barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(15) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `satuan` varchar(5) NOT NULL,
  `harga_jual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ref_barang`
--

INSERT INTO `ref_barang` (`id`, `kode_barang`, `nama_barang`, `satuan`, `harga_jual`) VALUES
(1, 'BRG_01', 'Beng-Beng 22 gr/1500', 'Unit', 206000),
(2, 'BRG_02', 'Choki Choki 2 Rasa/Pasta', 'Buah', 144500),
(3, 'BRG_03', 'Choki Stik', 'Kg', 113000),
(4, 'BRG_04', 'Cloud 9', 'Buah', 73500),
(5, 'BRG_05', 'Dj Jelly Gum Box', 'Buah', 55500),
(6, 'BRG_06', 'Gery Chocolatos 11,5 gr/500', 'Kg', 58500),
(7, 'BRG_07', 'Gery Chocolatos Dark 1000 an', 'Kg', 89500),
(8, 'BRG_08', 'Gery Chocolatos Dark 2000 an', 'Unit', 94000),
(9, 'BRG_09', 'Gery Malkist Coklat Bag', 'Kg', 115000),
(10, 'BRG_10', 'Asepso', 'Unit', 6500),
(11, 'BRG_11', 'Dettol Instant Hand Sanitizer', 'Unit', 11500),
(12, 'BRG_12', 'Sabun Baby Johnsons 100 gr', 'Unit', 4500),
(13, 'BRG_13', 'Sabun Cair Biore Botol Non +', 'Buah', 7600),
(14, 'BRG_14', 'Sabun Cair Biore Botol +', 'Kg', 7600),
(15, 'BRG_15', 'Sabun Cair Biore Reff 250 ml +', 'Buah', 12300),
(16, 'BRG_16', 'Sabun Cair Biore Ref 250 ml -', 'Kg', 12300),
(17, 'BRG_17', 'Sabun Citra', 'Buah', 265000),
(18, 'BRG_18', 'Sabun Claudia', 'Unit', 168000),
(19, 'BRG_19', 'Sabun Cusson Baby', 'Kg', 433500),
(20, 'BRG_20', 'Sabun Dettol 65 gr', 'Buah', 435000),
(21, 'BRG_21', 'Sabun Dettol 105 gr', 'Kg', 703000),
(22, 'BRG_22', 'Sabun Dettol Cair Botol 125 ml', 'Buah', 11000),
(23, 'BRG_23', 'Sabun Dettol Cair Ref 250 ml', 'Buah', 16300),
(24, 'BRG_24', 'Anlene Sachet', 'Kg', 245000),
(25, 'BRG_25', 'Beng-beng Drink', 'Buah', 119500),
(26, 'BRG_26', 'Cerelac BM/KcHj', 'Kg', 175500),
(27, 'BRG_27', 'Chocolatos Drink', 'Unit', 121500),
(28, 'BRG_28', 'Dancow Sachet Coklat', 'Buah', 455000),
(29, 'BRG_29', 'Dancow Sachet Putih', 'Buah', 455000),
(30, 'BRG_30', 'Energen ', 'Buah', 179500),
(31, 'BRG_31', 'Hi Lo Sach', 'Kg', 161000),
(32, 'BRG_32', 'Hot Cocoa', 'Unit', 115000),
(33, 'BRG_33', 'Milo 3 in 1', 'Kg', 349000),
(34, 'BRG_34', 'Milo Actigen 22 gr', 'Buah', 335000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_pelanggan`
--

CREATE TABLE `ref_pelanggan` (
  `id` int(11) NOT NULL,
  `kode_pelanggan` varchar(10) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ref_pelanggan`
--

INSERT INTO `ref_pelanggan` (`id`, `kode_pelanggan`, `nama_pelanggan`, `telp`, `alamat`) VALUES
(1, 'PLG_01', 'SITTI HAJAR', '082395743242', 'JL. SAHABAT II NO.30'),
(2, 'PLG_02', 'ABDUL RAHMAN', '085242308844', 'JL. LAIKANG, SUDIANG'),
(3, 'PLG_03', 'SINTIA MARDATILLA', '087840487543', 'JL.PELITA 5'),
(4, 'PLG_04', 'REZKY OKTAVIANY', '082187999219', 'BTN BUMI LESTARI BLOK D2 NO 01'),
(5, 'PLG_05', 'HARDYANTI INDRI RUKMINI', '081342036244', 'Jl.Sukaria 9 no 4'),
(6, 'PLG_06', 'NOOR ALFATAN', '082393836409', 'JL. TAMAN MAKAM PAHLAWAN KOMPLEKS BBD NO.16'),
(7, 'PLG_07', 'FACHRUL FAHTAHTI', '082348013124', 'PERDOS UNHAS BLOK P NO 12A'),
(8, 'PLG_08', 'YUSYAR YAHYA', '085241639668', 'BTN NUSA INDAH BLOK D 18 NO. 17, PALLANGGA, GOWA'),
(9, 'PLG_09', 'DIAN EKA PUTRI', '085340724732', 'JLN.SYECH YUSUF KOMP KODAM KATANGKA BLOK E/7'),
(10, 'PLG_10', 'HASNAENI SYARIF', '08996771956', 'BUMI TAMALANRE PERMAI BLOK AE/81'),
(11, 'PLG_11', 'IRWAN', '082347758047', 'GRIYA DAYA RESIDENCE'),
(12, 'PLG_12', 'AHMAD ILHAM', '09942006816', 'jln. singa 3/nomor 21'),
(13, 'PLG_13', 'MUHAMMAD IKHSAN NUR', '082345230126', 'Jl Paccerakkang NO.175'),
(14, 'PLG_14', 'AWALIANI INDAH SAFITRI', '082345285695', 'JL DG.TATA RAYA LR.SLB KOMP. PONDOK LESTARI NO.11'),
(15, 'PLG_15', 'FATIMAH AZZAHRAH', '089697748921', 'Jalan Perintis Kemerdekaan'),
(16, 'PLG_16', 'SULTAN', '082393464470', 'JL. SABUTUNG BARU NO.1'),
(17, 'PLG_17', 'REZTU TRY MAULANA AKBAR', '085396393066', 'JL.Koialhan 3 Blok 9');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_pemasok`
--

CREATE TABLE `ref_pemasok` (
  `id` int(11) NOT NULL,
  `kode_pemasok` varchar(20) NOT NULL,
  `nama_pemasok` varchar(50) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ref_pemasok`
--

INSERT INTO `ref_pemasok` (`id`, `kode_pemasok`, `nama_pemasok`, `telp`, `alamat`) VALUES
(1, 'PM/C/KL/2017/12/0001', 'PT ARNOTTS INDONESIA', '021-8844813', 'Jl H. Wahab Affan No 8 Raya Bekasi Km 28, Bekasi, Jawa Barat'),
(2, 'PM/A/KL/2019/03/0002', 'PT DANONE BISCUIT INDUSTRIES', '431440 -43', 'Kp Mangga Besar II Rt 16/04 Ds Walahan Kec. Klari, Karawang, Jawa Barat'),
(3, 'PM/B/SL/2019/04/0003', 'PT GARUDA PUTRA PUTRI JAYA (GARUDA FOOD)', '(031) 8978333', 'Jl Raya Larangan Km. 28, Gresik, Jawa Timur'),
(4, 'PM/A/JT/2018/07/0004', 'PT MAYORA INDAH DIVISI COKLAT BISKUIT WAFER', '021-5454988', 'Jl. Yos Sudarso Km.19, Tangerang, Banten'),
(5, 'PM/A/JP/2019/02/0005', 'PT MAYORA INDAH', '021-5524757', 'Jl. Telesonic, Tangerang, Banten'),
(6, 'PM/C/SL/2018/03/0006', 'PT MONDE MAHKOTA BISKUIT,', '021-8711728', 'Jl. Raya Ciracas No. 25, Jakarta Timur, DKI Jakarta'),
(7, 'PM/A/SL/2018/10/0007', 'SERENA INDO PANGAN / KHONG GUAN INDONESIA', '021-8754266', 'Jl. dr Nurdin, Bogor, Jawa Barat'),
(8, 'PM/B/KL/2017/04/0008', 'ALDILA BISCUIT', '(022) 6652521  ', 'Jl Cilember Blok 284, Bandung, Jawa Barat'),
(9, 'PM/A/SL/2019/12/0009', 'BISCUIT CAP MATAHARI', ' 0561-721068   ', 'Desa Arang Limbung, Kubu Raya, Kalimantan Barat'),
(10, 'PM/A/JB/2019/06/0010', 'BISCUIT ENGGLJOSEPH TABUNAN', '6014876', 'Jl Suka Mulya 21 Telp 614876, Bandung, Jawa Barat'),
(11, 'PM/C/KL/2018/01/0011', 'BISCUIT SELAMET', '8921846', 'Jl. Jenggala 62, Sidoarjo, Jawa Timur'),
(12, 'PM/B/SL/2018/04/0012', 'PT JADI ABADI CORAK BISCUIT,', '(031) 8700578', 'Jl Raya Kali Rungkut 7-9, Surabaya, Jawa Timur'),
(13, 'PM/C/JT/2019/05/0013', 'PT LANGGENG PANGAN MAKMUR', '(031)7886619', 'Jl. Raya Sukodono Km3/5, Sidoarjo, Jawa Timur'),
(14, 'PM/A/JB/2019/04/0014', 'PT MULTI PRIMA MANDIRI', '061-8828148   ', 'Dsn. Sei Sekata, Langkat, Sumatera Utara'),
(15, 'PM/C/JP/2017/09/0015', 'NGATIYEM ELANG EMAS', '081334714431', 'Jl Panglima Sudirman RT 49 Rw 14, Malang, Jawa Timur'),
(16, 'PM/A/KL/2017/01/0016', 'PT SINAR PANGAN TIMUR', '031 8971720', 'Jl Raya Surabaya - Krian Km.27 Krian, Sidoarjo, Jawa Timur'),
(17, 'PM/A/SL/2018/06/0017', 'PT SUMBER BATU LAYANG INDAH,', '0561881166', 'Jl. Khatulistiwa Km 6,7 Pontianak Utara, Pontianak, Kalimantan Barat'),
(18, 'PM/C/JP/2019/08/0018', 'PT TANDUN GROWTH - GAMBIER BISCUIT', '0762-323128', 'Lingkungan III, Batu Besurat, Kampar, Riau'),
(19, 'PM/A/SL/2017/01/0019', 'WAFER SUKASARI', '022-211327', 'Jl Gunung Batu No 174, Kota Cimahi, Jawa Barat');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `beli_detail`
--
ALTER TABLE `beli_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `beli_master`
--
ALTER TABLE `beli_master`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jual_detail`
--
ALTER TABLE `jual_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jual_master`
--
ALTER TABLE `jual_master`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ref_barang`
--
ALTER TABLE `ref_barang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_barang` (`kode_barang`);

--
-- Indeks untuk tabel `ref_pelanggan`
--
ALTER TABLE `ref_pelanggan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_pemasok` (`kode_pelanggan`);

--
-- Indeks untuk tabel `ref_pemasok`
--
ALTER TABLE `ref_pemasok`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_pemasok` (`kode_pemasok`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `beli_detail`
--
ALTER TABLE `beli_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `beli_master`
--
ALTER TABLE `beli_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jual_detail`
--
ALTER TABLE `jual_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=521;

--
-- AUTO_INCREMENT untuk tabel `jual_master`
--
ALTER TABLE `jual_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT untuk tabel `ref_barang`
--
ALTER TABLE `ref_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `ref_pelanggan`
--
ALTER TABLE `ref_pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `ref_pemasok`
--
ALTER TABLE `ref_pemasok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
