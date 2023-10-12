-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 11-10-2023 a las 16:57:16
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
-- Base de datos: `optic`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provider`
--

CREATE TABLE `provider` (
  `id` int(11) NOT NULL,
  `provider_name` varchar(50) NOT NULL,
  `provider_address_id` int(11) NOT NULL,
  `provider_phone_number` varchar(45) NOT NULL,
  `provider_fax_number` varchar(45) NOT NULL,
  `provider_nif` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `provider`
--

INSERT INTO `provider` (`id`, `provider_name`, `provider_address_id`, `provider_phone_number`, `provider_fax_number`, `provider_nif`) VALUES
(1, 'FuelLens', 2, '3762483', '74638264', '83427647'),
(2, 'Glassesgo', 1, '3434243232', '12111212', '9843842');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_provider_address_id` (`provider_address_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `provider`
--
ALTER TABLE `provider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `provider`
--
ALTER TABLE `provider`
  ADD CONSTRAINT `FK_provider_address_id` FOREIGN KEY (`provider_address_id`) REFERENCES `addressDetails` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
