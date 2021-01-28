-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jan 2021 pada 22.32
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbecommerce`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `category_id` varchar(5) NOT NULL,
  `category_name` varchar(30) NOT NULL,
  `category_description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`) VALUES
('1', 'SEPATU NIKE AIR MAX97', 'Sepatu Nike Air. Gambar: Jenis sepatu Nike Air. ( ...\r\n2. Sepatu Nike Free. Gambar: Jenis sepatu Nik'),
('2', 'SEPATU VANS', 'Sepatu Vans Classic Tumble Old Skool.\r\nSepatu Vans SK8-Hi 46 MTE DX.\r\nSepatu Vans Authentic Platform'),
('3', 'SEPATU ASIC SPORT', 'Sepatu buat olahraga '),
('4', 'SEPATU CONVERSE', 'Tipe high cut : Memberikan kesan sporty dan tegas.\r\nTipe low cut : Memberikan kesan kasual dan easy ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `product_id` varchar(5) NOT NULL,
  `sku` varchar(30) NOT NULL,
  `name` varchar(60) NOT NULL,
  `brand` varchar(60) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` varchar(5) NOT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`product_id`, `sku`, `name`, `brand`, `description`, `price`, `category_id`, `image`) VALUES
('1', 'NIKE', 'NIKE', 'SEPATU NIKE AIR MAX 97', 'ORI DARI INDO', 2000000, '1', 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/d7yyh7rta3tkye7kdyka/air-max-97-mens-shoe-SD3ZmW.jpg'),
('2', 'VANS', 'VANS', 'SEPATU VANS', 'ORI DARI LUAR BUKAN INDO ', 1000000, '2', 'https://cdn-2.tstatic.net/jogja/foto/bank/images/sepatu-vans.jpg'),
('3', 'ASIC', 'ASIC', 'SEPATU ASIC', 'BUKAN ORI INDO BOS', 23000000, '3', 'https://photo.jpnn.com/arsip/watermark/2020/10/15/asics-merilis-seri-sepatu-olahraga-legendaris-gel-kayano-tm-84.png'),
('4', 'CONVERSE', 'CONVERSE', 'SEPATU CONVERSE', 'ORI INDO NI BRAND LOCAL', 800000, '4', 'https://asset.kompas.com/crops/qYszdhFy8UO1KucrzPCFtnzk4OI=/51x0:975x616/750x500/data/photo/2019/10/01/5d92b7e231b3b.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `promotion`
--

CREATE TABLE `promotion` (
  `promotion_id` varchar(5) NOT NULL,
  `product_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`promotion_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Ketidakleluasaan untuk tabel `promotion`
--
ALTER TABLE `promotion`
  ADD CONSTRAINT `promotion_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
