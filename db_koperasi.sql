-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01 Jun 2018 pada 02.20
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_koperasi`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `q_keranjang`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `q_keranjang` (
`kd_barang` varchar(6)
,`jumlah_qty` int(11)
,`subtotal` int(11)
,`nm_barang` varchar(25)
,`harga_barang` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `q_penjualan`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `q_penjualan` (
`no_transaksi` varchar(20)
,`kd_barang` varchar(6)
,`total_harga` int(11)
,`jumlah_brg` int(11)
,`bayar` int(11)
,`kembalian` int(11)
,`tanggal` date
,`jam` time
,`nm_barang` varchar(25)
,`harga_barang` varchar(20)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `kd_barang` varchar(10) NOT NULL,
  `nm_barang` varchar(25) NOT NULL,
  `harga_barang` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tgl_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`kd_barang`, `nm_barang`, `harga_barang`, `jumlah`, `tgl_masuk`) VALUES
('KB0001', 'Pulpen', '3000', 2, '2018-02-23'),
('KB0002', 'Pensil', '3000', 4, '2018-02-23'),
('KB0003', 'Almamater', '75000', 12, '2018-02-23'),
('KB0004', 'Buku', '5000', 0, '2018-02-23'),
('KB0005', 'Kertas HVS', '1000', 10, '2018-02-23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jobdesk`
--

