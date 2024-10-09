-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-10-2024 a las 04:39:26
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `registradopor` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `autor` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` date NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `registradopor` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('cmconradoc@ufpso.edu.co|127.0.0.1', 'i:1;', 1727901076),
('cmconradoc@ufpso.edu.co|127.0.0.1:timer', 'i:1727901076;', 1727901076),
('mmunozp@ufpso.edu.co|127.0.0.1', 'i:1;', 1726166356),
('mmunozp@ufpso.edu.co|127.0.0.1:timer', 'i:1726166356;', 1726166356),
('saguevaraq@ufpso.edu.co|127.0.0.1', 'i:5;', 1728441300),
('saguevaraq@ufpso.edu.co|127.0.0.1:timer', 'i:1728441300;', 1728441300),
('santiagq0828@gmail.com|127.0.0.1', 'i:1;', 1728441286),
('santiagq0828@gmail.com|127.0.0.1:timer', 'i:1728441286;', 1728441286);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `registradoPor` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `estado`, `registradoPor`, `created_at`, `updated_at`) VALUES
(1, 'Cedrick Tromp', '1', '16', '2024-09-26 04:16:22', '2024-09-26 04:16:22'),
(2, 'Casandra Bartell DDS', '1', '17', '2024-09-26 04:16:22', '2024-09-26 04:16:22'),
(3, 'Prof. Roselyn Mosciski', '1', '18', '2024-09-26 04:16:22', '2024-09-26 04:16:22'),
(4, 'Jovany McDermott', '1', '19', '2024-09-26 04:16:22', '2024-09-26 04:16:22'),
(5, 'Tabitha Lesch', '1', '20', '2024-09-26 04:16:22', '2024-09-26 04:16:22'),
(6, 'Kyla Stracke I', '1', '21', '2024-09-26 04:18:12', '2024-09-26 04:18:12'),
(7, 'Zola Schultz', '1', '23', '2024-09-26 04:18:13', '2024-09-26 04:18:13'),
(8, 'Queenie Jacobs', '1', '25', '2024-09-26 04:18:13', '2024-09-26 04:18:13'),
(9, 'Dallas Abernathy', '1', '27', '2024-09-26 04:18:13', '2024-09-26 04:18:13'),
(10, 'Dr. Carissa Beer', '1', '29', '2024-09-26 04:18:13', '2024-09-26 04:18:13'),
(11, 'Simone Koss', '1', '31', '2024-09-26 04:18:13', '2024-09-26 04:18:13'),
(12, 'Leopold Berge', '1', '33', '2024-09-26 04:18:13', '2024-09-26 04:18:13'),
(13, 'Donato Spinka', '1', '35', '2024-09-26 04:18:13', '2024-09-26 04:18:13'),
(14, 'Mr. Dino Schulist PhD', '1', '37', '2024-09-26 04:18:13', '2024-09-26 04:18:13'),
(15, 'Connie Borer II', '1', '39', '2024-09-26 04:18:13', '2024-09-26 04:18:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudads`
--

CREATE TABLE `ciudads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `departamento_id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `registradopor` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pais_id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `registradopor` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `galerias`
--

