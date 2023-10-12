-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 12-10-2023 a las 15:11:22
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
-- Estructura de tabla para la tabla `delivery_details`
--

CREATE TABLE `delivery_details` (
  `id` int(11) NOT NULL,
  `delivery_vendor_id` int(11) NOT NULL,
  `delivery_order_id` int(11) NOT NULL,
  `delivery_local_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `delivery_details`
--

INSERT INTO `delivery_details` (`id`, `delivery_vendor_id`, `delivery_order_id`, `delivery_local_date_time`) VALUES
(1, 1, 1, '2023-01-01 00:00:00'),
(2, 2, 2, '2023-01-01 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `delivery_details`
--
ALTER TABLE `delivery_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_delivery_vendor_id` (`delivery_vendor_id`),
  ADD KEY `FK_delivery_order_id` (`delivery_order_id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `delivery_details`
--
ALTER TABLE `delivery_details`
  ADD CONSTRAINT `FK_delivery_order_id` FOREIGN KEY (`delivery_order_id`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_delivery_vendor_id` FOREIGN KEY (`delivery_vendor_id`) REFERENCES `vendor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
