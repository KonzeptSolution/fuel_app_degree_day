-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2021 at 10:15 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `noaa`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_removed` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `userId`, `name`, `answer`, `is_removed`, `created_at`, `updated_at`) VALUES
(1, '', 'What is Question  ?', 'Answer and Question .', 0, '2021-05-28 11:50:21', '2021-05-28 23:58:30');

-- --------------------------------------------------------

--
-- Table structure for table `market_trends`
--

CREATE TABLE `market_trends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_removed` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `market_trends`
--

INSERT INTO `market_trends` (`id`, `userId`, `name`, `is_removed`, `created_at`, `updated_at`) VALUES
(1, '', '1', 1, '2021-05-28 11:51:09', '2021-05-28 05:31:37'),
(2, '1', 'This is month fuel price is 300 per gallon.', 0, '2021-05-28 20:54:38', '2021-05-28 21:29:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_05_17_080359_create_tanks_table', 1),
(10, '2021_05_17_103718_create_pages_table', 1),
(11, '2021_05_18_121426_create_payments_table', 1),
(12, '2021_05_19_053713_create_user_locations_table', 1),
(13, '2021_05_24_115402_create_faqs_table', 1),
(14, '2021_05_24_121739_create_market_trends_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('6b7eb90e26768e0c257690932bd86fe07c4d1a945433897b9ab2a829007343697b74a6500db58fb7', 7, 1, 'login', '[]', 0, '2021-05-25 01:19:24', '2021-05-25 01:19:24', '2022-05-25 09:19:24'),
('02ee18d57eed0186712f700be5460642acfca71ad63b17c221fa6166b8a0642cae6399e3ce22080e', 7, 1, 'login', '[]', 0, '2021-05-25 01:21:45', '2021-05-25 01:21:45', '2022-05-25 09:21:45'),
('85e20b0eb8b5be65b7e4163b99ab5a50cf48825b2d6ffaf2b3b773be2e1a5f2c08b39b1e7b415a43', 8, 1, 'login', '[]', 0, '2021-05-25 01:24:10', '2021-05-25 01:24:10', '2022-05-25 09:24:10'),
('707c95508275b3dc0cb4d4e719f68e7817938d52aa83bbe4279a470f98d482cd49ea7bb928b44109', 9, 1, 'login', '[]', 0, '2021-05-25 01:42:33', '2021-05-25 01:42:33', '2022-05-25 09:42:33'),
('d3443640920e7f38f90e0137808b564fd766ec93e491959351217c6afb253c404a81f674fe973de2', 10, 1, 'login', '[]', 0, '2021-05-25 01:44:41', '2021-05-25 01:44:41', '2022-05-25 09:44:41'),
('f03e44270ab59ee2b2950f592b7a67cfc11c6bb2049fb6c530d15bba865c773aa090041861404c6c', 11, 1, 'login', '[]', 0, '2021-05-25 02:07:36', '2021-05-25 02:07:36', '2022-05-25 10:07:36'),
('210826ca9f894c4dbfe130ecb666dd16282c1ab5c8c725c7c45ba427eee395f88d111a9ea9488c4f', 12, 1, 'login', '[]', 0, '2021-05-25 02:09:51', '2021-05-25 02:09:51', '2022-05-25 10:09:51'),
('b79f5722149199dfb6e85283e4a73bb65863bf5fa087e2780af8ec73a65f1c32d53ca92a2fdf0b6d', 13, 1, 'login', '[]', 0, '2021-05-25 02:10:55', '2021-05-25 02:10:55', '2022-05-25 10:10:55'),
('eb5866a2360265753138d5682382ae9ec9e5bada980e0e4f687c837ecd11f2b1e779d8337823b638', 14, 1, 'login', '[]', 0, '2021-05-25 02:24:46', '2021-05-25 02:24:46', '2022-05-25 10:24:46'),
('d6281ea888c212a407c60b2a99332392e48a0f8fcc7ab1c8c6cbff746ff7a3a89421244148685669', 14, 1, 'login', '[]', 0, '2021-05-25 02:27:06', '2021-05-25 02:27:06', '2022-05-25 10:27:06'),
('2c63fff701569b233562625162c44f66b6f4cf891042cbba9cef46c4e47ddd97ec0750ef5cdb1ec6', 14, 1, 'login', '[]', 0, '2021-05-25 02:38:04', '2021-05-25 02:38:04', '2022-05-25 10:38:04'),
('9e349eb98b0862548264578136cadb7185bf68bdbe1e62b604ea97634e415fe20c9fb51b718e71b3', 14, 1, 'login', '[]', 0, '2021-05-25 02:41:27', '2021-05-25 02:41:27', '2022-05-25 10:41:27'),
('327e405f46dbd0f09b8aa824292f0430955a267d525ec12e7a6c55c5c469b0a0d6d092ceee8d8388', 15, 1, 'login', '[]', 0, '2021-05-25 02:44:37', '2021-05-25 02:44:37', '2022-05-25 10:44:37'),
('90b5dc6db368bab0f499d55d75d9f3b9f3209fd8f36125f71b8872832fc2b681452ebd4ebf8f3b18', 10, 1, 'login', '[]', 0, '2021-05-25 03:47:12', '2021-05-25 03:47:12', '2022-05-25 11:47:12'),
('b2a196d694c615f941144019e7ae4a41518d20eed95ca7b823f41c2d58e2330c85646175d755c913', 14, 1, 'login', '[]', 0, '2021-05-25 04:41:37', '2021-05-25 04:41:37', '2022-05-25 12:41:37'),
('bb3406659ceaa30682329a5e0539aa45004d5d433edf3193b6a85b2c2707add2d458a49e6c4465de', 16, 1, 'login', '[]', 0, '2021-05-25 05:55:11', '2021-05-25 05:55:11', '2022-05-25 13:55:11'),
('bea699674dcd8678b32119b0bf04900f2bf7472aa85f9e4a70aa1449bb885d857bc6f3da7f039ea6', 14, 1, 'login', '[]', 0, '2021-05-25 21:00:52', '2021-05-25 21:00:52', '2022-05-26 05:00:52'),
('1cf65cbb530340e5ca1f2e5d6f678f6d4a1ca37d51aa2522431b40ad7c4a310e116a898619c653ab', 14, 1, 'login', '[]', 0, '2021-05-25 23:26:12', '2021-05-25 23:26:12', '2022-05-26 07:26:12'),
('33fd44eaf9a17799daf0e26e101c0388ffa73f33bdd7d912472e6e186e87309d0f296a024d2a5d5c', 14, 1, 'login', '[]', 0, '2021-05-25 23:35:31', '2021-05-25 23:35:31', '2022-05-26 07:35:31'),
('aaa27736c2eaeb3d42533d583ef1c7e12d665655cbe2d03c553cd17eb74effc9befb16b4db76feb0', 10, 1, 'login', '[]', 0, '2021-05-26 03:00:05', '2021-05-26 03:00:05', '2022-05-26 11:00:05'),
('7324221689b6f7c9d815a2ad6c6e672ff2d9cb9e3dc5c4cb181f29662b34c2429142536c71ff4317', 14, 1, 'login', '[]', 0, '2021-05-26 03:07:31', '2021-05-26 03:07:31', '2022-05-26 11:07:31'),
('c0ee72c20fedbf04127becedfad3e3f56f2bbdf0291848833e3799b4712ddfec51684b6aa302c869', 17, 1, 'login', '[]', 0, '2021-05-26 23:00:34', '2021-05-26 23:00:34', '2022-05-27 07:00:34'),
('b806782c21478f40e14b9d832cabd6d0bf1bb0a97bef779508a0358ef62145c1fe7c0394bfabd1eb', 14, 1, 'login', '[]', 0, '2021-05-27 01:25:59', '2021-05-27 01:25:59', '2022-05-27 09:25:59'),
('f11b353edc407fa7c2a335658288f9b02b7f9935bd041ee91c57b657e9803a3616ac067fc14a2f26', 14, 1, 'login', '[]', 0, '2021-05-27 01:47:03', '2021-05-27 01:47:03', '2022-05-27 09:47:03'),
('6962bf3b78b782d0ddf18b5a9d7c42d9fac3daccb87665cadcdf6c30b0f7436c5f6556a633fbb006', 14, 1, 'login', '[]', 0, '2021-05-27 01:55:29', '2021-05-27 01:55:29', '2022-05-27 09:55:29'),
('ee4922105ee433db0a077de0e8f9b0ecffeed699ca7d47c8c057d2605bc3153ddc4e9279ddc2894b', 17, 1, 'login', '[]', 0, '2021-05-27 04:27:12', '2021-05-27 04:27:12', '2022-05-27 12:27:12'),
('02a599bb5ea33859de18db9d958704e6a9c4c9774a8a88b8d083b25cbfbea52e231b3733f8a0048e', 18, 1, 'login', '[]', 0, '2021-05-27 04:35:16', '2021-05-27 04:35:16', '2022-05-27 12:35:16'),
('c8682b0181effa5a7cb8c5dffc82fd133eb44a0150047f66b694ff86bd66dab70c196b5524552fda', 19, 1, 'login', '[]', 0, '2021-05-27 05:36:23', '2021-05-27 05:36:23', '2022-05-27 13:36:23'),
('ffcc32dd766743041b8c9ea8252e9a9addaee313a5d516eddb19b1136d38280adec3e0c84455d009', 14, 1, 'login', '[]', 0, '2021-05-27 22:16:32', '2021-05-27 22:16:32', '2022-05-28 06:16:32'),
('25726251fd537c878752f26ae77979aca91db57260f0e04101f41f292f52b74fae4a2f438a4af161', 14, 1, 'login', '[]', 0, '2021-05-27 23:28:03', '2021-05-27 23:28:03', '2022-05-28 07:28:03'),
('b376c0d2285afedd02b5a15ba3af469b4fc87ba967aaefa3e1b80b41de6faf3b94e6ac3b39b6ba43', 14, 1, 'login', '[]', 0, '2021-05-27 23:30:18', '2021-05-27 23:30:18', '2022-05-28 07:30:18'),
('977a8f334ebc1266960fd16ad58d762c4d9a793708c86ca4d55af0e8e1557f6fa4217d12e5069c55', 14, 1, 'login', '[]', 0, '2021-05-27 23:35:53', '2021-05-27 23:35:53', '2022-05-28 07:35:53'),
('db60140d5b833260e5915833d1996c91e9e3c1f1d5fa4ed3e2e91381989113320738e638c6a6105d', 14, 1, 'login', '[]', 0, '2021-05-28 00:04:37', '2021-05-28 00:04:37', '2022-05-28 08:04:37'),
('062af85a1c908241480d74bc93d08a4f900260fa5a8a6729a21df16a28cdbb07a829dceb0b0cdea6', 14, 1, 'login', '[]', 0, '2021-05-28 00:05:32', '2021-05-28 00:05:32', '2022-05-28 08:05:32'),
('481c24aec996f3b69578ab48c2404b9784495e1f1249e42d5a427b6dccb558185e190aaa92a6119e', 20, 1, 'login', '[]', 0, '2021-05-28 00:25:30', '2021-05-28 00:25:30', '2022-05-28 08:25:30'),
('239f422f291bc937d2acaf716b2c49a1bd28b3b9db149b40ccaf9e86deb45058bb53e2c53703fd44', 21, 1, 'login', '[]', 0, '2021-05-28 00:31:35', '2021-05-28 00:31:35', '2022-05-28 08:31:35'),
('fb4e90bfb44dae17458b68042832d77802c6334cbed301a5b14d0e1340224f39f735eb20e39c2b6c', 22, 1, 'login', '[]', 0, '2021-05-28 00:34:18', '2021-05-28 00:34:18', '2022-05-28 08:34:18'),
('2c051afd18259e6f121f85d4aba432e2c5f87e68158eb6d2b294df08aea954185ba9908d3ba33958', 23, 1, 'login', '[]', 0, '2021-05-28 00:37:07', '2021-05-28 00:37:07', '2022-05-28 08:37:07'),
('6f3e6f0785bf82b0c26d164ec7ed23c8a2d7253de0d0ad4094ce0d5ecf6f7632bb323e37fbd09fae', 14, 1, 'login', '[]', 0, '2021-05-28 02:08:50', '2021-05-28 02:08:50', '2022-05-28 10:08:50'),
('5c288756834874a8fc503168ab3a56408c14bc94c2823138a1b9c235177cda64353b64a82bb77efa', 17, 1, 'login', '[]', 0, '2021-05-28 02:17:09', '2021-05-28 02:17:09', '2022-05-28 10:17:09'),
('14da791010f88683155ff095d4081f9a22cf82e563e9af8468702ec6f3e4210e658faa42b65c06f0', 14, 1, 'login', '[]', 0, '2021-05-28 02:19:06', '2021-05-28 02:19:06', '2022-05-28 10:19:06'),
('44a94f1b3de9be7d2c35ad503fd2f3930973634e0d2b12abe51b371b0b377fdb1fe05cc07e71fe84', 14, 1, 'login', '[]', 0, '2021-05-28 02:25:05', '2021-05-28 02:25:05', '2022-05-28 10:25:05'),
('a9a161c9d7d8f2847fae144d165ca43780c2fefe82b61f5fe18a36213b1835b3e9590d2f98f84632', 14, 1, 'login', '[]', 0, '2021-05-28 02:32:29', '2021-05-28 02:32:29', '2022-05-28 10:32:29'),
('213075caade14d7aa17f0a228526bee2d33d026db351b4a3900ded9750ed177e222f8619658d6fe4', 24, 1, 'login', '[]', 0, '2021-05-28 03:02:10', '2021-05-28 03:02:10', '2022-05-28 11:02:10'),
('a74747bf46768a11be6c346a7fde39905c8247e73e2214bb57bcfd388c59e53eef300ebf8c43a9c7', 25, 1, 'login', '[]', 0, '2021-05-28 03:11:29', '2021-05-28 03:11:29', '2022-05-28 11:11:29'),
('2773cd9b65fa28e853486be8838e563364e11e48d9f3d7b03a96a1d1dafdfaa9caa9882837121261', 34, 1, 'login', '[]', 0, '2021-05-28 05:31:16', '2021-05-28 05:31:16', '2022-05-28 13:31:16'),
('28d00328b67bc8223bab30e7ee16f493b9e4877e844d8a837448122730e35210e35f94860b5c5c14', 26, 1, 'login', '[]', 0, '2021-05-28 03:22:35', '2021-05-28 03:22:35', '2022-05-28 11:22:35'),
('e425dc4566dff0b0f718300520d81e40c6a16e80659e38232cf205a2803b8ca788f77b6ff7f76f0e', 27, 1, 'login', '[]', 0, '2021-05-28 03:35:11', '2021-05-28 03:35:11', '2022-05-28 11:35:11'),
('91ea612b386683d5f5403eac376dcb1858a0aa75bfaa3ca36c63e32f1f991321647c2d2030f5bb04', 27, 1, 'login', '[]', 0, '2021-05-28 03:35:56', '2021-05-28 03:35:56', '2022-05-28 11:35:56'),
('69a807a7cc2f5e2674d500e91ac6b60c56137e76d54f573499bc14055ecb5a0991b1cfcf43d4e6a8', 27, 1, 'login', '[]', 0, '2021-05-28 03:39:36', '2021-05-28 03:39:36', '2022-05-28 11:39:36'),
('59a38803224b0bfe41e2dae119c022252c9ede7699d771d049988f5a7d7c5206d76dd424fab52065', 14, 1, 'login', '[]', 0, '2021-05-28 03:57:15', '2021-05-28 03:57:15', '2022-05-28 11:57:15'),
('0922b9ca9591e7efd947af49884e9cf893723e41acb42b8b17e875790f95a71e8dbae0e92997d244', 24, 1, 'login', '[]', 0, '2021-05-28 03:58:06', '2021-05-28 03:58:06', '2022-05-28 11:58:06'),
('f0007a5a97d8cb24cf9b19d2229be20bf4bc19a8f9b8d78b1fa4e71cf613f8f877d70098b3eda09a', 14, 1, 'login', '[]', 0, '2021-05-28 03:58:37', '2021-05-28 03:58:37', '2022-05-28 11:58:37'),
('bbeb041aeccd67a59a57b47caf3cb7be7b59d72319ce036bf07bd588ccc7cd8649a7c5df5732e02d', 14, 1, 'login', '[]', 0, '2021-05-28 04:01:10', '2021-05-28 04:01:10', '2022-05-28 12:01:10'),
('d2beefd31a35ea04a16b5e21522cdad23a7c407dd6a26fb54afb4d5b7cee5497ef0a7c428124c95e', 28, 1, 'login', '[]', 0, '2021-05-28 04:49:41', '2021-05-28 04:49:41', '2022-05-28 12:49:41'),
('0c05a1bee91ac9cc8087d5987a2b67c02f55cd1e92325d7e433ef058c10faf6c99962de7ba3ba93f', 29, 1, 'login', '[]', 0, '2021-05-28 04:51:48', '2021-05-28 04:51:48', '2022-05-28 12:51:48'),
('193d3e16a90cbd00380fb3a233304872a84743f03d9aacefc2c4b0152b0c8e775cc99787983a869d', 30, 1, 'login', '[]', 0, '2021-05-28 04:53:01', '2021-05-28 04:53:01', '2022-05-28 12:53:01'),
('3c5401af25d921683756687ac8258152e3dca92c967a147537952a0e0bd021a5c94ff8c05158c13f', 41, 1, 'login', '[]', 0, '2021-05-28 21:46:12', '2021-05-28 21:46:12', '2022-05-29 05:46:12'),
('257e04a94e9971a27a82b48d2b3c53c2c7c3e76f55579339b4d96a09d5874f1685ffb4eaace63702', 31, 1, 'login', '[]', 0, '2021-05-28 05:06:24', '2021-05-28 05:06:24', '2022-05-28 13:06:24'),
('9dc78b7660a64d4ff418ba44aaedf636c8efbf3b8e121e89c047b26608ecd1b678e672a0f2f5ee37', 32, 1, 'login', '[]', 0, '2021-05-28 05:14:53', '2021-05-28 05:14:53', '2022-05-28 13:14:53'),
('44d08e301215ecfd21c0945bf7359ecb1f79dadee119c98651fc48084e29120dc475cfe7ca1331b7', 33, 1, 'login', '[]', 0, '2021-05-28 05:26:42', '2021-05-28 05:26:42', '2022-05-28 13:26:42'),
('a8a792cfc014608d624d1167ffe03f63fc4e0cdacec7683e5295e2deb54aa8f3ea2f89e967b13d97', 35, 1, 'login', '[]', 0, '2021-05-28 05:32:23', '2021-05-28 05:32:23', '2022-05-28 13:32:23'),
('210fc21762b26e83fd41e43926e5e40e493526c1e243ef57ed63f5a2d607d5c8b5a41944bd42cfa5', 36, 1, 'login', '[]', 0, '2021-05-28 05:56:54', '2021-05-28 05:56:54', '2022-05-28 13:56:54'),
('e1bef6fd2127c15ebc8a01fef2ba03ba6a1df4463fb79015f6b80440190582c345a0ed5c2da15165', 40, 1, 'login', '[]', 0, '2021-05-28 21:43:57', '2021-05-28 21:43:57', '2022-05-29 05:43:57'),
('3625a1771d781ccece22ade7b33fb4aa62c16af5d7a475b63f6cbc1aa9f987e3e53a3f07f3c6d77c', 37, 1, 'login', '[]', 0, '2021-05-28 06:09:53', '2021-05-28 06:09:53', '2022-05-28 14:09:53'),
('52bf10090dffe4f71d9975adfdf4982e59bd8c369754ee72c3f07eb11ccf39d0588dc0f72345ce11', 38, 1, 'login', '[]', 0, '2021-05-28 06:33:31', '2021-05-28 06:33:31', '2022-05-28 14:33:31'),
('77346a7df28c8abbddca134419e5b8ec698cf2282d05b77b348c851e3a028ec7939fa5043e45e155', 14, 1, 'login', '[]', 0, '2021-05-28 06:46:23', '2021-05-28 06:46:23', '2022-05-28 14:46:23'),
('44a114d8057196890af3dab4994e6019b056a30f5fb2f4879f38f99c990b9e05b25759be9a7496ce', 39, 1, 'login', '[]', 0, '2021-05-28 06:57:26', '2021-05-28 06:57:26', '2022-05-28 14:57:26'),
('c8333d6317db68f6059042cf16337dff310d16c34dc86be7ee03d45089b208c839259763a00174c6', 42, 1, 'login', '[]', 0, '2021-05-29 00:18:35', '2021-05-29 00:18:35', '2022-05-29 08:18:35'),
('5ec6196a3cc8b90c3c2e5818f329a958a7a6ebb4629a90ea57b32fb4e716905d1a21b833936e4cdc', 42, 1, 'login', '[]', 0, '2021-05-28 23:32:39', '2021-05-28 23:32:39', '2022-05-29 07:32:39'),
('73a286bfd345da35d887bcb72e400498eda05e084283ac9b1611d9e25f6daba2319446d76b8deab8', 43, 1, 'login', '[]', 0, '2021-05-28 23:33:56', '2021-05-28 23:33:56', '2022-05-29 07:33:56'),
('180b09134233859cf097d171a951beeb79fed4b414e5ef2efbc222a3cbdddb4c26f5ebe5854efdfa', 44, 1, 'login', '[]', 0, '2021-05-28 23:35:40', '2021-05-28 23:35:40', '2022-05-29 07:35:40'),
('1cf3979a53144eab506212418fd288c234e5f510af79e62bb8021c4848ac2785184f8e7808a30704', 42, 1, 'login', '[]', 0, '2021-05-31 02:20:03', '2021-05-31 02:20:03', '2022-05-31 10:20:03'),
('eef75bcf6c6d6e9b76b4d67278d548c40a06459ee249c3b99bfe7a7479a7791bb3f03136eb97546e', 45, 1, 'login', '[]', 0, '2021-05-29 00:38:07', '2021-05-29 00:38:07', '2022-05-29 08:38:07'),
('57f8d3c25a8387535f4ff182689132bdb4d43f52eee52f20c3be64175ef9870dff59039de2d68b20', 42, 1, 'login', '[]', 0, '2021-05-30 20:47:08', '2021-05-30 20:47:08', '2022-05-31 04:47:08'),
('b860b03e66844bdaec7cad97f2e033e3b131fe11ac45c6b61ee218742cd0beb6eecd3d0bd3cc250d', 42, 1, 'login', '[]', 0, '2021-05-30 20:57:01', '2021-05-30 20:57:01', '2022-05-31 04:57:01'),
('58236d55589e382250574867695f41d7dfb3aea0f23904c0b352a0932f47e14f64ca1234dcc331a2', 40, 1, 'login', '[]', 0, '2021-05-30 21:16:04', '2021-05-30 21:16:04', '2022-05-31 05:16:04'),
('6b0a9ffac380ca552b391816dde33ad502695c532f42a666fd413d6dc8d0e15b89ddb1379c1b274f', 40, 1, 'login', '[]', 0, '2021-05-30 21:40:18', '2021-05-30 21:40:18', '2022-05-31 05:40:18'),
('32b42fb0758055b015aab57556f5f8d08b966b0e81ca8e9ec8faa21662528faac1aca3c16f7eedf8', 40, 1, 'login', '[]', 0, '2021-05-30 23:03:46', '2021-05-30 23:03:46', '2022-05-31 07:03:46'),
('ee7b02cca385f2832eaa766a04be692b85b6ba82d0e0c51e28f81742b3cefa072a0304b00586370c', 40, 1, 'login', '[]', 0, '2021-05-30 23:03:57', '2021-05-30 23:03:57', '2022-05-31 07:03:57'),
('52eee69eceb3573947caadc1d002729b0c49bb3b32b6ebd085df81fe17c1c9f68ae98b048e6750d3', 40, 1, 'login', '[]', 0, '2021-05-30 23:08:21', '2021-05-30 23:08:21', '2022-05-31 07:08:21'),
('39f1029de844a72aede0856ce387001474ffdde7cc4452919026c18db7796221a13569edf8a2446c', 46, 1, 'login', '[]', 0, '2021-05-30 23:09:25', '2021-05-30 23:09:25', '2022-05-31 07:09:25'),
('7320c11a0503195592c0f13b9abc0ee694381da02b3f608f1b4f7a55acd3c672ab90c69fc6dcc29b', 42, 1, 'login', '[]', 0, '2021-05-31 02:22:04', '2021-05-31 02:22:04', '2022-05-31 10:22:04'),
('5ed961637ca474c41b2c81067d2b133a1198eca2f4a3f6a9bd05b7a1b8b58cfd0287587f8e319f96', 47, 1, 'login', '[]', 0, '2021-05-31 02:23:15', '2021-05-31 02:23:15', '2022-05-31 10:23:15'),
('f5d979d9c1f98c10537adcb4ec817ed4a3f79cead628fd2b18a9b99e55ffacbe3312061dbf8a1317', 42, 1, 'login', '[]', 0, '2021-05-31 03:00:29', '2021-05-31 03:00:29', '2022-05-31 11:00:29'),
('cb172bab370ebfcab44adfa848c1453eb0c8a864d7ebf7e2ed77d015c91f2d9278806f2294ec094e', 1, 1, 'login', '[]', 0, '2021-06-02 01:32:51', '2021-06-02 01:32:51', '2022-06-02 09:32:51'),
('b797ed855afa7883a35f5ae353d46e7e89cc93bfcb7abd57401c1d09f190f794429df7b056a5a680', 1, 1, 'login', '[]', 0, '2021-06-02 01:33:28', '2021-06-02 01:33:28', '2022-06-02 09:33:28'),
('d3805c1df061773b27ffbad93b1aea82a010d90e742e6aaa7bc1041371f398bef856c4bb6b297fef', 1, 1, 'login', '[]', 0, '2021-06-02 01:34:38', '2021-06-02 01:34:38', '2022-06-02 09:34:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'rlVG4BQEAijcHJxgZvghv3P06n2tF9KSTL2YRgmu', NULL, 'http://localhost', 1, 0, 0, '2021-05-25 01:19:06', '2021-05-25 01:19:06'),
(2, NULL, 'Laravel Password Grant Client', 'Yk3AYxyaBlA3uFP73meJgw4XJ7v1FcvmlYiVfjpD', 'users', 'http://localhost', 0, 1, 0, '2021-05-25 01:19:06', '2021-05-25 01:19:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-05-25 01:19:06', '2021-05-25 01:19:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Privacy Policy', '<h1><strong>Privacy Policy</strong></h1>\n\n<p><strong>Among 102 companies marketing genetic testing to consumers in 2014 for health purposes, 71 had publicly available terms and conditions:<a href=\"https://en.wikipedia.org/wiki/Terms_of_service#cite_note-phillips-4\">[4]</a></strong></p>\n\n<ul>\n	<li>57 of the 71 had disclaimer clauses (including 10 disclaiming liability for injury caused by their own negligence),</li>\n	<li>51 let the company change terms (including 17 without notice),</li>\n	<li>34 allow data disclosure in certain circumstances,</li>\n	<li>31 require consumers to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Indemnify\">indemnify</a>&nbsp;the company,\n	<ul>\n		<li>20 promise not to sell data.\n		<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n			<tbody>\n				<tr>\n					<td>\n					<ul>\n						<li>\n						<h2><strong>Name</strong></h2>\n						</li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11584S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li>\n						<h2><strong>Name</strong></h2>\n						</li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11584E\" style=\"display:none\">&nbsp;</span><span id=\"cke_bm_11583S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li>\n						<h2><strong>Name</strong></h2>\n						</li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11583E\" style=\"display:none\">&nbsp;</span><span id=\"cke_bm_11582S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li>\n						<h2><strong>Name</strong></h2>\n						</li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11582E\" style=\"display:none\">&nbsp;</span><span id=\"cke_bm_11581S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li>\n						<h2><strong>Name</strong></h2>\n						</li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11581E\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n				</tr>\n				<tr>\n					<td><span id=\"cke_bm_11580S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li>Name</li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11580E\" style=\"display:none\">&nbsp;</span><span id=\"cke_bm_11579S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li>Name</li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11579E\" style=\"display:none\">&nbsp;</span><span id=\"cke_bm_11578S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li>Name</li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11578E\" style=\"display:none\">&nbsp;</span><span id=\"cke_bm_11577S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li>Name</li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11577E\" style=\"display:none\">&nbsp;</span><span id=\"cke_bm_11576S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li>Name</li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11576E\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n				</tr>\n				<tr>\n					<td><span id=\"cke_bm_11575S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li>Name</li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11575E\" style=\"display:none\">&nbsp;</span><span id=\"cke_bm_11574S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li>Name</li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11574E\" style=\"display:none\">&nbsp;</span><span id=\"cke_bm_11573S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li>Name</li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11573E\" style=\"display:none\">&nbsp;</span><span id=\"cke_bm_11572S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li>Name</li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11572E\" style=\"display:none\">&nbsp;</span><span id=\"cke_bm_11571S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li>Name</li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11571E\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n				</tr>\n				<tr>\n					<td><span id=\"cke_bm_11570S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li>Name</li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11570E\" style=\"display:none\">&nbsp;</span><span id=\"cke_bm_11569S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li>Name</li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11569E\" style=\"display:none\">&nbsp;</span><span id=\"cke_bm_11568S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li>Name</li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11568E\" style=\"display:none\">&nbsp;</span><span id=\"cke_bm_11567S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li>Name</li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11567E\" style=\"display:none\">&nbsp;</span><span id=\"cke_bm_11566S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li>Name</li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11566E\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n				</tr>\n				<tr>\n					<td><span id=\"cke_bm_11565S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li><s>Name</s></li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11565E\" style=\"display:none\">&nbsp;</span><span id=\"cke_bm_11564S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li><s>Name</s></li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11564E\" style=\"display:none\">&nbsp;</span><span id=\"cke_bm_11563S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li><s>Name</s></li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11563E\" style=\"display:none\">&nbsp;</span><span id=\"cke_bm_11562S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li><s>Name</s></li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11562E\" style=\"display:none\">&nbsp;</span><span id=\"cke_bm_11561S\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n					<td>\n					<ul>\n						<li><s>Name</s></li>\n					</ul>\n					</td>\n					<td><span id=\"cke_bm_11561E\" style=\"display:none\">&nbsp;</span>&nbsp;</td>\n				</tr>\n			</tbody>\n		</table>\n\n		<p>&nbsp;</p>\n		</li>\n	</ul>\n	</li>\n</ul>', '2021-05-28 09:11:33', '2021-05-28 21:35:00'),
(2, 'Term & Condition', '<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ATTORNEY-CLIENT HOURLY FEE AGREEMENT</strong></h2>\n\n<p><strong>Hunziker Legal Services, PLLC</strong>. (&ldquo;Attorney&rdquo;) and the undersigned (&ldquo;Client&rdquo;) hereby agree that Attorney will provide legal services to Client on the terms set forth below.</p>\n\n<ol>\n	<li>&nbsp;<strong>CONDITIONS</strong>. This Agreement will not take effect, and Attorney will have no obligation to provide legal services, until Client returns a signed copy of this Agreement, pays the initial deposit called for under Paragraph 4, and Attorney has signed a copy of this agreement.</li>\n	<li><strong>SCOPE OF SERVICES</strong>. Client hires Attorney to provide legal services in the following matter\n	<p>Filing of the initial application for trademark, such initial filing not to cost more than $375 in legal fees per mark in addition to government filing fees and/or a trademark search if requested. Attorney will also draft up terms and conditions for clients&rsquo; application and additional work as requested by client and performed.</p>\n\n	<p>Office actions following the initial trademark registration that are substantive and don&rsquo;t deal strictly procedural matter, such as, but not limited to: likelihood of confusion office actions, rejections, oppositions, cancelations, litigation, etc. shall be charged at the regular hourly rate.</p>\n\n	<p>Client gives Attorney Power of Attorney to act as Client&#39;s Attorney at Law and as Attorney in Fact, with respect to all matters pertaining to this case, including power to execute for Client and on Client&#39;s behalf all pleadings, instruments, verifications in the case, and all complaints, claims, contracts, checks, settlement drafts, compromises, releases, dismissals, deposits &nbsp;and orders to the same extent as Client could do acting in his own behalf.</p>\n\n	<p>Attorney will take reasonable steps to keep Client informed of progress and to respond to Client&rsquo;s inquiries. If a court action is filed, Attorney will represent Client through trial and post-trial motions. This Agreement does not cover representation on appeal or in execution proceedings after judgment. Separate arrangements must be agreed to for those services. Services in any matter not described above will require a separate written agreement</p>\n	</li>\n	<li>\n	<p><strong>&nbsp;CLIENT&rsquo;S DUTIES</strong>. Client agrees to be truthful with Attorney, to cooperate, to keep Attorney informed of any information or developments which may come to Client&rsquo;s attention, to abide by this Agreement, to pay Attorney&rsquo;s bills on time, and to keep Attorney advised of Client&rsquo;s address, telephone number and whereabouts. Client will assist Attorney in providing necessary information and documents and will appear when necessary at legal proceedings.</p>\n	</li>\n	<li>\n	<p>&nbsp;<strong>DEPOSIT</strong>. Client agrees to pay Attorney an initial deposit. The hourly charges will be charged against the deposit. The initial deposit, as well as any future deposit, will be held in a trust account. Client authorizes Attorney to use that fund to pay the fees and other charges as they are incurred. Client acknowledges that the deposit is not an estimate of total fees and costs, but merely an advance for security.</p>\n\n	<p>Whenever the deposit is exhausted, Attorney reserves the right to demand further deposits, each up to a maximum of $ 1,000 before a trial or arbitration date is set. Once a trial or arbitration date is set, Client shall pay all sums then owing and deposit the attorneys&rsquo; fees estimated to be incurred in preparing for and completing the trial or arbitration, as well as the jury fees or arbitration fees, expert witness fees and other costs likely to be assessed. Those sums may exceed the maximum deposit.</p>\n\n	<p>Client agrees to pay all deposits after the initial deposit within 14 days of Attorney&rsquo;s demand. Unless otherwise agreed in writing, any unused deposit at the conclusion of Attorney&rsquo;s services will be refunded.<br />\n	&nbsp;</p>\n	</li>\n	<li>\n	<p>&nbsp;<strong>LEGAL FEES AND BILLING PRACTICES</strong>. Client agrees to pay by the hour at Attorney&rsquo;s prevailing rates for all time spent on Client&rsquo;s matter. Attorney&rsquo;s current prevailing rate is $200 an hour. This rate is subject to change on 30 days written notice to Client. If Client declines to pay increased rates, Attorney will haxe the right to withdraw as attorney for Client. Client certifies that all funds paid to lawyer are not derived from illegal activities such as the sale of drugs.</p>\n\n	<p>The time charged will include the time Attorney spends on telephone calls relating to Client&rsquo;s matter, including calls with Client, witnesses, opposing counsel or court personnel. The legal personnel assigned to Client&rsquo;s matter may confer among themselves about the matter, as required and appropriate. When they do confer, each person will charge for the time expended, as long as the work done is reasonably<br />\n	necessary and not duplicative. Likewise, if more than one of the legal personnel attends a meeting, court hearing or other proceeding, each will charge for the time spent. Attorney will charge for waiting time in court and elsewhere and for travel time, both local and out of town.</p>\n\n	<p>Time is charged in minimum units of one-tenth (. 1) of an hour</p>\n	</li>\n	<li>\n	<p><strong>COSTS AND OTHER CHARGES.</strong></p>\n	(a)&nbsp;Attorney will incur various out-of-pocket costs and expenses in performing legal services under this Agreement. Client agrees to pay for all out-of- pocket costs, disbursements, and expenses in addition to the hourly fees. The costs and expenses commonly include, service of process charges, filing fees, court and deposition reporters&#39; fees, jury fees, notary fees, deposition costs, the expense of having money electronically wired to Hunziker Legal Services, PLLC. (such as PayPal transfer fees or wire transfer fees), long distance telephone charges, messenger and other delivery fees, postage, photocopying and other reproduction costs, travel costs including parking, mileage, transportation, meals and hotel costs, investigation expenses, consultants&#39; fees, expert witness, professional, mediator, arbitrator and/or special master fees and other similar items. All costs and expenses will be charged at Attorney&rsquo;s cost.</li>\n</ol>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(b)&nbsp; Out of town travel. Client agrees to pay transportation, meals, lodging and all other costs of any necessary out-of-town travel by Attorney&rsquo;s personnel. &nbsp;Client will also be charged the&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;hourly rates for the time legal personnel spend traveling.</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; (c)&nbsp; Experts, Consultants and Investigators. To aid in the preparation or presentation of Client&rsquo;s case, it may become necessary to hire expert witnesses, consultants or investigators.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Client agrees to pay such fees and charges. Attorney will select any expert&nbsp; witnesses, consultants or investigators to be hired, and Client will be informed of persons chosen and&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;their charges.</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (d)&nbsp; If an award of fees and/or costs is sought on Client&rsquo;s behalf in this action, Client understands that the amount which the court may order as fees and/or costs is the amount the court&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;believes the party is entitled to recover, and does not determine what fees and/or costs Attorney is entitled to charge Client or that only the fees and/or costs which were allowed were&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;reasonable. &nbsp;Client agrees that, whether or not attorneys&rsquo; fees &nbsp;or costs are awarded by the court in Client&rsquo;s case, Client will remain responsible for the payment, in full, of all attorneys&rsquo;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;fees and costs in accordance with this Agreement.</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (e)&nbsp; &nbsp;Additionally, Client understands that if the matter proceeds to court action or arbitration, Client may be required to pay fees and/or costs to other parties in the &nbsp;action. Any such&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; payment will be entirely the responsibility of Client.</p>\n\n<p>&nbsp; &nbsp;7.&nbsp;&nbsp;<strong>BILLING STATEMENTS</strong>. &nbsp;Attorney will send Client periodic statements for fees and costs incurred. Each statement will be payable within 14 days of its mailing or emailing date. Client may request a statement at intervals of no less than 7 days. &nbsp;If Client so requests, Attorney will provide one within 5 days. &nbsp;The statements &nbsp;shall include the amount, rate, basis of calculation &nbsp;or other method of determination of the fees and costs, which costs will be clearly identified by item and amount</p>\n\n<p>&nbsp; &nbsp;8 .&nbsp;<strong>DISCHARGE AND WITHDRAWAL</strong>. Client expressly acknowledges and agrees that Attorney will withdraw from all representation of Client at any time that Client fails to meet Client&#39;s financial obligations as set forth in this agreement. Should collection efforts on any fees or costs due from Client be needed, Client agrees to pay all attorney fees and other collection costs incurred by Attorney. Additionally, either partymay terminate this Agreement without cause. When Attorney&rsquo;s services conclude, all unpaid charges will immediately become due and payable. Any amount not paid within thirty days will accrue a late fee of lUi % per month -18% a year.</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;After services conclude, Attorney will, upon Client&rsquo;s request, copy and deliver Client&rsquo;s file at Client&rsquo;s expense, along with any property in Attorney&rsquo;s possession unless such property is subject to the lien provided in Paragraph 8 above. &nbsp;Client understands that Attorney will not retain Client&rsquo;s file indefinitely and it may be destroyed any time after completion of the case without notice to Client.</p>\n\n<p>&nbsp;</p>\n\n<p>9&nbsp; &nbsp; <strong>DISCLAIMER OF GUARANTEE &nbsp;AND ESTIMATES</strong>. &nbsp;Nothing in this Agreement and nothing in Attorney&rsquo;s statements to Client will be construed as a promise or guarantee about the outcome of the matter. Attorney makes no such promises or guarantees. Attorney&rsquo;s comments about the outcome of the matter are expressions of opinion only. Any estimate of out-of-pocket costs and expenses given by Attorney shall not be a guarantee. Actual out-of-pocket costs and expenses may vary from estimates given.</p>\n\n<p>10&nbsp; &nbsp;<strong>&nbsp;WAIVER &nbsp;OF CONFLICTS &nbsp;OF INTEREST</strong>: &nbsp;Client expressly agrees to waive all conflicts &nbsp;of interest to the fullest extent of the law. &nbsp;Specifically, &nbsp;Client agrees to waive all conflicts of interest against future clients of Attorney after representation has concluded. Any conflict of interest between current Clients cannot be deemed waived until both clients have consented to the conflict of interest in writing after consultation with Attorney.</p>\n\n<p>11&nbsp; &nbsp;<strong> ENTIRE AGREEMENT.</strong> This Agreement contains the entire agreement of the parties. No other agreement, statement, or promise made on or before the effective date of this Agreement will be binding on the parties.</p>\n\n<p>12&nbsp; &nbsp; <strong>SEVERABILITY IN EVENT OF PARTIAL INVALIDITY</strong>. If any provision of this Agreement is held in whole or in part to be unenforceable &nbsp;for any reason, the remainder of that provision and of the entire Agreement will be severable and remain in effect.</p>\n\n<p>13&nbsp; &nbsp;<strong> MODIFICATION BV SUBSEQUENT AGREENIENF</strong>. This Agreement may be modified by subsequent agreement of the parties only by an instrument in writing signed by both parties or an oral agreement only to the extent that the parties carry it out.</p>\n\n<p>14&nbsp; <strong>&nbsp;EFFECTIVE DATE. </strong>This Agreement will govern all legal services performed by Attorney on behalf of Client commencing with the date Attorney first performed services and ending on the date Attorney completes the services listed under scope of services or a notice of withdrawal is given to Client, at which time &nbsp;representation has concluded. Even if this Agreement does not take effect, Client will be obligated to pay Attorney the reasonable value of any services Attorney may have performed for Client.<br />\n&nbsp;</p>\n\n<h3><strong>THE PARTIES HAVE READ AND UNDERSTOOD THE FOREGOING TERMS AND AGREE TO THEM AS OF THE DATE ATTORNEY FIRST PROVIDED &nbsp;SERVICES. IF MORE THAN ONE CLIENT SIGNS BELOW, EACH AGREES TO BE LIABLE, JOINTLY AND SEVERALLY, FOR ALL OBLIGATIONS UNDER THIS AGREEMENT. THE OBLIGATION OF ANY CORPORATION, PARTNERSHIP, JOINT VENTURE OR ANY OTHER LEGAL ENTITY SHALL BE PERSONALLY GURANTEED. ANY INDIVIDUAL &nbsp;SIGNING FOR AN ENTITY REPRESENTS THAT HE/SHE HAS FULL LEGAL AUTHORITY TO DO SO ON BEHALF OF THE ENTITY. ALL MONEY RECEIVED BY ATTORNEY PRIOR TO ATTORNEY SENDING A SIGNED COPY OF THIS CONTRACT TO CLIENT SHALL BE HELD &nbsp;IN A TRUST ACCOUNT AND REFUNDED UPON REQUEST.</strong><br />\n&nbsp;</h3>\n\n<p>.DATED :&nbsp;<ins>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</ins>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<ins>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</ins>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Will Hurizilcer, JD.</p>\n\n<hr />\n<p>Hunziker Legal Services,</p>\n\n<p>PLLC 1942 Broadway St. Suite 314</p>\n\n<p>Boulder, CO 80302<br />\nPhone# 720-310-0013<br />\nFax# 720-306-3017<br />\nwillhunziker@gmail.com</p>\n\n<pre>\nHunzikerLegalServices.com\n\n\n\n\n\n\nPayment may be made by check payable to &nbsp;Hunpker Legal Prices, T&#39;&nbsp;. at the address above, or by Credit Card at HunzikerLe alservices.cr&rsaquo;m. Please do not mail cash. For your safety, please vettfy that my web address displays correctly in your browser. None of your credit card \ninformation is stored on my server and I will never ask you to give me any credit card or \nbank account information either by phone or email.\n</pre>\n\n<p><br />\n&nbsp;</p>', '2021-05-28 09:11:33', '2021-06-02 03:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tanks`
--

