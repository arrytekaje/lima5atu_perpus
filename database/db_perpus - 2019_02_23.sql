-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2019 at 08:46 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `anggota_id` int(10) UNSIGNED NOT NULL,
  `anggota_nama` varchar(50) NOT NULL,
  `anggota_alamat` text NOT NULL,
  `anggota_jk` enum('L','P') NOT NULL,
  `anggota_telp` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`anggota_id`, `anggota_nama`, `anggota_alamat`, `anggota_jk`, `anggota_telp`) VALUES
(1, 'Ari Susanto', 'Pluit, Jakarta Utara', 'L', '085701425492'),
(2, 'Dwissti', 'Purbalingga, Jawa Tengah', 'P', '081213392535'),
(4, 'Icha Astika FN', 'Purwokerto, Jawa Tengah', 'P', '081217652357'),
(5, 'Zulham', 'Cilacap, Jawa Tengah', 'L', '085789091782'),
(6, 'Raditya Juli P', 'Kalideres, Jakarta Barat', 'L', '087876561234'),
(7, 'Zaki Nur A.', 'Banyumas, Jawa Tengah', 'P', '085712341235'),
(8, 'Ari Setiani', 'Tangerang, Banten', 'P', '083827876543'),
(9, 'Sudibyo', 'Wonosobo, Jawa Tengah', 'L', '081245677890'),
(10, 'Setianingsih', 'Meruya, Jakarta Barat', 'P', '089812342345'),
(11, 'Alvi Nur A.', 'Mampang, Jakarta Selatan', 'P', '082213567809');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `buku_id` int(10) UNSIGNED NOT NULL,
  `buku_judul` varchar(50) NOT NULL,
  `kategori_id` int(11) UNSIGNED NOT NULL,
  `buku_deskripsi` text,
  `buku_jumlah` int(11) UNSIGNED NOT NULL,
  `buku_cover` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`buku_id`, `buku_judul`, `kategori_id`, `buku_deskripsi`, `buku_jumlah`, `buku_cover`) VALUES
(3, 'Teori Sosial Dari Klasik Sampai Postmodern', 31, 'Buku ini merupakan bunga rampai tulisan dari para pengusung teori masing-masing yang dijelaskan dalam bentuk bahasa yang lebih ringkasi dari edisi buku aslinya yang tentunya lebih tebal. Buku ini ditulis oleh Turner terbagi dalam 5 bagian dan 28 bab. Bagian pertama mengenai dasar-dasar, berisi tentang dasar-dasar teori sosial, teori sosiologi kontemporer: perkembangan-perkembangan pasca parsons, dan filsafat ilmu-ilmu sosial. ', 4, 'Teori sosial.JPG'),
(4, 'Komputer dan Jaringan Dasar SMK/MAK Kelas X Revisi', 19, 'Buku Komputer dan laringan Dasar ini ditulis sebagai salah satu sumber belajar siswa SMK/MAK kelas X untuk mempelajari dan memperdalam materi Komputer danl Jaringan Dasar.  ', 4, 'TKJ.JPG'),
(9, 'Belajar Mudah Python dengan Package Open Source', 19, 'Buku ini saya buat berdasarkan pengalaman menangani beragam project yang meliputi topik bahasan seperti machine learning, computer vision yang biasanya menggunakan Matlab, biasanya kami sarankan menggunakan Python karena lebih kepada lisensi serta.', 3, 'pyton.JPG'),
(10, 'Otomatisasi Administrasi Jaringan', 19, 'Mengurus dan mengatur sebuah peralatan jaringan tidaklah sulit, demikian juga ketika peratalan Anda bertambah menjadi 2 atau 3 namun seiring dengan bertambahnya peralatan, Anda akan mulai menghadapi banyak masalah dan menghabiskan sangat banyak waktu Anda ditambah dengan berbagai kesalahan dan â€˜lupaâ€™ yang bisa berakibat fatal. Buku ini akan membahas tentang otomatisasi yang bisa Anda buat sendiri dengan script Python dan menghemat Ribuan jam kerja Anda.', 1, 'Jaringan.JPG'),
(11, 'Atlas Geografi Indonesia & Dunia', 25, 'Atlas Geografi Indonesia dan Dunia berisi Peta 34 provinsi di Indonesia terlengkap.Atlas ini berisi Peta NKRI Terbaru, Peta 34 Provinsi Terbaru, Peta Tematik Indonesia, Peta Benua, Peta Iklim Dunia, Cara Membaca Peta, Citra Satelit, Pakaian dan Rumah Adat, Siklus Hidrologi, Siklus dan Jenis Batuan, Tata Surya dengan Teori Terbaru, Lempeng tektonik, arus laut dunia, Bendera Negara di dunia, Index.', 2, 'atlas.JPG'),
(12, 'Tambora Mengguncang Dunia Ed. Revisi', 25, 'Presiden Joko Widodo menetapkan kawasan Gunung Tambora sebagai Taman Nasional Gunung Tambora (TNGT). Deklarasi berlangsung meriah di lapangan Doro Ncanga, Desa Doro Peti, Kabupaten Dompu, Nusa Tenggara Barat (NTB), pada Sabtu (11 April 2015). Kegiatan Presiden ini termasuk rangkaian peringatanDua Abad Letusan Tambora yang terjadi pada April 1815.\r\n', 2, 'Tambora.JPG'),
(13, 'Dora the Explorer: Pertunjukan Balet', 10, 'Dora dan teman-temannya akan tampil di Pertunjukan Balet.\r\nTetapi, Bebek Pengantar salah membawa sepatu balet mereka. Ia malah membawa sepatu selam!\r\nAgar pertunjukan tidak batal, Dora dan Boots pun pergi mengambil septum balet.\r\nIkuti petualangan mereka untuk mendapatkan sepatu dan kemabli tepat waktu sebelum pertunjukan dimulai!', 1, 'Dora.JPG'),
(14, 'Ensiklopedia Dunia Reptil', 17, 'Apa yang kalian bayangkan jika mendengar kata \"reptil\"?\r\n\r\nYa...reptil disebut juga dengan binatang melata, yaitu kelompok hewan yang berdarah dingin.\r\n\r\nNamun, ternyata banyak lho jenis reptil itu. Ada reptil yang bersisik, berkulit keras, dan masih banyak lainnya.\r\n\r\nYuk, kita baca buku ini dan temukan beragam binatang reptil yang memesona kita.', 0, 'Ensoklopedi.JPG'),
(15, 'Perilaku Organisasi', 31, 'Mata kuliah Perilaku Organisasi yang diajarkan pada mahasiswa Jurusan Administrasi atau lainnya, menuntut para mahasiswa untuk lebih memahami cara-cara berorganisasi yang baik dan teratur. Hal ini diwajarkan karena dalam kekinian, para mahasiswa dituntut untuk berlaku seprofesional mungkin. Terlebih saat persaingan pada dunia kerja semakin meningkat dan perilaku organisasi yang baik dan proporsional akan meng-guide mereka pada pekerjaan yang \"mapan\".', 5, 'sosiologi.JPG'),
(16, 'Pengelolaan Kesuburan Tanah', 30, 'Tanah adalah media untuk pertumbuhan tanaman dan memasok unsur hara untuk tanaman. Beberapa tanah tertentu yang tidak dapat memenuhi tujuan tersebut disebut sebagai tanah tidak subur. Sebaliknya, ada beberapa tanah yang dapat memenuhi tujuan tersebut dan tanah tersebut disebut tanah subur. Oleh karena itu, kesuburan tanah adalah aspek hubungan tanah-tanaman, yaitu pertumbuhan tanaman dalam hubungannya dengan unsur hara yang tersedia dalam tanah. ', 7, 'Tanah.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(10) UNSIGNED NOT NULL,
  `kategori_nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`) VALUES
