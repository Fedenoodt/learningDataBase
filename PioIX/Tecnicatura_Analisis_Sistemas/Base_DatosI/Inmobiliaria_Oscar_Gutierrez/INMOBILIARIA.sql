-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 26-11-2020 a las 00:29:22
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `INMOBILIARIA`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BARRIOS`
--

CREATE TABLE `BARRIOS` (
  `ID_BARRIO` int(11) NOT NULL,
  `NOMBRE` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `BARRIOS`
--

INSERT INTO `BARRIOS` (`ID_BARRIO`, `NOMBRE`) VALUES
(1, 'Monserrat'),
(2, 'Caballito'),
(3, 'Almagro'),
(4, 'Belgrano'),
(5, 'Monte Castro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FOTOS`
--

CREATE TABLE `FOTOS` (
  `ID_FOTO` int(11) NOT NULL,
  `FOTOS` varchar(140) COLLATE utf8_spanish_ci DEFAULT NULL,
  `FK_PROPIEDAD` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `FOTOS`
--

INSERT INTO `FOTOS` (`ID_FOTO`, `FOTOS`, `FK_PROPIEDAD`) VALUES
(1, 'Casabonita.jpg', 3),
(2, 'JardínGrande.png', 1),
(3, 'LivingModerno.jpg', 2),
(4, 'CocinaMinimalista.png', 4),
(5, 'DormitorioAntigüo.jpg', 5),
(6, 'CocinaVentanaGrande.png', 1),
(7, 'TerrazaColorTerracota.jpg', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PROPIEDADES`
--

CREATE TABLE `PROPIEDADES` (
  `ID_PROPIEDAD` int(11) NOT NULL,
  `DIRECCION` varchar(140) COLLATE utf8_spanish_ci DEFAULT NULL,
  `M2` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DESCRIPCION` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `FK_OPERACION` int(11) DEFAULT NULL,
  `FK_PROPIETARIO` int(11) DEFAULT NULL,
  `FK_BARRIO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `PROPIEDADES`
--

INSERT INTO `PROPIEDADES` (`ID_PROPIEDAD`, `DIRECCION`, `M2`, `DESCRIPCION`, `FK_OPERACION`, `FK_PROPIETARIO`, `FK_BARRIO`) VALUES
(1, 'Avenida Corrientes 4365', '72', 'Sin amueblar', 3, 1, 3),
(2, 'Felipe Vallese 816', '55', 'Goteras en todo el techo.', 3, 2, 2),
(3, 'Avenida Corrientes 2065', '34', 'Plaga de cucarachas.', 1, 3, 1),
(4, 'Migueletes 1701', '63', 'Perfecto estado.', 2, 4, 4),
(5, 'Santo Tome 4901', '54', 'Buen Estado.', 3, 4, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PROPIETARIOS`
--

CREATE TABLE `PROPIETARIOS` (
  `ID_PROPIETARIO` int(11) NOT NULL,
  `NOMBRE` varchar(140) COLLATE utf8_spanish_ci DEFAULT NULL,
  `TELEFONO` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `FK_BARRIO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `PROPIETARIOS`
--

INSERT INTO `PROPIETARIOS` (`ID_PROPIETARIO`, `NOMBRE`, `TELEFONO`, `FK_BARRIO`) VALUES
(1, 'Lucas Gomez', '5491158340032', NULL),
(2, 'Lucia Fernandez', '5491193788403', NULL),
(3, 'Carlos Pereza', '5491158306739', NULL),
(4, 'Juan Ledesma', '5491130184827', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TIPOS_OPERACIONES`
--

CREATE TABLE `TIPOS_OPERACIONES` (
  `ID_OPERACION` int(11) NOT NULL,
  `OPERACION` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `TIPOS_OPERACIONES`
--

INSERT INTO `TIPOS_OPERACIONES` (`ID_OPERACION`, `OPERACION`) VALUES
(1, 'ALQUILER'),
(2, 'ALQUILER_TEMP'),
(3, 'VENTA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `BARRIOS`
--
ALTER TABLE `BARRIOS`
  ADD PRIMARY KEY (`ID_BARRIO`);

--
-- Indices de la tabla `FOTOS`
--
ALTER TABLE `FOTOS`
  ADD PRIMARY KEY (`ID_FOTO`),
  ADD KEY `FK_PROPIEDAD` (`FK_PROPIEDAD`);

--
-- Indices de la tabla `PROPIEDADES`
--
ALTER TABLE `PROPIEDADES`
  ADD PRIMARY KEY (`ID_PROPIEDAD`),
  ADD KEY `FK_OPERACION` (`FK_OPERACION`),
  ADD KEY `FK_PROPIETARIO` (`FK_PROPIETARIO`),
  ADD KEY `FK_BARRIO` (`FK_BARRIO`);

--
-- Indices de la tabla `PROPIETARIOS`
--
ALTER TABLE `PROPIETARIOS`
  ADD PRIMARY KEY (`ID_PROPIETARIO`),
  ADD KEY `FK_BARRIO` (`FK_BARRIO`);

--
-- Indices de la tabla `TIPOS_OPERACIONES`
--
ALTER TABLE `TIPOS_OPERACIONES`
  ADD PRIMARY KEY (`ID_OPERACION`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `BARRIOS`
--
ALTER TABLE `BARRIOS`
  MODIFY `ID_BARRIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `FOTOS`
--
ALTER TABLE `FOTOS`
  MODIFY `ID_FOTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `PROPIEDADES`
--
ALTER TABLE `PROPIEDADES`
  MODIFY `ID_PROPIEDAD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `PROPIETARIOS`
--
ALTER TABLE `PROPIETARIOS`
  MODIFY `ID_PROPIETARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `TIPOS_OPERACIONES`
--
ALTER TABLE `TIPOS_OPERACIONES`
  MODIFY `ID_OPERACION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `FOTOS`
--
ALTER TABLE `FOTOS`
  ADD CONSTRAINT `FOTOS_ibfk_1` FOREIGN KEY (`FK_PROPIEDAD`) REFERENCES `PROPIEDADES` (`ID_PROPIEDAD`);

--
-- Filtros para la tabla `PROPIEDADES`
--
ALTER TABLE `PROPIEDADES`
  ADD CONSTRAINT `PROPIEDADES_ibfk_2` FOREIGN KEY (`FK_OPERACION`) REFERENCES `TIPOS_OPERACIONES` (`ID_OPERACION`),
  ADD CONSTRAINT `PROPIEDADES_ibfk_3` FOREIGN KEY (`FK_PROPIETARIO`) REFERENCES `PROPIETARIOS` (`ID_PROPIETARIO`),
  ADD CONSTRAINT `PROPIEDADES_ibfk_4` FOREIGN KEY (`FK_BARRIO`) REFERENCES `BARRIOS` (`ID_BARRIO`);

--
-- Filtros para la tabla `PROPIETARIOS`
--
ALTER TABLE `PROPIETARIOS`
  ADD CONSTRAINT `PROPIETARIOS_ibfk_1` FOREIGN KEY (`FK_BARRIO`) REFERENCES `BARRIOS` (`ID_BARRIO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