CREATE TABLE `tanks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `tankName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tank 1',
  `leaseTask` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sizeOfTanks` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastDate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastDelivery` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastPrice` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currentGallons` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendorName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendorMobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_degree_day_multiplier` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_removed` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tanks`
--

INSERT INTO `tanks` (`id`, `userId`, `tankName`, `leaseTask`, `sizeOfTanks`, `lastDate`, `lastDelivery`, `lastPrice`, `currentGallons`, `vendorName`, `vendorMobile`, `last_degree_day_multiplier`, `is_removed`, `created_at`, `updated_at`) VALUES
(9, 27, 'tank 1', 'Yes', '100', '20/4/2021', '60', '1000', '80', 'Alex xavier', '9865789865', '', 0, '2021-05-28 03:44:35', '2021-06-03 12:35:01');

-- --------------------------------------------------------

--
-- Table structure for table `tank_refueling`
--

CREATE TABLE `tank_refueling` (
  `id` int(11) NOT NULL,
  `tank_id` int(11) NOT NULL,
  `currentDate` varchar(100) DEFAULT NULL,
  `previousTankPer` varchar(10) DEFAULT NULL,
  `endingTankPer` varchar(10) DEFAULT NULL,
  `delieveredGallons` varchar(20) DEFAULT NULL,
  `currentTankGallons` varchar(20) DEFAULT NULL,
  `pricePerGallons` varchar(20) DEFAULT NULL,
  `additionalCharges` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tank_refueling`