(10, 'Dongeng'),
(16, 'Komik'),
(17, 'Ensiklopedi'),
(18, 'Arsitektur & Desain'),
(19, 'Komputer & Internet'),
(24, 'Administrasi'),
(25, 'Geografi'),
(26, 'Komunikasi'),
(27, 'Peternakan'),
(28, 'Kehutanan'),
(29, 'Kelautan'),
(30, 'Pertanian'),
(31, 'Sosiologi'),
(32, '');

-- --------------------------------------------------------

--
-- Table structure for table `kembali`
--

CREATE TABLE `kembali` (
  `kembali_id` int(11) UNSIGNED NOT NULL,
  `pinjam_id` int(11) UNSIGNED NOT NULL,
  `tgl_kembali` date NOT NULL,
  `denda` double UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kembali`
--

INSERT INTO `kembali` (`kembali_id`, `pinjam_id`, `tgl_kembali`, `denda`) VALUES
(11, 22, '2019-02-23', 0),
(12, 19, '2019-02-23', 0),
(13, 27, '2019-02-23', 0),
(14, 21, '2019-02-23', 0),
(15, 23, '2019-02-23', 0),
(16, 18, '2019-02-23', 0),
(17, 29, '2019-02-23', 18000);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `petugas_id` int(10) UNSIGNED NOT NULL,
  `petugas_nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`petugas_id`, `petugas_nama`, `username`, `password`) VALUES
(1, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'Ari Susanto', 'ari', 'ari');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `pinjam_id` int(10) UNSIGNED NOT NULL,
  `buku_id` int(11) UNSIGNED NOT NULL,
  `anggota_id` int(11) UNSIGNED NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_jatuh_tempo` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`pinjam_id`, `buku_id`, `anggota_id`, `tgl_pinjam`, `tgl_jatuh_tempo`) VALUES
(18, 3, 8, '2019-02-04', '2019-02-27'),
(19, 13, 4, '2019-02-14', '2019-02-23'),
(20, 14, 8, '2019-02-05', '2019-02-22'),
(21, 9, 10, '2019-02-06', '2019-02-28'),
(22, 15, 11, '2019-02-02', '2019-02-28'),
(23, 10, 1, '2019-02-23', '2019-03-01'),
(24, 4, 6, '2019-02-23', '2019-02-28'),
(25, 11, 1, '2019-02-23', '2019-09-03'),
(26, 14, 6, '2019-02-23', '2019-06-28'),
(27, 11, 9, '2019-02-23', '2019-02-27'),
(28, 4, 7, '2019-02-09', '2019-03-02'),
(29, 11, 4, '2019-02-16', '2019-02-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`anggota_id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`buku_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `kembali`
--
ALTER TABLE `kembali`
  ADD PRIMARY KEY (`kembali_id`),
  ADD KEY `pinjam_id` (`pinjam_id`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`petugas_id`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`pinjam_id`),
  ADD KEY `anggota_id` (`anggota_id`),
  ADD KEY `buku_id` (`buku_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `anggota_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `buku_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `kembali`
--
ALTER TABLE `kembali`
  MODIFY `kembali_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `petugas_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `pinjam_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`kategori_id`);

--
-- Constraints for table `kembali`
--
ALTER TABLE `kembali`
  ADD CONSTRAINT `kembali_ibfk_1` FOREIGN KEY (`pinjam_id`) REFERENCES `pinjam` (`pinjam_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD CONSTRAINT `pinjam_ibfk_1` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`buku_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pinjam_ibfk_2` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`anggota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
