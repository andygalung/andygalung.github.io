-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2024 at 07:38 AM
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
-- Database: `raport`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(36) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(98) NOT NULL,
  `level` enum('admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `level`) VALUES
('f2f2abbb-bc96-45ea-a6f0-331d3364ebb9', 'andy', '$argon2i$v=19$m=1024,t=2,p=2$bXJQMnBGa1E2NU1oaTFPLg$bfsn//wC5XlK25WwmyVe5iOE6WQ2der0LFQJ04jBiIY', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `catatan_wali_kelas`
--

CREATE TABLE `catatan_wali_kelas` (
  `catatan_wali_kelas_id` varchar(36) NOT NULL,
  `siswa_detail_id` varchar(36) NOT NULL,
  `tahun_ajaran_id` varchar(36) NOT NULL,
  `semester_id` varchar(36) NOT NULL,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catatan_wali_kelas`
--

INSERT INTO `catatan_wali_kelas` (`catatan_wali_kelas_id`, `siswa_detail_id`, `tahun_ajaran_id`, `semester_id`, `catatan`) VALUES
('075884b8-bb5c-47da-8523-cd98be1bfb60', '698121a1-39ae-40a1-b8b4-9d3544fecaa7', '82ae7922-2536-46b4-a6e9-362bbed0bcf3', 'f06dc9f5-53c9-4cd7-ad2b-3b6c121c2289', 'Juara ke 1');

-- --------------------------------------------------------

--
-- Table structure for table `ekstrakurikuler`
--

CREATE TABLE `ekstrakurikuler` (
  `ekstrakurikuler_id` varchar(36) NOT NULL,
  `siswa_detail_id` varchar(36) NOT NULL,
  `tahun_ajaran_id` varchar(36) NOT NULL,
  `semester_id` varchar(36) NOT NULL,
  `nama_ekstrakurikuler` varchar(50) NOT NULL,
  `nilai` float NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ekstrakurikuler`
--

INSERT INTO `ekstrakurikuler` (`ekstrakurikuler_id`, `siswa_detail_id`, `tahun_ajaran_id`, `semester_id`, `nama_ekstrakurikuler`, `nilai`, `keterangan`) VALUES
('f8688d0c-c485-4efa-9a49-159d98bbb6f8', '698121a1-39ae-40a1-b8b4-9d3544fecaa7', '82ae7922-2536-46b4-a6e9-362bbed0bcf3', 'f06dc9f5-53c9-4cd7-ad2b-3b6c121c2289', 'BAKU HANTAM', 99, 'JAGO GELUD');

-- --------------------------------------------------------

--
-- Table structure for table `identitas_sekolah`
--

CREATE TABLE `identitas_sekolah` (
  `identitas_sekolah_id` varchar(36) NOT NULL,
  `nama_sekolah` varchar(32) NOT NULL,
  `alamat` text NOT NULL,
  `lama_belajar` enum('3','4') NOT NULL,
  `kabupaten` varchar(30) NOT NULL,
  `provinsi` varchar(32) NOT NULL,
  `logo_prov` varchar(20) NOT NULL,
  `nama_kepala_sekolah` varchar(32) NOT NULL,
  `nip_kepala_sekolah` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas_sekolah`
--

INSERT INTO `identitas_sekolah` (`identitas_sekolah_id`, `nama_sekolah`, `alamat`, `lama_belajar`, `kabupaten`, `provinsi`, `logo_prov`, `nama_kepala_sekolah`, `nip_kepala_sekolah`) VALUES
('c3fd1cd4-4bcf-4abe-9734-bb126861bacc', 'SUZURAN', 'MEDAN', '4', 'DELI SERDANG', 'SUMUTERA UTRA', '481002e5cef96674.jpg', 'ANDY', '5213151037');

-- --------------------------------------------------------

--
-- Table structure for table `izin_kenaikan_kelas`
--

CREATE TABLE `izin_kenaikan_kelas` (
  `izin_kenaikan_kelas_id` varchar(36) NOT NULL,
  `kelas` varchar(6) NOT NULL,
  `status` enum('off','on') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `izin_kenaikan_kelas`
--

INSERT INTO `izin_kenaikan_kelas` (`izin_kenaikan_kelas_id`, `kelas`, `status`) VALUES
('ccc19f96-2287-4c8c-9012-9c8f762530d3', 'X', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `juara_kelas`
--

CREATE TABLE `juara_kelas` (
  `juara_kelas_id` varchar(36) NOT NULL,
  `siswa_detail_id` varchar(36) NOT NULL,
  `tahun_ajaran_id` varchar(36) NOT NULL,
  `semester_id` varchar(36) NOT NULL,
  `rata_rata_nilai` float NOT NULL,
  `jml_nilai` float NOT NULL,
  `juara` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `juara_kelas`
--

INSERT INTO `juara_kelas` (`juara_kelas_id`, `siswa_detail_id`, `tahun_ajaran_id`, `semester_id`, `rata_rata_nilai`, `jml_nilai`, `juara`) VALUES
('709739f0-be47-4694-b083-ec3de85735fa', '698121a1-39ae-40a1-b8b4-9d3544fecaa7', '82ae7922-2536-46b4-a6e9-362bbed0bcf3', 'f06dc9f5-53c9-4cd7-ad2b-3b6c121c2289', 90, 180, 1);

-- --------------------------------------------------------

--
-- Table structure for table `juara_umum`
--

CREATE TABLE `juara_umum` (
  `juara_umum_id` varchar(36) NOT NULL,
  `siswa_detail_id` varchar(36) NOT NULL,
  `tahun_ajaran_id` varchar(36) NOT NULL,
  `semester_id` varchar(36) NOT NULL,
  `jml_nilai` float NOT NULL,
  `rata_rata_nilai` float NOT NULL,
  `juara` int(11) NOT NULL,
  `tipe_juara` enum('all','perjenjang') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `jurusan_id` varchar(36) NOT NULL,
  `nama_jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`jurusan_id`, `nama_jurusan`) VALUES
('d01b2203-682e-4b99-afc4-2c7b445ecd41', 'RPL'),
('d9c82590-c411-4cd2-ac66-a4331506e8a0', 'TKJ');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kelas_id` varchar(36) NOT NULL,
  `jurusan_id` varchar(36) NOT NULL,
  `kelas` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kelas_id`, `jurusan_id`, `kelas`) VALUES
('39e123b5-661e-41e3-a462-cf2cdec554d0', 'd9c82590-c411-4cd2-ac66-a4331506e8a0', 'X'),
('556258dc-18a4-4f63-90e4-68ed15cd8858', 'd01b2203-682e-4b99-afc4-2c7b445ecd41', 'X');

-- --------------------------------------------------------

--
-- Table structure for table `ketidakhadiran`
--

CREATE TABLE `ketidakhadiran` (
  `ketidakhadiran_id` varchar(36) NOT NULL,
  `siswa_detail_id` varchar(36) NOT NULL,
  `tahun_ajaran_id` varchar(36) NOT NULL,
  `semester_id` varchar(36) NOT NULL,
  `sakit` int(2) NOT NULL,
  `izin` int(2) NOT NULL,
  `tanpa_keterangan` int(2) NOT NULL,
  `bolos` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ketidakhadiran`
--

INSERT INTO `ketidakhadiran` (`ketidakhadiran_id`, `siswa_detail_id`, `tahun_ajaran_id`, `semester_id`, `sakit`, `izin`, `tanpa_keterangan`, `bolos`) VALUES
('a09d2a82-833b-49c5-8e92-877f3c718971', '698121a1-39ae-40a1-b8b4-9d3544fecaa7', '82ae7922-2536-46b4-a6e9-362bbed0bcf3', 'f06dc9f5-53c9-4cd7-ad2b-3b6c121c2289', 1, 1, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kkm`
--

CREATE TABLE `kkm` (
  `kkm_id` varchar(36) NOT NULL,
  `kkm` int(3) NOT NULL,
  `predikat_d` varchar(6) NOT NULL,
  `predikat_c` varchar(6) NOT NULL,
  `predikat_b` varchar(6) NOT NULL,
  `predikat_a` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kkm`
--

INSERT INTO `kkm` (`kkm_id`, `kkm`, `predikat_d`, `predikat_c`, `predikat_b`, `predikat_a`) VALUES
('1252c314-5dc4-4130-89ef-df9645eac849', 72, '0-72', '72-80', '81-90', '90-100');

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `mata_pelajaran_id` varchar(36) NOT NULL,
  `kelas_id` varchar(36) NOT NULL,
  `kkm_id` varchar(36) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL,
  `kelompok_mapel` varchar(32) NOT NULL,
  `awal_tahun_ajaran` varchar(36) NOT NULL,
  `akhir_tahun_ajaran` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`mata_pelajaran_id`, `kelas_id`, `kkm_id`, `nama_mapel`, `kelompok_mapel`, `awal_tahun_ajaran`, `akhir_tahun_ajaran`) VALUES
('8419f967-0568-42fd-a7d7-8f48e81947ff', '556258dc-18a4-4f63-90e4-68ed15cd8858', '1252c314-5dc4-4130-89ef-df9645eac849', 'DASAR RPL', 'A', '82ae7922-2536-46b4-a6e9-362bbed0bcf3', '82ae7922-2536-46b4-a6e9-362bbed0bcf3');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `nilai_id` varchar(36) NOT NULL,
  `siswa_detail_id` varchar(36) NOT NULL,
  `mapel_id` varchar(36) NOT NULL,
  `tahun_ajaran_id` varchar(36) NOT NULL,
  `semester_id` varchar(36) NOT NULL,
  `nilai_k` float NOT NULL,
  `deskripsi_k` text NOT NULL,
  `nilai_p` float NOT NULL,
  `deskripsi_p` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`nilai_id`, `siswa_detail_id`, `mapel_id`, `tahun_ajaran_id`, `semester_id`, `nilai_k`, `deskripsi_k`, `nilai_p`, `deskripsi_p`) VALUES
('160db931-a021-4820-b215-a5d3b1d9e8ea', '698121a1-39ae-40a1-b8b4-9d3544fecaa7', '8419f967-0568-42fd-a7d7-8f48e81947ff', '82ae7922-2536-46b4-a6e9-362bbed0bcf3', 'f06dc9f5-53c9-4cd7-ad2b-3b6c121c2289', 90, '90', 90, '90');

-- --------------------------------------------------------

--
-- Table structure for table `prakerin`
--

CREATE TABLE `prakerin` (
  `prakerin_id` varchar(36) NOT NULL,
  `siswa_detail_id` varchar(36) NOT NULL,
  `tahun_ajaran_id` varchar(36) NOT NULL,
  `semester_id` varchar(36) NOT NULL,
  `mitra_du_di` varchar(32) NOT NULL,
  `lokasi` text NOT NULL,
  `lamanya` varchar(15) NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prestasi`
--

CREATE TABLE `prestasi` (
  `prestasi_id` varchar(36) NOT NULL,
  `siswa_detail_id` varchar(36) NOT NULL,
  `tahun_ajaran_id` varchar(36) NOT NULL,
  `semester_id` varchar(36) NOT NULL,
  `jenis_prestasi` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestasi`
--

INSERT INTO `prestasi` (`prestasi_id`, `siswa_detail_id`, `tahun_ajaran_id`, `semester_id`, `jenis_prestasi`, `keterangan`) VALUES
('7c526cfc-2144-409c-b438-e3372c42645b', '698121a1-39ae-40a1-b8b4-9d3544fecaa7', '82ae7922-2536-46b4-a6e9-362bbed0bcf3', 'f06dc9f5-53c9-4cd7-ad2b-3b6c121c2289', 'BASKET', 'JUARA 1');

-- --------------------------------------------------------

--
-- Table structure for table `pusat_bantuan`
--

CREATE TABLE `pusat_bantuan` (
  `pusat_bantuan_id` varchar(36) NOT NULL,
  `nama_bantuan` varchar(300) NOT NULL,
  `for_to` enum('admin','admin_guru') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pusat_bantuan`
--

INSERT INTO `pusat_bantuan` (`pusat_bantuan_id`, `nama_bantuan`, `for_to`) VALUES
('09c2d425-2d4d-4c02-bd90-d65d9fd87b76', 'Bagaimana_menentukan_juara_umum?', 'admin'),
('1a0ad398-961d-4255-b67d-3cfcecb5e47a', 'Bagaimana_menghapus_data_yang_gagal_dihapus?', 'admin'),
('b3986f7d-17d1-4b26-bb21-df189d366e7d', 'Bagaimana_export_dan_print_data?', 'admin_guru'),
('b72f4219-d8e4-4481-a676-a262e596d7b5', 'Saran_pengisian_raport_siswa_yang_pindah_kelas!', 'admin_guru'),
('c49d152e-78f3-41ec-9d08-cafb366acdf3', 'Bagaimana_merubah_data_raport_siswa_seperti_nilai,_pada_semester_yang_lalu?', 'admin_guru'),
('cfccf564-9d9a-4b01-8a3f-4dd45c46f0b9', 'Saran_sesudah_dan_sebelum_melakukan_pengisian_data_raport_siswa_tertentu!', 'admin_guru'),
('e1fb672f-b98b-4e9e-9b01-f44c803b7e54', 'Saran_untuk_data_siswa_lulus_maupun_tidak_lulus_dan_data_siswa_keluar!', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semester_id` varchar(36) NOT NULL,
  `semester` int(2) NOT NULL,
  `status` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`semester_id`, `semester`, `status`) VALUES
('7eafec60-70b0-4a95-aadb-04846009313f', 2, 'no'),
('f06dc9f5-53c9-4cd7-ad2b-3b6c121c2289', 1, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `sikap_siswa`
--

CREATE TABLE `sikap_siswa` (
  `sikap_siswa_id` varchar(36) NOT NULL,
  `siswa_detail_id` varchar(36) NOT NULL,
  `tahun_ajaran_id` varchar(36) NOT NULL,
  `semester_id` varchar(36) NOT NULL,
  `sikap` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sikap_siswa`
--

INSERT INTO `sikap_siswa` (`sikap_siswa_id`, `siswa_detail_id`, `tahun_ajaran_id`, `semester_id`, `sikap`) VALUES
('d12e07c2-580e-4f60-8d0f-02969a48d200', '698121a1-39ae-40a1-b8b4-9d3544fecaa7', '82ae7922-2536-46b4-a6e9-362bbed0bcf3', 'f06dc9f5-53c9-4cd7-ad2b-3b6c121c2289', 'BAIK SEKALI');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_detail`
--

CREATE TABLE `siswa_detail` (
  `siswa_detail_id` varchar(36) NOT NULL,
  `kelas_id` varchar(36) NOT NULL,
  `nama_siswa` varchar(30) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `no_induk` varchar(6) NOT NULL,
  `tempat_tanggal_lahir` varchar(38) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `status_dalam_keluarga` varchar(30) NOT NULL,
  `anak_ke` int(2) NOT NULL,
  `alamat_peserta_didik` text NOT NULL,
  `nomor_telp_rumah` varchar(20) NOT NULL,
  `sekolah_asal` varchar(30) NOT NULL,
  `diterima_disekolah_ini` varchar(30) NOT NULL,
  `nama_ayah` varchar(30) NOT NULL,
  `nama_ibu` varchar(30) NOT NULL,
  `pekerjaan_ayah` varchar(20) NOT NULL,
  `pekerjaan_ibu` varchar(20) NOT NULL,
  `alamat_orang_tua` text NOT NULL,
  `nama_wali` varchar(30) DEFAULT NULL,
  `alamat_wali` text DEFAULT NULL,
  `pekerjaan_wali` varchar(20) DEFAULT NULL,
  `status` enum('masih_sekolah','keluar','lulus','tidak_lulus') NOT NULL,
  `tahun_ajaran_kelulusan` varchar(9) DEFAULT NULL,
  `no_un` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa_detail`
--

INSERT INTO `siswa_detail` (`siswa_detail_id`, `kelas_id`, `nama_siswa`, `nisn`, `no_induk`, `tempat_tanggal_lahir`, `jenis_kelamin`, `agama`, `status_dalam_keluarga`, `anak_ke`, `alamat_peserta_didik`, `nomor_telp_rumah`, `sekolah_asal`, `diterima_disekolah_ini`, `nama_ayah`, `nama_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `alamat_orang_tua`, `nama_wali`, `alamat_wali`, `pekerjaan_wali`, `status`, `tahun_ajaran_kelulusan`, `no_un`) VALUES
('698121a1-39ae-40a1-b8b4-9d3544fecaa7', '556258dc-18a4-4f63-90e4-68ed15cd8858', 'ANDY', '1234567890', '123', 'MEDAN|19|9|2003', 'Laki-laki', 'KRISTEN', 'ANAK', 6, 'MEDAN', '081298788318', 'SMP HOUSEN', '10|10-10-2024|1', 'ALBERT ', 'MAMA', 'PENEMU', 'ILMUWAN', 'MEDAN', 'AA', 'AA', 'AA', 'masih_sekolah', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status_akhir_semester`
--

CREATE TABLE `status_akhir_semester` (
  `status_akhir_semester_id` varchar(36) NOT NULL,
  `siswa_detail_id` varchar(36) NOT NULL,
  `tahun_ajaran_id` varchar(36) NOT NULL,
  `semester_id` varchar(36) NOT NULL,
  `status_akhir` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `tahun_ajaran_id` varchar(36) NOT NULL,
  `tahun` varchar(9) NOT NULL,
  `status` enum('no','run','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tahun_ajaran`
--

INSERT INTO `tahun_ajaran` (`tahun_ajaran_id`, `tahun`, `status`) VALUES
('82ae7922-2536-46b4-a6e9-362bbed0bcf3', '2023-2024', 'run');

-- --------------------------------------------------------

--
-- Table structure for table `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `wali_kelas_id` varchar(36) NOT NULL,
  `kelas_id` varchar(36) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` int(18) NOT NULL,
  `password` varchar(98) NOT NULL,
  `level` enum('guru') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wali_kelas`
--

INSERT INTO `wali_kelas` (`wali_kelas_id`, `kelas_id`, `nama`, `nip`, `password`, `level`) VALUES
('96d56249-23cb-453c-b89d-83ad9d6e9a3f', '556258dc-18a4-4f63-90e4-68ed15cd8858', 'ANDY', 2147483647, '$argon2i$v=19$m=65536,t=4,p=1$M3BSZlNWQ1FLSXE5aHBKbQ$diUFE5awFSeu8WIxRXCUvqUKBZdlvDECzaWKwYQC1Zc', 'guru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `catatan_wali_kelas`
--
ALTER TABLE `catatan_wali_kelas`
  ADD PRIMARY KEY (`catatan_wali_kelas_id`),
  ADD KEY `siswa_detail_id` (`siswa_detail_id`),
  ADD KEY `tahun_ajaran_id` (`tahun_ajaran_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indexes for table `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  ADD PRIMARY KEY (`ekstrakurikuler_id`),
  ADD KEY `siswa_detail_id` (`siswa_detail_id`),
  ADD KEY `tahun_ajaran_id` (`tahun_ajaran_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indexes for table `identitas_sekolah`
--
ALTER TABLE `identitas_sekolah`
  ADD PRIMARY KEY (`identitas_sekolah_id`);

--
-- Indexes for table `izin_kenaikan_kelas`
--
ALTER TABLE `izin_kenaikan_kelas`
  ADD PRIMARY KEY (`izin_kenaikan_kelas_id`);

--
-- Indexes for table `juara_kelas`
--
ALTER TABLE `juara_kelas`
  ADD PRIMARY KEY (`juara_kelas_id`),
  ADD KEY `siswa_detail_id` (`siswa_detail_id`),
  ADD KEY `tahun_ajaran_id` (`tahun_ajaran_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indexes for table `juara_umum`
--
ALTER TABLE `juara_umum`
  ADD PRIMARY KEY (`juara_umum_id`),
  ADD KEY `siswa_detail_id` (`siswa_detail_id`),
  ADD KEY `semester_id` (`semester_id`),
  ADD KEY `tahun_ajaran_id` (`tahun_ajaran_id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`jurusan_id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kelas_id`),
  ADD KEY `jurusan_id` (`jurusan_id`);

--
-- Indexes for table `ketidakhadiran`
--
ALTER TABLE `ketidakhadiran`
  ADD PRIMARY KEY (`ketidakhadiran_id`),
  ADD KEY `siswa_detail_id` (`siswa_detail_id`),
  ADD KEY `tahun_ajaran_id` (`tahun_ajaran_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indexes for table `kkm`
--
ALTER TABLE `kkm`
  ADD PRIMARY KEY (`kkm_id`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`mata_pelajaran_id`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `kkm_id` (`kkm_id`),
  ADD KEY `awal_tahun_ajaran` (`awal_tahun_ajaran`),
  ADD KEY `akhir_tahun_ajaran` (`akhir_tahun_ajaran`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`nilai_id`),
  ADD KEY `mapel_id` (`mapel_id`),
  ADD KEY `siswa_detail_id` (`siswa_detail_id`),
  ADD KEY `tahun_ajaran_id` (`tahun_ajaran_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indexes for table `prakerin`
--
ALTER TABLE `prakerin`
  ADD PRIMARY KEY (`prakerin_id`),
  ADD KEY `siswa_detail_id` (`siswa_detail_id`),
  ADD KEY `tahun_ajaran_id` (`tahun_ajaran_id`),
  ADD KEY `prakerin_ibfk_3` (`semester_id`);

--
-- Indexes for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`prestasi_id`),
  ADD KEY `siswa_detail_id` (`siswa_detail_id`),
  ADD KEY `tahun_ajaran_id` (`tahun_ajaran_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indexes for table `pusat_bantuan`
--
ALTER TABLE `pusat_bantuan`
  ADD PRIMARY KEY (`pusat_bantuan_id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semester_id`);

--
-- Indexes for table `sikap_siswa`
--
ALTER TABLE `sikap_siswa`
  ADD PRIMARY KEY (`sikap_siswa_id`),
  ADD KEY `siswa_detail_id` (`siswa_detail_id`),
  ADD KEY `tahun_ajaran_id` (`tahun_ajaran_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indexes for table `siswa_detail`
--
ALTER TABLE `siswa_detail`
  ADD PRIMARY KEY (`siswa_detail_id`),
  ADD KEY `kelas_id` (`kelas_id`);

--
-- Indexes for table `status_akhir_semester`
--
ALTER TABLE `status_akhir_semester`
  ADD PRIMARY KEY (`status_akhir_semester_id`),
  ADD KEY `siswa_detail_id` (`siswa_detail_id`),
  ADD KEY `tahun_ajaran_id` (`tahun_ajaran_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indexes for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`tahun_ajaran_id`);

--
-- Indexes for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`wali_kelas_id`),
  ADD KEY `kelas_id` (`kelas_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `catatan_wali_kelas`
--
ALTER TABLE `catatan_wali_kelas`
  ADD CONSTRAINT `catatan_wali_kelas_ibfk_1` FOREIGN KEY (`siswa_detail_id`) REFERENCES `siswa_detail` (`siswa_detail_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `catatan_wali_kelas_ibfk_2` FOREIGN KEY (`tahun_ajaran_id`) REFERENCES `tahun_ajaran` (`tahun_ajaran_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `catatan_wali_kelas_ibfk_3` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`semester_id`) ON UPDATE CASCADE;

--
-- Constraints for table `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  ADD CONSTRAINT `ekstrakurikuler_ibfk_1` FOREIGN KEY (`siswa_detail_id`) REFERENCES `siswa_detail` (`siswa_detail_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ekstrakurikuler_ibfk_2` FOREIGN KEY (`tahun_ajaran_id`) REFERENCES `tahun_ajaran` (`tahun_ajaran_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ekstrakurikuler_ibfk_3` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`semester_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
