-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jul 2020 pada 14.03
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kartupelajar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE `identitas` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `title` varchar(225) NOT NULL,
  `sekolah` varchar(225) NOT NULL,
  `kepsek` varchar(225) NOT NULL,
  `nip` varchar(225) NOT NULL,
  `jln` varchar(225) NOT NULL,
  `kel` varchar(225) NOT NULL,
  `kec` varchar(225) NOT NULL,
  `kab` varchar(225) NOT NULL,
  `prov` varchar(225) NOT NULL,
  `pos` varchar(225) NOT NULL,
  `telp` varchar(225) NOT NULL,
  `hp` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `web` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`id`, `gambar`, `title`, `sekolah`, `kepsek`, `nip`, `jln`, `kel`, `kec`, `kab`, `prov`, `pos`, `telp`, `hp`, `email`, `web`) VALUES
(1, 'daerah.png', 'Kartu Pelajar', 'MAN 5 KUBU RAYA', 'Fauzan, S.Pd', '11011011200021221', 'Jln Adisucipto', 'Teluk Kapuas', 'Sungai Raya', 'Kubu Raya', 'Kalimantan Barat', '78391', '085787802312', '085256651656', 'fauzanf006@gmail.com', 'mastadrisululum.sch.id');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lupa_password`
--

CREATE TABLE `lupa_password` (
  `id` int(11) NOT NULL,
  `nama_perusahaan` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `telp` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lupa_password`
--

