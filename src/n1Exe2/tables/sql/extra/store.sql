-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 12-10-2023 a las 15:11:52
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pizza`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `store`
--

CREATE TABLE `store` (
  `id` int(11) NOT NULL,
  `store_address` varchar(255) NOT NULL,
  `store_post_code` varchar(45) NOT NULL,
  `store_locality_id` int(11) NOT NULL,
  `store_province_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `store`
--

INSERT INTO `store` (`id`, `store_address`, `store_post_code`, `store_locality_id`, `store_province_id`) VALUES
(1, 'Colliure', '3545', 1, 2),
(2, 'Posture', '3252', 2, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_store_locality_id` (`store_locality_id`),
  ADD KEY `FK_store_province_id` (`store_province_id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `FK_store_locality_id` FOREIGN KEY (`store_locality_id`) REFERENCES `locality` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_store_province_id` FOREIGN KEY (`store_province_id`) REFERENCES `province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
