-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2013 at 05:57 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jst`
--

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE IF NOT EXISTS `gejala` (
  `kd_gejala` varchar(5) NOT NULL,
  `nm_gejala` varchar(255) NOT NULL,
  PRIMARY KEY (`kd_gejala`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`kd_gejala`, `nm_gejala`) VALUES
('G0001', 'benjolan'),
('G0002', 'batuk-batuk'),
('G0003', 'alergi'),
('G0004', 'kencing batu'),
('G0005', 'gatal-gatal');

-- --------------------------------------------------------

--
-- Table structure for table `gejala_penyakit`
--

CREATE TABLE IF NOT EXISTS `gejala_penyakit` (
  `kd_penyakit` varchar(5) NOT NULL,
  `kd_gejala` varchar(5) NOT NULL,
  `nm_gejala` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala_penyakit`
--

INSERT INTO `gejala_penyakit` (`kd_penyakit`, `kd_gejala`, `nm_gejala`) VALUES
('P0001', 'G0001', 'benjolan');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE IF NOT EXISTS `penyakit` (
  `kd_penyakit` varchar(5) NOT NULL,
  `nm_penyakit` varchar(50) NOT NULL,
  PRIMARY KEY (`kd_penyakit`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`kd_penyakit`, `nm_penyakit`) VALUES
('P0001', 'jantung koroner'),
('P0002', 'gagal ginjal'),
('P0003', 'leokimia'),
('P0004', 'kanker payudara'),
('P0005', 'kanker otak');

-- --------------------------------------------------------

--
-- Table structure for table `penyebab`
--

CREATE TABLE IF NOT EXISTS `penyebab` (
  `kd_penyebab` varchar(5) NOT NULL,
  `nm_penyebab` text NOT NULL,
  PRIMARY KEY (`kd_penyebab`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyebab`
--

INSERT INTO `penyebab` (`kd_penyebab`, `nm_penyebab`) VALUES
('B0001', 'mutasi genetika'),
('B0002', 'gula darah '),
('B0003', 'tensi darah naik'),
('B0004', 'kekurangan darah'),
('B0005', 'sel darah putih berlebihan');

-- --------------------------------------------------------

--
-- Table structure for table `penyebab_penyakit`
--

CREATE TABLE IF NOT EXISTS `penyebab_penyakit` (
  `kd_penyakit` varchar(11) NOT NULL,
  `kd_penyebab` varchar(5) NOT NULL,
  `nm_penyebab` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyebab_penyakit`
--

INSERT INTO `penyebab_penyakit` (`kd_penyakit`, `kd_penyebab`, `nm_penyebab`) VALUES
('P0001', 'B0004', 'kekurangan darah'),
('P0002', 'B0002', 'gula darah'),
('P0004', 'B0001', 'mutasi genetika'),
('P0003', 'B0005', 'sel darah putih berlebihan');

-- --------------------------------------------------------

--
-- Table structure for table `solusi`
--

CREATE TABLE IF NOT EXISTS `solusi` (
  `kd_solusi` varchar(5) NOT NULL,
  `nm_solusi` text NOT NULL,
  PRIMARY KEY (`kd_solusi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `solusi`
--

INSERT INTO `solusi` (`kd_solusi`, `nm_solusi`) VALUES
('S0001', 'kurangi makan-makanan berlemak'),
('S0002', 'banyak makan daging'),
('S0003', 'banyak makan sayuran'),
('S0004', 'banyak makan hati ayam'),
('S0005', 'banyak makan jantung');

-- --------------------------------------------------------

--
-- Table structure for table `solusi_penyakit`
--

CREATE TABLE IF NOT EXISTS `solusi_penyakit` (
  `kd_penyakit` varchar(5) NOT NULL,
  `kd_solusi` varchar(5) NOT NULL,
  `nm_solusi` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `solusi_penyakit`
--

INSERT INTO `solusi_penyakit` (`kd_penyakit`, `kd_solusi`, `nm_solusi`) VALUES
('P0001', 'S0001', 'kurangi makan-makanan berlemak'),
('P0002', 'S0002', 'banyak makan daging');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
