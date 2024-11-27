-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-11-2024 a las 23:08:46
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

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
(1, 6, 'New York City', 'destination-1.jpg', 'Neque laborum libero maxime aperiam eum harum. Facilis inventore iure ratione ut. A enim ut consectetur quia sed quidem.', '1', '22', '2024-09-26 04:18:12', '2024-09-26 04:18:12'),
(2, 7, 'Las Vegas', 'destination-2.jpg', 'Blanditiis voluptatem animi ad non magnam ut ipsum. Perspiciatis id beatae totam autem aperiam repellendus omnis alias. Aut et dolore molestias et. Dolor quia totam praesentium ut ea sit impedit.', '1', '24', '2024-09-26 04:18:13', '2024-09-26 04:18:13'),
(3, 8, 'Los Angeles', 'destination-7.jpg', 'Facere aut qui atque exercitationem ut. Sed officia voluptatem tenetur adipisci reprehenderit harum iste. Ut voluptas qui temporibus deserunt accusamus. Totam eius qui rerum.', '1', '26', '2024-09-26 04:18:13', '2024-09-26 04:18:13'),
(4, 9, 'Los Angeles', 'destination-8.jpg', 'Eos aliquid et eveniet eum aut nesciunt. Odio odio vel voluptatem harum est dolorem. Aut quisquam voluptate natus.', '1', '28', '2024-09-26 04:18:13', '2024-09-26 04:18:13'),
(5, 10, 'San Francisco', 'destination-9.jpg', 'Deserunt repudiandae doloremque fugiat sint nobis et. Aspernatur exercitationem molestias id incidunt ducimus ab. Distinctio explicabo molestiae qui. Ut cupiditate voluptatem ipsum ducimus est.', '1', '30', '2024-09-26 04:18:13', '2024-09-26 04:18:13'),
(11, 7, 'Ottawa', 'destination-4.jpg', 'Tierra de estrellas', '1', '3', '2024-11-28 02:59:30', '2024-11-28 02:59:30'),
(12, 8, 'Venecia', 'destination-5.jpg', 'Lindos paisajes', '1', '3', '2024-11-28 03:00:02', '2024-11-28 03:00:02'),
(13, 9, 'Hong Kong', 'destination-6.jpg', 'Tierra de Dragones', '1', '3', '2024-11-28 03:01:02', '2024-11-28 03:01:02');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `galerias`
--
ALTER TABLE `galerias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galerias_categoria_id_foreign` (`categoria_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `galerias`
--
ALTER TABLE `galerias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `galerias`
--
ALTER TABLE `galerias`
  ADD CONSTRAINT `galerias_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