INSERT INTO `lupa_password` (`id`, `nama_perusahaan`, `email`, `telp`) VALUES
(1, 'Yoyo Pudding', 'info@yoyopudding.com', '085266446655');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `link` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `link`) VALUES
(1, 'printkartupelajar'),
(2, 'printkartuperpus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permintaan_akun`
--

CREATE TABLE `permintaan_akun` (
  `id` int(11) NOT NULL,
  `nama_perusahaan` varchar(225) NOT NULL,
  `nama_pemilik` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `telp` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stempel`
--

CREATE TABLE `stempel` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stempel`
--

INSERT INTO `stempel` (`id`, `gambar`) VALUES
(1, 'stempel926.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tkapel`
--

CREATE TABLE `tkapel` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tkapel`
--

INSERT INTO `tkapel` (`id`, `gambar`) VALUES
(1, 'bismillah.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tkaper`
--

CREATE TABLE `tkaper` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tkaper`
--

INSERT INTO `tkaper` (`id`, `gambar`) VALUES
(1, 'bismillah.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ttangan`
--

CREATE TABLE `ttangan` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ttangan`
--

INSERT INTO `ttangan` (`id`, `gambar`) VALUES
(1, 'ttdskl586.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `nis` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nisn` varchar(225) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tmp_lhr` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_lhr` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jk` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(225) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `password`, `nis`, `nisn`, `nama_lengkap`, `tmp_lhr`, `tgl_lhr`, `jk`, `email`, `alamat`, `no_telp`, `gambar`, `level`, `blokir`, `id_session`) VALUES
('admin', 'admin', '', '', 'Administrator', '', '', '', 'bhs.11011011@gmail.com', '', '085256005691', 'twh.png', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7'),
('user18', 'pass18', '12363', '121423542', 'Elisabet Ester', 'Manado', '6/12/1993', 'Perempuan', 'email@gmail.com', 'Tomohon', '85256651673', 'blank.png', 'user', 'N', '12363'),
('user19', 'pass19', '12364', '121423543', 'Jafray Pelealu', 'Manado', '7/12/1993', 'Laki-laki', 'Tomohon', 'Tomohon', '85256651674', 'blank.png', 'user', 'N', '12364'),
('user17', 'pass17', '12362', '121423541', 'Gandy Bomba', 'Amurang', '5/12/1993', 'Laki-laki', 'email@gmail.com', 'Tomohon', '85256651672', 'blank.png', 'user', 'N', '12362'),
('user16', 'pass16', '12361', '121423540', 'Ko Hengky', 'Manado', '4/12/1993', 'Laki-laki', 'email@gmail.com', 'Tomohon', '85256651671', 'blank.png', 'user', 'N', '12361'),
('user15', 'pass15', '12360', '121423539', 'Rina Sengkey', 'Manado', '3/12/1993', 'Perempuan', 'email@gmail.com', 'Tomohon', '85256651670', 'blank.png', 'user', 'N', '12360'),
('user14', 'pass14', '12359', '121423538', 'Jois Mamahit', 'Tombatu', '2/12/1993', 'Perempuan', 'email@gmail.com', 'Tomohon', '85256651669', 'blank.png', 'user', 'N', '12359'),
('user13', 'pass13', '12358', '121423537', 'Tri Sumangkut', 'Manado', '1/12/1993', 'Perempuan', 'email@gmail.com', 'Tomohon', '85256651668', 'blank.png', 'user', 'N', '12358'),
('user12', 'pass12', '12357', '121423536', 'Fikler Gusaw', 'Buli', '12/12/1992', 'Laki-laki', 'email@gmail.com', 'Tomohon', '85256651667', 'blank.png', 'user', 'N', '12357'),
('user11', 'pass11', '12356', '121423535', 'Yursen Batawi', 'Manado', '11/12/1992', 'Laki-laki', 'email@gmail.com', 'Tomohon', '85256651666', 'blank.png', 'user', 'N', '12356'),
('user10', 'pass10', '12355', '121423534', 'Mariano Lala', 'Manado', '10/12/1992', 'Laki-laki', 'email@gmail.com', 'Tomohon', '85256651665', 'blank.png', 'user', 'N', '12355'),
('user9', 'pass9', '12354', '121423533', 'Aprilliano Rares', 'Manado', '9/12/1992', 'Laki-laki', 'email@gmail.com', 'Tomohon', '85256651664', 'blank.png', 'user', 'N', '12354'),
('user8', 'pass8', '12353', '121423532', 'Arido Lapod', 'Manado', '8/12/1992', 'Laki-laki', 'email@gmail.com', 'Tomohon', '85256651663', 'blank.png', 'user', 'N', '12353'),
('user7', 'pass7', '12352', '121423531', 'Rekos Susanto', 'Gorontalo', '7/12/1992', 'Laki-laki', 'email@gmail.com', 'Tomohon', '85256651662', 'blank.png', 'user', 'N', '12352'),
('user6', 'pass6', '12351', '121423530', 'Livi Pungus', 'Manado', '6/12/1992', 'Perempuan', 'email@gmail.com', 'Tomohon', '85256651661', 'blank.png', 'user', 'N', '12351'),
('user5', 'pass5', '12350', '121423529', 'Kiki Pelealu', 'Manado', '5/12/1992', 'Laki-laki', 'email@gmail.com', 'Tomohon', '85256651660', 'blank.png', 'user', 'N', '12350'),
('user1', 'user1', '12346', '121423525', 'Bambang Saputra', 'Gorontalo', '', 'Laki-laki', 'email@gmail.com', 'Tomohon', '85256651656', '3x4.jpg', 'user', 'N', '12346'),
('user2', 'pass2', '12347', '121423526', 'Arthnisandy Pondaag', 'Manado', '2/12/1992', 'Perempuan', 'email@gmail.com', 'Tomohon', '85256651657', 'blank.png', 'user', 'N', '12347'),
('user3', 'pass3', '12348', '121423527', 'Julia Ransulangi', 'Manado', '3/12/1992', 'Perempuan', 'email@gmail.com', 'Tomohon', '85256651658', 'blank.png', 'user', 'N', '12348'),
('user4', 'pass4', '12349', '121423528', 'Fidel Raja', 'Buli', '4/12/1992', 'Laki-laki', 'email@gmail.com', 'Tomohon', '85256651659', 'blank.png', 'user', 'N', '12349'),
('‰PNG', '', '', '', '', '', '', '', '', '', '', '', 'user', 'N', ''),
('\Z', '', '', '', '', '', '', '', '', '', '', '', 'user', 'N', ''),
('\0\0\0\rIHDR\0\0î\0\0\0ó\0\0\0ÙÊ“¦\0\0\0	pHYs\0\0.#\0\0.#x¥?v\0\0', '', '', '', '', '', '', '', '', '', '', '', 'user', 'N', ''),
('OiCCPPhotoshop ICC profile\0\0xÚSgTSé=÷ÞôBKˆ€”KoR', 'Š', '', '', '', '', '', '', '', '', '', '', 'user', 'N', ''),
('Øä!¢Žƒ£ˆŠÊûá{£kÖ¼÷æÍþµ×>ç¬ó³ÏÀ–H3Q5€©BàƒÇÄ', '', '', '', '', '', '', '', '', '', '', '', 'user', 'N', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lupa_password`
--
ALTER TABLE `lupa_password`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permintaan_akun`
--
ALTER TABLE `permintaan_akun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stempel`
--
ALTER TABLE `stempel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tkapel`
--
ALTER TABLE `tkapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tkaper`
--
ALTER TABLE `tkaper`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ttangan`
--
ALTER TABLE `ttangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `lupa_password`
--
ALTER TABLE `lupa_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `permintaan_akun`
--
ALTER TABLE `permintaan_akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `stempel`
--
ALTER TABLE `stempel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tkapel`
--
ALTER TABLE `tkapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tkaper`
--
ALTER TABLE `tkaper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ttangan`
--
ALTER TABLE `ttangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
