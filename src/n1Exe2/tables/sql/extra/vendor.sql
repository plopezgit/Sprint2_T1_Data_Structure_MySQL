-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 12-10-2023 a las 15:11:57
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
-- Estructura de tabla para la tabla `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `vendor_name` varchar(100) NOT NULL,
  `vendor_surname` varchar(100) NOT NULL,
  `vendor_nif` varchar(45) NOT NULL,
  `vendor_phone_number` varchar(45) NOT NULL,
  `vendor_type` varchar(45) NOT NULL,
  `vendor_store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vendor`
--

INSERT INTO `vendor` (`id`, `vendor_name`, `vendor_surname`, `vendor_nif`, `vendor_phone_number`, `vendor_type`, `vendor_store_id`) VALUES
(1, 'Al', 'Gus', '3225454', '8875674', 'Cook', 1),
(2, 'Hio', 'Kal', '3287685', '96456353', 'Delivery', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_vendor_store_id` (`vendor_store_id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `vendor`
--
ALTER TABLE `vendor`
  ADD CONSTRAINT `FK_vendor_store_id` FOREIGN KEY (`vendor_store_id`) REFERENCES `store` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
