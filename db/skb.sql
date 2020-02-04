-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 04 Feb 2020 pada 05.56
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jadwal`
--

CREATE TABLE `tb_jadwal` (
  `jadwal_id` int(11) NOT NULL,
  `rombel_id` int(11) NOT NULL,
  `jadwal_hari` varchar(40) DEFAULT NULL,
  `mapel_id` int(11) NOT NULL,
  `jadwal_jammulai` varchar(10) DEFAULT NULL,
  `jadwal_jamselesai` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jadwal`
--

INSERT INTO `tb_jadwal` (`jadwal_id`, `rombel_id`, `jadwal_hari`, `mapel_id`, `jadwal_jammulai`, `jadwal_jamselesai`) VALUES
(7, 1, 'Jumat', 3, '07.00', '09.00'),
(8, 1, 'Jumat', 6, '09.00', '11.30'),
(9, 1, 'Senin', 7, '08.00', '10.30'),
(10, 1, 'Senin', 8, '10.30', '12.00'),
(11, 1, 'Rabu', 9, '08.00', '09.30'),
(12, 1, '-', 10, '-', '-'),
(13, 1, '-', 11, '-', '-'),
(14, 1, '-', 12, '-', '-'),
(15, 1, '-', 13, '-', '-'),
(16, 1, '-', 14, '-', '-'),
(37, 2, NULL, 3, NULL, NULL),
(38, 2, NULL, 6, NULL, NULL),
(39, 2, NULL, 7, NULL, NULL),
(40, 2, NULL, 8, NULL, NULL),
(41, 2, NULL, 10, NULL, NULL),
(42, 2, NULL, 11, NULL, NULL),
(43, 2, NULL, 12, NULL, NULL),
(44, 2, NULL, 13, NULL, NULL),
(45, 2, NULL, 14, NULL, NULL),
(46, 2, NULL, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(11) NOT NULL,
  `paket_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`kelas_id`, `kelas_nama`, `paket_id`) VALUES
(1, 'Kelas 4', 1),
(2, 'Kelas 5', 1),
(3, 'Kelas 6', 1),
(4, 'Kelas 7', 2),
(5, 'Kelas 8', 2),
(6, 'Kelas 9', 2),
(7, 'Kelas 10', 3),
(8, 'Kelas 11', 3),
(9, 'Kelas 12', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mapel`
--

CREATE TABLE `tb_mapel` (
  `mapel_id` int(11) NOT NULL,
  `mapel_kode` char(10) NOT NULL,
  `mapel_nama` varchar(50) NOT NULL,
  `mapel_kkm` set('70') NOT NULL,
  `paket_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_mapel`
--

INSERT INTO `tb_mapel` (`mapel_id`, `mapel_kode`, `mapel_nama`, `mapel_kkm`, `paket_id`) VALUES
(3, 'MP1001', 'Seni Budaya', '70', 1),
(6, 'MP1002', 'Bahasa Jawa', '70', 1),
(7, 'MP1003', 'IPA', '70', 1),
(8, 'MP1004', 'IPS', '70', 1),
(9, 'MP1005', 'Bahasa Indonesia', '70', 1),
(10, 'MP1006', 'Penjasorkes', '70', 1),
(11, 'MP1007', 'Bahasa Inggris', '70', 1),
(12, 'MP1008', 'PAI', '70', 1),
(13, 'MP1009', 'PKN', '70', 1),
(14, 'MP1010', 'Matematika', '70', 1),
(15, 'MP2001', 'Matematika', '70', 2),
(16, 'MP2002', 'Bahasa Indonesia', '70', 2),
(17, 'MP2003', 'Bahasa Inggris', '70', 2),
(18, 'MP2004', 'IPA', '70', 2),
(19, 'MP2005', 'IPS', '70', 2),
(20, 'MP2006', 'PKN', '70', 2),
(21, 'MP2007', 'PJOK', '70', 2),
(22, 'MP2008', 'PAI', '70', 2),
(23, 'MP2009', 'Seni Budaya', '70', 2),
(24, 'MP2010', 'Bahasa Jawa', '70', 2),
(25, 'MP3001', 'PAI', '70', 3),
(26, 'MP3002', 'PKN', '70', 3),
(27, 'MP3003', 'Bahasa Indonesia', '70', 3),
(28, 'MP3004', 'Bahasa Inggris', '70', 3),
(29, 'MP3005', 'Bahasa Jawa', '70', 3),
(30, 'MP3006', 'Sejarah', '70', 3),
(31, 'MP3007', 'Matematika', '70', 3),
(32, 'MP3008', 'Sosiologi', '70', 3),
(33, 'MP3009', 'Geografi', '70', 3),
(34, 'MP3010', 'Ekonomi', '70', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai`
--

CREATE TABLE `tb_nilai` (
  `nilai_id` int(11) NOT NULL,
  `nis` char(12) NOT NULL,
  `rombel_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `nilai_tugas` varchar(10) DEFAULT NULL,
  `nilai_pts` varchar(10) DEFAULT NULL,
  `nilai_pas` varchar(10) DEFAULT NULL,
  `nilai_pat` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_nilai`
--

INSERT INTO `tb_nilai` (`nilai_id`, `nis`, `rombel_id`, `kelas_id`, `semester_id`, `mapel_id`, `nilai_tugas`, `nilai_pts`, `nilai_pas`, `nilai_pat`) VALUES
(1, '012002040001', 2, 7, 1, 15, '85', '65', '70', '60'),
(2, '022002040001', 4, 5, 1, 15, '80', '65', '80', '77'),
(3, '032002040001', 8, 9, 1, 26, '77', '80', '65', '90');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_paket`
--

CREATE TABLE `tb_paket` (
  `paket_id` int(11) NOT NULL,
  `paket_nama` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_paket`
--

INSERT INTO `tb_paket` (`paket_id`, `paket_nama`) VALUES
(1, 'PAKET A'),
(2, 'PAKET B'),
(3, 'PAKET C');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pamong_belajar`
--

CREATE TABLE `tb_pamong_belajar` (
  `nik` char(16) NOT NULL,
  `pamong_nama` varchar(50) NOT NULL,
  `pamong_tempat_lhr` varchar(30) NOT NULL,
  `pamong_tanggal_lhr` date NOT NULL,
  `pamong_jenkel` enum('Laki-Laki','Perempuan') NOT NULL,
  `pamong_agama` varchar(12) NOT NULL,
  `pamong_alamat` varchar(100) NOT NULL,
  `pamong_no_hp` varchar(14) NOT NULL,
  `pamong_jabatan` enum('Pamong Belajar','Tutor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pamong_belajar`
--

INSERT INTO `tb_pamong_belajar` (`nik`, `pamong_nama`, `pamong_tempat_lhr`, `pamong_tanggal_lhr`, `pamong_jenkel`, `pamong_agama`, `pamong_alamat`, `pamong_no_hp`, `pamong_jabatan`) VALUES
('3402060102990001', 'Suwardi', 'Bantul', '1980-01-01', 'Laki-Laki', 'ISLAM', 'Ringinharjo  Bantul', '085679871109', 'Pamong Belajar'),
('3402060109870001', 'Kasmakto', 'Bantul', '1973-07-11', 'Laki-Laki', 'ISLAM', 'Sewon Bantul', '089611094209', 'Pamong Belajar'),
('3402060302690001', 'Hestri Tias Utami', 'Bantul', '1987-07-10', 'Perempuan', 'ISLAM', 'Umbulharjo Yorgyakarta', '089611094200', 'Tutor'),
('3402060302990001', 'Bulan Balkis', 'Surabaya', '1985-06-19', 'Perempuan', 'ISLAM', 'Sewon Bantul', '085629807712', 'Pamong Belajar'),
('3402060607990001', 'Dewi Usmawati', 'Bantul', '1982-10-13', 'Perempuan', 'ISLAM', 'Imogiri Bantul', '089611094208', 'Pamong Belajar'),
('3402060667890001', 'Erny Isnainy', 'Bantul', '1988-09-29', 'Perempuan', 'ISLAM', 'Sewon Bantul', '089775987278', 'Tutor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pendaftar`
--

CREATE TABLE `tb_pendaftar` (
  `no_pendaftar` varchar(50) NOT NULL,
  `paket_kesetaraan` enum('A','B','C','') NOT NULL,
  `kelas_kesetaraan` varchar(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lhr` varchar(30) NOT NULL,
  `tanggal_lhr` date NOT NULL,
  `agama` varchar(12) NOT NULL,
  `jenkel` enum('Laki-Laki','Perempuan') NOT NULL,
  `alamat_domisili` varchar(100) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `tgl_pendaftaran` date NOT NULL,
  `asal_sekolah` varchar(30) NOT NULL,
  `putus_sekolah_kelas` varchar(20) NOT NULL,
  `putus_sekolah_semester` varchar(20) NOT NULL,
  `alamat_sekolah` varchar(100) NOT NULL,
  `bertempat_tinggal` varchar(20) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(20) NOT NULL,
  `pekerjaan_ibu` varchar(20) NOT NULL,
  `alamat_ortu` varchar(100) NOT NULL,
  `no_hp_ortuwali` varchar(14) NOT NULL,
  `status_pendaftar` varchar(15) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `akte` varchar(40) NOT NULL,
  `kk` varchar(40) NOT NULL,
  `ijazah_raport` varchar(40) NOT NULL,
  `sk_pindah_sekolah` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pendaftar`
--

INSERT INTO `tb_pendaftar` (`no_pendaftar`, `paket_kesetaraan`, `kelas_kesetaraan`, `nama`, `tempat_lhr`, `tanggal_lhr`, `agama`, `jenkel`, `alamat_domisili`, `no_hp`, `tgl_pendaftaran`, `asal_sekolah`, `putus_sekolah_kelas`, `putus_sekolah_semester`, `alamat_sekolah`, `bertempat_tinggal`, `nama_ayah`, `nama_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `alamat_ortu`, `no_hp_ortuwali`, `status_pendaftar`, `foto`, `akte`, `kk`, `ijazah_raport`, `sk_pindah_sekolah`) VALUES
('A202002040001', 'A', 'Kelas 5', 'Lala Kuswara', 'Sleman', '1995-02-04', 'ISLAM', 'Perempuan', 'Jalan Imogiri Barat KM 9 Bantul', '085678345241', '2020-02-04', 'SD Muhammadiyah 1 Bantul', 'Kelas 5', 'Ganjil', 'Jalan Parangtritis KM 20', 'Ortu', 'Sutrisno', 'Yanita', 'Buruh pabrik', 'Ibu Rumah Tangga', 'Jalan Imogiri Barat KM 9 Bantul', '085289674322', 'Diterima', 'default.jpg', 'akta.pdf', 'kk.pdf', 'rapot.pdf', 'sk.pdf'),
('B202002040001', 'B', 'Kelas 8', 'mefri', 'Sleman', '1995-05-07', 'ISLAM', 'Laki-Laki', 'Gilangharjo,pandak Bantul', '089679562788', '2020-02-04', 'SMPN 1 Pajangan Bantul', 'Kelas 7', 'Genap', 'Jalan Pajangan Bantul', 'Ortu', 'Paijo', 'Painem', 'Buruh', 'Ibu Rumah Tangga', 'Gilangharjo,pandak Bantul', '089679322309', 'Diterima', 'default.jpg', 'akta.pdf', 'kk.pdf', 'ijazah.pdf', 'sk.pdf'),
('C202002040001', 'C', 'Kelas 12', 'Arumti Bunga Lestari', 'Bantul', '1997-03-01', 'KRISTEN', 'Perempuan', 'Jalan Parangtritis KM 5', '081332678432', '2020-02-04', 'SMA Muhammadiyah Bantul', '12', 'Ganjil', 'Jalan Parangtritis KM 10', 'Ortu', 'Sukardi', 'Endang', 'Wiraswasta', 'Ibu Rumah Tangga', 'Jalan Parangtritis KM 5', '085235786901', 'Diterima', 'default.jpg', 'akta.pdf', 'kk.pdf', 'ijazah.pdf', 'sk.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) NOT NULL,
  `pengguna_username` varchar(30) NOT NULL,
  `pengguna_password` char(32) NOT NULL,
  `pengguna_level` enum('Admin','Pamong','Siswa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_username`, `pengguna_password`, `pengguna_level`) VALUES
(11, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin'),
(15, 'Suwardi', '3402060102990001', '05f52baeaded2245277ec9ca1daed0de', 'Pamong'),
(16, 'Bulan Balkis', '3402060302990001', '61d5614e938035fe5d920b810b332410', 'Pamong'),
(17, 'Dewi Usmawati', '3402060607990001', '29af09e3ecf907fbc68b350f031a1414', 'Pamong'),
(18, 'Kasmakto', '3402060109870001', '383c015121f23ee52839310bbf8b2172', 'Pamong'),
(19, 'Hestri Tias Utami', '3402060302690001', '887cbc64fec8dc60b884069cbb8fea05', 'Pamong'),
(20, 'Erny Isnainy', '3402060667890001', '77e2e59cb32479953e86f9b2543e0290', 'Pamong'),
(24, 'Lala Kuswara', '012002040001', 'c8c00142c1d463511caf03f1c6275b63', 'Siswa'),
(25, 'mefri', '022002040001', 'dcc2a0c1d663b5e04deead06640daad6', 'Siswa'),
(26, 'Arumti Bunga Lestari', '032002040001', 'db6dd483396bb938ba52665aab03ff16', 'Siswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_rombel`
--

CREATE TABLE `tb_rombel` (
  `rombel_id` int(11) NOT NULL,
  `ta_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `nik` char(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_rombel`
--

INSERT INTO `tb_rombel` (`rombel_id`, `ta_id`, `kelas_id`, `nik`) VALUES
(1, 5, 1, '3402060302990001'),
(2, 5, 2, '3402060302990001'),
(3, 5, 4, '3402060109870001'),
(4, 5, 5, '3402060109870001'),
(6, 5, 7, '3402060102990001'),
(7, 5, 8, '3402060102990001'),
(8, 5, 9, '3402060102990001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_rombel_siswa`
--

CREATE TABLE `tb_rombel_siswa` (
  `romsiswa_id` int(11) NOT NULL,
  `rombel_id` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_rombel_siswa`
--

INSERT INTO `tb_rombel_siswa` (`romsiswa_id`, `rombel_id`, `nis`) VALUES
(1, 2, '012002040001'),
(2, 4, '022002040001'),
(3, 8, '032002040001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_semester`
--

CREATE TABLE `tb_semester` (
  `semester_id` int(11) NOT NULL,
  `semester` varchar(7) NOT NULL,
  `semester_status` varchar(12) NOT NULL DEFAULT 'Tidak Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_semester`
--

INSERT INTO `tb_semester` (`semester_id`, `semester`, `semester_status`) VALUES
(1, 'Ganjil', 'Aktif'),
(2, 'Genap', 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `nis` char(12) NOT NULL,
  `no_pendaftar` varchar(50) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `siswa_status` enum('Aktif','Tidak Aktif','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`nis`, `no_pendaftar`, `nama_siswa`, `siswa_status`) VALUES
('012002040001', 'A202002040001', 'Lala Kuswara', 'Aktif'),
('022002040001', 'B202002040001', 'mefri', 'Aktif'),
('032002040001', 'C202002040001', 'Arumti Bunga Lestari', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tahunajaran`
--

CREATE TABLE `tb_tahunajaran` (
  `ta_id` int(11) NOT NULL,
  `ta_nama` varchar(12) NOT NULL,
  `ta_status` varchar(12) NOT NULL DEFAULT 'Tidak Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_tahunajaran`
--

INSERT INTO `tb_tahunajaran` (`ta_id`, `ta_nama`, `ta_status`) VALUES
(1, '2016/2017', 'Tidak Aktif'),
(2, '2017/2018', 'Tidak Aktif'),
(3, '2018/2019', 'Tidak Aktif'),
(4, '2019/2020', 'Tidak Aktif'),
(5, '2020/2021', 'Aktif'),
(6, '2021/2022', 'Tidak Aktif'),
(8, '2022/2023', 'Tidak Aktif'),
(9, '2023/2024', 'Tidak Aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD PRIMARY KEY (`jadwal_id`),
  ADD KEY `kode_ta` (`rombel_id`),
  ADD KEY `kode_mapel` (`mapel_id`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`kelas_id`),
  ADD KEY `paket_id` (`paket_id`);

--
-- Indexes for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`mapel_id`),
  ADD KEY `paket_id` (`paket_id`);

--
-- Indexes for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD PRIMARY KEY (`nilai_id`),
  ADD KEY `no_induk` (`nis`),
  ADD KEY `kode_ta` (`kelas_id`),
  ADD KEY `id_detail_mapel` (`mapel_id`),
  ADD KEY `semester_id` (`semester_id`),
  ADD KEY `rombel_id` (`rombel_id`);

--
-- Indexes for table `tb_paket`
--
ALTER TABLE `tb_paket`
  ADD PRIMARY KEY (`paket_id`);

--
-- Indexes for table `tb_pamong_belajar`
--
ALTER TABLE `tb_pamong_belajar`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `tb_pendaftar`
--
ALTER TABLE `tb_pendaftar`
  ADD PRIMARY KEY (`no_pendaftar`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indexes for table `tb_rombel`
--
ALTER TABLE `tb_rombel`
  ADD PRIMARY KEY (`rombel_id`),
  ADD KEY `ta_id` (`ta_id`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `nis` (`nik`);

--
-- Indexes for table `tb_rombel_siswa`
--
ALTER TABLE `tb_rombel_siswa`
  ADD PRIMARY KEY (`romsiswa_id`),
  ADD KEY `rombel_id` (`rombel_id`),
  ADD KEY `nis` (`nis`);

--
-- Indexes for table `tb_semester`
--
ALTER TABLE `tb_semester`
  ADD PRIMARY KEY (`semester_id`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`nis`),
  ADD KEY `no_pendaftar` (`no_pendaftar`);

--
-- Indexes for table `tb_tahunajaran`
--
ALTER TABLE `tb_tahunajaran`
  ADD PRIMARY KEY (`ta_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  MODIFY `jadwal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  MODIFY `mapel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  MODIFY `nilai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_paket`
--
ALTER TABLE `tb_paket`
  MODIFY `paket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `tb_rombel`
--
ALTER TABLE `tb_rombel`
  MODIFY `rombel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_rombel_siswa`
--
ALTER TABLE `tb_rombel_siswa`
  MODIFY `romsiswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_semester`
--
ALTER TABLE `tb_semester`
  MODIFY `semester_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_tahunajaran`
--
ALTER TABLE `tb_tahunajaran`
  MODIFY `ta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD CONSTRAINT `tb_jadwal_ibfk_1` FOREIGN KEY (`rombel_id`) REFERENCES `tb_rombel` (`rombel_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD CONSTRAINT `tb_kelas_ibfk_1` FOREIGN KEY (`paket_id`) REFERENCES `tb_paket` (`paket_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD CONSTRAINT `tb_mapel_ibfk_1` FOREIGN KEY (`paket_id`) REFERENCES `tb_paket` (`paket_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD CONSTRAINT `tb_nilai_ibfk_1` FOREIGN KEY (`rombel_id`) REFERENCES `tb_rombel` (`rombel_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_nilai_ibfk_2` FOREIGN KEY (`nis`) REFERENCES `tb_siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_nilai_ibfk_3` FOREIGN KEY (`semester_id`) REFERENCES `tb_semester` (`semester_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_nilai_ibfk_4` FOREIGN KEY (`mapel_id`) REFERENCES `tb_mapel` (`mapel_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_rombel`
--
ALTER TABLE `tb_rombel`
  ADD CONSTRAINT `tb_rombel_ibfk_1` FOREIGN KEY (`kelas_id`) REFERENCES `tb_kelas` (`kelas_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_rombel_ibfk_2` FOREIGN KEY (`nik`) REFERENCES `tb_pamong_belajar` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_rombel_ibfk_3` FOREIGN KEY (`ta_id`) REFERENCES `tb_tahunajaran` (`ta_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_rombel_siswa`
--
ALTER TABLE `tb_rombel_siswa`
  ADD CONSTRAINT `tb_rombel_siswa_ibfk_1` FOREIGN KEY (`rombel_id`) REFERENCES `tb_rombel` (`rombel_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_rombel_siswa_ibfk_2` FOREIGN KEY (`nis`) REFERENCES `tb_siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD CONSTRAINT `tb_siswa_ibfk_1` FOREIGN KEY (`no_pendaftar`) REFERENCES `tb_pendaftar` (`no_pendaftar`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;