--

INSERT INTO `tank_refueling` (`id`, `tank_id`, `currentDate`, `previousTankPer`, `endingTankPer`, `delieveredGallons`, `currentTankGallons`, `pricePerGallons`, `additionalCharges`) VALUES
(1, 9, '2021-05-03', '20', '90', '70', '90', '25', '0'),
(2, 9, '2021-04-03', '20', '80', '60', '80', '25', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_removed` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`, `mobile`, `image`, `role`, `token`, `subscription`, `is_removed`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'test', 'admin@gmail.com', '$2y$10$67gFCOz2DK.TRvwFeVuoROD9drKXjY3c7Dct7bmzL9GRb3wa9aBkG', 1111111111, NULL, 'admin', NULL, NULL, '0', '2021-05-25 09:16:03', '2021-05-25 09:16:03'),
(2, 'Tester', 'test', 'test@yopmail.com', '$2y$10$w1uigJifh9yQaXaUK8L4jeI0aBPlR.YBUf0GGenUlBM8RdeFmu6wm', 2222222222, NULL, 'admin', 'aegK68', NULL, '0', '2021-05-25 09:16:03', '2021-05-28 23:59:47'),
(3, 'Tester1', 'test', 'test1@yopmail.com', '$2y$10$xraNxdQV0tYZNxB4Q5xEGehjs31nUJ0yWV2epsbAs28Bnv.khtRXG', 3333333333, NULL, 'admin', NULL, NULL, '0', '2021-05-25 09:16:03', '2021-05-25 09:16:03'),
(46, 'string Upadte', 'string', 'mouse@yopmail.com', '$2y$10$mL7IWjDpeo77vNH3Sj7o0O4HcCecj.QalFGkdiKy91z8urLseRV96', 1410065407, '162244499811.png', 'user', NULL, 'Free', '0', '2021-05-30 23:09:25', '2021-05-30 23:11:18'),
(42, 'test', 'test', 'test12@mail.com', '$2y$10$9qChniEc.FsjXPwhtrwUqOjqRNGnWuoARKol.NX8e0h3WWg9fEKbS', 1234567890, '16224508731mgsqnxlss8vve2nxne3i.jpg', 'user', NULL, 'free', '0', '2021-05-28 23:32:39', '2021-05-31 00:47:55'),
(41, 'testsett', 'estsetsett', 'test123@yopmail.com', '$2y$10$0KgSftxIQYeUcVaB0BWu2OjwWqCTX4nniGhMAuA1FgL7jcqWVfUZu', 1212121212, NULL, 'user', NULL, 'free', '0', '2021-05-28 21:46:12', '2021-05-28 21:46:12'),
(40, 'update', 'string', 'One@yopmail.com', '$2y$10$oZMwj7txn/kWIwrvt6l4MeURCXCzB54WLbL3WuGfFcsDj6TcVQL4q', 1410065407, '1622437271copc9lsov19avmqd93u6ze.jpg', 'user', NULL, 'Free', '0', '2021-05-28 21:43:57', '2021-05-30 21:43:51'),
(37, 'ashish', 'Pandya', 'Ashish@octosglobal.com', '$2y$10$F6ODT1BcZVcg1WTgxDYbj.U6DB.oc8ifqOgQg3i2VxXLBT3G7csy2', 9727717682, NULL, 'user', NULL, 'Free', '0', '2021-05-28 06:09:53', '2021-05-29 05:26:46'),
(47, 'test', 'test', 'test2@mail.com', '$2y$10$.8jyR2b.mSF9AD7Rx.ajqOSs0aLmgQvlAVPQEcdgxHMN.MSAjGBZG', 1234567890, NULL, 'user', NULL, 'free', '0', '2021-05-31 02:23:15', '2021-05-31 02:23:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_locations`
--

CREATE TABLE `user_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipCode` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_locations`
--

INSERT INTO `user_locations` (`id`, `userId`, `address`, `zipCode`, `city`, `state`, `region`, `lat`, `lng`, `created_at`, `updated_at`) VALUES
(1, '17', 'string', '382021', 'string', 'string', 'string', '36.8225', '28.258', '2021-05-27 04:51:13', '2021-05-27 04:51:13'),
(2, '27', 'string', '382021', 'string', 'string', 'string', '36.8225', '28.258', '2021-05-28 03:41:35', '2021-05-28 03:43:21'),
(3, '27', 'A mahesmati road', '95298', 'rajkot', 'gujarat', 'cristian', '111', '999', '2021-05-28 03:43:33', '2021-05-28 03:43:33'),
(4, '10', 'string', '382021', 'string', 'string', 'string', '36.8225', '28.258', '2021-05-28 03:53:35', '2021-05-28 03:53:35'),
(5, '35', 'test', NULL, 'test', 'test', 'eter', '36.8225', '28.258', '2021-05-28 05:36:59', '2021-05-28 05:45:43'),
(6, '14', 'string', '382021', 'string', 'string', 'string', '36.8225', '28.258', '2021-05-28 06:01:15', '2021-05-28 06:01:15'),
(7, '43', 'test', '111111', 'test', 'test', 'test', '36.8225', '28.258', '2021-05-28 23:48:23', '2021-05-29 00:11:26'),
(8, '42', 'test', '123456', 'resr', 'test', 'test', '36.8225', '28.258', '2021-05-30 20:48:02', '2021-05-31 00:47:55'),
(9, '40', 'string', '382021', 'string', 'string', 'string', '36.8225', '28.258', '2021-05-30 21:41:13', '2021-05-30 21:43:51'),
(10, '46', 'string', '382021', 'string', 'string', 'string', '36.8225', '28.258', '2021-05-30 23:11:18', '2021-05-30 23:11:18'),
(11, '42', 'A mahesmati road', '95298', 'rajkot', 'gujarat', 'cristian', '111', '999', '2021-05-31 02:22:36', '2021-05-31 02:22:36'),
(12, '42', 'test', '121212', 'test', 'test', 'test', '123', '456', '2021-05-31 03:49:17', '2021-05-31 03:49:17'),
(13, '42', 'test', '121212', 'test', 'test', 'asdas', '123', '456', '2021-05-31 03:50:14', '2021-05-31 03:50:14'),
(14, '42', 'test', '121212', 'test', 'test', 'asdas', '123', '456', '2021-05-31 03:50:30', '2021-05-31 03:50:30'),
(15, '42', 'test', '121212', 'test', 'test', 'sasa', '123', '456', '2021-05-31 03:51:00', '2021-05-31 03:51:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `market_trends`
--
ALTER TABLE `market_trends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tanks`
--
ALTER TABLE `tanks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tank_refueling`
--
ALTER TABLE `tank_refueling`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_locations`
--
ALTER TABLE `user_locations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `market_trends`
--
ALTER TABLE `market_trends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tanks`
--
ALTER TABLE `tanks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tank_refueling`
--
ALTER TABLE `tank_refueling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `user_locations`
--
ALTER TABLE `user_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