CREATE TABLE `galerias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoria_id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `estado` varchar(255) NOT NULL,
  `registradoPor` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `galerias`
--

INSERT INTO `galerias` (`id`, `categoria_id`, `titulo`, `imagen`, `descripcion`, `estado`, `registradoPor`, `created_at`, `updated_at`) VALUES
(1, 6, 'Miss', 'imagen6.jpg', 'Neque laborum libero maxime aperiam eum harum. Facilis inventore iure ratione ut. A enim ut consectetur quia sed quidem.', '1', '22', '2024-09-26 04:18:12', '2024-09-26 04:18:12'),
(2, 7, 'Mr.', 'imagen3.jpg', 'Blanditiis voluptatem animi ad non magnam ut ipsum. Perspiciatis id beatae totam autem aperiam repellendus omnis alias. Aut et dolore molestias et. Dolor quia totam praesentium ut ea sit impedit.', '1', '24', '2024-09-26 04:18:13', '2024-09-26 04:18:13'),
(3, 8, 'Ms.', 'imagen11.jpg', 'Facere aut qui atque exercitationem ut. Sed officia voluptatem tenetur adipisci reprehenderit harum iste. Ut voluptas qui temporibus deserunt accusamus. Totam eius qui rerum.', '1', '26', '2024-09-26 04:18:13', '2024-09-26 04:18:13'),
(4, 9, 'Prof.', 'imagen8.jpg', 'Eos aliquid et eveniet eum aut nesciunt. Odio odio vel voluptatem harum est dolorem. Aut quisquam voluptate natus.', '1', '28', '2024-09-26 04:18:13', '2024-09-26 04:18:13'),
(5, 10, 'Mr.', 'imagen12.jpg', 'Deserunt repudiandae doloremque fugiat sint nobis et. Aspernatur exercitationem molestias id incidunt ducimus ab. Distinctio explicabo molestiae qui. Ut cupiditate voluptatem ipsum ducimus est.', '1', '30', '2024-09-26 04:18:13', '2024-09-26 04:18:13'),
(6, 11, 'Prof.', 'imagen6.jpg', 'Laudantium eligendi nisi quia iste et facilis. Rerum voluptatem atque voluptate rem. Dolores placeat eligendi et dolorem nobis assumenda eos. Maiores eveniet qui eveniet ex quibusdam earum adipisci.', '1', '32', '2024-09-26 04:18:13', '2024-09-26 04:18:13'),
(7, 12, 'Dr.', 'imagen15.jpg', 'Ut sit recusandae et dolor aperiam et. Suscipit quae adipisci a ut. Ea sit autem facere et. Inventore ut nam aliquid autem.', '1', '34', '2024-09-26 04:18:13', '2024-09-26 04:18:13'),
(8, 13, 'Dr.', 'imagen15.jpg', 'Voluptas excepturi beatae explicabo temporibus ducimus aliquid ea. Incidunt in inventore eos vitae deleniti officia.', '1', '36', '2024-09-26 04:18:13', '2024-09-26 04:18:13'),
(9, 14, 'Mr.', 'imagen3.jpg', 'Incidunt nisi voluptate officiis. Soluta porro amet commodi ut dolores. Fugit voluptas sit iure ad exercitationem omnis reiciendis dolor.', '1', '38', '2024-09-26 04:18:13', '2024-09-26 04:18:13'),
(10, 15, 'Mr.', 'imagen9.jpg', 'Quia necessitatibus a et et et. Quo aut nesciunt quaerat praesentium voluptas. Est aperiam ut ea tempore labore maiores vero consequatur.', '1', '40', '2024-09-26 04:18:13', '2024-09-26 04:18:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_05_144406_create_products_table', 2),
(5, '2024_09_05_150135_create_servicios_table', 3),
(6, '2024_09_25_230010_create_categorias_table', 4),
(7, '2024_09_25_230226_create_galerias_table', 5),
(8, '2024_05_04_205059_create_paises_table', 6),
(9, '2024_05_12_213903_create_departamentos_table', 6),
(10, '2024_05_12_214927_create_ciudads_table', 6),
(11, '2024_09_12_150014_create_sliders_table', 7),
(12, '2024_09_12_150645_create_banners_table', 8),
(13, '2024_09_26_141642_create_personal_access_tokens_table', 8),
(14, '2024_04_13_130027_add_photo_users_table', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `registradopor` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('cmconradoc@ufpso.edu.co', '$2y$12$o1fHZT.2oRIx8ZpWbT/NLeC6yrBLiRucapiwivYzkrvCsynkQriyy', '2024-10-02 20:47:11'),
('fjacostaa@ufpso.edu.co', '$2y$12$Igj5bKfymzR0CTzjFO0N8ewDP4mcf2hp3eybc9wtzzTgGheothZQ.', '2024-10-02 19:19:07'),
('mmunozp@ufpso.edu.co', '$2y$12$GJR7kYVXEz6UlNWZAzonUeq16A7PC2HSoFGAVXF6EmrwHmE8T3YXS', '2024-09-12 18:39:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CYIyQRDqSmExxVqcxj4LomOdWPbWBYNK7fb3e9rQ', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVmV4QkI5TmNFWEZNckViaXpsRjhjTlVENHhXUUJueVRFRGZYbUkwUSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNjoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2hvbWUiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNjoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=', 1728441497),
('JzG9XiAxLP8geiPNzskjCsmFvPRI4Vj1rec0PsCn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXcyZmxob0hFRlNWWVRLbGNRUjJYSkFiaDNJYlVxeXNlcGFzdTFwVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTMyOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvcGFzc3dvcmQvcmVzZXQvN2E5NTEyMWFmNGVkNTA0OTVhYTdhNDhiMWRjMTI5MjYyNDZmYzVlMDA5YzFkOGZlYTVkZjYwNjc4YjY1M2Q2YT9lbWFpbD1zYW50aWFncTA4MjglNDBnbWFpbC5jb20iO319', 1727906657),
('oerIBlxAu4yxecmcExfnWSxCzXKHA7EgTc21oYQL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMTBEdEJYWHV5S0RmQlBuYnkyTmJxOVhsZ1hpU2gxTWRxNEt2TE9ZMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wYXNzd29yZC9yZXNldCI7fX0=', 1727922850);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `nombre_boton` varchar(255) NOT NULL,
  `link_boton` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `registradopor` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `photo`) VALUES
(3, 'Santiago Guevara', 'saguevaraq@ufpso.edu.co', NULL, '$2y$12$62MGpP1n47Q/V0WjC8HNPOikET49QAfz2YkcPAf9Nf1snTPpfzkI.', 'haobCMxMaNgbAoX79p5Q1dxpB6yZl4k0inycAxfaqniEJSorXIOxpC7QDCN8', '2024-09-04 03:46:59', '2024-10-09 02:37:27', 'Santiago_Guevara.jpeg'),
(5, 'Mariana', 'mmunozp@ufpso.edu.co', NULL, '$2y$12$oyLTCWIg9zfXRV/RU/rCaOKyXP0bCd6PVFNsp8GyU87dhFRcwWtFC', NULL, '2024-09-12 18:38:53', '2024-09-12 18:38:53', NULL),
(6, 'Glennie Ruecker Jr.', 'ward.hammes@example.org', '2024-09-26 04:15:41', '$2y$12$K.1E0XgvmWUUFGZwxdjXJeKYOEsh4/ercHbzwlaWnYndK0M5.Y/Y2', 'KnVGas2hmf', '2024-09-26 04:15:42', '2024-09-26 04:15:42', NULL),
(7, 'Dario Reichel V', 'wade.herzog@example.net', '2024-09-26 04:15:41', '$2y$12$K.1E0XgvmWUUFGZwxdjXJeKYOEsh4/ercHbzwlaWnYndK0M5.Y/Y2', 'BJcodpcO7n', '2024-09-26 04:15:42', '2024-09-26 04:15:42', NULL),
(8, 'Brody Fay', 'florine.reinger@example.com', '2024-09-26 04:15:41', '$2y$12$K.1E0XgvmWUUFGZwxdjXJeKYOEsh4/ercHbzwlaWnYndK0M5.Y/Y2', 'fDVaFrvWYZ', '2024-09-26 04:15:42', '2024-09-26 04:15:42', NULL),
(9, 'Prof. Elton Heaney DVM', 'smith.judy@example.net', '2024-09-26 04:15:41', '$2y$12$K.1E0XgvmWUUFGZwxdjXJeKYOEsh4/ercHbzwlaWnYndK0M5.Y/Y2', 'bzseu6iI0m', '2024-09-26 04:15:42', '2024-09-26 04:15:42', NULL),
(10, 'Alexie Davis', 'ipfannerstill@example.org', '2024-09-26 04:15:41', '$2y$12$K.1E0XgvmWUUFGZwxdjXJeKYOEsh4/ercHbzwlaWnYndK0M5.Y/Y2', 'UcvlVsEpxt', '2024-09-26 04:15:42', '2024-09-26 04:15:42', NULL),
(11, 'Ms. Bella O\'Connell MD', 'uriel.bruen@example.net', '2024-09-26 04:15:41', '$2y$12$K.1E0XgvmWUUFGZwxdjXJeKYOEsh4/ercHbzwlaWnYndK0M5.Y/Y2', 'EsMqzP8127', '2024-09-26 04:15:42', '2024-09-26 04:15:42', NULL),
(12, 'Kathlyn Franecki Sr.', 'marquardt.davon@example.com', '2024-09-26 04:15:41', '$2y$12$K.1E0XgvmWUUFGZwxdjXJeKYOEsh4/ercHbzwlaWnYndK0M5.Y/Y2', 'iQm7Ylkf0n', '2024-09-26 04:15:42', '2024-09-26 04:15:42', NULL),
(13, 'Blaze Pagac', 'grant49@example.net', '2024-09-26 04:15:41', '$2y$12$K.1E0XgvmWUUFGZwxdjXJeKYOEsh4/ercHbzwlaWnYndK0M5.Y/Y2', 'L8gP5CIgIT', '2024-09-26 04:15:42', '2024-09-26 04:15:42', NULL),
(14, 'Prof. Alvena Graham V', 'kbotsford@example.net', '2024-09-26 04:15:41', '$2y$12$K.1E0XgvmWUUFGZwxdjXJeKYOEsh4/ercHbzwlaWnYndK0M5.Y/Y2', 'HWozow6lGx', '2024-09-26 04:15:42', '2024-09-26 04:15:42', NULL),
(15, 'Wyman Langosh', 'tillman.edwina@example.net', '2024-09-26 04:15:41', '$2y$12$K.1E0XgvmWUUFGZwxdjXJeKYOEsh4/ercHbzwlaWnYndK0M5.Y/Y2', 'hxWaJHP4TC', '2024-09-26 04:15:42', '2024-09-26 04:15:42', NULL),
(16, 'Myrl Torp Sr.', 'jazlyn.friesen@example.org', '2024-09-26 04:16:22', '$2y$12$Le1/Y4H0dqwVdkCmd83k4OH4Om3nrO3yFbvTRTlWCN5PsPiHH0EEK', 'Gz9S563MUb', '2024-09-26 04:16:22', '2024-09-26 04:16:22', NULL),
(17, 'Korbin Graham', 'maurine.trantow@example.org', '2024-09-26 04:16:22', '$2y$12$Le1/Y4H0dqwVdkCmd83k4OH4Om3nrO3yFbvTRTlWCN5PsPiHH0EEK', 'gRTFkWXgJU', '2024-09-26 04:16:22', '2024-09-26 04:16:22', NULL),
(18, 'Kacie Feeney', 'carey75@example.net', '2024-09-26 04:16:22', '$2y$12$Le1/Y4H0dqwVdkCmd83k4OH4Om3nrO3yFbvTRTlWCN5PsPiHH0EEK', 'rrC5JsKfks', '2024-09-26 04:16:22', '2024-09-26 04:16:22', NULL),
(19, 'Dave Emmerich', 'sohara@example.net', '2024-09-26 04:16:22', '$2y$12$Le1/Y4H0dqwVdkCmd83k4OH4Om3nrO3yFbvTRTlWCN5PsPiHH0EEK', '5Mk1vWXqAJ', '2024-09-26 04:16:22', '2024-09-26 04:16:22', NULL),
(20, 'Maxime Beer', 'marquis97@example.net', '2024-09-26 04:16:22', '$2y$12$Le1/Y4H0dqwVdkCmd83k4OH4Om3nrO3yFbvTRTlWCN5PsPiHH0EEK', 'Aj4W2Efd4n', '2024-09-26 04:16:22', '2024-09-26 04:16:22', NULL),
(21, 'Dayton Corkery', 'carmen50@example.net', '2024-09-26 04:18:12', '$2y$12$Q2INF2orlViP8S0w0aCltO4Vrtvb33roZYmSF89OzeAl4242INWXy', 'orXLJgGTzJ', '2024-09-26 04:18:13', '2024-09-26 04:18:13', NULL),
(22, 'Odessa Sanford', 'lyric.bechtelar@example.org', '2024-09-26 04:18:13', '$2y$12$Q2INF2orlViP8S0w0aCltO4Vrtvb33roZYmSF89OzeAl4242INWXy', 'dPKNh5cKWj', '2024-09-26 04:18:13', '2024-09-26 04:18:13', NULL),
(23, 'Laisha Kassulke', 'yfritsch@example.net', '2024-09-26 04:18:13', '$2y$12$Q2INF2orlViP8S0w0aCltO4Vrtvb33roZYmSF89OzeAl4242INWXy', 'pWdhur1wy9', '2024-09-26 04:18:13', '2024-09-26 04:18:13', NULL),
(24, 'Abdiel Blick', 'shawn.effertz@example.org', '2024-09-26 04:18:13', '$2y$12$Q2INF2orlViP8S0w0aCltO4Vrtvb33roZYmSF89OzeAl4242INWXy', 'e0Jh0rANYe', '2024-09-26 04:18:13', '2024-09-26 04:18:13', NULL),
(25, 'Linda Kautzer', 'elna72@example.net', '2024-09-26 04:18:13', '$2y$12$Q2INF2orlViP8S0w0aCltO4Vrtvb33roZYmSF89OzeAl4242INWXy', 'eNkQ6lXkRB', '2024-09-26 04:18:13', '2024-09-26 04:18:13', NULL),
(26, 'Sharon Nitzsche', 'hayes.mallory@example.com', '2024-09-26 04:18:13', '$2y$12$Q2INF2orlViP8S0w0aCltO4Vrtvb33roZYmSF89OzeAl4242INWXy', 'yRuKRlI1lN', '2024-09-26 04:18:13', '2024-09-26 04:18:13', NULL),
(27, 'Davion Hilpert', 'kenton44@example.com', '2024-09-26 04:18:13', '$2y$12$Q2INF2orlViP8S0w0aCltO4Vrtvb33roZYmSF89OzeAl4242INWXy', 'R3h1CB46Lr', '2024-09-26 04:18:13', '2024-09-26 04:18:13', NULL),
(28, 'Bianka Lehner', 'conroy.newton@example.org', '2024-09-26 04:18:13', '$2y$12$Q2INF2orlViP8S0w0aCltO4Vrtvb33roZYmSF89OzeAl4242INWXy', 'znNktzIsqT', '2024-09-26 04:18:13', '2024-09-26 04:18:13', NULL),
(29, 'Dr. Judah Huel DVM', 'phyllis.gottlieb@example.net', '2024-09-26 04:18:13', '$2y$12$Q2INF2orlViP8S0w0aCltO4Vrtvb33roZYmSF89OzeAl4242INWXy', 'RtXJAayCaR', '2024-09-26 04:18:13', '2024-09-26 04:18:13', NULL),
(30, 'Ransom Treutel', 'felipa68@example.org', '2024-09-26 04:18:13', '$2y$12$Q2INF2orlViP8S0w0aCltO4Vrtvb33roZYmSF89OzeAl4242INWXy', 'nEW2754lVM', '2024-09-26 04:18:13', '2024-09-26 04:18:13', NULL),
(31, 'Jackson Schmitt PhD', 'randal.kassulke@example.com', '2024-09-26 04:18:13', '$2y$12$Q2INF2orlViP8S0w0aCltO4Vrtvb33roZYmSF89OzeAl4242INWXy', 'niX7d76Nq4', '2024-09-26 04:18:13', '2024-09-26 04:18:13', NULL),
(32, 'Dr. Hershel Kozey', 'lester.schuster@example.org', '2024-09-26 04:18:13', '$2y$12$Q2INF2orlViP8S0w0aCltO4Vrtvb33roZYmSF89OzeAl4242INWXy', 'CyZNf9oCC2', '2024-09-26 04:18:13', '2024-09-26 04:18:13', NULL),
(33, 'Mr. Guiseppe Vandervort IV', 'curtis.altenwerth@example.com', '2024-09-26 04:18:13', '$2y$12$Q2INF2orlViP8S0w0aCltO4Vrtvb33roZYmSF89OzeAl4242INWXy', 'xe4H3Q4Cbr', '2024-09-26 04:18:13', '2024-09-26 04:18:13', NULL),
(34, 'Ron Stoltenberg', 'lindsey97@example.com', '2024-09-26 04:18:13', '$2y$12$Q2INF2orlViP8S0w0aCltO4Vrtvb33roZYmSF89OzeAl4242INWXy', '0Wfk6Y3aQo', '2024-09-26 04:18:13', '2024-09-26 04:18:13', NULL),
(35, 'Otho Mayer Sr.', 'lrussel@example.org', '2024-09-26 04:18:13', '$2y$12$Q2INF2orlViP8S0w0aCltO4Vrtvb33roZYmSF89OzeAl4242INWXy', 'C2gOeLX6Pd', '2024-09-26 04:18:13', '2024-09-26 04:18:13', NULL),
(36, 'Friedrich Purdy III', 'fschiller@example.com', '2024-09-26 04:18:13', '$2y$12$Q2INF2orlViP8S0w0aCltO4Vrtvb33roZYmSF89OzeAl4242INWXy', 'xO2eNvFWOV', '2024-09-26 04:18:13', '2024-09-26 04:18:13', NULL),
(37, 'Armando Jacobi', 'hintz.brett@example.com', '2024-09-26 04:18:13', '$2y$12$Q2INF2orlViP8S0w0aCltO4Vrtvb33roZYmSF89OzeAl4242INWXy', 'izWCfg769U', '2024-09-26 04:18:13', '2024-09-26 04:18:13', NULL),
(38, 'Josue Gerlach', 'americo67@example.net', '2024-09-26 04:18:13', '$2y$12$Q2INF2orlViP8S0w0aCltO4Vrtvb33roZYmSF89OzeAl4242INWXy', 'xjevuqrmzu', '2024-09-26 04:18:13', '2024-09-26 04:18:13', NULL),
(39, 'Maud O\'Keefe', 'albina61@example.org', '2024-09-26 04:18:13', '$2y$12$Q2INF2orlViP8S0w0aCltO4Vrtvb33roZYmSF89OzeAl4242INWXy', 'KEqnb59fnm', '2024-09-26 04:18:13', '2024-09-26 04:18:13', NULL),
(40, 'Donavon Little', 'liliana21@example.net', '2024-09-26 04:18:13', '$2y$12$Q2INF2orlViP8S0w0aCltO4Vrtvb33roZYmSF89OzeAl4242INWXy', 'zrzfE9IoJ9', '2024-09-26 04:18:13', '2024-09-26 04:18:13', NULL),
(41, 'Charis Merieth', 'cmconradoc@ufpso.edu.co', NULL, '$2y$12$FuRSxTqL.Gg5T4tGmotCS.rKf2OYjBW/5joT.kVEq0r5oHCtpQsd.', NULL, '2024-09-26 05:14:34', '2024-09-26 05:14:34', NULL),
(42, 'Fabian Acosta', 'fjacostaa@ufpso.edu.co', NULL, '$2y$12$O06i5fOO6GE3u2qqhDG9au.Htn75zxwdGmfnqI2lVMgnIS9xdpX/a', NULL, '2024-10-02 19:18:44', '2024-10-02 19:18:44', NULL),
(43, 'Santiago', 'santiagq0828@gmail.com', NULL, '$2y$12$oK..3mCxMK7IZ5.SnquDqeUI29MO64o874LCCGjGYVP5TbwnCIQda', '465Hqmb7a74zhsCTO52Hd65WK6z59fbY24tQiKbrBiyrIAYlaE4KxoN0UONt', '2024-10-02 22:00:11', '2024-10-03 02:16:59', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciudads`
--
ALTER TABLE `ciudads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ciudads_departamento_id_foreign` (`departamento_id`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departamentos_pais_id_foreign` (`pais_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `galerias`
--
ALTER TABLE `galerias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galerias_categoria_id_foreign` (`categoria_id`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `sliders`
--
ALTER TABLE `sliders`
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
-- AUTO_INCREMENT de la tabla `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `ciudads`
--
ALTER TABLE `ciudads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `galerias`
--
ALTER TABLE `galerias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudads`
--
ALTER TABLE `ciudads`
  ADD CONSTRAINT `ciudads_departamento_id_foreign` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`);

--
-- Filtros para la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD CONSTRAINT `departamentos_pais_id_foreign` FOREIGN KEY (`pais_id`) REFERENCES `paises` (`id`);

--
-- Filtros para la tabla `galerias`
--
ALTER TABLE `galerias`
  ADD CONSTRAINT `galerias_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
