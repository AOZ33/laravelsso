-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Sep 2023 pada 06.13
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelsso_tut`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(12, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(13, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(14, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(15, '2016_06_01_000004_create_oauth_clients_table', 1),
(16, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('006b36da8584db0b3fa1244aeb62d85b04bfc440ccd2e51334130fd8e987a54d29091fa54bf8d1d3', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-26 18:26:46', '2023-07-26 18:26:46', '2023-07-28 01:26:46'),
('01b093c91459224e819f66f06e8226576c05fafa949c74abfee3879a966e7fb46faf550a0f47e013', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-26 06:09:07', '2023-07-26 06:09:07', '2023-07-27 13:09:07'),
('050b6027bedb9d93a72a837f20696f7b0fd9b37c1f32c3679ea48ce72ced5d7af95ab5a6f5993532', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-31 22:27:23', '2023-07-31 22:27:23', '2023-08-02 05:27:23'),
('06c87f8d5dc068c68a7e7a15ebb433416586fa2aa41d3a0905f5c000085961a2f860d6205ff58ca1', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-26 06:36:48', '2023-07-26 06:36:48', '2023-07-27 13:36:48'),
('08eb1c5e3f87fec0ec32f8284d86b900aa69eb5c6df4499473b6c4489c3a62514a80651f925504a4', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-09-04 19:20:32', '2023-09-04 19:20:32', '2023-09-06 02:20:32'),
('0977ee82724f48f879a972bc7a0d0ba3e502b95312e6fd45327515c182e98f087933b9a42b17f2e9', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-09-04 19:20:18', '2023-09-04 19:20:18', '2023-09-06 02:20:18'),
('0b24826cb5805a85121132c4020d04df58b7263eafb385b93053203aadda14dda43bb05e3f12e445', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[]', 0, '2023-07-25 20:38:31', '2023-07-25 20:38:31', '2023-07-27 03:38:31'),
('0f32729025519059689940ce0d6b28f6d276fe568ca3bda6a94ebf7ba281f50a2dcdf61429f8675d', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-31 22:24:54', '2023-07-31 22:24:54', '2023-08-02 05:24:54'),
('11d7f12e1afc3e1cfe213999f156215ae245ade936f21c9cd8621aa44c4f8e7402d9896f38ed9614', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-25 22:21:07', '2023-07-25 22:21:07', '2023-07-27 05:21:07'),
('1c2c114d2c8506f3a72d6aa0158e80f6e6e2253fc1c91b6259bfc902e4d766db144eb5d97d8f80b0', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-09-04 19:25:22', '2023-09-04 19:25:22', '2023-09-06 02:25:22'),
('22a5c5b4002e7432a3b9aa99fb3f9926b8a90840cde8bcfc9a541d2329c7fd64970d1da72f823ef2', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-09-05 00:46:09', '2023-09-05 00:46:09', '2023-09-06 07:46:09'),
('2435950f5485f2305d1b82c4f59165acad7156b7d8e55319c56204c7b0d4db87b2ad64450495aae6', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-26 06:28:01', '2023-07-26 06:28:01', '2023-07-27 13:28:01'),
('246e9fb917ddbe8906342fd1699afd9c6539820d29d6194bcfdc5bdf7e87938bed044bfb26d56ade', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-25 22:01:32', '2023-07-25 22:01:32', '2023-07-27 05:01:32'),
('24d4b85c92a5014b4d29638f70c77a5e74381aa666ba2a5e0c5cdfbfc10747f5ac24b7656df6873d', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-31 21:59:30', '2023-07-31 21:59:30', '2023-08-02 04:59:30'),
('2b63f3613a914ac74c90deeafc53f265d3724fc3c48e89ccb75e7b096d941fd21587cc9f7e1b1048', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-26 06:32:42', '2023-07-26 06:32:42', '2023-07-27 13:32:42'),
('3631fd9be092d7af45fadc340000caa30d1b97ff5d9170911ea48eedc6b1d0f9958abf3f30ae6994', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[]', 0, '2023-07-25 19:38:32', '2023-07-25 19:38:32', '2023-07-27 02:38:32'),
('37d3a7524588ede1ac0154e1bd3581b68e88cea97f6dcdd64d4840b75f987eb5c599c984d106ee16', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-31 22:06:50', '2023-07-31 22:06:50', '2023-08-02 05:06:50'),
('3acd9dd4b670fa4aaf6cde213c25e44285ab9ff1ed46926d29d6250d5281dd8742b21d51ea2bde31', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-25 21:42:37', '2023-07-25 21:42:37', '2023-07-27 04:42:37'),
('42ca51857641e9d91a6925fc58b5f0a87ee60705e8ea804e6b598cdc2064bdb34b693b0b37dffa4a', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-26 18:26:56', '2023-07-26 18:26:56', '2023-07-28 01:26:56'),
('468375866fd608dea838fbca01cd6c04c8e31785c94e26878efcf7ecc0c0803de3eeeafdf5b12e95', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-26 18:35:43', '2023-07-26 18:35:43', '2023-07-28 01:35:43'),
('46a8f1b159faa7176c3311855d86d5e68565f9e03d1c9352056aaa9a48f1d928cb94579428efe3b3', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-31 21:52:02', '2023-07-31 21:52:02', '2023-08-02 04:52:02'),
('492700eaf0eed3186fc696c2f60e3abc60559b51cd9243f88d7fa930c41ce4ac915bfbdf41cab016', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-26 06:27:55', '2023-07-26 06:27:55', '2023-07-27 13:27:55'),
('49ea7f5bd01e552c1e3da6d8c43e5243c9f64b9dc51b75db9d31cbe79049c1a49707979247f3d7c5', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-09-04 19:48:26', '2023-09-04 19:48:26', '2023-09-06 02:48:26'),
('4c804fce7c7a95f3c2571d8ef5ec1c6f892b146dc393d18110e8a10705cab13a56f32ebd575954fc', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-31 21:54:10', '2023-07-31 21:54:10', '2023-08-02 04:54:10'),
('54b8ba02df17cc7617981e6bf93f2d100b5070680f7387a4bbd902eb8b30a7f563b701466fa285d7', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-25 21:43:19', '2023-07-25 21:43:19', '2023-07-27 04:43:19'),
('5a021e8e1e8020b7a91e49e7ca0ed778ee3feed9c0a36c2ae0aefcdf35cb51699ba82a1f26df8429', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-09-04 19:24:42', '2023-09-04 19:24:42', '2023-09-06 02:24:42'),
('5a82602d6d6f212212deb4ab7e451c53cc717fa2300022a5b4980fdd4d4762783d49cfe02eccdf61', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-09-04 19:24:54', '2023-09-04 19:24:54', '2023-09-06 02:24:54'),
('5a988dce231603b98542eb301e22e4a193dc0166830e242cde091cfb420dbd9c8b20344a62db7b1c', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-25 22:17:46', '2023-07-25 22:17:46', '2023-07-27 05:17:46'),
('5aa457f0b3c98cd6cacdea28d87af35ffe366e067109e74d4b7905079901e0bbd74a73feab6c021c', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-09-04 19:20:00', '2023-09-04 19:20:00', '2023-09-06 02:20:00'),
('5b676635b6dd75667408ce67ff6050be4c1785c8c4c7129a1c210e64fbabed593af37999253e195e', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-31 21:59:35', '2023-07-31 21:59:35', '2023-08-02 04:59:35'),
('5b9e0fbfc2bdb0062241ea080a0eaabec3e9b21cb632bc8deb00d82ac92d3fb61cc3b59f3e2efc6e', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-31 22:27:30', '2023-07-31 22:27:30', '2023-08-02 05:27:30'),
('5e9cb472a178dee440c1085fe788c79cd2f7628e497dbf6b4b909b7440f6bb06bfff260c260e8669', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-31 22:26:33', '2023-07-31 22:26:33', '2023-08-02 05:26:33'),
('5f944f9a0a46e6587b63be9e695708a967dba95703ec3a9b752671c26430a1be8ee7097634f8b2a0', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-31 21:41:28', '2023-07-31 21:41:28', '2023-08-02 04:41:28'),
('623049dc32079d4c86d62b491dd2a1d8287a33fca83ce9e6d1377ebda9b7267a48638942cb530de3', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[]', 0, '2023-07-25 20:35:40', '2023-07-25 20:35:40', '2023-07-27 03:35:40'),
('6e7bb296496da16a3305d9a0e96c9a3ab6484c837f2c3d5005ca9fdac4327e463ed5064607a2355d', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-09-04 19:21:03', '2023-09-04 19:21:03', '2023-09-06 02:21:03'),
('7243f0600ce9fee0eace05c9b92b2280a471b9956a5f4369034f169bfc496324ec3379e2cd9b21b4', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[]', 0, '2023-07-25 20:16:32', '2023-07-25 20:16:32', '2023-07-27 03:16:32'),
('72e5f6975f71200090bdf3bf1603656fd8ab13b32fbd68a6898838a83860bdb6ca67ca86c4543727', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-26 07:11:47', '2023-07-26 07:11:47', '2023-07-27 14:11:47'),
('73671b5200690ac02cc19ab327671198aa42681bf503bf035063f458f30937c7bed8ec98289c450e', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-31 21:56:11', '2023-07-31 21:56:11', '2023-08-02 04:56:11'),
('74fef21eb0f6bbf182788f4c8be63e0d6cac5040d088365582e860112e7a00ffe615821eae1e7232', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-31 21:51:56', '2023-07-31 21:51:56', '2023-08-02 04:51:56'),
('780aaa06f2f463ffb897869e5e9d0a1325aca5974a4cbc1c110938d80fc8df51791ed1306b346927', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-25 21:58:33', '2023-07-25 21:58:33', '2023-07-27 04:58:33'),
('7c0c746d8ebe129ca54eb54dafb2ea62f383c764a916977ea75b559054994785fcc91461cda6b537', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-09-04 19:48:21', '2023-09-04 19:48:21', '2023-09-06 02:48:21'),
('7d1f16697aa4e661bc129563ee7c0283c30fc97c0d620f897ac735b5b49a4f9b003087ef0e7c99bc', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-31 22:07:11', '2023-07-31 22:07:11', '2023-08-02 05:07:11'),
('878fc276eec627c325d0450c2d98cf22a5f38e40435215023a19882377a222a375cfe1be37e41488', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[]', 0, '2023-07-25 19:49:26', '2023-07-25 19:49:26', '2023-07-27 02:49:26'),
('89b41752a5731cd03f3e7b5cfaf1b0812edc719a6c4d8dbfbab663e8a8c68017aa31aec635023a25', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-31 22:22:36', '2023-07-31 22:22:36', '2023-08-02 05:22:36'),
('8b3199f77a3c2e72afe9a52ae6e08738a9bc0bfd39810594cec16ba26463af402b94a9b985bc533e', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-26 06:28:23', '2023-07-26 06:28:23', '2023-07-27 13:28:23'),
('8d26eed7e921caa929def118dc20d52a12068000b1e75ed0e82455310ff2ef5d5a206af783733ca0', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-26 06:31:38', '2023-07-26 06:31:38', '2023-07-27 13:31:38'),
('966dd5165ede49cc4dcfb8bf6785f859f301fd9862019c4420d3ad3ae244e6fe47f05909e5c03f88', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-31 21:41:19', '2023-07-31 21:41:19', '2023-08-02 04:41:19'),
('969005ed4690592e68728ab94eb89e15086a14b6dcb525cf9cd613ce29e317c9a156cd53d78396da', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-26 06:28:13', '2023-07-26 06:28:13', '2023-07-27 13:28:13'),
('9750aa221151ee00ac3b6f139baa52c20fd36abb5ea64e3985fdc40b5faf6e22048790b1c695e6f3', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-09-04 19:48:36', '2023-09-04 19:48:36', '2023-09-06 02:48:36'),
('9b03dee59c458764ff328533eeda2842e488f0cf16a8bd8611590451bb84006a6bc1a5997124e87d', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[]', 0, '2023-07-25 19:31:24', '2023-07-25 19:31:24', '2023-07-27 02:31:24'),
('9e793ab6135893598931f0661b588c4f559c240a68f96f5ea603d12ac59ebdd55be58e2c15c3912d', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-25 22:03:32', '2023-07-25 22:03:32', '2023-07-27 05:03:32'),
('a1bfe8228cf2f048083479cc00ad95924ec53fa65d7ca93ee4508ff902f8b2ca7aff05a1d5767f33', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-31 22:07:06', '2023-07-31 22:07:06', '2023-08-02 05:07:06'),
('a37d7deb3e60f0d5ca8663f3dd1918074d9bbcca740bafad0264d2e12ef65f83f7b7b4cad46844a0', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-31 21:41:13', '2023-07-31 21:41:13', '2023-08-02 04:41:13'),
('aab46badffcf1ab287197ecaa9ab1af891daffad3473bac3dc64d13a41e36e6a58c5184e47e85393', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-09-05 00:35:18', '2023-09-05 00:35:18', '2023-09-06 07:35:18'),
('ac775f7a9970af56a61514a4fff3af5880261902530a92a6105a782d50cb2e8eb2378bc129347596', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-26 18:35:11', '2023-07-26 18:35:11', '2023-07-28 01:35:11'),
('b07440cb5c46994a7fda6cd55633dc93e08598dda4a9e14a871c2808842c12efffc62235f880e729', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-09-04 19:58:40', '2023-09-04 19:58:40', '2023-09-06 02:58:40'),
('b20f6fa9f85d5f042adc7d64d3f7bef8cab6528c8739cd2487a86326c929cdd44e968b065719c64d', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-25 22:28:44', '2023-07-25 22:28:44', '2023-07-27 05:28:44'),
('b29f3f8f1056e07289fd2958165422ff211eceb2e063709ab902c9f6b62ea47348b791d07f7ba80d', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-09-05 00:35:37', '2023-09-05 00:35:37', '2023-09-06 07:35:37'),
('b9e624e8cae1856415462f13246e08ab442a1fd86c83a1ef44d314785bd7b07b0cd8fd72342d8225', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-31 22:18:58', '2023-07-31 22:18:58', '2023-08-02 05:18:58'),
('bcd757adf7220146e4a2254f287d643a82563c42c9071641243eba40dd05dc6708c526714dcae6d1', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-30 01:24:10', '2023-07-30 01:24:10', '2023-07-31 08:24:10'),
('c3079e719a372e3500f7217ffb2230048cf76d6fe36faf3f7d02cea8ecd5ea321d843a9264f7a974', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-26 06:32:35', '2023-07-26 06:32:35', '2023-07-27 13:32:35'),
('c62b7f6f127ecfe30a3c3b5e9d2eecd4ef80132b0d098587c9176836716d630577fc2325f57b59dc', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-31 22:26:25', '2023-07-31 22:26:25', '2023-08-02 05:26:25'),
('c92f1cade19d3b08fd2c47ba39c25a669acb258d32c1018dcf96e4bfdcc39267ec45c3e4673e115a', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-25 22:31:51', '2023-07-25 22:31:51', '2023-07-27 05:31:51'),
('c93cb446e1b95cb120813abbdaf69f19a25f6515d2a762f59ca215a92bdd7a05840a3a327a640983', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[]', 0, '2023-07-25 19:17:43', '2023-07-25 19:17:43', '2023-07-27 02:17:43'),
('c9b84494d8f1005b3bf440611606f5dd0e988369d3fd069db149f19ef018a73bdaba41af2271c0b2', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-25 21:53:57', '2023-07-25 21:53:57', '2023-07-27 04:53:57'),
('cce3d498ad9e8712f7e4215e56cec59b5c049868469877b36f29bfad457f67f11e6bea9c998e5c81', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-31 22:18:22', '2023-07-31 22:18:22', '2023-08-02 05:18:22'),
('d02831fc85844f2f9331885481b8a61936e0337fd627d1c74ad7671670de170c4109169a17e53e66', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-31 21:41:44', '2023-07-31 21:41:44', '2023-08-02 04:41:44'),
('d2451cd9f780664286a388004ea5e48a8dce7760398fd04f242452bf14dd486df5359210b0759fdd', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-26 18:34:58', '2023-07-26 18:34:58', '2023-07-28 01:34:58'),
('da3f0e88342c5ad20e57262e876264dc2457225dd5c1d340fd3c202ff2b555e1e744ab212c067e08', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-26 01:21:31', '2023-07-26 01:21:31', '2023-07-27 08:21:31'),
('db3fc2368aedf51707ddfad41df2f08ecb6d27729faa3fc86ad32b268906ab90b88e283be5b3c8e8', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-25 22:17:00', '2023-07-25 22:17:00', '2023-07-27 05:17:00'),
('e799c0f63ea807eaf37495f14753be56593569ccbc21943a04bc375fe782db4dd7b8d6fcbecdd3b2', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-09-04 19:20:13', '2023-09-04 19:20:13', '2023-09-06 02:20:13'),
('e7bd8962fa9bc08527423851d99ac8ffd5347376f5be026dfff9b4ab22ac0894659e397bfd2e1d8d', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-25 21:41:42', '2023-07-25 21:41:42', '2023-07-27 04:41:42'),
('e819ab84b8d59ae211c95da0eb98be8e98a797b390c346cc4922e2f44faced829803475fa293e827', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-30 01:24:14', '2023-07-30 01:24:14', '2023-07-31 08:24:14'),
('ed3e0135d1537011a82a304c7d610332fe67071709e5fcc8e0cbbe7167fbc7a313416e379a6dafa6', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-25 22:13:02', '2023-07-25 22:13:02', '2023-07-27 05:13:02'),
('f0080d6825e3f93f398cf3ccfed31c02e215a2404b20c4611e60a4339827a202278b3a183d0fda8f', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-31 21:51:59', '2023-07-31 21:51:59', '2023-08-02 04:51:59'),
('f27dd93753cc814e76a5cdda919a9bd9091371c2be3ad19b6359b16e7a9174a6c3589faf3853f182', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-09-04 19:58:45', '2023-09-04 19:58:45', '2023-09-06 02:58:45'),
('f3697c8e1ef4211cc34fe7ca87317e32f02e68a1b8c879fe5ed4ed65b2f55c8e07503a84b0ad4531', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-31 22:27:27', '2023-07-31 22:27:27', '2023-08-02 05:27:27'),
('fac3d20ab7873b13e35ddde0241ff9f135753fcfab09a53f3df64fe74bba39bc8229931a9ea7023f', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-26 06:36:54', '2023-07-26 06:36:54', '2023-07-27 13:36:54'),
('fae38e8421166884727c69a7f901f85eed317bd54032831c30cb9ec0e882c0ddc73c78357f72efc6', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-07-26 18:29:38', '2023-07-26 18:29:38', '2023-07-28 01:29:38'),
('fb2d4d9516bf70f5c2a42e57ee7780cb6f1602f2a081a07d875f6d972aa7c82b5a3e85370fa5c1f0', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', NULL, '[\"view-user\"]', 0, '2023-09-05 00:35:46', '2023-09-05 00:35:46', '2023-09-06 07:35:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_auth_codes`
--

