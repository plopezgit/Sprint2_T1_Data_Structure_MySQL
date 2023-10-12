-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 11-10-2023 a las 16:56:47
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
-- Estructura de tabla para la tabla `addressDetails`
--

CREATE TABLE `addressDetails` (
  `id` int(11) NOT NULL,
  `street` varchar(255) NOT NULL,
  `number` varchar(45) NOT NULL,
  `floor` varchar(45) NOT NULL,
  `door` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `postal_Code` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `addressDetails`
--

INSERT INTO `addressDetails` (`id`, `street`, `number`, `floor`, `door`, `city`, `postal_Code`, `country`) VALUES
(1, 'Cork', '4', '3', '2', 'Tasco', '35453', 'Plug'),
(2, 'Part', '2', '5', '1', 'Tirso', '25433', 'Halo'),
(3, 'Turk', '6', '1', '6', 'Plano', '95453', 'Pinto');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `addressDetails`
--
ALTER TABLE `addressDetails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `addressDetails`
--
ALTER TABLE `addressDetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
