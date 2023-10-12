-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 12-10-2023 a las 15:11:12
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
-- Estructura de tabla para la tabla `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_surname` varchar(255) DEFAULT NULL,
  `client_adress` varchar(45) NOT NULL,
  `client_post_code` varchar(45) NOT NULL,
  `client_locality_id` int(11) NOT NULL,
  `client_province_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `client`
--

INSERT INTO `client` (`id`, `client_name`, `client_surname`, `client_adress`, `client_post_code`, `client_locality_id`, `client_province_id`) VALUES
(1, 'Solis', 'Bol', 'adress1', '3423', 1, 2),
(2, 'Bull', 'Cal', 'adress2', '3422', 1, 2),
(3, 'Bliss', 'Ful', 'adress3', '6455', 2, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_client_province_id` (`client_province_id`),
  ADD KEY `FK_client_locality_id` (`client_locality_id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `FK_client_locality_id` FOREIGN KEY (`client_locality_id`) REFERENCES `locality` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_client_province_id` FOREIGN KEY (`client_province_id`) REFERENCES `province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
