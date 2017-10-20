-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 09, 2017 at 11:19 AM
-- Server version: 10.0.31-MariaDB-0ubuntu0.16.04.2
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `ID_Anggota` int(5) NOT NULL,
  `nim` char(13) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `progdi` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`ID_Anggota`, `nim`, `nama`, `progdi`) VALUES
(1, 'G.211.16.0111', 'Andre', 'TI'),
(2, 'G.211.16.0112', 'Indra', 'TI'),
(3, 'G.231.12.0125', 'joni a', 'SI'),
(4, 'G.231.12.0126', 'DIAN', 'TI'),
(5, 'G.231.16.0125', 'Angga', 'TI'),
(6, 'G.231.16.0123', 'Muhar', 'TI');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `ID_Buku` int(20) NOT NULL,
  `Judul` varchar(50) NOT NULL,
  `Pengarang` varchar(30) NOT NULL,
  `Kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`ID_Buku`, `Judul`, `Pengarang`, `Kategori`) VALUES
(1, 'Senja Kelabu', 'Mutia', 'novel'),
(2, 'Donald Bebek', 'disney', 'komik'),
(5, 'UML', 'rosa', 'pemrograman'),
(6, 'Pemrograman Web', 'April', 'novel'),
(7, 'Pemrograman Web', 'April', 'novel'),
(11, 'Mereka', 'aku', 'novel'),
(12, 'Dia', 'kamu', 'novel'),
(23, 'Ada apa dengan kangen', 'aadk', 'komik'),
(24, 'Ada apa dengan cinta', 'aadc', 'novel'),
(25, 'Bulan di langit ketujuh', 'dee', 'novel'),
(26, 'Revolusi Cinta', 'aku', 'novel'),
(27, 'Sinchan', 'sinchan', 'komik'),
(28, 'Kamus Mandarin', 'burhan', 'kamus'),
(29, 'Titik', 'titik', 'novel'),
(30, 'aku dan kamu', 'chairil anwar', 'novel');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `ID_Pinjam` int(5) NOT NULL,
  `ID_Anggota` int(5) NOT NULL,
  `ID_Buku` int(5) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`ID_Pinjam`, `ID_Anggota`, `ID_Buku`, `tgl_pinjam`, `tgl_kembali`) VALUES
(1, 3, 1, '2015-12-04', '2015-12-11'),
(2, 1, 3, '2015-12-04', '2015-12-18'),
(3, 2, 5, '2015-12-05', '2015-12-12'),
(4, 4, 6, '2016-11-18', '2016-11-19'),
(5, 1, 30, '2016-11-17', '2016-11-22'),
(6, 3, 5, '2016-11-08', '2016-11-09'),
(7, 2, 30, '2016-11-18', '2016-11-19'),
(8, 3, 28, '2016-11-17', '2016-11-22'),
(9, 3, 29, '2016-11-25', '2016-11-25'),
(10, 2, 28, '2016-11-25', '2016-11-25'),
(11, 4, 28, '2016-11-26', '2016-11-26');

-- --------------------------------------------------------

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`ID_Anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`ID_Buku`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`ID_Pinjam`);

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `ID_Anggota` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `ID_Buku` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `ID_Pinjam` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
