-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2023 at 03:51 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengaduan_masyarakat`
--

-- --------------------------------------------------------

--
-- Table structure for table `masyarakat`
--

CREATE TABLE `masyarakat` (
  `id_masyarakat` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(64) NOT NULL,
  `telepon` varchar(13) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `masyarakat`
--

INSERT INTO `masyarakat` (`id_masyarakat`, `nik`, `username`, `password`, `telepon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, '12345', 'ahlfs99', '1bbd886460827015e5d605ed44252251', '1213131123', '2023-10-17 04:35:01', '2023-11-12 08:48:24', '0000-00-00 00:00:00'),
(6, '1231231231231231', 'regi', '1bbd886460827015e5d605ed44252251', '123456789', '2023-11-12 09:13:04', '2023-11-12 09:13:04', '0000-00-00 00:00:00'),
(7, '1234567890123456', 'nono', '1bbd886460827015e5d605ed44252251', '087632814', '2023-11-14 01:49:50', '2023-11-21 06:16:44', '0000-00-00 00:00:00'),
(8, '0909090909090909', 'polo', '1bbd886460827015e5d605ed44252251', '1231231231', '2023-12-02 14:57:57', '2023-12-02 14:57:57', '0000-00-00 00:00:00'),
(9, '1111111111111111', 'yoshh', '8ce87b8ec346ff4c80635f667d1592ae', '1212121212', '2023-12-03 01:07:19', '2023-12-03 01:07:19', '0000-00-00 00:00:00'),
(10, '1234567899123456', 'asasa', '8ce87b8ec346ff4c80635f667d1592ae', '1212121212', '2023-12-03 01:09:30', '2023-12-03 01:09:30', '0000-00-00 00:00:00'),
(11, '0987654321098765', 'koala', '00cedcf91beffa9ee69f6cfe23a4602d', '1212121212', '2023-12-03 01:11:36', '2023-12-03 01:11:36', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `tanggal_pengaduan` date NOT NULL,
  `id_masyarakat` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi_laporan` text NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `foto` blob NOT NULL,
  `status` enum('0','1','2','3','deleted') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tanggal_pengaduan`, `id_masyarakat`, `judul`, `isi_laporan`, `lokasi`, `foto`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2023-10-31', 3, '', 'Hwehess', '', 0x313639383738393232355f31616462613736353164636130636265386434392e706e67, 'deleted', '2023-10-31 21:53:45', '2023-11-14 13:27:07', '0000-00-00 00:00:00'),
(2, '2023-11-07', 3, '', 'Lorem ipsum dolor sit ame', '', 0x313639393332323030315f39356366316136313839616639643162323633312e706e67, 'deleted', '2023-11-07 01:53:21', '2023-11-14 04:42:35', '0000-00-00 00:00:00'),
(3, '2023-11-07', 3, '', 'didekat rumah saya terjadi kebakaran', '', 0x313639393332343036305f63336535653763646261356434333533663736342e706e67, 'deleted', '2023-11-07 02:27:40', '2023-11-14 04:40:45', '0000-00-00 00:00:00'),
(6, '2023-11-12', 3, '', 'Hari iniii', '', 0x313639393737383933305f65396131353362356438636162383563313064312e6a7067, 'deleted', '2023-11-12 08:48:50', '2023-11-14 04:11:29', '0000-00-00 00:00:00'),
(7, '2023-11-12', 0, '', 'Check', '', 0x313639393737393132315f33653039626232653338376662383535616466372e68746d6c, '2', '2023-11-12 08:52:01', '2023-11-14 07:42:06', '0000-00-00 00:00:00'),
(8, '2023-11-12', 0, '', 'Abv', '', 0x313639393737393839395f39303061653135346531386533613436343433632e6a7067, '1', '2023-11-12 09:04:59', '2023-11-20 07:34:17', '0000-00-00 00:00:00'),
(9, '2023-11-12', 0, '', 'Hayyo', '', 0x313639393738303431365f38376637326161373235623063383539366366342e6a7067, '1', '2023-11-12 09:13:36', '2023-11-21 03:23:29', '0000-00-00 00:00:00'),
(10, '2023-11-12', 0, '', 'Check', '', 0x313639393738303830345f62356666616561356564396330653238396435352e6a7067, '0', '2023-11-12 09:20:04', '2023-11-12 09:20:04', '0000-00-00 00:00:00'),
(11, '2023-10-11', 6, '', 'Todayyy', '', 0x313639393738303932355f37656533653263623066343835313861616332372e6a7067, '0', '2023-11-12 09:22:05', '2023-11-12 09:22:05', '0000-00-00 00:00:00'),
(12, '2023-11-14', 3, 'Gak tawu', 'LOooo', 'asasa', 0x313639393933363530355f64366235623038346666383063323830303561612e6a7067, 'deleted', '2023-11-14 04:35:05', '2023-11-14 04:40:26', '0000-00-00 00:00:00'),
(14, '2023-11-14', 3, 'aa', 'asasahsahsjahbxbzxbabbsbasdasasahsahsjahbxbzxbabbsbasdasasahsahsjahbxbzxbabbsbasdasasahsahsjahbxbzxbabbsbasdasasahsahsjahbxbzxbabbsbasdasasahsahsjahbxbzxbabbsbasdasasahsahsjahbxbzxbabbsbasdasasahsahsjahbxbzxbabbsbasdasasahsahsjahbxbzxbabbsbasdasasahsahsjahbxbzxbabbsbasdasasahsahsjahbxbzxbabbsbasd', 'ss', 0x313639393933373033335f39666663663464343034643230376636343637652e706e67, 'deleted', '2023-11-14 04:43:53', '2023-11-14 04:43:57', '0000-00-00 00:00:00'),
(15, '2023-11-20', 3, 'Gak tawu', 'Locococo', 'KOtagede', 0x313730303435333331345f66343137616265343831313939323633656365642e6a7067, '2', '2023-11-20 04:08:34', '2023-11-21 03:38:30', '0000-00-00 00:00:00'),
(16, '2023-11-20', 3, 'kekerasan', 'di dekat saya ada kekerasan yang dilakukan oleh tetangga saya kepada istrinya sendiri.', 'jogja', 0x313730303436313434315f37336338383462353838363131313964313531652e6a7067, '2', '2023-11-20 06:24:01', '2023-11-20 06:25:12', '0000-00-00 00:00:00'),
(17, '2023-11-21', 3, 'Pohon Tumbang', 'Pohon Tumbang habis ditebang', 'Jakarta', 0x313730303533333936375f34396539633237346638623030323864663161322e6a7067, '2', '2023-11-21 02:32:47', '2023-11-21 02:33:53', '0000-00-00 00:00:00'),
(18, '2023-12-02', 3, 'Gak tawu', 'assdaeawd', 'AskjwoijdaodaodjiajdjojAskjwoijdaodaodjiajdjojAskjwoijdaodaodjiajdjojAskjwoijdaodaodjiajdjojAskjwoijdaodaodjiajdjojAskjwoijdaodaodjiajdjoj', 0x313730313531343430375f31663662343234316132333631303334353738612e6a7067, 'deleted', '2023-12-02 10:53:27', '2023-12-02 10:58:44', '0000-00-00 00:00:00'),
(19, '2023-12-02', 8, 'Kawazaki', 'Cago', 'Crico', 0x313730313532393930385f37633832306562656632383932393831393234382e6a7067, '0', '2023-12-02 15:11:48', '2023-12-02 15:11:48', '0000-00-00 00:00:00'),
(20, '2023-12-03', 11, 'haii', 'akuu', '121212', 0x313730313536363030315f31313536396231663762383462653036323638342e646f6378, '0', '2023-12-03 01:13:21', '2023-12-03 01:13:21', '0000-00-00 00:00:00'),
(21, '2023-12-03', 11, 'AA', 'aaa', 'aaa', 0x313730313536363539325f33386666666165313665336362333335306365372e737667, '0', '2023-12-03 01:23:12', '2023-12-03 01:23:12', '0000-00-00 00:00:00'),
(22, '2023-12-03', 11, 'aa', 'aa', 'aa', 0x313730313536363635365f34613432313337376531343261373362313131382e637376, '0', '2023-12-03 01:24:16', '2023-12-03 01:24:16', '0000-00-00 00:00:00'),
(23, '2023-12-03', 11, 'aa', 'asa', 'Jakarta', 0x313730313536363836365f35626637393763363065663533613039333039662e706e67, '0', '2023-12-03 01:27:46', '2023-12-03 01:27:46', '0000-00-00 00:00:00'),
(24, '2023-12-03', 11, 'aa', 'aa', 'aa', 0x313730313536373239355f36623134376564376462346337643366653139392e706e67, '0', '2023-12-03 01:34:55', '2023-12-03 01:34:55', '0000-00-00 00:00:00'),
(25, '2023-12-03', 11, 'aa', 'aa', 'aa', 0x313730313536373730305f35666639626266616266303233376239633532362e706e67, '0', '2023-12-03 01:41:40', '2023-12-03 01:41:40', '0000-00-00 00:00:00'),
(26, '2023-12-03', 11, 'aa', 'aa', 'aa', 0x313730313536373931325f63666635646235333865383839373530646532632e706e67, '0', '2023-12-03 01:45:12', '2023-12-03 01:45:12', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(64) NOT NULL,
  `telepon` varchar(13) NOT NULL,
  `level` enum('admin','petugas') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telepon`, `level`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin Daved', 'dave', '1bbd886460827015e5d605ed44252251', '0827316213', 'admin', '2023-10-28 11:40:37', '2023-11-23 07:39:11', '2023-10-28 11:40:37'),
(2, 'Petugas Johny', 'john', '1bbd886460827015e5d605ed44252251', '0893261731', 'petugas', '2023-10-28 11:40:37', '2023-11-07 06:25:07', '2023-10-28 11:40:37'),
(5, 'Budi0123', 'Budi', '4a094e453e6ee6a8253def63db4d1509', '092128127', 'petugas', '2023-11-14 02:17:03', '2023-11-21 06:29:07', '0000-00-00 00:00:00'),
(8, 'Brother', 'bros', '25d55ad283aa400af464c76d713c07ad', '90039283812', 'admin', '2023-11-23 07:42:03', '2023-11-23 07:42:03', '0000-00-00 00:00:00'),
(9, 'Konci', 'robo', '6c4f51b6654e83fb2dde0878cc57dbeb', '1212121212', 'admin', '2023-12-03 01:57:21', '2023-12-03 01:57:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tanggal_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `status` enum('0','1','2','3','4') NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tanggal_tanggapan`, `tanggapan`, `status`, `id_petugas`) VALUES
(1, 18, '2023-10-24', 'Aku suka susu', '2', 2),
(6, 22, '2023-10-31', 'Aku suka kamu', '0', 2),
(7, 3, '2023-11-07', 'sudah saya kirimkan pemadam yang sekarang menuju ke rumah anda', '2', 2),
(8, 2, '2023-11-12', 'Aku suka susu', '2', 1),
(9, 7, '2023-11-14', 'Aku suka susu', '2', 2),
(10, 16, '2023-11-20', 'baik akan segera ditindak lanjuti', '2', 2),
(11, 17, '2023-11-21', 'Bagus', '2', 2),
(12, 15, '2023-11-21', 'Keren', '2', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`id_masyarakat`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `id_pengaduan` (`id_pengaduan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `masyarakat`
--
ALTER TABLE `masyarakat`
  MODIFY `id_masyarakat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD CONSTRAINT `tanggapan_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`),
  ADD CONSTRAINT `tanggapan_ibfk_2` FOREIGN KEY (`id_pengaduan`) REFERENCES `pengaduan` (`id_pengaduan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
