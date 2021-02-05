-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 05, 2021 at 05:39 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nipy` int(15) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nipy`, `nama`, `email`, `alamat`) VALUES
(111222, 'slamet', 'slamet@gmail.com', 'tegal'),
(111223, 'taufiq', 'taufiq@gmail.com', 'tegal');

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id` int(5) NOT NULL,
  `nipy` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `kode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id`, `nipy`, `nim`, `kode`) VALUES
(1, 111222, 19090003, 11),
(2, 111223, 19090001, 22);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(15) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `email`, `alamat`) VALUES
(19090001, 'joko', 'joko@gmail.com', 'tegal'),
(19090003, 'Agung Iswanto', 'Agung_iswanto@outlook.co.id', 'tegal');

-- --------------------------------------------------------

--
-- Table structure for table `mk`
--

CREATE TABLE `mk` (
  `kode` int(15) NOT NULL,
  `nama` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mk`
--

INSERT INTO `mk` (`kode`, `nama`) VALUES
(11, 'statistik'),
(22, 'data base');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nipy`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `nipy` (`nipy`),
  ADD UNIQUE KEY `nim` (`nim`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `mk`
--
ALTER TABLE `mk`
  ADD PRIMARY KEY (`kode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `krs`
--
ALTER TABLE `krs`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `dosen` FOREIGN KEY (`nipy`) REFERENCES `dosen` (`nipy`),
  ADD CONSTRAINT `mhs` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`),
  ADD CONSTRAINT `mk` FOREIGN KEY (`kode`) REFERENCES `mk` (`kode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
