-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Agu 2024 pada 08.14
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spbe`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `files`
--

INSERT INTO `files` (`id`, `file`, `createdAt`, `updatedAt`) VALUES
(1, '', '2024-07-26 02:51:42', '2024-07-26 02:51:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeris`
--

CREATE TABLE `galeris` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal` datetime NOT NULL,
  `gambarGaleri` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `galeris`
--

INSERT INTO `galeris` (`id`, `nama`, `tanggal`, `gambarGaleri`) VALUES
('083c99dc-e6bc-4a8a-bc35-a954ebe4963b', 'Kegiatan 1', '2024-07-26 03:38:37', 'https://res.cloudinary.com/dpoukjavt/image/upload/v1721965128/spbe/images/1721965126292.png'),
('0c1078f4-f6ec-4aa4-8df9-4cee0a95c3e7', 'Kegiatan 3', '2024-07-26 03:39:25', 'https://res.cloudinary.com/dpoukjavt/image/upload/v1721965177/spbe/images/1721965174864.png'),
('a179c067-964f-4196-a1f0-a44ab7868d4f', 'Kegiatan 2', '2024-07-26 03:38:57', 'https://res.cloudinary.com/dpoukjavt/image/upload/v1721965155/spbe/images/1721965152992.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `images`
--

INSERT INTO `images` (`id`, `image`, `createdAt`, `updatedAt`) VALUES
(1, '', '2024-07-26 02:51:30', '2024-07-26 02:51:30'),
(2, 'https://res.cloudinary.com/dpoukjavt/image/upload/v1721965128/spbe/images/1721965126292.png', '2024-07-26 03:38:49', '2024-07-26 03:38:49'),
(3, 'https://res.cloudinary.com/dpoukjavt/image/upload/v1721965155/spbe/images/1721965152992.png', '2024-07-26 03:39:16', '2024-07-26 03:39:16'),
(4, 'https://res.cloudinary.com/dpoukjavt/image/upload/v1721965177/spbe/images/1721965174864.png', '2024-07-26 03:39:37', '2024-07-26 03:39:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `indikators`
--

CREATE TABLE `indikators` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `aspek` int(11) NOT NULL,
  `indikator` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `penanggungJawab` varchar(255) NOT NULL,
  `penjelasan` varchar(255) NOT NULL,
  `dataPendukung` varchar(255) NOT NULL,
  `tingkatKematangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `indikators`
--

INSERT INTO `indikators` (`id`, `aspek`, `indikator`, `nama`, `penanggungJawab`, `penjelasan`, `dataPendukung`, `tingkatKematangan`) VALUES
('414f3730-eec6-40a2-b0bd-36fbcdbf62f0', 1, 1, 'Tata Kelola', 'Admin', 'Lorem ipsum', '0', '3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profiles`
--

CREATE TABLE `profiles` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `regulasis`
--

CREATE TABLE `regulasis` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `regulasis`
--

INSERT INTO `regulasis` (`id`, `title`, `kategori`, `content`, `file`) VALUES
('802a3c9d-462b-435c-bcbb-d69b286b0b1f', 'regulasi 3', 'ini kategori', 'ini contentnya', 'https://res.cloudinary.com/dpoukjavt/image/upload/v1721635806/spbe/images/1721635787650'),
('dadf1a41-0f3c-46fd-914b-a4f61717643a', 'regulasi 3', 'ini kategori', 'ini contentnya', 'https://res.cloudinary.com/dpoukjavt/image/upload/v1721635806/spbe/images/1721635787650');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `role`, `photo`) VALUES
('604b9277-82b5-4294-aae4-b65f744ede1c', 'admin@example.com', 'admin', '$2a$10$s/2J92.WLwXdP/KFG/hW0eo6i0/AG5ep4Aoy2ZSLcEfvcULCHIEiC', 'admin', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galeris`
--
ALTER TABLE `galeris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `indikators`
--
ALTER TABLE `indikators`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `regulasis`
--
ALTER TABLE `regulasis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