CREATE TABLE `tb_jobdesk` (
  `kd_jobdesk` varchar(10) NOT NULL,
  `nama_jobdesk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jobdesk`
--

INSERT INTO `tb_jobdesk` (`kd_jobdesk`, `nama_jobdesk`) VALUES
('KJ0001', 'Kasir'),
('KJ0002', 'Foto Copy');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jual`
--

CREATE TABLE `tb_jual` (
  `no_transaksi` varchar(20) NOT NULL,
  `kd_barang` varchar(6) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `jumlah_brg` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jual`
--

INSERT INTO `tb_jual` (`no_transaksi`, `kd_barang`, `total_harga`, `jumlah_brg`, `bayar`, `kembalian`, `tanggal`, `jam`) VALUES
('18060100001', 'KB0001', 6000, 2, 160000, 4000, '2018-06-01', '05:34:07'),
('18060100001', 'KB0003', 150000, 2, 160000, 4000, '2018-06-01', '05:34:07'),
('18060100002', 'KB0001', 3000, 1, 100000, 4000, '2018-06-01', '05:54:02'),
('18060100002', 'KB0002', 6000, 2, 100000, 4000, '2018-06-01', '05:54:02'),
('18060100002', 'KB0003', 75000, 1, 100000, 4000, '2018-06-01', '05:54:02'),
('18060100002', 'KB0004', 10000, 2, 100000, 4000, '2018-06-01', '05:54:02'),
('18060100002', 'KB0005', 2000, 2, 100000, 4000, '2018-06-01', '05:54:02'),
('18060100003', 'KB0001', 15000, 5, 60000, 5000, '2018-06-01', '05:58:15'),
('18060100003', 'KB0002', 15000, 5, 60000, 5000, '2018-06-01', '05:58:15'),
('18060100003', 'KB0004', 25000, 5, 60000, 5000, '2018-06-01', '05:58:15'),
('18060100004', 'KB0003', 150000, 2, 160000, 5000, '2018-06-01', '06:03:15'),
('18060100004', 'KB0005', 5000, 5, 160000, 5000, '2018-06-01', '06:03:15'),
('18060100005', 'KB0001', 30000, 10, 30000, 0, '2018-06-01', '06:05:16'),
('18060100006', 'KB0002', 30000, 10, 30000, 0, '2018-06-01', '06:08:42'),
('18060100007', 'KB0003', 150000, 2, 175000, 0, '2018-06-01', '06:12:38'),
('18060100007', 'KB0004', 25000, 5, 175000, 0, '2018-06-01', '06:12:38'),
('18060100008', 'KB0003', 300000, 4, 305000, 1000, '2018-06-01', '06:14:00'),
('18060100008', 'KB0005', 4000, 4, 305000, 1000, '2018-06-01', '06:14:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jualdetail`
--

CREATE TABLE `tb_jualdetail` (
  `kd_barang` varchar(6) NOT NULL,
  `jumlah_qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_login`
--

CREATE TABLE `tb_login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_login`
--

INSERT INTO `tb_login` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', 'Administrator'),
(2, 'jalal', 'jalal', 'Pemilik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `nis` int(11) NOT NULL,
  `nm_siswa` varchar(100) NOT NULL,
  `rombel` varchar(20) NOT NULL,
  `rayon` varchar(20) NOT NULL,
  `jobdesk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_petugas`
--

INSERT INTO `tb_petugas` (`nis`, `nm_siswa`, `rombel`, `rayon`, `jobdesk`) VALUES
(11605617, 'Muhamad Jalaludin', 'RPL XI-4', 'Wikrama 1', 'Kasir'),
(12345678, 'Muhamad Sarupad', 'RPL XI-2', 'Tajur 2', 'Foto Copy');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_rayon`
--

CREATE TABLE `tb_rayon` (
  `kd_rayon` varchar(10) NOT NULL,
  `nama_rayon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_rayon`
--

INSERT INTO `tb_rayon` (`kd_rayon`, `nama_rayon`) VALUES
('KR0001', 'Wikrama 1'),
('KR0002', 'Wikrama 2'),
('KR0003', 'Wikrama 3'),
('KR0004', 'Wikrama 4'),
('KR0005', 'Tajur 1'),
('KR0006', 'Tajur 2'),
('KR0007', 'Tajur 3'),
('KR0008', 'Tajur 4'),
('KR0009', 'Tajur 5'),
('KR0010', 'Sukasari 1'),
('KR0011', 'Sukasari 2'),
('KR0012', 'Ciawi 1'),
('KR0013', 'Ciawi 2'),
('KR0014', 'Ciawi 3'),
('KR0015', 'Ciawi 4'),
('KR0016', 'Ciawi 5'),
('KR0017', 'Cibedug 1'),
('KR0018', 'Cibedug 2'),
('KR0019', 'Cibedug 3'),
('KR0020', 'Cicurug 1'),
('KR0021', 'Cicurug 2'),
('KR0022', 'Cicurug 3'),
('KR0023', 'Cicurug 4'),
('KR0024', 'Cicurug 5'),
('KR0025', 'Cicurug 6'),
('KR0026', 'Cicurug 7'),
('KR0027', 'Cisarua 1'),
('KR0028', 'Cisarua 2'),
('KR0029', 'Cisarua 3'),
('KR0030', 'Cisarua 4'),
('KR0031', 'Cisarua 5'),
('KR0032', 'Cisarua 6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_rombel`
--

CREATE TABLE `tb_rombel` (
  `kd_rombel` varchar(10) NOT NULL,
  `nama_rombel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_rombel`
--

INSERT INTO `tb_rombel` (`kd_rombel`, `nama_rombel`) VALUES
('KL0001', 'RPL X-1'),
('KL0002', 'RPL X-2'),
('KL0003', 'RPL X-3'),
('KL0004', 'RPL X-4'),
('KL0005', 'TKJ X-1'),
('KL0006', 'TKJ X-2'),
('KL0007', 'TKJ X-3'),
('KL0008', 'TKJ X-4'),
('KL0009', 'OTKP X-1'),
('KL0010', 'OTKP X-2'),
('KL0011', 'MMD X-1'),
('KL0012', 'MMD X-2'),
('KL0013', 'BDP X-1'),
('KL0014', 'BDP X-2'),
('KL0015', 'HTL X-1'),
('KL0016', 'TBG X-1'),
('KL0017', 'RPL XI-1'),
('KL0018', 'RPL XI-2'),
('KL0019', 'RPL XI-3'),
('KL0020', 'RPL XI-4'),
('KL0021', 'TKJ XI-1'),
('KL0022', 'TKJ XI-2'),
('KL0023', 'APK XI-1'),
('KL0024', 'APK XI-2'),
('KL0025', 'APK XI-3'),
('KL0026', 'APK XI-4'),
('KL0027', 'MMD XI-1'),
('KL0028', 'MMD XI-2'),
('KL0029', 'MMD XI-3'),
('KL0030', 'PMN XI-1'),
('KL0031', 'PMN XI-2');

-- --------------------------------------------------------

--
-- Struktur untuk view `q_keranjang`
--
DROP TABLE IF EXISTS `q_keranjang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q_keranjang`  AS  select `tb_jualdetail`.`kd_barang` AS `kd_barang`,`tb_jualdetail`.`jumlah_qty` AS `jumlah_qty`,`tb_jualdetail`.`subtotal` AS `subtotal`,`tb_barang`.`nm_barang` AS `nm_barang`,`tb_barang`.`harga_barang` AS `harga_barang` from (`tb_jualdetail` join `tb_barang` on((`tb_jualdetail`.`kd_barang` = `tb_barang`.`kd_barang`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `q_penjualan`
--
DROP TABLE IF EXISTS `q_penjualan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q_penjualan`  AS  select `tb_jual`.`no_transaksi` AS `no_transaksi`,`tb_jual`.`kd_barang` AS `kd_barang`,`tb_jual`.`total_harga` AS `total_harga`,`tb_jual`.`jumlah_brg` AS `jumlah_brg`,`tb_jual`.`bayar` AS `bayar`,`tb_jual`.`kembalian` AS `kembalian`,`tb_jual`.`tanggal` AS `tanggal`,`tb_jual`.`jam` AS `jam`,`tb_barang`.`nm_barang` AS `nm_barang`,`tb_barang`.`harga_barang` AS `harga_barang` from (`tb_jual` join `tb_barang` on((`tb_jual`.`kd_barang` = `tb_barang`.`kd_barang`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `tb_jobdesk`
--
ALTER TABLE `tb_jobdesk`
  ADD PRIMARY KEY (`kd_jobdesk`);

--
-- Indexes for table `tb_jualdetail`
--
ALTER TABLE `tb_jualdetail`
  ADD KEY `kd_barang` (`kd_barang`);

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`nis`),
  ADD KEY `kd_jobdesk` (`jobdesk`);

--
-- Indexes for table `tb_rayon`
--
ALTER TABLE `tb_rayon`
  ADD PRIMARY KEY (`kd_rayon`);

--
-- Indexes for table `tb_rombel`
--
ALTER TABLE `tb_rombel`
  ADD PRIMARY KEY (`kd_rombel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_jualdetail`
--
ALTER TABLE `tb_jualdetail`
  ADD CONSTRAINT `tb_jualdetail_ibfk_1` FOREIGN KEY (`kd_barang`) REFERENCES `tb_barang` (`kd_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
