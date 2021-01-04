-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Inang: localhost
-- Waktu pembuatan: 26 Okt 2019 pada 11.29
-- Versi Server: 5.5.25a
-- Versi PHP: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `aes`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `file`
--

CREATE TABLE IF NOT EXISTS `file` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) DEFAULT NULL,
  `file_name_source` varchar(255) DEFAULT NULL,
  `file_name_finish` varchar(255) DEFAULT NULL,
  `file_url` varchar(255) DEFAULT NULL,
  `file_size` float DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `tgl_upload` timestamp NULL DEFAULT NULL,
  `status` enum('1','2') DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_file`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data untuk tabel `file`
--

INSERT INTO `file` (`id_file`, `username`, `file_name_source`, `file_name_finish`, `file_url`, `file_size`, `password`, `tgl_upload`, `status`, `keterangan`) VALUES
(40, 'admin', '13260-bilangan-acak.pdf', '72190-bilangan-acak.rda', 'file_encrypt/72190-bilangan-acak.rda', 170.016, '202cb962ac59075b', '2019-10-26 08:31:29', '1', 'PASS : 123'),
(39, 'admin', '83746-read-me.txt', '5269-read-me.rda', 'file_encrypt/5269-read-me.rda', 1.625, '202cb962ac59075b', '2019-10-26 08:30:55', '2', 'PASS : 123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(15) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `join_date` timestamp NULL DEFAULT NULL,
  `last_activity` timestamp NULL DEFAULT NULL,
  `status` enum('1','2') DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `password`, `fullname`, `job_title`, `join_date`, `last_activity`, `status`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'Data Security', '2019-04-10 08:48:55', '2019-10-26 09:28:54', '1'),
('user', 'ee11cbb19052e40b07aac0ca060c23ee', 'username', 'usr', '2019-09-30 17:00:00', '2019-10-26 09:05:47', '2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
