-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Gép: localhost:3306
-- Létrehozás ideje: 2026. Aug 30. 14:32
-- Kiszolgáló verziója: 10.11.18-MariaDB-cll-lve-log
-- PHP verzió: 8.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `swmjndga_f1adat`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `activity_logs`
--

CREATE TABLE `activity_logs` (
  `log_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT 'System',
  `action` varchar(50) NOT NULL,
  `details` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- A tábla adatainak kiíratása `activity_logs`
--

INSERT INTO `activity_logs` (`log_id`, `username`, `action`, `details`, `ip_address`, `created_at`) VALUES
(1, 'Admin', 'system_update', 'Admin panel frissítve az új designra.', NULL, '2026-02-10 13:30:41'),
(2, 'rubenA', 'ban_user', 'Felhasználó ID (34) kitiltva.', '2a00:1110:203:6b98:4944:372d:7362:b8b1', '2026-02-12 07:31:45'),
(3, 'rubenA', 'ban_user', 'Felhasználó ID (35) kitiltva.', '2a00:1110:124:be6a:1d1a:8cd5:b47a:4d33', '2026-02-13 07:30:08'),
(4, 'rubenA', 'role_change', 'Felhasználó ID (32) új szerepköre: user', '2a00:1110:224:3fee:7d82:b42a:bd3e:4539', '2026-03-16 12:17:06'),
(5, 'HELL\\JUMPER', 'ban_user', 'Felhasználó ID (38) kitiltva.', '2a01:36d:120:c8b2:7ddc:5b:af4f:4', '2026-04-04 13:40:08'),
(6, 'HELL\\JUMPER', 'unban_user', 'Felhasználó ID (38) tiltása feloldva.', '2a01:36d:120:647d:5597:263b:d4ee:512', '2026-04-05 14:17:34'),
(7, 'HELL\\JUMPER', 'unban_user', 'Felhasználó ID (38) tiltása feloldva.', '2a01:36d:120:647d:5597:263b:d4ee:512', '2026-04-05 14:18:49'),
(8, 'HELL\\JUMPER', 'unban_user', 'Felhasználó ID (38) tiltása feloldva.', '2a01:36d:120:647d:5597:263b:d4ee:512', '2026-04-05 14:18:54'),
(9, 'HELL\\JUMPER', 'login', 'Sikeres bejelentkezés', '130.43.210.94', '2026-04-17 08:52:42'),
(10, 'rubenA', 'login', 'Sikeres bejelentkezés', '195.199.251.129', '2026-04-17 09:03:06'),
(11, 'rubenA', 'login', 'Sikeres bejelentkezés', '195.199.251.129', '2026-04-17 10:54:24'),
(12, 'HELL\\JUMPER', 'login', 'Sikeres bejelentkezés', '2a01:36d:120:458e:8569:912b:be1b:31ac', '2026-04-18 16:10:00'),
(13, 'HELL\\JUMPER', 'login', 'Sikeres bejelentkezés', '2a01:36d:120:458e:986:f941:985c:5ca', '2026-04-18 16:12:24'),
(14, 'rubenA', 'login', 'Sikeres bejelentkezés', '2a02:26f7:e004:4680:0:2000:0:a', '2026-04-18 20:15:44'),
(15, 'HELL\\JUMPER', 'login', 'Sikeres bejelentkezés', '2a01:36d:120:4327:e193:3cb:24bc:3f83', '2026-04-19 15:25:20'),
(16, 'HELL\\JUMPER', 'login', 'Sikeres bejelentkezés', '188.143.104.132', '2026-04-19 15:47:14'),
(17, 'rubenA', 'login', 'Sikeres bejelentkezés', '84.236.16.238', '2026-04-19 18:12:55'),
(18, 'HELL\\JUMPER', 'login', 'Sikeres bejelentkezés', '130.43.212.139', '2026-04-20 08:44:06'),
(19, 'rubenA', 'login', 'Sikeres bejelentkezés', '2a00:1110:207:526d:a416:c44e:f5f1:d138', '2026-04-20 08:51:31'),
(20, 'HELL\\JUMPER', 'login', 'Sikeres bejelentkezés', '130.43.212.139', '2026-04-20 08:53:20'),
(21, 'HELL\\JUMPER', 'login', 'Sikeres bejelentkezés', '130.43.208.19', '2026-04-22 11:49:47'),
(22, 'rubenA', 'login', 'Sikeres bejelentkezés', '2a00:1110:110:4251:257c:1a4d:6363:d4d', '2026-04-22 12:46:22'),
(23, 'HELL\\JUMPER', 'login', 'Sikeres bejelentkezés', '195.199.251.129', '2026-04-23 09:40:56'),
(24, 'HELL\\JUMPER', 'login', 'Sikeres bejelentkezés', '195.199.251.129', '2026-04-24 06:33:43'),
(25, 'rubenA', 'login', 'Sikeres bejelentkezés', '84.236.16.236', '2026-04-25 12:13:52'),
(26, 'rubenA', 'login', 'Sikeres bejelentkezés', '195.199.251.129', '2026-04-27 07:35:56'),
(27, 'rubenA', 'login', 'Sikeres bejelentkezés', '2a00:1110:22c:bfb2:d999:2298:e4a8:e4fe', '2026-04-27 09:53:23'),
(28, 'Ruben_alt', 'login', 'Sikeres bejelentkezés', '2a00:1110:22c:bfb2:d999:2298:e4a8:e4fe', '2026-04-27 10:01:40'),
(29, 'rubenA', 'login', 'Sikeres bejelentkezés', '2a00:1110:22c:bfb2:d999:2298:e4a8:e4fe', '2026-04-27 10:02:46'),
(30, 'rubenA', 'login', 'Sikeres bejelentkezés', '2a00:1110:22c:bfb2:d999:2298:e4a8:e4fe', '2026-04-27 10:09:32'),
(31, 'admin_felh', 'login', 'Sikeres bejelentkezés', '84.236.16.236', '2026-04-27 19:20:08'),
(32, 'rubenA', 'login', 'Sikeres bejelentkezés', '84.236.16.236', '2026-04-27 19:21:47'),
(33, 'rubenA', 'role_change', 'Felhasználó ID (42) új szerepköre: admin', '84.236.16.236', '2026-04-27 19:22:07'),
(34, 'admin_felh', 'login', 'Sikeres bejelentkezés', '84.236.16.236', '2026-04-27 19:22:22'),
(35, 'admin_felh', 'login', 'Sikeres bejelentkezés', '84.236.16.236', '2026-04-27 19:25:06'),
(36, 'Szilva', 'login', 'Sikeres bejelentkezés', '78.131.57.203', '2026-04-28 05:19:57'),
(37, 'Szilva', 'login', 'Sikeres bejelentkezés', '78.131.57.203', '2026-04-28 05:26:20'),
(38, 'rubenA', 'login', 'Sikeres bejelentkezés', '2a00:1110:113:2b85:b5a4:12a7:7e6b:4465', '2026-04-28 09:33:59'),
(39, 'kicsike', 'login', 'Sikeres bejelentkezés', '195.199.251.129', '2026-04-28 10:28:43'),
(40, 'Buzibogyó', 'login', 'Sikeres bejelentkezés', '195.199.251.129', '2026-04-28 10:31:44'),
(41, 'kicsike', 'login', 'Sikeres bejelentkezés', '195.199.251.129', '2026-04-28 10:49:56'),
(42, 'Szilva', 'login', 'Sikeres bejelentkezés', '2a01:36d:120:4327:b5a6:f00c:3149:9986', '2026-04-28 15:36:03'),
(43, 'rubenA', 'login', 'Sikeres bejelentkezés', '2a02:26f7:e008:4680:0:6000:0:5', '2026-05-11 12:37:02'),
(44, 'rubenA', 'login', 'Sikeres bejelentkezés', '195.199.251.129', '2026-05-11 12:54:44'),
(45, 'HELL\\JUMPER', 'login', 'Sikeres bejelentkezés', '2a01:36d:120:20a9:8c83:461f:d6ad:25cb', '2026-05-13 15:03:34'),
(46, 'HELL\\JUMPER', 'login', 'Sikeres bejelentkezés', '2a01:36d:120:20a9:8a6:3cbc:a0bb:5ce3', '2026-05-13 15:32:12'),
(47, 'rubenA', 'login', 'Sikeres bejelentkezés', '92.249.168.66', '2026-05-20 11:50:09'),
(48, 'HELL\\JUMPER', 'login', 'Sikeres bejelentkezés', '2a01:36d:120:63c:2c8b:d697:2e78:b6d2', '2026-05-20 14:31:49'),
(49, 'rubenA', 'login', 'Sikeres bejelentkezés', '92.249.168.66', '2026-05-20 14:32:51'),
(50, 'rubenA', 'login', 'Sikeres bejelentkezés', '92.249.168.66', '2026-05-20 14:33:32'),
(51, 'admin_felh', 'login', 'Sikeres bejelentkezés', '92.249.168.66', '2026-05-20 14:44:09'),
(52, 'admin_felh', 'login', 'Sikeres bejelentkezés', '92.249.168.66', '2026-05-20 14:49:14'),
(53, 'admin_felh', 'login', 'Sikeres bejelentkezés', '92.249.168.66', '2026-05-20 14:50:09'),
(54, 'HELL\\JUMPER', 'login', 'Sikeres bejelentkezés', '2a01:36d:120:63c:2c8b:d697:2e78:b6d2', '2026-05-20 15:40:20'),
(55, 'rubenA', 'login', 'Sikeres bejelentkezés', '92.249.168.66', '2026-05-20 16:37:20'),
(56, 'rubenA', 'login', 'Sikeres bejelentkezés', '92.249.168.66', '2026-05-21 19:33:50'),
(57, 'rubenA', 'login', 'Sikeres bejelentkezés', '130.43.208.3', '2026-05-22 08:32:29'),
(58, 'rubenA', 'login', 'Sikeres bejelentkezés', '195.199.251.129', '2026-05-22 09:49:34'),
(59, 'HELL\\JUMPER', 'login', 'Sikeres bejelentkezés', '151.0.82.17', '2026-05-22 13:10:33'),
(60, 'HELL\\JUMPER', 'login', 'Sikeres bejelentkezés', '151.0.82.17', '2026-05-22 13:51:49'),
(61, 'HELL\\JUMPER', 'login', 'Sikeres bejelentkezés', '151.0.82.17', '2026-05-22 18:01:46'),
(62, 'rubenA', 'login', 'Sikeres bejelentkezés', '2a01:36d:2700:2c23:4de5:4b90:e12e:3d3a', '2026-05-22 18:24:26'),
(63, 'HELL\\JUMPER', 'login', 'Sikeres bejelentkezés', '2a01:36d:120:2864:d8c1:f0c0:d8d3:300e', '2026-05-24 22:31:06'),
(64, 'rubenA', 'login', 'Sikeres bejelentkezés', '84.236.30.135', '2026-05-25 15:55:03'),
(65, 'rubenA', 'login', 'Sikeres bejelentkezés', '84.236.30.135', '2026-05-27 18:28:55'),
(66, 'Buzibogyó', 'login', 'Sikeres bejelentkezés', '2001:4c4c:12d5:2d00:dc57:2b8a:e0af:3aa4', '2026-05-27 19:35:59'),
(67, 'rubenA', 'login', 'Sikeres bejelentkezés', '2a02:26f7:e008:4680:0:6000:0:4', '2026-07-14 18:48:29'),
(68, 'Nikoletta03', 'login', 'Sikeres bejelentkezés', '130.43.209.2', '2026-07-26 05:51:15'),
(69, 'Pjozsef', 'login', 'Sikeres bejelentkezés', '151.0.81.232', '2026-07-27 14:44:40');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `chat_messages`
--

CREATE TABLE `chat_messages` (
  `message_id` int(11) NOT NULL COMMENT 'Egyedi azonosító',
  `chat_id` int(11) NOT NULL COMMENT 'Melyik szobában',
  `user_id` int(11) NOT NULL COMMENT 'Ki írta',
  `message` text NOT NULL COMMENT 'Üzenet',
  `sent_at` datetime NOT NULL COMMENT 'Küldés ideje'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `chat_rooms`
--

CREATE TABLE `chat_rooms` (
  `chat_id` int(11) NOT NULL COMMENT 'Egyedi azonosító',
  `chat_name` varchar(100) NOT NULL COMMENT 'Chat szoba neve',
  `created_by` int(11) NOT NULL COMMENT 'Ki hozta létre',
  `created_at` datetime NOT NULL COMMENT 'Létrehozás ideje'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `csapatok`
--

CREATE TABLE `csapatok` (
  `team_id` int(11) NOT NULL COMMENT 'Egyedi azonosító',
  `team_name` varchar(100) NOT NULL COMMENT 'Csapat neve',
  `country` varchar(50) NOT NULL COMMENT 'Székhely országa',
  `points` int(11) NOT NULL COMMENT 'Össz csapat pontok',
  `logo` varchar(255) NOT NULL COMMENT 'Csapat logó'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `csapatok`
--

INSERT INTO `csapatok` (`team_id`, `team_name`, `country`, `points`, `logo`) VALUES
(1, 'McLaren', 'United Kingdom', 833, 'logos/mclaren.png'),
(2, 'Mercedes', 'Germany', 469, 'logos/mercedes.png'),
(3, 'Red Bull', 'Austria', 451, 'logos/redbull.png'),
(4, 'Ferrari', 'Italy', 398, 'logos/ferrari.png'),
(5, 'Williams', 'United Kingdom', 137, 'logos/williams.png'),
(6, 'RB', 'Italy', 92, 'logos/rb.png'),
(7, 'Aston Martin', 'United Kingdom', 89, 'logos/aston_martin.png'),
(8, 'Haas', 'United States', 79, 'logos/haas.png'),
(9, 'Audi', 'Switzerland', 70, 'logos/sauber.png'),
(10, 'Alpine', 'French', 22, 'logos/alpine.png'),
(11, 'Cadillac', 'United States', 0, 'logos/cadillac.png');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eredmenyek_edzes`
--

CREATE TABLE `eredmenyek_edzes` (
  `practice_id` int(11) NOT NULL COMMENT 'Egyedi azonosító',
  `race_id` int(11) NOT NULL COMMENT 'Futam',
  `driver_id` int(11) NOT NULL COMMENT 'Pilóta',
  `session` enum('FP1','FP2','FP3','') NOT NULL COMMENT 'Edzés "típusa"',
  `position` int(11) NOT NULL COMMENT 'Helyezés',
  `lap_time` decimal(6,3) NOT NULL COMMENT 'Legjobb köridő',
  `status_id` int(11) NOT NULL COMMENT 'Státusz'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eredmenyek_idomero`
--

CREATE TABLE `eredmenyek_idomero` (
  `quali_id` int(11) NOT NULL COMMENT 'Egyedi azonosító',
  `race_id` int(11) NOT NULL COMMENT 'Futam',
  `driver_id` int(11) NOT NULL COMMENT 'Pilóta',
  `position` int(11) NOT NULL COMMENT 'Helyezés',
  `lap_time` decimal(6,3) NOT NULL COMMENT 'Legjobb köridő',
  `status_id` int(11) NOT NULL COMMENT 'Státusz'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `f1_races`
--

CREATE TABLE `f1_races` (
  `race_id` int(11) NOT NULL,
  `race_name` varchar(100) NOT NULL,
  `country` varchar(50) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `race_date` datetime DEFAULT NULL,
  `fp1_date` datetime DEFAULT NULL,
  `fp2_date` datetime DEFAULT NULL,
  `fp3_date` datetime DEFAULT NULL,
  `quali_date` datetime DEFAULT NULL,
  `circuit_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `f1_races`
--

INSERT INTO `f1_races` (`race_id`, `race_name`, `country`, `year`, `race_date`, `fp1_date`, `fp2_date`, `fp3_date`, `quali_date`, `circuit_name`) VALUES
(19, 'Australian Grand Prix', 'Australia', 2026, '2026-03-08 05:00:00', '2026-03-06 03:30:00', '2026-03-06 07:00:00', '2026-03-07 02:30:00', '2026-03-07 06:00:00', 'Albert Park Circuit'),
(20, 'Chinese Grand Prix', 'China', 2026, '2026-03-15 08:00:00', '2026-03-13 06:30:00', '2026-03-13 10:00:00', '2026-03-14 05:30:00', '2026-03-14 09:00:00', 'Shanghai International Circuit'),
(21, 'Japanese Grand Prix', 'Japan', 2026, '2026-03-29 07:00:00', '2026-03-27 05:30:00', '2026-03-27 09:00:00', '2026-03-28 04:30:00', '2026-03-28 08:00:00', 'Suzuka Circuit'),
(24, 'Miami Grand Prix', 'USA', 2026, '2026-05-03 22:00:00', '2026-05-01 20:30:00', '2026-05-02 00:00:00', '2026-05-02 19:30:00', '2026-05-02 23:00:00', 'Miami International Autodrome'),
(25, 'Canadian Grand Prix', 'Canada', 2026, '2026-05-24 20:00:00', '2026-05-22 18:30:00', '2026-05-22 22:00:00', '2026-05-23 17:30:00', '2026-05-23 21:00:00', 'Circuit Gilles Villeneuve'),
(26, 'Monaco Grand Prix', 'Monaco', 2026, '2026-06-07 15:00:00', '2026-06-05 13:30:00', '2026-06-05 17:00:00', '2026-06-06 12:30:00', '2026-06-06 16:00:00', 'Circuit de Monaco'),
(27, 'Barcelona-Catalunya Grand Prix', 'Spain', 2026, '2026-06-14 15:00:00', '2026-06-12 13:30:00', '2026-06-12 17:00:00', '2026-06-13 12:30:00', '2026-06-13 16:00:00', 'Circuit de Barcelona-Catalunya'),
(28, 'Austrian Grand Prix', 'Austria', 2026, '2026-06-28 15:00:00', '2026-06-26 13:30:00', '2026-06-26 17:00:00', '2026-06-27 12:30:00', '2026-06-27 16:00:00', 'Red Bull Ring'),
(29, 'British Grand Prix', 'UK', 2026, '2026-07-05 16:00:00', '2026-07-03 14:30:00', '2026-07-03 18:00:00', '2026-07-04 13:30:00', '2026-07-04 17:00:00', 'Silverstone Circuit'),
(30, 'Belgian Grand Prix', 'Belgium', 2026, '2026-07-19 15:00:00', '2026-07-17 13:30:00', '2026-07-17 17:00:00', '2026-07-18 12:30:00', '2026-07-18 16:00:00', 'Circuit de Spa-Francorchamps'),
(31, 'Hungarian Grand Prix', 'Hungary', 2026, '2026-07-26 15:00:00', '2026-07-24 13:30:00', '2026-07-24 17:00:00', '2026-07-25 12:30:00', '2026-07-25 16:00:00', 'Hungaroring'),
(32, 'Dutch Grand Prix', 'Netherlands', 2026, '2026-08-23 15:00:00', '2026-08-21 13:30:00', '2026-08-21 17:00:00', '2026-08-22 12:30:00', '2026-08-22 16:00:00', 'Circuit Zandvoort'),
(33, 'Italian Grand Prix', 'Italy', 2026, '2026-09-06 15:00:00', '2026-09-04 13:30:00', '2026-09-04 17:00:00', '2026-09-05 12:30:00', '2026-09-05 16:00:00', 'Autodromo Nazionale Monza'),
(34, 'Spanish Grand Prix', 'Spain', 2026, '2026-09-13 15:00:00', '2026-09-11 13:30:00', '2026-09-11 17:00:00', '2026-09-12 12:30:00', '2026-09-12 16:00:00', 'IFEMA Madrid Circuit'),
(35, 'Azerbaijan Grand Prix', 'Azerbaijan', 2026, '2026-09-27 13:00:00', '2026-09-25 11:30:00', '2026-09-25 15:00:00', '2026-09-26 10:30:00', '2026-09-26 14:00:00', 'Baku City Circuit'),
(36, 'Singapore Grand Prix', 'Singapore', 2026, '2026-10-11 14:00:00', '2026-10-09 12:30:00', '2026-10-09 16:00:00', '2026-10-10 11:30:00', '2026-10-10 15:00:00', 'Marina Bay Street Circuit'),
(37, 'United States Grand Prix', 'USA', 2026, '2026-10-25 21:00:00', '2026-10-23 19:30:00', '2026-10-23 23:00:00', '2026-10-24 18:30:00', '2026-10-24 22:00:00', 'Circuit of the Americas'),
(38, 'Mexico City Grand Prix', 'Mexico', 2026, '2026-11-01 21:00:00', '2026-10-30 19:30:00', '2026-10-30 23:00:00', '2026-10-31 18:30:00', '2026-10-31 22:00:00', 'Autódromo Hermanos Rodríguez'),
(39, 'São Paulo Grand Prix', 'Brazil', 2026, '2026-11-08 18:00:00', '2026-11-06 16:30:00', '2026-11-06 20:00:00', '2026-11-07 15:30:00', '2026-11-07 19:00:00', 'Autódromo José Carlos Pace'),
(40, 'Las Vegas Grand Prix', 'USA', 2026, '2026-11-22 07:00:00', '2026-11-20 05:30:00', '2026-11-20 09:00:00', '2026-11-21 04:30:00', '2026-11-21 08:00:00', 'Las Vegas Strip Circuit'),
(41, 'Qatar Grand Prix', 'Qatar', 2026, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Abu Dhabi Grand Prix', 'UAE', 2026, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `friendships`
--

CREATE TABLE `friendships` (
  `id` int(11) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `status` enum('pending','accepted') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `friendships`
--

INSERT INTO `friendships` (`id`, `sender`, `receiver`, `status`, `created_at`) VALUES
(4, 'rubenA', 'mate006', 'pending', '2026-03-23 13:51:18'),
(5, 'HELL\\JUMPER', 'cadilad_proba', 'pending', '2026-04-06 16:18:21'),
(6, 'HELL\\JUMPER', 'rubenA', 'accepted', '2026-04-15 12:06:33'),
(7, 'rubenA', 'cadilad_proba', 'pending', '2026-04-27 09:59:05'),
(8, 'Ruben_alt', 'rubenA', 'accepted', '2026-04-27 10:02:18'),
(9, 'kicsike', 'Buzibogyó', 'pending', '2026-04-28 10:32:15'),
(11, 'admin_felh', 'HELL\\JUMPER', 'accepted', '2026-05-20 14:50:35');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gumik`
--

CREATE TABLE `gumik` (
  `tire_id` int(11) NOT NULL,
  `type` enum('Soft','Medium','Hard','Wet') NOT NULL,
  `color` varchar(20) NOT NULL COMMENT 'Pl. „piros”, „sárga”, „fehér”'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `live_telemetry`
--

CREATE TABLE `live_telemetry` (
  `id` int(11) NOT NULL,
  `race_control_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `tyre_type` enum('Soft','Medium','Hard','Inter','Wet') NOT NULL DEFAULT 'Medium',
  `tyre_wear` int(11) NOT NULL DEFAULT 0,
  `status` enum('Running','Pit','DNF') NOT NULL DEFAULT 'Running',
  `gap` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- A tábla adatainak kiíratása `live_telemetry`
--

INSERT INTO `live_telemetry` (`id`, `race_control_id`, `driver_id`, `position`, `tyre_type`, `tyre_wear`, `status`, `gap`) VALUES
(1209, 1, 1, 3, 'Soft', 0, 'Pit', ''),
(1210, 1, 2, 2, 'Soft', 0, 'Pit', ''),
(1211, 1, 3, 1, 'Hard', 0, 'Pit', ''),
(1212, 1, 4, 99, 'Wet', 8, 'DNF', 'Kör: 38'),
(1213, 1, 5, 7, 'Soft', 0, 'Pit', ''),
(1214, 1, 6, 4, 'Medium', 0, 'Pit', ''),
(1215, 1, 7, 5, 'Medium', 0, 'Pit', ''),
(1216, 1, 8, 12, 'Hard', 0, 'Pit', ''),
(1217, 1, 9, 6, 'Soft', 0, 'Pit', ''),
(1218, 1, 12, 15, 'Medium', 0, 'Pit', ''),
(1219, 1, 11, 10, 'Hard', 0, 'Pit', ''),
(1220, 1, 10, 99, 'Medium', 27, 'DNF', 'Kör: 15'),
(1221, 1, 13, 8, 'Hard', 0, 'Pit', ''),
(1222, 1, 14, 11, 'Hard', 0, 'Pit', ''),
(1223, 1, 16, 13, 'Soft', 0, 'Pit', ''),
(1224, 1, 17, 9, 'Soft', 0, 'Pit', ''),
(1225, 1, 18, 16, 'Medium', 0, 'Pit', ''),
(1226, 1, 19, 17, 'Soft', 0, 'Pit', ''),
(1227, 1, 20, 20, 'Hard', 0, 'Pit', ''),
(1228, 1, 22, 14, 'Soft', 0, 'Pit', ''),
(1229, 1, 23, 18, 'Soft', 0, 'Pit', ''),
(1230, 1, 24, 19, 'Medium', 0, 'Pit', '');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `naptar(versenyek)`
--

CREATE TABLE `naptar(versenyek)` (
  `race_id` int(11) NOT NULL COMMENT 'Egyedi futam azonosító',
  `year` int(11) NOT NULL COMMENT 'Év',
  `month` int(11) NOT NULL COMMENT 'Hónap',
  `day` int(11) NOT NULL COMMENT 'Nap',
  `track_id` int(11) NOT NULL COMMENT 'Hol rendezik',
  `race_name` varchar(100) NOT NULL,
  `start_time` datetime NOT NULL COMMENT 'Rajtidő',
  `weather` varchar(50) NOT NULL COMMENT 'Időjárás'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `author` varchar(100) DEFAULT 'Admin',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `likes` int(11) NOT NULL DEFAULT 0,
  `dislikes` int(11) NOT NULL DEFAULT 0,
  `category` varchar(50) DEFAULT 'Általános'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- A tábla adatainak kiíratása `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image`, `author`, `created_at`, `is_featured`, `likes`, `dislikes`, `category`) VALUES
(10, 'sziasztok', 'sziasztok', '', 'rubenA', '2026-02-02 13:07:12', 0, 2, 0, 'Általános'),
(24, 'Hát komolyan mondom, srácok,...', 'Hát komolyan mondom, srácok, ez az idei szabályrendszer már a totális vicc kategória, egyszerűen nézhetetlen az egész! Ott tartunk, hogy a pilóták lassan csak akkor előzhetnek, ha előtte kitöltöttek egy kérvényt három példányban, közben meg a mérnökök végig a fülükbe sírnak, hogy vigyázzanak a gumira, mintha hímes tojásokon gurulnának. Mi ez, Forma-1 vagy egy spórolós környezetvédelmi bemutató? Padlógáz helyett csak a menedzselés megy, a sport felügyelői meg minden apró koccanásért osztják a büntetéseket, mintha egy steril laborban lennénk, nem a versenypályán. Teljesen kiölik a küzdelmet a sportból ezekkel a túlbonyolított, életidegen baromságokkal, az embernek már kedve sincs leülni a tévé elé, hogy azt nézze, ahogy a bürokrácia és a gumispórolás fontosabb, mint a tiszta versenyzés. Hová lett az igazi tempó meg a férfias meccselés? Nevetséges az irány, amerre haladunk!', '', 'rubenA', '2026-03-16 12:07:44', 0, 0, 0, 'Tech'),
(26, 'Nagyon rossz az auto guys', 'Nagyon rossz az auto guys', '', 'Teszt5', '2026-03-20 10:47:00', 0, 0, 0, 'Aston Martin'),
(29, 'asd', 'asd', '', 'rubenA', '2026-05-22 09:51:14', 0, 0, 0, 'Red Bull'),
(30, 'jolelfingottrussell xd', 'jolelfingottrussell xd', '', 'Buzibogyó', '2026-05-27 19:37:00', 0, 0, 0, 'Race Weekend');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `news_comments`
--

CREATE TABLE `news_comments` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- A tábla adatainak kiíratása `news_comments`
--

INSERT INTO `news_comments` (`id`, `news_id`, `username`, `comment`, `created_at`) VALUES
(1, 10, 'rubenA', 'nem', '2026-02-02 13:07:19'),
(2, 10, 'rubenA', 'asdasd', '2026-02-02 13:09:12'),
(3, 10, 'rubenA', 'asdasdasda', '2026-02-02 13:09:14'),
(4, 10, 'rubenA', 'asdasda', '2026-02-02 13:09:17'),
(5, 10, 'Teszt5', 'szia nem', '2026-02-02 13:28:31'),
(9, 24, 'kicsike', 'kit érdekel', '2026-04-28 10:30:16'),
(10, 26, 'kicsike', 'fr', '2026-04-28 10:30:27'),
(15, 24, 'Buzibogyó', 'te meg ki vagy', '2026-04-28 10:33:28');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `news_emoji_reactions`
--

CREATE TABLE `news_emoji_reactions` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `emoji` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- A tábla adatainak kiíratása `news_emoji_reactions`
--

INSERT INTO `news_emoji_reactions` (`id`, `news_id`, `username`, `emoji`, `created_at`) VALUES
(11, 10, 'kicsike', '🏁', '2026-04-28 10:31:02'),
(5, 24, 'rubenA', '🐐', '2026-03-16 12:08:03'),
(12, 24, 'HELL\\JUMPER', '🐐', '2026-05-20 14:39:13');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `news_images`
--

CREATE TABLE `news_images` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- A tábla adatainak kiíratása `news_images`
--

INSERT INTO `news_images` (`id`, `news_id`, `image_path`, `created_at`) VALUES
(5, 24, 'post_24_69b7f290c5881.jpg', '2026-03-16 12:07:47'),
(6, 26, 'post_26_69bd25a48d571.avif', '2026-03-20 10:47:02'),
(8, 30, 'post_30_6a1747dc50904.jpg', '2026-05-27 19:37:01');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `palyak`
--

CREATE TABLE `palyak` (
  `track_id` int(11) NOT NULL COMMENT 'Egyedi azonosító',
  `track_name` varchar(100) NOT NULL COMMENT 'Pályaneve',
  `country` varchar(50) NOT NULL COMMENT 'Pálya neve',
  `length(km)` decimal(5,2) NOT NULL COMMENT 'Pályahossz(km)',
  `laps` int(11) NOT NULL COMMENT 'Körök száma',
  `image(palya)` varchar(255) NOT NULL COMMENT 'Pálya térképe (opcionális)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pilotak`
--

CREATE TABLE `pilotak` (
  `driver_id` int(11) NOT NULL COMMENT 'Egyedi pilota azonosító',
  `name` varchar(100) NOT NULL COMMENT 'Pilóta neve',
  `abbreviation` varchar(5) NOT NULL COMMENT 'Rövidítés',
  `nationality` varchar(50) NOT NULL COMMENT 'Nemzetiség',
  `race_number` int(11) NOT NULL COMMENT 'Rajtszám',
  `image` varchar(255) NOT NULL COMMENT 'Pilóta képe',
  `points` int(11) NOT NULL COMMENT 'Egyeni pontok',
  `team id` int(11) NOT NULL COMMENT 'Hivatkozás a csapatra',
  `current_position` varchar(10) DEFAULT '0',
  `current_wins` int(11) DEFAULT 0,
  `current_podiums` int(11) DEFAULT 0,
  `current_poles` int(11) DEFAULT 0,
  `current_fastest_laps` int(11) DEFAULT 0,
  `career_races` int(11) DEFAULT 0,
  `career_wins` int(11) DEFAULT 0,
  `career_podiums` int(11) DEFAULT 0,
  `career_poles` int(11) DEFAULT 0,
  `career_fastest_laps` int(11) DEFAULT 0,
  `career_titles` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `pilotak`
--

INSERT INTO `pilotak` (`driver_id`, `name`, `abbreviation`, `nationality`, `race_number`, `image`, `points`, `team id`, `current_position`, `current_wins`, `current_podiums`, `current_poles`, `current_fastest_laps`, `career_races`, `career_wins`, `career_podiums`, `career_poles`, `career_fastest_laps`, `career_titles`) VALUES
(1, 'Lando Norris', 'NOR', 'GBR', 4, ' 2026mclarenlannor01right.avif', 423, 1, '1', 7, 4, 1, 3, 0, 0, 0, 0, 0, 0),
(2, 'Max Verstappen', 'VER', 'NED', 1, '2026redbullracingmaxver01right.avif\r\n', 421, 3, '2', 8, 3, 2, 0, 0, 0, 0, 0, 0, 0),
(3, 'Oscar Piastri', 'PIA', 'AUS', 81, '2026mclarenoscpia01right.avif', 410, 1, '3', 7, 4, 2, 1, 0, 0, 0, 0, 0, 0),
(4, 'George Russell', 'RUS', 'GBR', 63, '2026mercedesgeorus01right.avif\r\n', 319, 2, '4', 2, 3, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'Charles Leclerc', 'LEC', 'MON', 16, '2026ferrarichalec01right.avif\r\n', 242, 4, '5', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'Lewis Hamilton', 'HAM', 'GBR', 44, '2026ferrarilewham01right.avif\r\n', 156, 4, '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'Kimi Antonelli', 'ANT', 'ITA', 7, '2026mercedesandant01right.avif\r\n', 150, 2, '7', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(8, 'Alexander Albon', 'ALB', 'THA', 23, '2026williamsalealb01right.avif\r\n', 73, 5, '8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'Carlos Sainz', 'SAI', 'ESP', 55, '2026williamscarsai01right.avif\r\n', 64, 5, '9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'Isack Hadjar', 'HAD', 'FRA', 20, '2026redbullracingisahad01right (1).avif\r\n', 51, 3, '12', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'Nico Hulkenberg', 'HUL', 'GER', 27, '2026audinichul01right (1).avif', 51, 9, '11', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'Fernando Alonso', 'ALO', 'ESP', 56, '2026astonmartinferalo01right.avif\r\n', 56, 7, '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'Oliver Bearman', 'BEA', 'GBR', 87, '2026haasolibea01right.avif\r\n', 41, 8, '13', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'Liam Lawson', 'LAW', 'NZL', 30, '2026racingbullslialaw01right.avif\r\n', 38, 6, '14', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 'Esteban Ocon', 'OCO', 'FRA', 31, '2026haasestoco01right.avif\r\n', 38, 8, '15', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 'Lance Stroll', 'STR', 'CAN', 18, '2026astonmartinlanstr01right.avif', 33, 7, '16', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 'Pierre Gasly', 'GAS', 'FRA', 10, '2026alpinepiegas01right.avif\r\n', 22, 10, '18', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 'Gabriel Bortoleto', 'BOR', 'BRA', 5, '2026audigabbor01right (1).avif\r\n', 19, 9, '19', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 'Franco Colapinto', 'COL', 'ARG', 12, '2026alpinefracol01right.avif', 0, 10, '20', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 'Valtteri Bottas', 'BOT', 'FIN', 77, '2026cadillacvalbot01right (1).avif\r\n', 0, 11, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 'Sergio Perez', 'PER', 'MEX', 11, '2026cadillacserper01right (1).avif\r\n', 0, 11, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 'Arvid Lindblad', 'LIN', 'GBR', 88, '2026racingbullsarvlin01right (1).avif\r\n', 0, 6, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pitwall_predictions`
--

CREATE TABLE `pitwall_predictions` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `race_id` int(11) NOT NULL,
  `predictions` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `pitwall_predictions`
--

INSERT INTO `pitwall_predictions` (`id`, `username`, `race_id`, `predictions`, `updated_at`) VALUES
(1, 'rubenA', 24, '[\"4\",\"3\",\"1\",\"6\",\"5\",\"2\",\"7\",\"11\",\"8\",\"9\",\"12\",\"13\",\"10\",\"14\",\"16\",\"19\",\"17\",\"18\",\"24\",\"20\",\"22\",\"23\"]', '2026-04-18 20:16:11'),
(5, 'HELL\\JUMPER', 24, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"12\",\"10\",\"11\",\"13\",\"14\",\"16\",\"17\",\"18\",\"19\",\"20\",\"22\",\"23\",\"24\"]', '2026-03-30 12:47:16'),
(13, 'kicsike', 24, '[\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"12\",\"10\",\"11\",\"13\",\"14\",\"16\",\"17\",\"18\",\"19\",\"20\",\"22\",\"23\",\"1\",\"24\"]', '2026-04-28 10:29:18'),
(14, 'Buzibogyó', 24, '[\"3\",\"1\",\"2\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"12\",\"10\",\"11\",\"13\",\"14\",\"16\",\"17\",\"18\",\"19\",\"20\",\"22\",\"23\",\"24\"]', '2026-04-28 10:35:30'),
(15, 'rubenA', 25, '[\"2\",\"3\",\"4\",\"5\",\"1\",\"6\",\"7\",\"8\",\"9\",\"12\",\"10\",\"13\",\"14\",\"11\",\"16\",\"17\",\"18\",\"19\",\"20\",\"22\",\"23\",\"24\"]', '2026-05-11 12:58:37'),
(16, 'admin_felh', 25, '[\"6\",\"1\",\"5\",\"7\",\"2\",\"4\",\"8\",\"9\",\"12\",\"10\",\"11\",\"13\",\"14\",\"16\",\"17\",\"18\",\"19\",\"20\",\"22\",\"23\",\"24\",\"3\"]', '2026-05-20 15:25:57'),
(21, 'HELL\\JUMPER', 25, '[\"7\",\"4\",\"5\",\"3\",\"6\",\"2\",\"1\",\"13\",\"10\",\"18\",\"24\",\"14\",\"9\",\"8\",\"12\",\"11\",\"19\",\"16\",\"20\",\"23\",\"17\",\"22\"]', '2026-05-22 14:00:47');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `private_messages`
--

CREATE TABLE `private_messages` (
  `id` int(11) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `sent_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `private_messages`
--

INSERT INTO `private_messages` (`id`, `sender`, `receiver`, `message`, `is_read`, `sent_at`) VALUES
(1, 'rubenA', 'HELLJUMPER', 'sup gang', 0, '2026-03-16 13:46:59'),
(2, 'HELL\\JUMPER', 'rubenA', 'nibba', 1, '2026-03-16 13:47:02'),
(3, 'rubenA', 'HELL\\JUMPER', 'suuuppp', 1, '2026-03-17 12:22:38'),
(4, 'HELL\\JUMPER', 'rubenA', 'vava', 1, '2026-03-17 12:23:28'),
(5, 'HELL\\JUMPER', 'rubenA', 'adawd', 1, '2026-03-17 12:23:36'),
(6, 'rubenA', 'HELL\\JUMPER', 'szi a', 1, '2026-03-17 12:23:40'),
(7, 'rubenA', 'HELL\\JUMPER', 'szi ger', 1, '2026-03-18 12:42:37'),
(8, 'HELL\\JUMPER', 'rubenA', 'szia geri vagyok', 1, '2026-03-20 10:44:49'),
(9, 'Teszt5', 'rubenA', 'hel o', 1, '2026-03-20 10:48:37'),
(10, 'HELL\\JUMPER', 'rubenA', 'CARZY DAVE', 1, '2026-03-20 10:51:27'),
(11, 'rubenA', 'Teszt5', 'szi a', 0, '2026-03-23 13:38:16'),
(12, 'rubenA', 'HELL\\JUMPER', 'csumi', 1, '2026-03-23 13:40:42'),
(13, 'rubenA', 'HELL\\JUMPER', 'szia geri', 1, '2026-03-23 13:45:35'),
(14, 'rubenA', 'Teszt5', 'szia tesztimeszti', 0, '2026-03-23 13:45:53'),
(15, 'rubenA', 'HELL\\JUMPER', 'szió', 1, '2026-03-23 13:48:04'),
(16, 'rubenA', 'HELL\\JUMPER', 'szi', 1, '2026-03-23 13:50:44'),
(17, 'rubenA', 'HELL\\JUMPER', 'geri', 1, '2026-03-23 13:55:27'),
(18, 'rubenA', 'Teszt5', 'szi a', 0, '2026-04-02 09:56:52'),
(19, 'rubenA', 'HELL\\JUMPER', 'szi', 1, '2026-04-02 09:57:11'),
(20, 'HELL\\JUMPER', 'cadilad_proba', 'hali', 0, '2026-04-06 16:18:26'),
(21, 'rubenA', 'HELL\\JUMPER', 'sup', 1, '2026-04-14 08:07:13'),
(22, 'rubenA', 'HELL\\JUMPER', 'szi geri', 1, '2026-04-19 18:15:44'),
(23, 'rubenA', 'Teszt5', 'sup nigga', 0, '2026-04-22 12:49:37'),
(24, 'rubenA', 'Ruben_alt', 'Szia, akarsz beszélgetni?', 1, '2026-04-27 10:03:16'),
(25, 'Ruben_alt', 'rubenA', 'Szia, persze!', 1, '2026-04-27 10:03:26'),
(26, 'kicsike', 'Buzibogyó', 'szia', 1, '2026-04-28 10:32:41'),
(27, 'kicsike', 'Buzibogyó', 'ez az oldal', 1, '2026-04-28 10:32:48'),
(28, 'Buzibogyó', 'kicsike', 'hallod', 1, '2026-04-28 10:32:49'),
(29, 'kicsike', 'Buzibogyó', 'jo', 1, '2026-04-28 10:32:50'),
(30, 'kicsike', 'Buzibogyó', 'szar', 1, '2026-04-28 10:32:52'),
(31, 'Buzibogyó', 'kicsike', 'van itt egy pár meleg', 1, '2026-04-28 10:32:57'),
(32, 'kicsike', 'Buzibogyó', 's', 1, '2026-04-28 10:33:12'),
(33, 'kicsike', 'Buzibogyó', 'd', 1, '2026-04-28 10:33:13'),
(34, 'kicsike', 'Buzibogyó', 's', 1, '2026-04-28 10:33:13'),
(35, 'kicsike', 'Buzibogyó', 'ss', 1, '2026-04-28 10:33:13'),
(36, 'kicsike', 'Buzibogyó', 'dsd', 1, '2026-04-28 10:33:13'),
(37, 'kicsike', 'Buzibogyó', 's', 1, '2026-04-28 10:33:13'),
(38, 'kicsike', 'Buzibogyó', 'dsd', 1, '2026-04-28 10:33:13'),
(39, 'kicsike', 'Buzibogyó', 'sdsd', 1, '2026-04-28 10:33:14'),
(40, 'kicsike', 'Buzibogyó', 's', 1, '2026-04-28 10:33:14'),
(41, 'kicsike', 'Buzibogyó', 'd', 1, '2026-04-28 10:33:14'),
(42, 'kicsike', 'Buzibogyó', 'd', 1, '2026-04-28 10:33:14'),
(43, 'kicsike', 'Buzibogyó', 's', 1, '2026-04-28 10:33:14'),
(44, 'kicsike', 'Buzibogyó', 's', 1, '2026-04-28 10:33:14'),
(45, 'kicsike', 'Buzibogyó', 'ds', 1, '2026-04-28 10:33:14'),
(46, 'kicsike', 'Buzibogyó', 'sd', 1, '2026-04-28 10:33:15'),
(47, 'kicsike', 'Buzibogyó', 's', 1, '2026-04-28 10:33:15'),
(48, 'kicsike', 'Buzibogyó', 'd', 1, '2026-04-28 10:33:15'),
(49, 'kicsike', 'Buzibogyó', 'sdűf', 1, '2026-04-28 10:33:15'),
(50, 'kicsike', 'Buzibogyó', 'sdfű', 1, '2026-04-28 10:33:15'),
(51, 'kicsike', 'Buzibogyó', 'dűd', 1, '2026-04-28 10:33:15'),
(52, 'kicsike', 'Buzibogyó', 's', 1, '2026-04-28 10:33:16'),
(53, 'kicsike', 'Buzibogyó', 'f', 1, '2026-04-28 10:33:16'),
(54, 'kicsike', 'Buzibogyó', 'dűg', 1, '2026-04-28 10:33:16'),
(55, 'kicsike', 'Buzibogyó', 'dűg', 1, '2026-04-28 10:33:16'),
(56, 'kicsike', 'Buzibogyó', 'seáf', 1, '2026-04-28 10:33:16'),
(57, 'kicsike', 'Buzibogyó', 'űsd', 1, '2026-04-28 10:33:16'),
(58, 'kicsike', 'Buzibogyó', 'gás', 1, '2026-04-28 10:33:16'),
(59, 'kicsike', 'Buzibogyó', 'fűs', 1, '2026-04-28 10:33:16'),
(60, 'kicsike', 'Buzibogyó', 'dfá', 1, '2026-04-28 10:33:17'),
(61, 'kicsike', 'Buzibogyó', 'údág', 1, '2026-04-28 10:33:17'),
(62, 'kicsike', 'Buzibogyó', 'rág', 1, '2026-04-28 10:33:17'),
(63, 'kicsike', 'Buzibogyó', 'úsáe', 1, '2026-04-28 10:33:17'),
(64, 'kicsike', 'Buzibogyó', 'fáx', 1, '2026-04-28 10:33:17'),
(65, 'kicsike', 'Buzibogyó', 'dfá', 1, '2026-04-28 10:33:18'),
(66, 'kicsike', 'Buzibogyó', 'rá', 1, '2026-04-28 10:33:18'),
(67, 'kicsike', 'Buzibogyó', 'sef', 1, '2026-04-28 10:33:18'),
(68, 'kicsike', 'Buzibogyó', 'sdáf', 1, '2026-04-28 10:33:18'),
(69, 'kicsike', 'Buzibogyó', 'éáe', 1, '2026-04-28 10:33:18'),
(70, 'kicsike', 'Buzibogyó', 'úgé', 1, '2026-04-28 10:33:18'),
(71, 'kicsike', 'Buzibogyó', 'f', 1, '2026-04-28 10:33:19'),
(72, 'kicsike', 'Buzibogyó', 'úseég', 1, '2026-04-28 10:33:19'),
(73, 'kicsike', 'Buzibogyó', 'úerádh', 1, '2026-04-28 10:33:19'),
(74, 'kicsike', 'Buzibogyó', 'úfgésú', 1, '2026-04-28 10:33:19'),
(75, 'kicsike', 'Buzibogyó', 'jáaer', 1, '2026-04-28 10:33:19'),
(76, 'kicsike', 'Buzibogyó', 'géarhá', 1, '2026-04-28 10:33:20'),
(77, 'kicsike', 'Buzibogyó', 'rtéj', 1, '2026-04-28 10:33:20'),
(78, 'kicsike', 'Buzibogyó', 'úsreág', 1, '2026-04-28 10:33:20'),
(79, 'kicsike', 'Buzibogyó', 'úré', 1, '2026-04-28 10:33:20'),
(80, 'kicsike', 'Buzibogyó', 'géseagé', 1, '2026-04-28 10:33:21'),
(81, 'kicsike', 'Buzibogyó', 'eaég', 1, '2026-04-28 10:33:21'),
(82, 'kicsike', 'Buzibogyó', 'úeréh', 1, '2026-04-28 10:33:21'),
(83, 'kicsike', 'Buzibogyó', 'úrég', 1, '2026-04-28 10:33:21'),
(84, 'kicsike', 'Buzibogyó', 'údfég', 1, '2026-04-28 10:33:22'),
(85, 'kicsike', 'Buzibogyó', 'úédhé5', 1, '2026-04-28 10:33:22'),
(86, 'kicsike', 'Buzibogyó', 'úhgédr', 1, '2026-04-28 10:33:22'),
(87, 'kicsike', 'Buzibogyó', 'gl', 1, '2026-04-28 10:33:22'),
(88, 'kicsike', 'Buzibogyó', 'úrgé', 1, '2026-04-28 10:33:23'),
(89, 'kicsike', 'Buzibogyó', 'ődtégh', 1, '2026-04-28 10:33:23'),
(90, 'kicsike', 'Buzibogyó', 'úrlgő', 1, '2026-04-28 10:33:23'),
(91, 'kicsike', 'Buzibogyó', 'úőár', 1, '2026-04-28 10:33:23'),
(92, 'kicsike', 'Buzibogyó', 'géarghl', 1, '2026-04-28 10:33:24'),
(93, 'kicsike', 'Buzibogyó', 'rgá', 1, '2026-04-28 10:33:24'),
(94, 'kicsike', 'Buzibogyó', 'drőég', 1, '2026-04-28 10:33:24'),
(95, 'kicsike', 'Buzibogyó', 'údr.gő', 1, '2026-04-28 10:33:24'),
(96, 'kicsike', 'Buzibogyó', 'édr', 1, '2026-04-28 10:33:24'),
(97, 'kicsike', 'Buzibogyó', 'gdrg,', 1, '2026-04-28 10:33:25'),
(98, 'kicsike', 'Buzibogyó', 'dúágűdágd', 1, '2026-04-28 10:33:25'),
(99, 'kicsike', 'Buzibogyó', 'gú.drű', 1, '2026-04-28 10:33:25'),
(100, 'kicsike', 'Buzibogyó', 'gőá', 1, '2026-04-28 10:33:26'),
(101, 'kicsike', 'Buzibogyó', 'dfgd.lg', 1, '2026-04-28 10:33:26'),
(102, 'kicsike', 'Buzibogyó', 'údfég', 1, '2026-04-28 10:33:26'),
(103, 'kicsike', 'Buzibogyó', 'úé.df', 1, '2026-04-28 10:33:26'),
(104, 'kicsike', 'Buzibogyó', 'gé', 1, '2026-04-28 10:33:26'),
(105, 'kicsike', 'Buzibogyó', 'dfgdfg', 1, '2026-04-28 10:33:27'),
(106, 'kicsike', 'Buzibogyó', 'dfgőádfég', 1, '2026-04-28 10:33:28'),
(107, 'kicsike', 'Buzibogyó', 'dfég', 1, '2026-04-28 10:33:28'),
(108, 'kicsike', 'Buzibogyó', 'déf', 1, '2026-04-28 10:33:28'),
(109, 'kicsike', 'Buzibogyó', 'géd', 1, '2026-04-28 10:33:28'),
(110, 'kicsike', 'Buzibogyó', 'űg', 1, '2026-04-28 10:33:28'),
(111, 'kicsike', 'Buzibogyó', 'adrgé', 1, '2026-04-28 10:33:29'),
(112, 'kicsike', 'Buzibogyó', 'drég', 1, '2026-04-28 10:33:29'),
(113, 'kicsike', 'Buzibogyó', 'űdég', 1, '2026-04-28 10:33:29'),
(114, 'kicsike', 'Buzibogyó', 'édr', 1, '2026-04-28 10:33:29'),
(115, 'kicsike', 'Buzibogyó', 'űgédr', 1, '2026-04-28 10:33:29'),
(116, 'kicsike', 'Buzibogyó', 'gdr', 1, '2026-04-28 10:33:30'),
(117, 'kicsike', 'Buzibogyó', 'űgé', 1, '2026-04-28 10:33:30'),
(118, 'kicsike', 'Buzibogyó', 'dűrgé', 1, '2026-04-28 10:33:30'),
(119, 'kicsike', 'Buzibogyó', 'űdrg', 1, '2026-04-28 10:33:31'),
(120, 'admin_felh', 'HELL\\JUMPER', 'szia geri', 1, '2026-05-20 14:51:12'),
(121, 'HELL\\JUMPER', 'admin_felh', 'halo', 1, '2026-05-20 14:51:13'),
(122, 'admin_felh', 'HELL\\JUMPER', 'hello', 1, '2026-05-20 15:08:40'),
(123, 'admin_felh', 'HELL\\JUMPER', 'dsujfhgfgd', 1, '2026-05-20 15:28:25'),
(124, 'HELL\\JUMPER', 'admin_felh', 'hola', 1, '2026-05-20 15:28:30');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `race_chat_archives`
--

CREATE TABLE `race_chat_archives` (
  `id` int(11) NOT NULL,
  `race_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `sent_at` timestamp NOT NULL,
  `archived_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- A tábla adatainak kiíratása `race_chat_archives`
--

INSERT INTO `race_chat_archives` (`id`, `race_id`, `username`, `message`, `sent_at`, `archived_at`) VALUES
(1, 25, 'rubenA', 'csumi', '2026-03-05 15:42:56', '2026-03-05 16:03:18'),
(2, 25, 'rubenA', 'aztaaaaaaaaaa', '2026-03-05 15:43:07', '2026-03-05 16:03:18'),
(3, 25, 'rubenA', 'hajra norris', '2026-03-05 15:43:43', '2026-03-05 16:03:18'),
(4, 25, 'rubenA', 'sup', '2026-03-06 07:05:59', '2026-03-06 07:08:56'),
(5, 25, 'rubenA', 'norbert fog nyerni', '2026-03-06 07:06:20', '2026-03-06 07:08:56'),
(6, 25, 'HELLJUMPER', 'pablo', '2026-03-06 07:07:55', '2026-03-06 07:08:56'),
(7, 25, 'HELLJUMPER', 'pablo', '2026-03-06 07:08:01', '2026-03-06 07:08:56'),
(8, 25, 'rubenA', 'asd', '2026-03-06 07:08:03', '2026-03-06 07:08:56'),
(9, 25, 'HELLJUMPER', 'FKJABJF', '2026-03-06 07:08:11', '2026-03-06 07:08:56'),
(10, 25, 'HELLJUMPER', 'JBVK', '2026-03-06 07:08:13', '2026-03-06 07:08:56'),
(11, 25, 'rubenA', 'irjal mar geri', '2026-03-06 07:08:25', '2026-03-06 07:08:56'),
(12, 25, 'HELLJUMPER', 'da, da', '2026-03-06 07:08:32', '2026-03-06 07:08:56'),
(13, 25, 'HELLJUMPER', 'waknknea', '2026-03-06 07:08:32', '2026-03-06 07:08:56'),
(14, 25, 'HELLJUMPER', 'kgeakge', '2026-03-06 07:08:33', '2026-03-06 07:08:56'),
(19, 25, 'HELLJUMPER', 'wahfahf', '2026-03-06 07:09:21', '2026-03-06 07:09:41'),
(20, 25, 'HELLJUMPER', 'wknwa', '2026-03-06 07:09:23', '2026-03-06 07:09:41'),
(21, 25, 'HELLJUMPER', 'afwllwa', '2026-03-06 07:09:24', '2026-03-06 07:09:41'),
(22, 25, 'rubenA', 'fasz', '2026-03-06 11:28:03', '2026-03-06 11:31:04'),
(23, 25, 'rubenA', 'nigger', '2026-03-06 11:28:11', '2026-03-06 11:31:04'),
(24, 25, 'HELL\\JUMPER', 'BABABBABABABABA', '2026-03-16 13:03:53', '2026-03-16 13:04:34'),
(25, 25, 'rubenA', 'szi a', '2026-03-16 13:04:00', '2026-03-16 13:04:34'),
(26, 25, 'rubenA', 'geri', '2026-03-16 13:04:02', '2026-03-16 13:04:34'),
(27, 25, 'HELL\\JUMPER', 'EZ NEM NORRIS', '2026-03-16 13:04:30', '2026-03-16 13:04:34'),
(28, 25, 'HELL\\JUMPER', 'nanannanoanoonaeonnoaenonanbniovaninoabnanbnabnioan', '2026-03-24 11:30:50', '2026-03-25 13:32:42'),
(29, 25, 'rubenA', 'a', '2026-04-25 12:13:57', '2026-04-25 12:14:24'),
(30, 25, 'rubenA', 'a', '2026-04-25 12:13:57', '2026-04-25 12:14:24'),
(31, 25, 'rubenA', 'a', '2026-04-25 12:13:57', '2026-04-25 12:14:24'),
(32, 25, 'rubenA', 'a', '2026-04-25 12:13:58', '2026-04-25 12:14:24'),
(33, 25, 'rubenA', 'a', '2026-04-25 12:13:58', '2026-04-25 12:14:24'),
(34, 25, 'rubenA', 'a', '2026-04-25 12:13:58', '2026-04-25 12:14:24'),
(35, 25, 'rubenA', 'a', '2026-04-25 12:13:58', '2026-04-25 12:14:24'),
(36, 25, 'rubenA', 'a', '2026-04-25 12:13:58', '2026-04-25 12:14:24'),
(37, 25, 'rubenA', 'a', '2026-04-25 12:13:58', '2026-04-25 12:14:24'),
(38, 25, 'rubenA', 'a', '2026-04-25 12:13:58', '2026-04-25 12:14:24'),
(39, 25, 'rubenA', 'a', '2026-04-25 12:13:59', '2026-04-25 12:14:24'),
(40, 25, 'rubenA', 'a', '2026-04-25 12:13:59', '2026-04-25 12:14:24'),
(41, 25, 'rubenA', 'a', '2026-04-25 12:13:59', '2026-04-25 12:14:24'),
(42, 25, 'rubenA', 'a', '2026-04-25 12:13:59', '2026-04-25 12:14:24'),
(43, 25, 'rubenA', 'a', '2026-04-25 12:13:59', '2026-04-25 12:14:24'),
(44, 25, 'rubenA', 'a', '2026-04-25 12:13:59', '2026-04-25 12:14:24'),
(45, 25, 'rubenA', 'a', '2026-04-25 12:13:59', '2026-04-25 12:14:24'),
(46, 25, 'rubenA', 'a', '2026-04-25 12:14:00', '2026-04-25 12:14:24'),
(47, 25, 'rubenA', 'a', '2026-04-25 12:14:00', '2026-04-25 12:14:24'),
(48, 25, 'rubenA', 'a', '2026-04-25 12:14:00', '2026-04-25 12:14:24'),
(49, 25, 'rubenA', 'a', '2026-04-25 12:14:00', '2026-04-25 12:14:24'),
(50, 25, 'rubenA', 'a', '2026-04-25 12:14:00', '2026-04-25 12:14:24'),
(51, 25, 'rubenA', 'a', '2026-04-25 12:14:00', '2026-04-25 12:14:24'),
(52, 25, 'rubenA', 'a', '2026-04-25 12:14:00', '2026-04-25 12:14:24'),
(53, 25, 'rubenA', 'a', '2026-04-25 12:14:01', '2026-04-25 12:14:24'),
(54, 25, 'rubenA', 'a', '2026-04-25 12:14:01', '2026-04-25 12:14:24'),
(55, 25, 'rubenA', 'szia', '2026-05-11 12:59:43', '2026-05-11 13:02:19'),
(56, 25, 'admin_felh', 'hello', '2026-05-20 15:06:09', '2026-05-20 15:11:35');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `race_control`
--

CREATE TABLE `race_control` (
  `id` int(11) NOT NULL,
  `race_id` int(11) NOT NULL,
  `current_lap` int(11) NOT NULL DEFAULT 0,
  `total_laps` int(11) NOT NULL DEFAULT 70,
  `status` enum('stopped','running','finished','archived') NOT NULL DEFAULT 'archived',
  `weather` varchar(20) NOT NULL DEFAULT 'Sunny',
  `safety_car` tinyint(1) NOT NULL DEFAULT 0,
  `last_update` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- A tábla adatainak kiíratása `race_control`
--

INSERT INTO `race_control` (`id`, `race_id`, `current_lap`, `total_laps`, `status`, `weather`, `safety_car`, `last_update`) VALUES
(1, 25, 39, 70, 'running', 'Sunny', 1, '2026-08-07 10:51:40');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `race_live_chat`
--

CREATE TABLE `race_live_chat` (
  `id` int(11) NOT NULL,
  `race_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `sent_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `statusz`
--

CREATE TABLE `statusz` (
  `status_id` int(11) NOT NULL COMMENT 'Egyedi Id',
  `driver_id` int(11) NOT NULL COMMENT 'Pilota',
  `race_id` decimal(6,3) NOT NULL,
  `lap_time` int(11) NOT NULL COMMENT 'Utolsó kör ideje',
  `tire_id` int(11) NOT NULL COMMENT 'Aktualis gumi',
  `pit_stops` int(11) NOT NULL COMMENT 'Boxkiállások száma',
  `car_condition` varchar(50) NOT NULL COMMENT 'Pl. „jó”, „sérült”, „DNF”',
  `penalty` varchar(100) NOT NULL COMMENT 'Pl. „5s penalty”'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `is_banned` tinyint(1) NOT NULL DEFAULT 0,
  `reg_date` timestamp NULL DEFAULT current_timestamp(),
  `profile_image` varchar(255) DEFAULT NULL,
  `fav_team` varchar(50) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT 0,
  `verification_token` varchar(100) DEFAULT NULL,
  `session_token` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `pitwall_points` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `ip_address`, `password`, `role`, `is_banned`, `reg_date`, `profile_image`, `fav_team`, `is_verified`, `verification_token`, `session_token`, `remember_token`, `reset_token`, `reset_expires`, `pitwall_points`) VALUES
(22, 'mate006', 'papmd2014@gmail.com', NULL, '$2y$10$mXYXwTilndcgd3phRBjVvOQNxqFTeSY5QRUpF/Ue3nfTCOAU7451K', 'user', 0, '2025-12-12 11:29:15', 'mate006_1765539113.gif', 'Ferrari', 1, NULL, NULL, NULL, NULL, NULL, 0),
(20, 'Teszt2', 'ruben.katona@icloud.com', NULL, '$2y$10$YSopCdNOS3bX3hXEi7RL6efJ29QNFXTaPDuJEtNUOsg7D6eOUL6.C', 'user', 0, '2025-12-12 11:27:47', 'Teszt2_1765805207.jpg', 'Red Bull', 1, NULL, NULL, NULL, NULL, NULL, 0),
(18, 'HELL\\JUMPER', 'papp11gergely13@gmail.com', '2a01:36d:120:2864:d8c1:f0c0:d8d3:300e', '$2y$10$vcBfKd/wcd0eleJH1rW.m.nx.vdTNDLJHuKxJ2NeiXOuNCDfVWLKW', 'admin', 0, '2025-12-12 10:52:45', 'HELL\\JUMPER_1765539145.gif', 'Aston Martin', 1, NULL, '2d960f260b3a384c512388f9c4c4ed0d', NULL, NULL, NULL, 0),
(38, 'cadilad_proba', 'InhumanClunk859@gmail.com', NULL, '$2y$10$vIPUcXXXgRTiOHo7vQdtoehbdw59SDjb6Y1w463pzuMRN9ZoVW04m', 'user', 0, '2026-04-03 15:12:22', NULL, 'Cadillac', 1, NULL, NULL, NULL, NULL, NULL, 0),
(32, 'indibgo@gmail.com', 'indibgo@gmail.com', NULL, '$2y$10$LADIoVZEfqRz1XTF6Wj1W.vdWvFcJIl8AjKBnN0Y2bLP1Wg4kJ7u2', 'user', 0, '2025-12-19 17:35:47', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0),
(16, 'rubenA', 'rubenkatona23@gmail.com', '2a02:26f7:e008:4680:0:6000:0:4', '$2y$10$Kl3IU9BvvRLB3TMliuK9CO95TKasUsfwHcKNUM1CGwXHZDkWP6g0e', 'admin', 0, '2025-12-12 10:32:38', 'rubenA_1765537844.gif', 'McLaren', 1, NULL, 'ee1f6065e6b363493d8fbda9da0ab727', NULL, 'baccde913e8a1c0d44f2494e8a0efbd720462f7be667f1a52a7dc9788938be75', '2025-12-15 15:09:41', 100),
(41, 'bollzs2', 'valami@gmail.com', NULL, '$2y$10$DLZVYlMn7Ls7i9Be4tyAGehjfARVAG5d6P/cC9PSA9nWGHbWmojJS', 'user', 0, '2026-04-27 09:52:12', NULL, 'Aston Martin', 0, '2059d06ec250f085aab412158fb77d52fd2965ede46b2ad2a0f773756f0d11f7', NULL, NULL, NULL, NULL, 0),
(34, 'Teszt3', 'katonaruben0202@gmail.com', NULL, '$2y$10$j9ZXuUQRENmu8vkGMmVMBeyVWE0js/LyKip2ORg3/zjkSET.MCa.q', 'user', 1, '2026-02-02 13:13:15', NULL, 'Ferrari', 1, NULL, NULL, NULL, NULL, NULL, 0),
(33, 'Zero', 'geovanyattila@gmail.com', NULL, '$2y$10$lCluhEZQHAASY5MnEbjbneoeOIBpFt3lEgK5/9jzgtJJEJOs5/PeC', 'user', 0, '2026-01-07 12:58:14', 'Zero_1770730639.jpg', 'Mercedes', 1, NULL, '40c45222cdb4a5d84ba97158928d132a', '9ea8063a5d1ddf8cc6e0d93480131c182f97094164aa4191387f984890935cce', NULL, NULL, 0),
(42, 'admin_felh', 'igenkatona@gmail.com', '92.249.168.66', '$2y$10$zx6Doeu83W8HYwIOZrmNfO5SRxXX.aPbguh6IUfwbsThWkHHjwla.', 'admin', 0, '2026-04-27 19:19:31', 'admin_felh_1779288285.png', 'Ferrari', 1, NULL, '163b89a27539598225b6f523115c883d', NULL, NULL, NULL, 500),
(36, 'Teszt5', 'katonaruben0303@gmail.com', NULL, '$2y$10$NLC3rcRDo2mTbC4qS8cKJeAY/TSqn2.B0MxcrtYiNgIV2YVewV7Lu', 'user', 0, '2026-02-02 13:25:49', 'Teszt5_1770038922.gif', 'Alpine', 1, NULL, NULL, NULL, NULL, NULL, 0),
(37, 'Ruben_alt', 'konyvesruben@gmail.com', '2a00:1110:22c:bfb2:d999:2298:e4a8:e4fe', '$2y$10$ze8eBHzY0yktu.1CoNNXCOgDIXiaU/cntO2XkAot7WBt6z6HXrIeO', 'user', 0, '2026-02-13 07:33:15', 'Ruben_alt_1770968080.png', 'Mercedes', 1, NULL, NULL, NULL, NULL, NULL, 0),
(40, 'proba1', '859inhumanChunk@gmail.com', NULL, '$2y$10$YmMtCwDlFG5r.fTcdsiY3OCoMfvBZZjUX4.B1wZ4bBr7uA/crvihy', 'user', 0, '2026-04-08 18:55:22', NULL, 'Alpine', 0, '4c522ed93404deb61e3fb5f45e10a6088ec05a69f6aa3cec5ddce43c26607896', NULL, NULL, NULL, NULL, 0),
(43, 'Szilva', 'heteyszilvia@gmail.com', '2a01:36d:120:4327:b5a6:f00c:3149:9986', '$2y$10$L1EZ.EwdF8OYfcv71FRq4OFR7799CAOypKZDuZWCROygVv8eCGVzG', 'user', 0, '2026-04-28 05:18:40', NULL, NULL, 1, NULL, 'e30d5bf39c7a1d1c82f0081270cf4d07', 'babbb815e142c27fd808ba66d79a080b3840ffca8911603c74dca5fd343f8397', NULL, NULL, 0),
(44, 'kicsike', 'hegyi.norbert@wm-iskola.hu', '195.199.251.129', '$2y$10$RveBlVwztLZObHhxvUE.meIcYWHhCtAJ6zfEcy1GI63PJ5vVqvmPC', 'user', 0, '2026-04-28 10:28:17', 'kicsike_1777372540.jpg', 'Red Bull', 1, NULL, '95e2d810c50f31eb3e90b55cce20cbdd', '6356f329ffc906ee2eb2aec315cadfc9c193f2a55d7021f91660caa33c697b2d', NULL, NULL, 0),
(45, 'Buzibogyó', 'konradzsombor810@gmail.com', '2001:4c4c:12d5:2d00:dc57:2b8a:e0af:3aa4', '$2y$10$DK6PBWZRXETMX4qFoKr7AOvH0ADIxi5SXYOmB3rF69p5WsDp4ZkOe', 'user', 0, '2026-04-28 10:30:54', 'Buzibogyó_1777372636.jpg', 'McLaren', 1, NULL, '55f1c71d05300cdc56656148a3509b37', NULL, NULL, NULL, 0),
(46, 'Nikoletta03', 'niki.bodor3@gmail.com', '130.43.209.2', '$2y$10$jBMc7k.8LlAseOzPQU6L/OTcS2IkG7k6ckntRKpJmqYmnH/0fvary', 'user', 0, '2026-07-26 05:49:25', NULL, 'McLaren', 1, NULL, '7bd29e8a210f020b051e3eae623237bb', NULL, NULL, NULL, 0),
(47, 'Pjozsef', 'petyarity@gmail.com', '151.0.81.232', '$2y$10$P3oZL7mBaLYZ/oR6XRO5TeunZEHKra.bGUomVy3HTAkeXEltpYbmq', 'user', 0, '2026-07-26 10:22:59', NULL, 'Mercedes', 1, NULL, '42d73120fbda98cb3257286f921d123d', NULL, NULL, NULL, 0),
(48, 'Mercedes  Mc Laren', 'sebokferenc2000@gmail.com', NULL, '$2y$10$d.nqsbxA/bFYZ3irfG2eluATNt9uiS9LTfsJx67M3flYA7evr1n7i', 'user', 0, '2026-07-26 11:09:18', NULL, 'McLaren', 0, '0f1317d1231f9cdc2b6f64ce8a280ad5d954b7c0e7727c64cb8e755e717452fd', NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_changes`
--

CREATE TABLE `user_changes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `change_type` varchar(20) NOT NULL,
  `new_value` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_interests`
--

CREATE TABLE `user_interests` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `score` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- A tábla adatainak kiíratása `user_interests`
--

INSERT INTO `user_interests` (`id`, `username`, `category`, `score`) VALUES
(1, 'rubenA', 'Drivers', 115),
(2, 'rubenA', 'Red Bull', 16),
(3, 'HELL\\JUMPER', 'Drivers', 23),
(4, 'rubenA', 'Ferrari', 2),
(5, 'rubenA', 'Race Weekend', 2),
(6, 'rubenA', 'Tech', 13),
(7, 'Teszt5', 'Aston Martin', 2),
(8, 'rubenA', 'Aston Martin', 6),
(9, 'HELL\\JUMPER', 'Aston Martin', 23),
(10, 'HELL\\JUMPER', 'Tech', 23),
(11, 'HELL\\JUMPER', 'Red Bull', 1),
(12, 'HELL\\JUMPER', 'Ferrari', 1),
(13, 'Szilva', 'Drivers', 3),
(14, 'Szilva', 'Aston Martin', 1),
(15, 'kicsike', 'Tech', 1),
(16, 'kicsike', 'Aston Martin', 1),
(17, 'kicsike', 'Red Bull', 1),
(18, 'kicsike', 'Ferrari', 1),
(19, 'Buzibogyó', 'Drivers', 1),
(20, 'admin_felh', 'Tech', 24),
(21, 'Buzibogyó', 'Tech', 1),
(22, 'Buzibogyó', 'Race Weekend', 1),
(23, 'Nikoletta03', 'Tech', 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- A tábla indexei `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`message_id`);

--
-- A tábla indexei `chat_rooms`
--
ALTER TABLE `chat_rooms`
  ADD PRIMARY KEY (`chat_id`);

--
-- A tábla indexei `csapatok`
--
ALTER TABLE `csapatok`
  ADD PRIMARY KEY (`team_id`);

--
-- A tábla indexei `eredmenyek_edzes`
--
ALTER TABLE `eredmenyek_edzes`
  ADD PRIMARY KEY (`practice_id`);

--
-- A tábla indexei `eredmenyek_idomero`
--
ALTER TABLE `eredmenyek_idomero`
  ADD PRIMARY KEY (`quali_id`);

--
-- A tábla indexei `f1_races`
--
ALTER TABLE `f1_races`
  ADD PRIMARY KEY (`race_id`);

--
-- A tábla indexei `friendships`
--
ALTER TABLE `friendships`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `gumik`
--
ALTER TABLE `gumik`
  ADD PRIMARY KEY (`tire_id`);

--
-- A tábla indexei `live_telemetry`
--
ALTER TABLE `live_telemetry`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `naptar(versenyek)`
--
ALTER TABLE `naptar(versenyek)`
  ADD PRIMARY KEY (`race_id`);

--
-- A tábla indexei `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `news_comments`
--
ALTER TABLE `news_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `username` (`username`);

--
-- A tábla indexei `news_emoji_reactions`
--
ALTER TABLE `news_emoji_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_reaction` (`news_id`,`username`,`emoji`);

--
-- A tábla indexei `news_images`
--
ALTER TABLE `news_images`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `palyak`
--
ALTER TABLE `palyak`
  ADD PRIMARY KEY (`track_id`);

--
-- A tábla indexei `pilotak`
--
ALTER TABLE `pilotak`
  ADD PRIMARY KEY (`driver_id`);

--
-- A tábla indexei `pitwall_predictions`
--
ALTER TABLE `pitwall_predictions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_race` (`username`,`race_id`);

--
-- A tábla indexei `private_messages`
--
ALTER TABLE `private_messages`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `race_chat_archives`
--
ALTER TABLE `race_chat_archives`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `race_control`
--
ALTER TABLE `race_control`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `race_live_chat`
--
ALTER TABLE `race_live_chat`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `statusz`
--
ALTER TABLE `statusz`
  ADD PRIMARY KEY (`status_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- A tábla indexei `user_changes`
--
ALTER TABLE `user_changes`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `user_interests`
--
ALTER TABLE `user_interests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`category`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT a táblához `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Egyedi azonosító';

--
-- AUTO_INCREMENT a táblához `chat_rooms`
--
ALTER TABLE `chat_rooms`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Egyedi azonosító';

--
-- AUTO_INCREMENT a táblához `csapatok`
--
ALTER TABLE `csapatok`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Egyedi azonosító', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT a táblához `eredmenyek_edzes`
--
ALTER TABLE `eredmenyek_edzes`
  MODIFY `practice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Egyedi azonosító';

--
-- AUTO_INCREMENT a táblához `eredmenyek_idomero`
--
ALTER TABLE `eredmenyek_idomero`
  MODIFY `quali_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Egyedi azonosító';

--
-- AUTO_INCREMENT a táblához `f1_races`
--
ALTER TABLE `f1_races`
  MODIFY `race_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT a táblához `friendships`
--
ALTER TABLE `friendships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT a táblához `gumik`
--
ALTER TABLE `gumik`
  MODIFY `tire_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `live_telemetry`
--
ALTER TABLE `live_telemetry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1231;

--
-- AUTO_INCREMENT a táblához `naptar(versenyek)`
--
ALTER TABLE `naptar(versenyek)`
  MODIFY `race_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Egyedi futam azonosító';

--
-- AUTO_INCREMENT a táblához `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT a táblához `news_comments`
--
ALTER TABLE `news_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT a táblához `news_emoji_reactions`
--
ALTER TABLE `news_emoji_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT a táblához `news_images`
--
ALTER TABLE `news_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `palyak`
--
ALTER TABLE `palyak`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Egyedi azonosító';

--
-- AUTO_INCREMENT a táblához `pilotak`
--
ALTER TABLE `pilotak`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Egyedi pilota azonosító', AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT a táblához `pitwall_predictions`
--
ALTER TABLE `pitwall_predictions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT a táblához `private_messages`
--
ALTER TABLE `private_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT a táblához `race_chat_archives`
--
ALTER TABLE `race_chat_archives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT a táblához `race_control`
--
ALTER TABLE `race_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `race_live_chat`
--
ALTER TABLE `race_live_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT a táblához `statusz`
--
ALTER TABLE `statusz`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Egyedi Id';

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT a táblához `user_changes`
--
ALTER TABLE `user_changes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `user_interests`
--
ALTER TABLE `user_interests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
