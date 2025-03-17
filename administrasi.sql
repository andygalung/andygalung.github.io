-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2025 at 12:13 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `administrasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_x`
--

CREATE TABLE `pembayaran_x` (
  `id` int(11) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `tanggal_pembayaran` date NOT NULL,
  `petugas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran_x`
--

INSERT INTO `pembayaran_x` (`id`, `nama_siswa`, `kelas`, `jurusan`, `jumlah_bayar`, `tanggal_pembayaran`, `petugas`) VALUES
(1, 'andy', 'X', 'TKT', 100000, '2025-03-12', 'administrasi'),
(2, 'andy', 'X', 'TKT', 100000, '2025-03-12', 'administrasi'),
(3, 'andy', 'X', 'TKT', 100000, '2025-03-12', 'administrasi'),
(4, 'parulian', 'X', 'TKT', 200000, '2025-03-12', 'administrasi'),
(5, 'Regar', 'X', 'OTOMOTIF', 10000000, '2025-03-16', 'administrasi'),
(6, 'parulian', 'X', 'TKJ', 1000000, '2025-03-17', 'administrasi');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_xi`
--

CREATE TABLE `pembayaran_xi` (
  `id` int(11) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `tanggal_pembayaran` date NOT NULL,
  `petugas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran_xi`
--

INSERT INTO `pembayaran_xi` (`id`, `nama_siswa`, `kelas`, `jurusan`, `jumlah_bayar`, `tanggal_pembayaran`, `petugas`) VALUES
(1, 'andy', 'XI', 'TRT', 90000, '2025-03-12', 'administrasi'),
(2, 'YOGI', 'XI', 'Multimedia', 100000, '2025-03-15', 'administrasi'),
(3, 'YOGI', 'XI', 'tkj', 100000, '2025-03-15', 'administrasi'),
(4, 'Rexus', 'XI', 'RPL', 200000, '2025-03-15', 'administrasi'),
(5, 'Tama', 'XI', 'Multimedia', 120000, '2025-03-15', 'administrasi'),
(6, 'Adit', 'XI', 'RPL', 160000, '2025-03-17', 'administrasi');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_xii`
--

CREATE TABLE `pembayaran_xii` (
  `id` int(11) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `tanggal_pembayaran` date NOT NULL,
  `petugas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran_xii`
--

INSERT INTO `pembayaran_xii` (`id`, `nama_siswa`, `kelas`, `jurusan`, `jumlah_bayar`, `tanggal_pembayaran`, `petugas`) VALUES
(1, 'andy', 'XII', 'TRT', 90000, '2025-03-12', 'administrasi'),
(2, 'iko', 'XII', 'TKT', 300000, '2025-03-12', 'administrasi'),
(3, 'IMANTA SIANTURI', 'XII', 'TKJ', 180000, '2025-03-14', 'administrasi'),
(4, 'Aku', 'XII', 'TKR', 80000, '2025-03-15', 'administrasi');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `jumlah` decimal(10,2) NOT NULL,
  `tanggal_pengeluaran` date NOT NULL,
  `bukti_pengeluaran` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id`, `keterangan`, `jumlah`, `tanggal_pengeluaran`, `bukti_pengeluaran`, `created_at`) VALUES
(1, 'Beli papan tulis', '10000000.00', '2025-03-16', 'uploads/bukti_pengeluaran/67d6f30ac65b1.pdf', '2025-03-16 15:49:30'),
(2, 'Beli marker', '100000.00', '2025-03-17', 'uploads/bukti_pengeluaran/67d7fe4461608.pdf', '2025-03-17 10:49:40');

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `id` int(11) NOT NULL,
  `nama_sekolah` varchar(255) NOT NULL,
  `alamat_sekolah` text NOT NULL,
  `telepon_sekolah` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`id`, `nama_sekolah`, `alamat_sekolah`, `telepon_sekolah`) VALUES
(1, 'SMK XYZ', 'Jl. Contoh No. 123', '081234567890');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('administrasi','bendahara','kepsek') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `role`) VALUES
(4, 'administrasi', '$2y$10$LukroSljkv./Y1AovJeTEOMiVwGLuOFUh22t5J43541xdH95XJSPu', 'administrasi'),
(5, 'bendahara', '$2y$10$QtCxiueSe1GZnpgImpCRtes7u1sSUBuybWL3MdAUWom13QvYB7zjq', 'bendahara'),
(6, 'kepsek', '$2y$10$QOPRomyI8IeBuLYxX2fnduH7e0QV/CuS9WRlADP.xSO6XGEJL.y1y', 'kepsek');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pembayaran_x`
--
ALTER TABLE `pembayaran_x`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran_xi`
--
ALTER TABLE `pembayaran_xi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran_xii`
--
ALTER TABLE `pembayaran_xii`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pembayaran_x`
--
ALTER TABLE `pembayaran_x`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pembayaran_xi`
--
ALTER TABLE `pembayaran_xi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pembayaran_xii`
--
ALTER TABLE `pembayaran_xii`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