INSERT INTO `oauth_auth_codes` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `expires_at`) VALUES
('00f6b30a72892b76ffbab7f176d092d098c1d8dcfff7041035338829a8d686ff62ca8fffaec02eb5', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-27 01:36:44'),
('030610e514a4cba3c5b227e1e4b9c42fe8d33b9058412563f30a21de27ad978b140f874cdaaf116a', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-08-01 05:02:01'),
('05507a1883299a4821b889b12c24c3b1adddf2392cad7e1b252cc9d9849f6a389b3ac3f1fed97ff8', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-08-01 05:36:24'),
('0752c4ab2f700896259bf5158781deda8d3bdd1ed6a5154172f2a7ebe656777361dbfc3d0f72d760', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-09-05 07:56:09'),
('0a129f93f7b31c7de42a05fa92908013eacd692061de596781ae50638d35ea7086aa43ddf732b61f', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-09-05 02:34:53'),
('0c504fcf5488f6ff944d382e907ddb0e5850877b00a0605fd5276260f357cfbbead29e24cbaaffc9', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 13:37:53'),
('0e29acbd097412f0245c1539d5e64ccb65ba793fb94348e5c0627f19b2016b09a3c36385ee535f4a', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[]', 1, '2023-07-26 03:45:39'),
('0e6c78d9ff63d5cb9ca6fb9cdd584fe7a6747cf4eec564822c6f7dbce3877cd4e41bcdd4e28d7432', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 14:21:45'),
('0fdefcf8d89cd2cedb2ef389fccb96123989c2dfacc233ab77fb731f860fe0240b43a0f03aefbd54', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 0, '2023-09-05 07:06:17'),
('15554ef94d1339158a3a01c4d8feb4017ff7f16ed9f1d7f06a8e3c70c0360ea86fc2b428cc40274e', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-08-01 05:09:29'),
('1e4f83d70eabd57817db7bdd86d3eff2c124629ec7d886b0752cc803eba4ef905d3b689e7d45e04d', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-08-01 05:04:08'),
('2500fcc2c7d0fde91492de0218fbcd53afa3165cff81c01e7f44a5a01c3f3a5352ef99e38e9e5f42', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-08-01 04:51:43'),
('289f3941767bc89a81155e8c721884e9eff17151bc567abdae3bd1d91d73034cb4787a53efc8679f', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-09-05 02:58:34'),
('3222d1fa89cc15b3deabce8021cd18b9a6e614093d504ac008d26b6f66b84e4906a9166c97b6798a', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 13:41:36'),
('33bdc6b48224d0729b615b5654ff2b2691c2dfa0639a030b3846d4fbdd68cd45b14f54e5b1a09457', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-08-01 05:01:58'),
('41661b9fec9b7c4745324ed615617e21cf94f0edfd2a74a58b86242a3afca45edcac0ca42c43a779', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[]', 0, '2023-07-26 02:00:34'),
('439d7a0caa98f4a7fa9718e570d581bda6d68790362d422df46ec22d3d7c9d503b7c71e3969a89f3', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-09-05 02:30:30'),
('4501a6b586069b267a27fae706e6e54655ae99af3079af1602fba5c3ea1440a00ef78afd7b377784', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-08-01 05:37:26'),
('45f3bd5b758ef205cbf09d663bbca9e6136e217a44d8dbbe61dcdfc1154e38d668cd2ae43ccce290', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-08-01 05:28:20'),
('485a33a47f06d8ef89d5cb12fa13dac2e042af1b05a07ff6471a8a79dd88a7e652c41a4b1058bf8b', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-09-05 07:45:45'),
('4c72e63f79466e0bd1aa77f54cec361f5c2815b598e8bfbb7d255ab0a9d6f99c029ac2ec8579924f', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 04:53:17'),
('502c3cf9717f783dac866576faa2697c978a17c13c10ebe9b5a169337fc3e3d2e2f4d3aa5b7e449e', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 0, '2023-09-05 07:05:41'),
('58f4e0b0e42da088fe545db412f9871c89b96c78eb24e70a798107e0cff4cffa1c42a5e06cd8f632', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 05:23:01'),
('5a454b1dc57cb587027654ea89c60dfc878f02306395e506a9ca8f551ef6d68c40061d4ffcac79d3', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 13:19:06'),
('5e29aa07d64a81ddece67875f51787e859cd59cd2e92fb24d1a67c80119752f833783564c0292086', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 13:42:33'),
('5f2c7f109cd01287145f7aecca25b9c7988b4a2ead29b9120774f8165a4ecfd13de4ad1767127d14', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 05:11:30'),
('63b8d4fe2a6be07ca2dab6dd5945a1267715daab2e60308bb40a52b5a2b90a9403b6ad60d8312f34', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-08-01 05:32:34'),
('6a35141dac8e0efcd21774b991ff2733403f850e30e7019326556045e1705ea986c31aaf22bb2135', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 0, '2023-09-05 02:33:45'),
('6add3fb26a3ac9e15c8cbd94e6a78a98c921cba7847325f7a6d509e8bb531f91ef0998ad66486c15', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 05:31:06'),
('6be6956f979e83a9c74cae47e151d7661185b3bf9e466ffc3bfa5861781d3bb3f6661d748b2f2a1d', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[]', 1, '2023-07-26 03:48:30'),
('6c799d40f8114e24651fe768ffc0706f993500581994a95ce887d3a82acec1397de2b988ed0d6dc3', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-27 01:36:54'),
('6c8c3bff8098086e1236f521b981b2d491ca97a9345120548b3c5172cf8778caab678e06beff524d', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[]', 1, '2023-07-26 02:48:30'),
('6ce66c5c42ca0db8766891b492d975844c7f658dc3fc7d7383a89aa6afcff5f45cbc3a21a5693bd4', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 13:46:47'),
('6dac322b469303e4bec55eb0edfd26350843403cd34d14e567bd77131d459b28cc4b3d6d715f06c4', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-09-05 07:45:36'),
('6e99858ab7178b286d120e3e643cc8398d28790c5c21761eb721778b753b955b60297a7dd83d7a4e', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 13:46:53'),
('6f9adc28bc0a38f9612efca7bbac6d50c6754a89fc5225eba06319f41d92d91ae041e9aaef85bb91', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 13:38:11'),
('770c443d9ddf679401ebef158f12b09487d7cf9f8b0e108266ac71f1c91302d2198cdd97f0c5871b', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-27 01:45:42'),
('78e8afa50565b36d1313da33da3b97c1303507983c26330041854fe5389e6b315608ba7643a2b477', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[]', 0, '2023-07-26 02:11:18'),
('7a330a096b51098bc841a3c12c9e4ed93820c0e03e785ecb10649b010a4cc141951c4fad5fdb3cfd', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-08-01 04:51:18'),
('7d936facfccb9ad4dfe5de437fc2bc9384e93198beccbc3570c9b691cbcf4f96052a03f55e74bd5a', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-09-05 02:58:20'),
('7f2f5dc30965feaf33fec87b709356dece60b5a24d136b4f0c836cf31e82d6d6d3623de1fc2fd8a0', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-09-05 02:35:21'),
('8155bb20805ca1bb8e056c2c1391fcfbff6e0f987ab5b200ffa0306251140fe9106f131f9ae1056e', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-09-05 02:31:02'),
('8357a9cf202d9b18a9b87b50a66595db604086685546ae0315d82b23915a509e7dfbc6e3450b5f6a', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 13:38:21'),
('88f75a56e133864c49a849aa423164edf581ed7704792eea721eb1f12b48ae8fcf1f1a90a7f4fbd0', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-08-01 05:36:31'),
('8a89b5c1641945bd658c82fe7dbc1cd8ee8eda0c1a7220c0747e35972b27b331dac80e28b7a2cbec', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-08-01 04:51:27'),
('8fd2e532ce6bffeed3f07404e0a040b398f8a3ae308a225ac827ca904c2380e92eb8e344a0e9a8f0', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-09-05 02:58:25'),
('955fc718521abf268e5d20e55e70463bc2b46c362aae4352ac8b95cba20fac70eb3833d0c584f962', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-09-05 02:30:12'),
('9618cbbdc49e2c0df5da94e18dd97a7857c44b3bfe056b742bbb7dd4353df92cccee3cdf7f311e12', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 04:51:40'),
('98c6e77685950e533e75a1ce8962e0ac23addfe184938544930971803612cbd57c7a4f778464449f', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-09-05 03:08:38'),
('9b37b8ce2aeb5d8d6c91898206d64d9868df57d58ae9ef98d5e58961d43b42c07c516abe36426734', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 05:27:45'),
('9b682dfad86ab7f8cfa714e9d7ca8d89259cd12fc7d3e2f79f8f739461d3053488cfdfd6b0b8bd49', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-09-05 02:30:16'),
('a208e3b4469fe8499c65cd9cdd265e1830b5b1e4c2e25d208a4f1681d51303fea36d1fee06591e8b', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[]', 1, '2023-07-26 02:41:23'),
('a401a8153902c8f6bc60f3a6ec725c50c45857dd70c57797f3bdac4f0f32e605f4a165aed586a256', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-08-01 05:37:29'),
('a4678ff058a8087e1e520f9e6b1926d6c85ccc65429eb844b22b4ace028c676ad5cc581d3c336f0e', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 05:38:42'),
('a56f0ae16c03f94d4be924fae241ce357a2d09deca92205f0f23cd1ad2946780c753870b36d072e1', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-08-01 04:51:11'),
('a67c1e5847284ce0ba1e218fbac92577561c322e60b73537918e7889be2e934d7700f2fb8367deaf', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 05:08:32'),
('a843a88d6ca1708d9ee52a248a948e82cefb696cabfedb5a498fa792ef6c24bcb579d2549d29bf8b', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-30 08:34:13'),
('aa96c2d78719cfddb42d16d8cbd0267c394f57c0e57fce8e7b1f7bb83cd9d8950b3e58ba28469f92', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 04:52:35'),
('aada6349dec5c948512a8755694063a92b19ed74c00965e5357eeed663c1a21010dc8519ae292b97', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-09-05 02:34:40'),
('af6aa488f4a46bc5b644cca981524b5b44aff9df20d90af0d452f0c425271bc25545ae20973ef18e', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 05:41:50'),
('b811796e173539df54d944886f3e451728fa6c53c122055ec425d0c5245c7bd4aaeb3e166cbe412a', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-30 08:34:09'),
('baabb24fd1dc99ee4bb24fe813842aa794a0186251fc833adf853d488d8ac33d74e6c318f86d7e20', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-27 01:45:10'),
('bae25eae56128db2bce60c35c2af76066ad21c39a03c382c4d19aaf961d18cc9ad48975df0d664cc', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-09-05 07:45:17'),
('c13f1890b354a975b622583e90a93e9f4db106b612a312f8f29c373d353583404e15732a873dc5ca', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-08-01 05:17:09'),
('c3e916dc13de2d7a0e57ca0eb10c51f2084080b49d065d833bacd6f73798117708ee19ccb2eabb75', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 08:31:30'),
('c43516f744db18f884ebd57c2d074e52b271afea4da2b5ee3a10db708bede7915c36458d6864a914', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[]', 1, '2023-07-26 02:27:41'),
('c496012b479d916b6c0e6b5bd7edce4c4e5ce09e0cdba6543dca04c93938fc0a1e71133a22cde23f', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-08-01 05:37:22'),
('c92a46d889b71c9a2a44185d8ef19356d09bbf940d8b9deb66000885ce6083cdf9883290099eb74a', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-09-05 02:29:59'),
('ca74b4d90e010611fd12c0b28e9292712223a5ce2f78f6fa62a69c895c929ff372f1e7552d84a2e9', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-08-01 05:28:57'),
('d1206b41d2d992b6145c66f963c789f904096f6954a5702e3cba490f8cddfee31fdc99ba35f407cd', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 0, '2023-09-05 07:30:37'),
('d53641002fa1570f82c86e5d71b4ee52f3cc4a8517e19d67e345b6f08c220588d4d497bc8deb2237', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-08-01 05:09:33'),
('d9767d46a7a282b1cfa6c721479dc5b07a12b8c949516ee68d7b47397b42f13e5f7b38756e188580', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-27 01:44:57'),
('da34828eb2347d9ced3343dd96cc61f8a6567de3f1903244a055ff7949ca576663ee5b081979e3ed', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-08-01 05:01:55'),
('db9450fc9a092fd1fab5e0aa95ce9d03bfdef47fb0c26fc64f3de29831257aa733d7f8fb3bcf7c88', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 05:03:56'),
('dd76a7761b555b2cb2ca6af0542e1c2423c5d0016f8fa38073acf372b62f552574a29e2b7c593098', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 0, '2023-09-05 02:34:46'),
('de65de3bc071b700b89cae2bcb1ce4752d88d781d6ea569e7b5eaa32ba30ccda6f94a7508bc7ba36', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-08-01 05:06:10'),
('e1d6c1ede568a0ace8065fd7c795850095c398fb7152c48f2973c7f5064d4adbf81fd272f293986a', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[]', 0, '2023-07-26 03:26:31'),
('e3f19e82b62c79387509685db2d334fc9f33a567cc6ae496ebaacb716cf03f9c5dcffb01c396df55', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-27 01:39:36'),
('e9e1a0a16c12778a7b0dadd7b8f8e273577b986986ad4f2d92a47f415d658d166f07167b51c1a2ed', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-08-01 05:16:49'),
('ea8b1cbe2815e261036535b4113d77a7331a716561f2e4951034c8b1f808c1552e2caf83e7c7008b', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 05:26:59'),
('eae59e69513e94791348f4d72ab7c761dbb8979a34751ee8f0a49b577537d995c3be9332c3c66f42', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-09-05 03:08:43'),
('ebae5c0e2b320177d4353a5f49e53f2e0fae55c42edd0bbb8c5ec10fb062cf78e9aff4643ca7908c', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-08-01 05:17:05'),
('ed96e9997bca4a7a129020a460aff40b81e83255923979edd23715ae6a6775de0aadac962f22feac', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 13:38:00'),
('eff237de36c2874c0ce426475415babc9f7e24415d5115b71b4a8fc40fb8e4f18d09499c4e2dc1f2', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[]', 1, '2023-07-26 02:59:25'),
('f23a8566c31719bb13f761286025ef751235222ede57cdad9ca0cee75c9b49a252b247f19f803913', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-08-01 05:34:53'),
('f36830dec79615a6de151dc0662c534cc77e31cddef248a85bf68924f8bf04e78d7b8f50d522c466', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 05:13:31'),
('f829d69159dbe13c4e88dd46945f58bfb396a4ad716809e3bc0584aa97ec0dd528f4e7235585d37f', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[]', 0, '2023-07-26 02:24:06'),
('fa5c5a5bdd30385b1f727000318e099ab7a5f134b4b95ca36c768491ac3fbd6de643ef3720623005', 1, '99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', '[\"view-user\"]', 1, '2023-07-26 13:42:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
('99bb2c5f-f999-493b-8219-11341cc44483', NULL, 'Laravel Personal Access Client', 'cmYRamj5seq4pxT4ufrj7yOqwntsyViukqiWuDRN', NULL, 'http://localhost', 1, 0, 0, '2023-07-25 06:30:24', '2023-07-25 06:30:24'),
('99bb2c60-023e-48e6-8404-47e3db2b39b4', NULL, 'Laravel Password Grant Client', 'NszuqUFuN727p5VZap7KiDltNd5x7pDKscRjtc3o', 'users', 'http://localhost', 0, 1, 0, '2023-07-25 06:30:24', '2023-07-25 06:30:24'),
('99bc04cd-c756-4002-8a79-9ea643dcc404', 1, 'Test Client 1', 'mRzmpEw5tsGeyhGG3y67LvklvT0TPgLAqAQprGHS', NULL, 'http://http://127.0.0.1:8080/callback', 0, 0, 0, '2023-07-25 16:35:34', '2023-07-25 16:35:34'),
('99bc33c1-7e0c-4b92-b6af-ffb9b9a58fb8', 1, 'Test Client 1', 'pNVjoWnk0tJQOnzObcpenVXlBL00IvFcps4hFmzD', NULL, 'http://127.0.0.1:8080/callback', 0, 0, 0, '2023-07-25 18:46:52', '2023-07-25 18:46:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '99bb2c5f-f999-493b-8219-11341cc44483', '2023-07-25 06:30:24', '2023-07-25 06:30:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('00442759698ba790c0059040816088d619990bcf5950f97045c7ea5fb0361dfacdc3a2028b31c671', '6e7bb296496da16a3305d9a0e96c9a3ab6484c837f2c3d5005ca9fdac4327e463ed5064607a2355d', 0, '2023-10-05 02:21:03'),
('00a7f79b4cd04d92f9472fc733339c2679423ee59e1f70d5bc5d2e9e9220af8fa335be57eea6b62d', 'b29f3f8f1056e07289fd2958165422ff211eceb2e063709ab902c9f6b62ea47348b791d07f7ba80d', 0, '2023-10-05 07:35:37'),
('05dacb77ee4735b6d54cb9bf05f099a49ec1f8af17b31d69768640974215962129a1366eeadb606b', '72e5f6975f71200090bdf3bf1603656fd8ab13b32fbd68a6898838a83860bdb6ca67ca86c4543727', 0, '2023-08-25 14:11:47'),
('06facfcc520016c297cc2e5cf00ebc9d7e7ce902cab31c66e3454241d54a9ec83af7b11f9e6a0b9a', '5f944f9a0a46e6587b63be9e695708a967dba95703ec3a9b752671c26430a1be8ee7097634f8b2a0', 0, '2023-08-31 04:41:28'),
('0b346a7a4855b3b1aea937935cf1dc0753ce9e4458785612c90acc2bf4a6e98c1cb9fa5099178df2', 'da3f0e88342c5ad20e57262e876264dc2457225dd5c1d340fd3c202ff2b555e1e744ab212c067e08', 0, '2023-08-25 08:21:31'),
('0b4c860faa1f81895c40b6fdd49e53dd295b5d16b3ef9aa2644a9513107ae5db2bdeb2ccc9f634cf', 'e7bd8962fa9bc08527423851d99ac8ffd5347376f5be026dfff9b4ab22ac0894659e397bfd2e1d8d', 0, '2023-08-25 04:41:42'),
('107490b490aeefa386c8c16ae4b4269e1c5cf89b3244e692e421901136d5600a5b6bb8b1a1336578', 'c93cb446e1b95cb120813abbdaf69f19a25f6515d2a762f59ca215a92bdd7a05840a3a327a640983', 0, '2023-08-25 02:17:43'),
('135724d269478b214fe63e0684a8104fa6eca69371c40eddb02b95143f6d701d56812be218a4a91e', '9b03dee59c458764ff328533eeda2842e488f0cf16a8bd8611590451bb84006a6bc1a5997124e87d', 0, '2023-08-25 02:31:24'),
('15d02560d4301c08aa3832d422650f5c0debe4ab55059cde1e6ff2b4b8adf4c1150919d2bba30d00', 'f27dd93753cc814e76a5cdda919a9bd9091371c2be3ad19b6359b16e7a9174a6c3589faf3853f182', 0, '2023-10-05 02:58:45'),
('176f0988b70903ca88bf0b75cdb6854603139b5da0579978250b10f7ddfddfcaaf405fcd0a8a9606', '9e793ab6135893598931f0661b588c4f559c240a68f96f5ea603d12ac59ebdd55be58e2c15c3912d', 0, '2023-08-25 05:03:32'),
('1a3e873db0c69a1c591e0391ba1fd762ad45a3fb6967ba5bcdba54abc5c403da462ee23d47526fbc', '37d3a7524588ede1ac0154e1bd3581b68e88cea97f6dcdd64d4840b75f987eb5c599c984d106ee16', 0, '2023-08-31 05:06:50'),
('1eadd7752e641e7239436659f64b572fbbb6f81c5507030ce2425957652ed3bc8bf6862683251530', 'b9e624e8cae1856415462f13246e08ab442a1fd86c83a1ef44d314785bd7b07b0cd8fd72342d8225', 0, '2023-08-31 05:18:58'),
('26e55ba0ebe83ed550e98ac5162e997e1670767509aa55d202a3ed55e2934b6acc97f843f65e074d', 'a37d7deb3e60f0d5ca8663f3dd1918074d9bbcca740bafad0264d2e12ef65f83f7b7b4cad46844a0', 0, '2023-08-31 04:41:13'),
('28b0a99430d8bb4c9add0995fbb3e6f2105e4077d4b3a52e9ca27c3bf749dfdf9b529ffd38374846', 'd2451cd9f780664286a388004ea5e48a8dce7760398fd04f242452bf14dd486df5359210b0759fdd', 0, '2023-08-26 01:34:58'),
('2a04270ae7611a9000b979edff90f7b4c51d1dd6653736da49da4e54e01f4501f7c82b79f4f3c1cd', 'c62b7f6f127ecfe30a3c3b5e9d2eecd4ef80132b0d098587c9176836716d630577fc2325f57b59dc', 0, '2023-08-31 05:26:25'),
('2bc898390bb52d3d4a14e10c2f3c78e1e01d1e3695a28fa76e449efea9c3866c35c72506ad7a5d78', '492700eaf0eed3186fc696c2f60e3abc60559b51cd9243f88d7fa930c41ce4ac915bfbdf41cab016', 0, '2023-08-25 13:27:55'),
('2f59eb0e812df017dde4d9d290705ccd654e93bcc88735e31d730f36fe837004f3928ecd6ee2f25f', '5a988dce231603b98542eb301e22e4a193dc0166830e242cde091cfb420dbd9c8b20344a62db7b1c', 0, '2023-08-25 05:17:46'),
('390469c479b42555efcd64331ff9d6bbb1718714fd5c4121f90c687b77901f5904d9bc8546162858', '73671b5200690ac02cc19ab327671198aa42681bf503bf035063f458f30937c7bed8ec98289c450e', 0, '2023-08-31 04:56:11'),
('40c3cbe15d9b37c0094b95d584326df4fd4aa08eba894e2dba6b1fcadcd83d432d4a4d5249aa7ba4', 'aab46badffcf1ab287197ecaa9ab1af891daffad3473bac3dc64d13a41e36e6a58c5184e47e85393', 0, '2023-10-05 07:35:18'),
('43641d57c24e83cbe997a4c2d48bf457d97ed46c262d1dbbceeba036211e40759b0e417247a4725b', 'ed3e0135d1537011a82a304c7d610332fe67071709e5fcc8e0cbbe7167fbc7a313416e379a6dafa6', 0, '2023-08-25 05:13:02'),
('43e103e8f7f5d2f9ef95a21fe5d71f58aa8dc642756815da19c3c6f5080a7cbee954361d8c7e0385', 'f0080d6825e3f93f398cf3ccfed31c02e215a2404b20c4611e60a4339827a202278b3a183d0fda8f', 0, '2023-08-31 04:51:59'),
('4a271e682cb23c6618ac577e8d6ab1efd57e1eabe33ef7600aecc9b5f26d04d1361e11385840e0b5', '246e9fb917ddbe8906342fd1699afd9c6539820d29d6194bcfdc5bdf7e87938bed044bfb26d56ade', 0, '2023-08-25 05:01:32'),
('5201734435174ddd35e64f6e68a9d0daf37ff00d0d6d71a100029bfd46b683e0d1ccbe06df0b2941', 'b07440cb5c46994a7fda6cd55633dc93e08598dda4a9e14a871c2808842c12efffc62235f880e729', 0, '2023-10-05 02:58:40'),
('52a3ac53088733dd5359f3498d1a8ab40d8c9efdc09e5aa31d5e27a76ac0995540ebf94a4aee54ff', 'fb2d4d9516bf70f5c2a42e57ee7780cb6f1602f2a081a07d875f6d972aa7c82b5a3e85370fa5c1f0', 0, '2023-10-05 07:35:46'),
('556c19e8d9e78ec7c86b26f30089ca20e9478122e882879b7f3e56ec216927bbbc9d2b64182914bc', 'db3fc2368aedf51707ddfad41df2f08ecb6d27729faa3fc86ad32b268906ab90b88e283be5b3c8e8', 0, '2023-08-25 05:17:00'),
('563b4b6ff51c857f5c1e7916f55e25fa3d361359beda9244bb978a0607450f6737952abc3a3c816c', 'fac3d20ab7873b13e35ddde0241ff9f135753fcfab09a53f3df64fe74bba39bc8229931a9ea7023f', 0, '2023-08-25 13:36:54'),
('588fa226e1f128b75d0ba84cc892ca7aa5a1d8b61792c8601506354e425f888433377f6169b2555c', '006b36da8584db0b3fa1244aeb62d85b04bfc440ccd2e51334130fd8e987a54d29091fa54bf8d1d3', 0, '2023-08-26 01:26:46'),
('606df7b32ff91457c7ef2acf2956994790f421ff92c6a85d57199677f045a021227c815fde4b140a', '22a5c5b4002e7432a3b9aa99fb3f9926b8a90840cde8bcfc9a541d2329c7fd64970d1da72f823ef2', 0, '2023-10-05 07:46:09'),
('611ec9d2a2b454986811209908728a79441a947d1b38a8547425dc4cce79fcf5df5fc3f66f3203b9', '780aaa06f2f463ffb897869e5e9d0a1325aca5974a4cbc1c110938d80fc8df51791ed1306b346927', 0, '2023-08-25 04:58:33'),
('63814e3e1fb7f43b79cf36aee2f727aff7ba7f52c2494f1bb744a3ccda5fb3dbef4bcc418d4aeab3', '969005ed4690592e68728ab94eb89e15086a14b6dcb525cf9cd613ce29e317c9a156cd53d78396da', 0, '2023-08-25 13:28:13'),
('678f9fc8ec80f4ce3d0ced94210e0c158e7084a62128406fa5c3512a7e41b0aaa985ab7809cd0fb3', 'c3079e719a372e3500f7217ffb2230048cf76d6fe36faf3f7d02cea8ecd5ea321d843a9264f7a974', 0, '2023-08-25 13:32:35'),
('6ebfdecd1dbffff9754c9c98228f6d0808626f3ceb5136429b112e12ba1a041c0c432e5dce5ab69e', '5a021e8e1e8020b7a91e49e7ca0ed778ee3feed9c0a36c2ae0aefcdf35cb51699ba82a1f26df8429', 0, '2023-10-05 02:24:42'),
('741a3373b67366b7332bae388670a0de4fd311f5e5780b8b951cb81fdb099c749303fb17d329315d', '7c0c746d8ebe129ca54eb54dafb2ea62f383c764a916977ea75b559054994785fcc91461cda6b537', 0, '2023-10-05 02:48:21'),
('749ef3d7162c0bbca0abb06adc25cd6dc24f6d8223564fe5f49c00876ec072c6bf179836df941d52', 'e819ab84b8d59ae211c95da0eb98be8e98a797b390c346cc4922e2f44faced829803475fa293e827', 0, '2023-08-29 08:24:14'),
('7dd7ee0906c0ef61e8ff921b6e0429e11ec220ece85a3ccfbc7b664d85f2f97a62c0113a7eedbf1a', '42ca51857641e9d91a6925fc58b5f0a87ee60705e8ea804e6b598cdc2064bdb34b693b0b37dffa4a', 0, '2023-08-26 01:26:56'),
('81446cb2c73c64dba5b12999e8e21c335e91318592f76239eaedadf125e9c9b5ade3997575b1ce86', '3631fd9be092d7af45fadc340000caa30d1b97ff5d9170911ea48eedc6b1d0f9958abf3f30ae6994', 0, '2023-08-25 02:38:32'),
('83cf627445fbe98285e0f52a28549fa0a24b2b397e0aa924805b627ce3775798d7facd94657632ca', '966dd5165ede49cc4dcfb8bf6785f859f301fd9862019c4420d3ad3ae244e6fe47f05909e5c03f88', 0, '2023-08-31 04:41:19'),
('8442ae93a77f59bbcccbda6c91e4f49e8e773a8f60e5d6458217dd7eab56323177e6951a499ffdb6', '8d26eed7e921caa929def118dc20d52a12068000b1e75ed0e82455310ff2ef5d5a206af783733ca0', 0, '2023-08-25 13:31:38'),
('84485cbb7a58cc659cbd08515bb3a7a5eb4430b78dce79bfb614dc0dd5bedebe42e4143cd9a6282e', '3acd9dd4b670fa4aaf6cde213c25e44285ab9ff1ed46926d29d6250d5281dd8742b21d51ea2bde31', 0, '2023-08-25 04:42:37'),
('84dabccfc43ed2fcc3e592c17328280ccdc237dd18b2af06a7a51763e5160cec6ef2ea267737f351', 'b20f6fa9f85d5f042adc7d64d3f7bef8cab6528c8739cd2487a86326c929cdd44e968b065719c64d', 0, '2023-08-25 05:28:44'),
('880fe47559ef9b1fd67308d2038e408898bf5f16c2aee905cb8c817a9886b190f8f9587323b9aabb', '623049dc32079d4c86d62b491dd2a1d8287a33fca83ce9e6d1377ebda9b7267a48638942cb530de3', 0, '2023-08-25 03:35:40'),
('8aac74b53e2ae9f6cc1f60421ec50ab6b74ae692fda1c79d6a21ca3af760886a3c9319397a1a99ef', 'ac775f7a9970af56a61514a4fff3af5880261902530a92a6105a782d50cb2e8eb2378bc129347596', 0, '2023-08-26 01:35:11'),
('8b8c272d50e45ac63bda30df68f8ee242cbb548bd73c99d2f57da9ff46b1d5df2ec7161d7a04b37d', '5a82602d6d6f212212deb4ab7e451c53cc717fa2300022a5b4980fdd4d4762783d49cfe02eccdf61', 0, '2023-10-05 02:24:54'),
('8f86d0a0a2ef0a76017d5545be60a059015f5dbe79650d5e13ca68e03af4090dedd42a863b874961', '5b676635b6dd75667408ce67ff6050be4c1785c8c4c7129a1c210e64fbabed593af37999253e195e', 0, '2023-08-31 04:59:35'),
('9a88b9e444dab093ea8dd6b27442e2052e635e500bc9a79c3b6df763ae799059c290ab36eb3e0db1', 'a1bfe8228cf2f048083479cc00ad95924ec53fa65d7ca93ee4508ff902f8b2ca7aff05a1d5767f33', 0, '2023-08-31 05:07:06'),
('9d65e43114256f298ffe0308073cbf6a3588c8e7b1660e09c2fda550d771afe2bd5dbdb82abde919', '5b9e0fbfc2bdb0062241ea080a0eaabec3e9b21cb632bc8deb00d82ac92d3fb61cc3b59f3e2efc6e', 0, '2023-08-31 05:27:30'),
('9ef77b0187ee41385b3cbf9dd4a3d30a7a8dad76fbfbbbb95dac28969b33261121eda63ff0bd7365', '24d4b85c92a5014b4d29638f70c77a5e74381aa666ba2a5e0c5cdfbfc10747f5ac24b7656df6873d', 0, '2023-08-31 04:59:30'),
('a041a97c425ce1e5da3edcdaa1ea377b441cfa21465c900b459a75c6bd240deff452679a162a2cd6', '49ea7f5bd01e552c1e3da6d8c43e5243c9f64b9dc51b75db9d31cbe79049c1a49707979247f3d7c5', 0, '2023-10-05 02:48:26'),
('a1f5ad698051c3345f620550332f762e90834534d96b712e8e35607febed6a90332d75f1a7663b74', 'd02831fc85844f2f9331885481b8a61936e0337fd627d1c74ad7671670de170c4109169a17e53e66', 0, '2023-08-31 04:41:44'),
('a3a0faa9a0322a80d37f8dcdad4dd84eccc6ee07603440eaedf0b1c20ab85a15624012c072289f04', '878fc276eec627c325d0450c2d98cf22a5f38e40435215023a19882377a222a375cfe1be37e41488', 0, '2023-08-25 02:49:26'),
('a421dd732596f8a30b4f58415927516eecb6bd5036c35c05c057bd89cdd67586a510dbc9d4ec0971', '08eb1c5e3f87fec0ec32f8284d86b900aa69eb5c6df4499473b6c4489c3a62514a80651f925504a4', 0, '2023-10-05 02:20:32'),
('a4a4a14693fed80f70d6fa2b66b255d941cb6129f07e1912ced35c068c80a824fd798b0aec3bcdae', '11d7f12e1afc3e1cfe213999f156215ae245ade936f21c9cd8621aa44c4f8e7402d9896f38ed9614', 0, '2023-08-25 05:21:07'),
('a4cd1e41461384d4045b934f60a6e6fb6b457c88d976b301994f92ec20d0c0ae5a217b717f4e383e', '2b63f3613a914ac74c90deeafc53f265d3724fc3c48e89ccb75e7b096d941fd21587cc9f7e1b1048', 0, '2023-08-25 13:32:42'),
('a508c95d1bcd8a007c91e0e3903733fea9942ecdac6aeea078ec87f4d8a53013d19032536abc4049', '0977ee82724f48f879a972bc7a0d0ba3e502b95312e6fd45327515c182e98f087933b9a42b17f2e9', 0, '2023-10-05 02:20:18'),
('aa1d48fe34d785c3807f3dc8c8d7acd04dbd049011c28a00bc6be7832f660749bb9c01d26aa1e154', '468375866fd608dea838fbca01cd6c04c8e31785c94e26878efcf7ecc0c0803de3eeeafdf5b12e95', 0, '2023-08-26 01:35:43'),
('adb216781489ae935a2969ba2dbc5135f1a6bfe42453104319e54f08695cb0a86cf40cf8fa17cd01', 'fae38e8421166884727c69a7f901f85eed317bd54032831c30cb9ec0e882c0ddc73c78357f72efc6', 0, '2023-08-26 01:29:38'),
('af68e9171b9d9840a8e3bc124ed396d0eb5cc740750ff712e78dabd26f2185ec2d1d949391b20e97', '01b093c91459224e819f66f06e8226576c05fafa949c74abfee3879a966e7fb46faf550a0f47e013', 0, '2023-08-25 13:09:07'),
('b146d1184224d91760c53feadeb135fcb49fe46775e5b4aa7e8fa26bd9aabe34e69952fb5fde3dc1', '9750aa221151ee00ac3b6f139baa52c20fd36abb5ea64e3985fdc40b5faf6e22048790b1c695e6f3', 0, '2023-10-05 02:48:36'),
('b211154230bce4e1612d3b0703fe023b06e9ff55b9799068c3495eb5b9bf056d275b988b717923e6', '050b6027bedb9d93a72a837f20696f7b0fd9b37c1f32c3679ea48ce72ced5d7af95ab5a6f5993532', 0, '2023-08-31 05:27:23'),
('b63708d3c8139e5919ccfa421870480b287a74ec157bb3828449e4c33704ca0ed452efa05babf855', '0f32729025519059689940ce0d6b28f6d276fe568ca3bda6a94ebf7ba281f50a2dcdf61429f8675d', 0, '2023-08-31 05:24:54'),
('b8ad6ce00eb9230100d423f541d655d2b06bd6de00b54edc49ee7e3f9f49a3682d3401becc2880e6', '0b24826cb5805a85121132c4020d04df58b7263eafb385b93053203aadda14dda43bb05e3f12e445', 0, '2023-08-25 03:38:31'),
('ba6507c90cf731846035e67e3fd284c4453d17cccbe680a5f56fe169b6cfa1b2bfb7b1ccbf73afeb', '54b8ba02df17cc7617981e6bf93f2d100b5070680f7387a4bbd902eb8b30a7f563b701466fa285d7', 0, '2023-08-25 04:43:19'),
('ba84850f2ffe5edce3bdcead6c59dacb37c4efe74ad0d21b1712ae85475291ac6636235e06a0c671', '46a8f1b159faa7176c3311855d86d5e68565f9e03d1c9352056aaa9a48f1d928cb94579428efe3b3', 0, '2023-08-31 04:52:02'),
('c21054c2e4c1a9edcdcfd0553289a748b633a9fd35383a5f76df8a1115ed26843f3f9f0f661e3893', '74fef21eb0f6bbf182788f4c8be63e0d6cac5040d088365582e860112e7a00ffe615821eae1e7232', 0, '2023-08-31 04:51:56'),
('c5c4adf5cfbc7de341f327169092b5e7bd6f3a0911c8c441b936902f60ac7bc64a4eb0b2707bbb83', '4c804fce7c7a95f3c2571d8ef5ec1c6f892b146dc393d18110e8a10705cab13a56f32ebd575954fc', 0, '2023-08-31 04:54:10'),
('ce5b3231b2567514bb2558449032a2b90d59a2f1def4a18c2d798a11960dfef2fa5f12bbae99cebc', 'e799c0f63ea807eaf37495f14753be56593569ccbc21943a04bc375fe782db4dd7b8d6fcbecdd3b2', 0, '2023-10-05 02:20:13'),
('d13a3cf64fcaf01099514ffc5b6f458a04cef82035db280d4e4be111342dc229c8e7cef675a5f6a1', 'c9b84494d8f1005b3bf440611606f5dd0e988369d3fd069db149f19ef018a73bdaba41af2271c0b2', 0, '2023-08-25 04:53:57'),
('d6f78d57be680bf9483efa042084b84f25fcb3d8100421efb4221b7f9f7743e6a059aec6b01a8e26', 'cce3d498ad9e8712f7e4215e56cec59b5c049868469877b36f29bfad457f67f11e6bea9c998e5c81', 0, '2023-08-31 05:18:22'),
('d759c587b4d573a9794b2c3fe95b325890a4d8b41fa1664727927a479964345fc198b88dbffb9e2a', '2435950f5485f2305d1b82c4f59165acad7156b7d8e55319c56204c7b0d4db87b2ad64450495aae6', 0, '2023-08-25 13:28:01'),
('da13d1462034377d4bebc49f47dde2ea4fe0b6ca9d3380e3353d6497186b78280a81ce00bdc9cabd', '5aa457f0b3c98cd6cacdea28d87af35ffe366e067109e74d4b7905079901e0bbd74a73feab6c021c', 0, '2023-10-05 02:20:00'),
('e1b3c583310997e657502e03aaca108a5c5cabe257bc4a6bacfe08dc7a3226080889f88e7ca111ec', 'f3697c8e1ef4211cc34fe7ca87317e32f02e68a1b8c879fe5ed4ed65b2f55c8e07503a84b0ad4531', 0, '2023-08-31 05:27:27'),
('e2febea9a5cc59f752fb8bd3af6389d221f14eef3400cb24a5c4c331a036b7c7d7ca8ea9438f8614', '89b41752a5731cd03f3e7b5cfaf1b0812edc719a6c4d8dbfbab663e8a8c68017aa31aec635023a25', 0, '2023-08-31 05:22:36'),
('e5c224501791a3f70242e50a7ea46706f541bd5fa68a006f6f61f89d13b888837d83a36709a69e85', '8b3199f77a3c2e72afe9a52ae6e08738a9bc0bfd39810594cec16ba26463af402b94a9b985bc533e', 0, '2023-08-25 13:28:23'),
('e6ca662dccca04e502fe6f0dc48aae922628631906091506824226c9895f851eccbedc94386d76de', '06c87f8d5dc068c68a7e7a15ebb433416586fa2aa41d3a0905f5c000085961a2f860d6205ff58ca1', 0, '2023-08-25 13:36:48'),
('e7419d47e2bf75c6a0b3e35d8cc37a0d6c7ccfb8111ddaef5ac342fd504a2eba47b58ed5c1258167', '5e9cb472a178dee440c1085fe788c79cd2f7628e497dbf6b4b909b7440f6bb06bfff260c260e8669', 0, '2023-08-31 05:26:33'),
('eb61d679dfe9959b189bd9d8c169817c142a4b4d1d60d16e64dd4f4ea931c4559ddc44e3a2430a73', 'bcd757adf7220146e4a2254f287d643a82563c42c9071641243eba40dd05dc6708c526714dcae6d1', 0, '2023-08-29 08:24:10'),
('f5846541aed6fd0ef4a9f543a53a52c944c28794baf51e86941717c719a5fbcb1a03cbde2fd30203', '1c2c114d2c8506f3a72d6aa0158e80f6e6e2253fc1c91b6259bfc902e4d766db144eb5d97d8f80b0', 0, '2023-10-05 02:25:22'),
('f790e49c44cb6ed6db386e15c7c2be28246626ac11ad8d3f7755198602b55b7c0602cc0082c09bc7', '7d1f16697aa4e661bc129563ee7c0283c30fc97c0d620f897ac735b5b49a4f9b003087ef0e7c99bc', 0, '2023-08-31 05:07:11'),
('fa837e572509729b8b35cfafc6d017baa0f32c43b8fabd96c5e564ef0e933ebed914fe474ef1df07', 'c92f1cade19d3b08fd2c47ba39c25a669acb258d32c1018dcf96e4bfdcc39267ec45c3e4673e115a', 0, '2023-08-25 05:31:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'SSOadmin', 'ssoadmin@gmail.com', NULL, '$2y$10$IaUsjdX41ndFoaboNEF5y.eLlzBurC5FokT2flM8LBruNaNvhVU8O', 'klXGkb0BgKQy9K2gvboJd5H8Q1KJA0nu2Mv36LaaysO9G2QxIrfybu7rXCxt', '2023-07-25 16:31:17', '2023-07-25 16:31:17');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
