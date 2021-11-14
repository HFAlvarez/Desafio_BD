-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 07-11-2021 a las 22:14:50
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `desafiobd_hfa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE IF NOT EXISTS `departamentos` (
  `id_departamento` int(2) NOT NULL,
  `nombre_departamento` varchar(20) COLLATE utf8_swedish_ci DEFAULT NULL,
  `presupuesto` int(6) DEFAULT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id_departamento`, `nombre_departamento`, `presupuesto`) VALUES
(14, 'Informática', 80000),
(15, 'Gestión', 95000),
(16, 'Comunicación', 75000),
(37, 'Desarrollo', 65000),
(77, 'Investigación', 40000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

DROP TABLE IF EXISTS `empleados`;
CREATE TABLE IF NOT EXISTS `empleados` (
  `documento` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL,
  `apellido` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL,
  `depto_id` int(2) NOT NULL,
  PRIMARY KEY (`documento`),
  KEY `id_departamento` (`depto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`documento`, `nombre`, `apellido`, `depto_id`) VALUES
(31096675, 'Martin', 'Zarabia', 77),
(31096678, 'Juan', 'Lopez', 14),
(31236985, 'Maria', 'Diamante', 14),
(32145698, 'Guadalupe', 'Perez', 77),
(32369854, 'Bernardo', 'Pantera', 37),
(32698547, 'Mariana', 'Lopez', 15),
(32698574, 'Carmen', 'Barbieri', 16),
(33698521, 'Pedro', 'Perez', 14),
(34269854, 'Jose', 'Velez', 77),
(36125896, 'Marti', 'Julia', 14),
(36125965, 'Lucia', 'Pesaro', 14),
(36985471, 'Omar', 'Diaz', 15),
(41369852, 'Paula', 'Madariaga', 77),
(42369854, 'Abril', 'Sanchez', 37);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`depto_id`) REFERENCES `departamentos` (`id_departamento`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;