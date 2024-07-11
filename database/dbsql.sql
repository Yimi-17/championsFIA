-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2022 a las 05:34:58
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: `dbsischampions`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cycles`
--

CREATE TABLE `cycles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cycles`
--

INSERT INTO `cycles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'PRIMERO', '2022-05-31 01:55:22', '2022-05-31 01:55:22'),
(2, 'SEGUNDO', '2022-05-31 01:55:22', '2022-05-31 01:55:22'),
(3, 'TERCERO', '2022-05-31 01:55:22', '2022-05-31 01:55:22'),
(4, 'CUARTO', '2022-05-31 01:55:22', '2022-05-31 01:55:22'),
(5, 'QUINTO', '2022-05-31 01:55:22', '2022-05-31 01:55:22'),
(6, 'SEXTO', '2022-05-31 01:55:22', '2022-05-31 01:55:22'),
(7, 'SEPTIMO', '2022-05-31 01:55:22', '2022-05-31 01:55:22'),
(8, 'OCTAVO', '2022-05-31 01:55:22', '2022-05-31 01:55:22'),
(9, 'NOVENO', '2022-05-31 01:55:22', '2022-05-31 01:55:22'),
(10, 'DECIMO', '2022-05-31 01:55:22', '2022-05-31 01:55:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `games`
--

CREATE TABLE `games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `local` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visitor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `glocal` int(11) DEFAULT NULL,
  `gvisitante` int(11) DEFAULT NULL,
  `status` enum('Programado','Iniciado','Terminado') COLLATE utf8mb4_unicode_ci NOT NULL,
  `winner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place_id` bigint(20) UNSIGNED NOT NULL,
  `tournament_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `games`
--

INSERT INTO `games` (`id`, `local`, `visitor`, `datetime`, `glocal`, `gvisitante`, `status`, `winner`, `place_id`, `tournament_id`, `created_at`, `updated_at`) VALUES
(1, '1', '3', '2022-05-17 11:15:00', 4, 0, 'Terminado', 'Ciclo III-G1', 1, 1, '2022-05-31 03:14:25', '2022-05-31 03:17:12'),
(2, '2', '4', '2022-05-17 11:20:00', 0, 2, 'Terminado', 'Ciclo V', 1, 1, '2022-05-31 03:14:44', '2022-05-31 03:17:28'),
(3, '1', '5', '2022-05-17 12:16:00', 3, 2, 'Terminado', 'Ciclo III-G1', 1, 1, '2022-05-31 03:15:10', '2022-05-31 03:18:00'),
(4, '1', '2', '2022-05-24 11:15:00', 4, 2, 'Terminado', 'Ciclo III-G1', 1, 1, '2022-05-31 03:15:32', '2022-05-31 03:18:37'),
(5, '2', '3', '2022-05-24 11:20:00', 1, 0, 'Terminado', 'Ciclo III-G2', 1, 1, '2022-05-31 03:15:55', '2022-05-31 03:18:51'),
(6, '3', '4', '2022-05-24 12:16:00', 0, 4, 'Terminado', 'Ciclo V', 1, 1, '2022-05-31 03:16:17', '2022-05-31 03:19:15'),
(7, '4', '5', '2022-05-24 12:20:00', 2, 2, 'Terminado', 'Empate', 1, 1, '2022-05-31 03:16:42', '2022-05-31 03:19:38'),
(8, '1', '4', '2022-05-31 11:10:00', NULL, NULL, 'Programado', NULL, 1, 1, '2022-05-31 03:28:15', '2022-05-31 03:28:15'),
(9, '2', '5', '2022-05-31 11:30:00', NULL, NULL, 'Programado', NULL, 1, 1, '2022-05-31 03:28:40', '2022-05-31 03:28:40'),
(10, '3', '5', '2022-05-31 12:30:00', NULL, NULL, 'Programado', NULL, 1, 1, '2022-05-31 03:28:58', '2022-05-31 03:28:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_05_03_230125_create_sessions_table', 1),
(7, '2022_05_04_203018_create_schools_table', 1),
(8, '2022_05_04_210307_create_cycles_table', 1),
(9, '2022_05_04_210441_create_places_table', 1),
(10, '2022_05_04_210527_create_tournaments_table', 1),
(11, '2022_05_04_210659_create_teams_table', 1),
(12, '2022_05_04_210717_create_players_table', 1),
(13, '2022_05_04_210742_create_positions_table', 1),
(14, '2022_05_04_210927_create_games_table', 1),
(15, '2022_05_04_210950_create_stats_table', 1),
(16, '2022_05_04_213533_create_images_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `places`
--

CREATE TABLE `places` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `places`
--

INSERT INTO `places` (`id`, `name`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Loza UPeU 1', 'Campus UPeU', '2022-05-31 01:55:22', '2022-05-31 01:55:22'),
(2, 'Loza UPeU 2', 'Campus UPeU', '2022-05-31 01:55:22', '2022-05-31 01:55:22'),
(3, 'Loza UPeU 3', 'Campus UPeU', '2022-05-31 01:55:22', '2022-05-31 01:55:22'),
(4, 'Loza UPeU 4', 'Campus UPeU', '2022-05-31 01:55:22', '2022-05-31 01:55:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `players`
--

CREATE TABLE `players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `dni` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Varon','Dama') COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `players`
--

INSERT INTO `players` (`id`, `name`, `lastname`, `birthdate`, `dni`, `type`, `number`, `observations`, `team_id`, `created_at`, `updated_at`) VALUES
(1, 'Kaylah', 'Sauer', '1996-12-10', '94467254', 'Dama', '22', 'Quis ipsa quibusdam consequuntur alias quas qui dolorem. Nulla velit eaque aut quo velit voluptatem. Aut ea non commodi. Accusamus quam tempora expedita amet doloribus recusandae.', 3, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(2, 'Maxwell', 'Mills', '1993-05-15', '77603468', 'Dama', '10', 'Et voluptate ab hic nihil placeat ipsa. Sed eum autem autem quia possimus qui alias. Sit ducimus enim similique in. Blanditiis quibusdam ex deleniti ut natus ab consequatur.', 3, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(3, 'Bryana', 'Bednar', '1976-04-30', '69493310', 'Varon', '13', 'Culpa iusto sed dolorem qui iste. Dolor laudantium omnis sed.', 5, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(4, 'Lillie', 'Parker', '2006-03-30', '03434796', 'Dama', '19', 'Dolore omnis blanditiis accusamus non harum enim. Non vero soluta quis sunt rem ipsa id. Nisi voluptatum dolor tenetur quisquam. Aut quis dolor labore qui nulla.', 4, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(5, 'Miller', 'Kling', '2001-02-19', '41362756', 'Varon', '14', 'Consequuntur velit sed vero dolores. Consequatur quae placeat voluptatem perspiciatis. Voluptas at quia pariatur est. Officia error porro dicta eaque. Doloremque officiis dolores eos aperiam aut eos.', 3, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(6, 'Sincere', 'Sipes', '2008-08-31', '90508905', 'Dama', '1', 'Eum ut incidunt sit ducimus ipsam totam sequi. Ratione cupiditate similique qui quam fuga dicta doloribus. Sit officia quas voluptas fugiat alias. Voluptatum assumenda possimus quo quam id.', 1, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(7, 'Cornelius', 'Yost', '1975-08-12', '62243186', 'Varon', '24', 'Quia omnis autem asperiores et autem veritatis quae atque. Et asperiores odit quia quam sed odit a. Minima ea cupiditate nihil ullam animi incidunt.', 1, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(8, 'Nora', 'Nienow', '2008-02-18', '38099123', 'Varon', '13', 'Illum laboriosam rerum odit. Odit facilis vel recusandae sapiente. Dolores voluptas beatae nisi quam deserunt eum. Quis voluptatibus qui et aliquid pariatur ut.', 2, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(9, 'Rosamond', 'Towne', '1982-11-04', '56541997', 'Varon', '22', 'Ea sequi in non et. Aspernatur enim quia cupiditate incidunt nihil quisquam. Ab dignissimos voluptatem voluptatum molestias quo et dignissimos mollitia.', 2, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(10, 'Morgan', 'Schamberger', '1978-09-14', '94979633', 'Varon', '23', 'Vero nulla praesentium nisi excepturi. Voluptas facere ipsam et natus. Provident similique ut aut quidem. Est et corrupti expedita minima in asperiores at.', 5, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(11, 'Napoleon', 'McKenzie', '1974-02-12', '05437693', 'Varon', '29', 'Tempora eveniet illo similique magnam autem natus excepturi quidem. Eos eum sunt adipisci suscipit et vel. Reprehenderit vitae aliquam omnis ut.', 3, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(12, 'Myriam', 'Green', '2002-10-13', '80243501', 'Varon', '13', 'Animi sequi iusto error eum tempora. Perferendis illum perferendis consectetur nulla.', 5, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(13, 'Reyes', 'Nikolaus', '1990-09-29', '16645360', 'Dama', '14', 'Quo et animi beatae. Minima quibusdam vero voluptatem dolor et sit necessitatibus. Illum voluptatem quia nihil aut sint veritatis. Enim rerum ut ratione in tempora saepe repellat sapiente.', 1, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(14, 'Libby', 'Cummings', '1991-08-06', '84710806', 'Varon', '17', 'Mollitia inventore voluptate minus cupiditate accusantium porro sapiente temporibus. Eveniet quam delectus sit et facilis repellendus iste et. Consectetur debitis animi soluta accusamus minus et.', 4, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(15, 'Stacy', 'Dach', '2012-01-07', '92291024', 'Dama', '11', 'Officiis voluptatem dolores est quidem incidunt cum. Consequuntur est iure neque qui eos ex iure. Voluptate libero omnis eos nisi nostrum. Incidunt corporis unde dolorum consequatur officiis.', 5, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(16, 'Destany', 'Bosco', '2008-11-13', '39062023', 'Dama', '15', 'Et nemo omnis voluptatem. Quidem saepe consequuntur qui dolorem magni minima totam. Voluptas voluptas quo eum odit eum.', 4, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(17, 'Lavada', 'Davis', '2020-07-21', '35025771', 'Varon', '1', 'Quibusdam ratione labore repellendus et. Distinctio maiores sit impedit et nulla. Asperiores et nihil placeat.', 3, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(18, 'Ova', 'Armstrong', '2016-06-19', '05287286', 'Varon', '7', 'Deleniti consequatur est vitae incidunt qui. Vero omnis molestiae et aut. Quasi est magni quam necessitatibus quod. Et quis veniam optio maiores non.', 2, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(19, 'Saige', 'Denesik', '2020-05-17', '57434046', 'Dama', '25', 'Et cumque aliquam laborum odio. Excepturi quidem in sunt. Rerum autem culpa veritatis in modi est. Architecto assumenda corrupti qui animi eum.', 4, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(20, 'Adelia', 'Prosacco', '2014-01-07', '82328108', 'Varon', '1', 'Aliquam non et fugit quam. Quos voluptatem est reprehenderit natus. Excepturi consectetur rerum quasi sit eos dolorem. Dolor et consequatur modi possimus numquam sunt.', 1, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(21, 'Angel', 'Quigley', '1978-02-03', '13849071', 'Varon', '20', 'Quisquam deleniti omnis et ipsa quia. Tenetur architecto eum veniam nobis harum. Nihil explicabo iste nemo ea nihil culpa aut. Non vel reiciendis at.', 2, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(22, 'Joanny', 'Goldner', '2017-04-06', '76543405', 'Dama', '18', 'Nisi illum culpa sit sunt mollitia ipsum esse. Illum aut veritatis sequi quis. Velit expedita amet amet temporibus porro non.', 4, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(23, 'Darion', 'Glover', '2004-06-24', '82139653', 'Varon', '7', 'Ut ad qui et. Quisquam perspiciatis eligendi soluta vel soluta sed labore. Beatae corrupti deserunt molestias et.', 4, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(24, 'Jalyn', 'DuBuque', '1974-07-19', '43827574', 'Varon', '29', 'Libero harum et consequatur et. Repudiandae accusamus excepturi praesentium eos blanditiis ab ea iusto. Veritatis voluptas provident eius molestiae.', 1, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(25, 'Kamille', 'O\'Kon', '2016-03-21', '95830788', 'Dama', '1', 'Illo minima reiciendis facere harum. Sint et quaerat maxime quod dolorum saepe qui incidunt. Ut ex qui non. Facilis et totam iste ut. Omnis dolores enim in amet ut aut.', 2, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(26, 'Kory', 'Cartwright', '1973-10-22', '27807326', 'Dama', '11', 'Qui pariatur sed laborum id. Id iusto non beatae laborum qui. Voluptas ut rerum provident distinctio facilis ut. Atque voluptatum sunt laudantium sapiente dolorum dolorem.', 4, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(27, 'Hailey', 'Bruen', '1982-09-02', '61446225', 'Varon', '17', 'Qui dignissimos hic atque quas consectetur delectus delectus delectus. Velit sint id voluptates quod ut. Fuga error et et est labore voluptatum omnis.', 2, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(28, 'Winifred', 'Bednar', '1979-03-14', '94367114', 'Dama', '6', 'Aspernatur vel praesentium recusandae illum. Sapiente quisquam tempore aperiam rerum. Et adipisci labore aut nam molestiae cum.', 3, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(29, 'Imelda', 'Glover', '1976-04-07', '53175221', 'Varon', '3', 'Consectetur sunt quo quis pariatur ut consequatur. Mollitia blanditiis maxime sit veritatis ipsa. Id animi excepturi ea et praesentium et soluta. Est voluptatem minus rem fugit optio.', 2, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(30, 'Daisha', 'Klein', '2018-01-21', '55647602', 'Varon', '21', 'Odit ullam numquam in quibusdam et. Eos laudantium tempora aut rerum. Sit numquam provident suscipit mollitia veniam.', 4, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(31, 'Darren', 'Reichel', '1991-11-06', '01383674', 'Varon', '1', 'Voluptate repellat officiis consequatur ad dolores. Perferendis est eaque ea sit. Quaerat in molestiae molestiae odit.', 3, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(32, 'Webster', 'Bins', '1992-08-21', '85338615', 'Dama', '21', 'Veniam neque voluptatibus dolorem qui atque officia quia tempore. Asperiores dolores suscipit quia laboriosam esse ea et.', 5, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(33, 'Everette', 'Orn', '2005-06-14', '66831978', 'Varon', '8', 'Voluptatem sit nam officia quam consequatur dolorem qui. Laudantium aut deleniti non. Ullam fuga ducimus modi modi iure facere.', 5, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(34, 'Raven', 'Jaskolski', '2008-05-29', '62619272', 'Varon', '16', 'Ducimus excepturi aliquam ullam dolorem. Similique vitae consectetur error ipsa. Ex neque eligendi iure corporis dolor fugiat.', 4, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(35, 'Florida', 'Bauch', '1994-06-11', '02157274', 'Varon', '23', 'Non voluptas id sed est nihil temporibus ad. Perspiciatis consequatur aut natus dolorem.', 2, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(36, 'Tressa', 'Windler', '1993-11-05', '04404616', 'Dama', '9', 'Voluptas voluptatem iusto in laborum quisquam aspernatur blanditiis. Ut error consequatur pariatur. Possimus aspernatur aspernatur dignissimos earum.', 5, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(37, 'Dorothy', 'Collins', '1980-02-06', '66337409', 'Varon', '18', 'Eos ea ipsum ut doloribus alias. Provident in praesentium molestias expedita omnis quia. Earum rerum est sit et molestiae. Ex autem corrupti consequatur est.', 1, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(38, 'Norris', 'Mayert', '2003-03-10', '96333031', 'Varon', '8', 'Dolores explicabo error ad nobis et autem voluptatem ad. Iusto blanditiis fugiat consequatur hic voluptas atque beatae. Dolores repellendus et optio est. Omnis molestiae quia culpa.', 4, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(39, 'Jonathan', 'Rogahn', '1974-06-19', '65953237', 'Dama', '3', 'Minima quod sapiente voluptatem qui nisi. Fugiat et natus soluta labore ut eum molestias. Perferendis consequuntur voluptatum et perferendis molestias eum. Ullam est ducimus ad soluta assumenda.', 3, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(40, 'Destany', 'Prohaska', '2009-06-02', '32591382', 'Varon', '23', 'Vel rem voluptatem ut delectus dolore quaerat tenetur. Voluptatem sit vel vitae corporis et. Harum qui dignissimos voluptates molestiae.', 5, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(41, 'Flossie', 'Hodkiewicz', '2016-07-22', '91572765', 'Varon', '15', 'Pariatur beatae perferendis dolores nulla. Eum ea qui in et accusantium laudantium quaerat labore. Quibusdam sapiente tempora fuga labore consectetur odit.', 4, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(42, 'Shana', 'Bartoletti', '1972-02-20', '79530512', 'Varon', '23', 'Cum suscipit molestiae tenetur non ipsa. Perferendis blanditiis eveniet ea voluptas non animi. Laboriosam non ipsam qui. Minima blanditiis rerum dolor blanditiis a expedita.', 3, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(43, 'Gertrude', 'Waters', '2018-01-08', '29923203', 'Dama', '1', 'Magnam corrupti consequatur in natus quisquam iste. Veritatis beatae doloribus aperiam. Similique expedita commodi eum magni.', 3, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(44, 'Anne', 'Hayes', '1983-12-13', '07394910', 'Varon', '29', 'Quisquam sunt minima est quae sed aut dolorem. Eos in quam eveniet ipsum. Quis laudantium sed quo maxime suscipit modi sint. Fugiat rerum dolores aliquam voluptatem eum beatae.', 2, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(45, 'Chaz', 'Price', '1984-09-24', '55005497', 'Varon', '17', 'Recusandae quam corrupti molestiae sunt exercitationem cum. Dolorum iste totam optio quasi qui corrupti quae. Tempore deserunt incidunt omnis.', 5, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(46, 'Coy', 'Kautzer', '1979-11-22', '78472287', 'Varon', '14', 'Et rerum ipsum ad aut et. Consequatur a id quia est possimus.', 5, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(47, 'Rowland', 'Herzog', '1975-02-10', '34271667', 'Varon', '26', 'Recusandae voluptas ut aut consectetur. Quod debitis error corrupti veniam. Esse voluptas vel harum. Autem dolores ut natus natus.', 3, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(48, 'Sandra', 'Conn', '2004-01-28', '23009871', 'Varon', '18', 'Repudiandae est est consequatur itaque enim quidem eos. Id deserunt ea perspiciatis est. Id iure est perspiciatis consequuntur ex. Commodi aspernatur sequi molestiae aliquam illum voluptate.', 5, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(49, 'August', 'Hackett', '1985-03-20', '43201610', 'Varon', '3', 'Quos sint consequatur optio similique perferendis. Doloribus ex quos quaerat quo repudiandae. Voluptatibus labore qui qui consequatur quasi voluptas.', 2, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(50, 'Therese', 'Skiles', '1985-02-25', '68195580', 'Dama', '7', 'Dolorem sed itaque ex suscipit sequi vel vitae. In quam quod omnis exercitationem assumenda hic. Ad omnis ipsa quia perspiciatis. Quasi aliquid blanditiis officia.', 1, '2022-05-31 01:55:23', '2022-05-31 01:55:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `positions`
--

CREATE TABLE `positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pj` int(11) NOT NULL,
  `pg` int(11) NOT NULL,
  `pe` int(11) NOT NULL,
  `pp` int(11) NOT NULL,
  `gf` int(11) NOT NULL,
  `gc` int(11) NOT NULL,
  `dg` int(11) NOT NULL,
  `pts` int(11) NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `positions`
--

INSERT INTO `positions` (`id`, `pj`, `pg`, `pe`, `pp`, `gf`, `gc`, `dg`, `pts`, `team_id`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 0, 0, 11, 4, 7, 9, 1, '2022-05-31 03:17:12', '2022-05-31 03:18:37'),
(2, 3, 0, 0, 3, 0, 9, -9, 0, 3, '2022-05-31 03:17:12', '2022-05-31 03:19:15'),
(3, 3, 1, 0, 2, 3, 6, -3, 3, 2, '2022-05-31 03:17:28', '2022-05-31 03:18:51'),
(4, 3, 2, 1, 0, 8, 2, 6, 7, 4, '2022-05-31 03:17:28', '2022-05-31 03:19:38'),
(5, 2, 0, 1, 1, 4, 5, -1, 1, 5, '2022-05-31 03:18:00', '2022-05-31 03:19:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `schools`
--

INSERT INTO `schools` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'INGENIERIA DE SISTEMAS', '2022-05-31 01:55:22', '2022-05-31 01:55:22'),
(2, 'INGENIERIA DE ALIMENTOS', '2022-05-31 01:55:22', '2022-05-31 01:55:22'),
(3, 'INGENIERIA CIVIL', '2022-05-31 01:55:22', '2022-05-31 01:55:22'),
(4, 'INGENIERIA AMBIENTAL', '2022-05-31 01:55:22', '2022-05-31 01:55:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('U9ugSSzFoBfPMIvFe4md3eYT7AZKN40gImyv6FuH', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoia2hZZ3UzQlRNdEVxMklCcUQ5NVhQWFJ5WDQ4Q3NnM2lheUZYb2FORSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdGF0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEJOSUZ4RUxuNFJBZlZ3SmNtSHE3aWVGN2ZlZ3c3RHlqcXoyb2lLSEJqYVd5V3Q3cGo4TjJlIjt9', 1653967979);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stats`
--

CREATE TABLE `stats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `player` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Amarilla','Roja','Gol') COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `game_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `stats`
--

INSERT INTO `stats` (`id`, `player`, `type`, `datetime`, `team_id`, `game_id`, `created_at`, `updated_at`) VALUES
(1, '[1] Sincere, Sipes', 'Gol', '2022-05-30 22:17:00', 1, 1, '2022-05-31 03:17:00', '2022-05-31 03:17:00'),
(2, '[1] Sincere, Sipes', 'Gol', '2022-05-30 22:17:03', 1, 1, '2022-05-31 03:17:03', '2022-05-31 03:17:03'),
(3, '[1] Sincere, Sipes', 'Gol', '2022-05-30 22:17:07', 1, 1, '2022-05-31 03:17:07', '2022-05-31 03:17:07'),
(4, '[1] Sincere, Sipes', 'Gol', '2022-05-30 22:17:10', 1, 1, '2022-05-31 03:17:10', '2022-05-31 03:17:10'),
(5, '[17] Libby, Cummings', 'Gol', '2022-05-30 22:17:22', 4, 2, '2022-05-31 03:17:22', '2022-05-31 03:17:22'),
(6, '[17] Libby, Cummings', 'Gol', '2022-05-30 22:17:26', 4, 2, '2022-05-31 03:17:26', '2022-05-31 03:17:26'),
(7, '[1] Adelia, Prosacco', 'Gol', '2022-05-30 22:17:40', 1, 3, '2022-05-31 03:17:40', '2022-05-31 03:17:40'),
(8, '[1] Adelia, Prosacco', 'Gol', '2022-05-30 22:17:44', 1, 3, '2022-05-31 03:17:44', '2022-05-31 03:17:44'),
(9, '[1] Adelia, Prosacco', 'Gol', '2022-05-30 22:17:47', 1, 3, '2022-05-31 03:17:47', '2022-05-31 03:17:47'),
(10, '[11] Stacy, Dach', 'Gol', '2022-05-30 22:17:55', 5, 3, '2022-05-31 03:17:55', '2022-05-31 03:17:55'),
(11, '[11] Stacy, Dach', 'Gol', '2022-05-30 22:17:58', 5, 3, '2022-05-31 03:17:58', '2022-05-31 03:17:58'),
(12, '[14] Reyes, Nikolaus', 'Gol', '2022-05-30 22:18:16', 1, 4, '2022-05-31 03:18:16', '2022-05-31 03:18:16'),
(13, '[14] Reyes, Nikolaus', 'Gol', '2022-05-30 22:18:19', 1, 4, '2022-05-31 03:18:19', '2022-05-31 03:18:19'),
(14, '[14] Reyes, Nikolaus', 'Gol', '2022-05-30 22:18:21', 1, 4, '2022-05-31 03:18:21', '2022-05-31 03:18:21'),
(15, '[14] Reyes, Nikolaus', 'Gol', '2022-05-30 22:18:24', 1, 4, '2022-05-31 03:18:24', '2022-05-31 03:18:24'),
(16, '[1] Kamille, O\'Kon', 'Gol', '2022-05-30 22:18:32', 2, 4, '2022-05-31 03:18:32', '2022-05-31 03:18:32'),
(17, '[1] Kamille, O\'Kon', 'Gol', '2022-05-30 22:18:35', 2, 4, '2022-05-31 03:18:35', '2022-05-31 03:18:35'),
(18, '[1] Kamille, O\'Kon', 'Gol', '2022-05-30 22:18:48', 2, 5, '2022-05-31 03:18:48', '2022-05-31 03:18:48'),
(19, '[7] Darion, Glover', 'Gol', '2022-05-30 22:19:03', 4, 6, '2022-05-31 03:19:03', '2022-05-31 03:19:03'),
(20, '[7] Darion, Glover', 'Gol', '2022-05-30 22:19:06', 4, 6, '2022-05-31 03:19:06', '2022-05-31 03:19:06'),
(21, '[7] Darion, Glover', 'Gol', '2022-05-30 22:19:09', 4, 6, '2022-05-31 03:19:09', '2022-05-31 03:19:09'),
(22, '[7] Darion, Glover', 'Gol', '2022-05-30 22:19:12', 4, 6, '2022-05-31 03:19:12', '2022-05-31 03:19:12'),
(23, '[7] Darion, Glover', 'Gol', '2022-05-30 22:19:24', 4, 7, '2022-05-31 03:19:24', '2022-05-31 03:19:24'),
(24, '[7] Darion, Glover', 'Gol', '2022-05-30 22:19:27', 4, 7, '2022-05-31 03:19:27', '2022-05-31 03:19:27'),
(25, '[21] Webster, Bins', 'Gol', '2022-05-30 22:19:33', 5, 7, '2022-05-31 03:19:33', '2022-05-31 03:19:33'),
(26, '[21] Webster, Bins', 'Gol', '2022-05-30 22:19:36', 5, 7, '2022-05-31 03:19:36', '2022-05-31 03:19:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Masculino','Femenino') COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Activo','Inactivo') COLLATE utf8mb4_unicode_ci NOT NULL,
  `cycle_id` bigint(20) UNSIGNED NOT NULL,
  `school_id` bigint(20) UNSIGNED NOT NULL,
  `tournament_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `teams`
--

INSERT INTO `teams` (`id`, `name`, `description`, `type`, `color`, `status`, `cycle_id`, `school_id`, `tournament_id`, `created_at`, `updated_at`) VALUES
(1, 'Ciclo III-G1', 'Equipo del ciclo III Grupo 1', 'Masculino', 'indigo', 'Activo', 3, 1, 1, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(2, 'Ciclo III-G2', 'Equipo del ciclo III Grupo 2', 'Masculino', 'sky', 'Activo', 3, 1, 1, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(3, 'Ciclo IV', 'Equipo del ciclo IV', 'Masculino', 'indigo', 'Activo', 4, 1, 1, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(4, 'Ciclo V', 'Equipo del ciclo V', 'Masculino', 'indigo', 'Activo', 5, 1, 1, '2022-05-31 01:55:23', '2022-05-31 01:55:23'),
(5, 'Ciclo VI', 'Equipo del ciclo VI', 'Masculino', 'indigo', 'Activo', 6, 1, 1, '2022-05-31 01:55:23', '2022-05-31 01:55:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tournaments`
--

CREATE TABLE `tournaments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateinit` datetime NOT NULL,
  `dateend` datetime NOT NULL,
  `status` enum('1','2','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tournaments`
--

INSERT INTO `tournaments` (`id`, `name`, `description`, `dateinit`, `dateend`, `status`, `rules`, `created_at`, `updated_at`) VALUES
(1, 'CHAMPIONS FIA 2022', 'Campeonato por anversario de la Facultad de Ingeniería UPeU', '2022-06-06 00:00:00', '2022-06-10 00:00:00', '1', NULL, '2022-05-31 01:55:22', '2022-05-31 01:55:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Angel Rosendo Condori', 'angel.condori@gmail.com', NULL, '$2y$10$BNIFxELn4RAfVwJcmHq7ieF7fegw7Dyjqz2oiKHBjaWyWt7pj8N2e', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 01:55:22', '2022-05-31 01:55:22');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cycles`
--
ALTER TABLE `cycles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `games_place_id_foreign` (`place_id`),
  ADD KEY `games_tournament_id_foreign` (`tournament_id`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `players_team_id_foreign` (`team_id`);

--
-- Indices de la tabla `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `positions_team_id_foreign` (`team_id`);

--
-- Indices de la tabla `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stats_team_id_foreign` (`team_id`),
  ADD KEY `stats_game_id_foreign` (`game_id`);

--
-- Indices de la tabla `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_cycle_id_foreign` (`cycle_id`),
  ADD KEY `teams_school_id_foreign` (`school_id`),
  ADD KEY `teams_tournament_id_foreign` (`tournament_id`);

--
-- Indices de la tabla `tournaments`
--
ALTER TABLE `tournaments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cycles`
--
ALTER TABLE `cycles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `positions`
--
ALTER TABLE `positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `stats`
--
ALTER TABLE `stats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tournaments`
--
ALTER TABLE `tournaments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_place_id_foreign` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `games_tournament_id_foreign` FOREIGN KEY (`tournament_id`) REFERENCES `tournaments` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `positions`
--
ALTER TABLE `positions`
  ADD CONSTRAINT `positions_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `stats`
--
ALTER TABLE `stats`
  ADD CONSTRAINT `stats_game_id_foreign` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stats_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_cycle_id_foreign` FOREIGN KEY (`cycle_id`) REFERENCES `cycles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teams_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teams_tournament_id_foreign` FOREIGN KEY (`tournament_id`) REFERENCES `tournaments` (`id`) ON DELETE CASCADE;
COMMIT;
