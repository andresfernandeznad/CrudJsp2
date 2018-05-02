-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2018 a las 19:08:03
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gimnasio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `CodAct` int(11) NOT NULL,
  `NomAct` varchar(20) NOT NULL,
  `DescAct` varchar(200) NOT NULL,
  `codMon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`CodAct`, `NomAct`, `DescAct`, `codMon`) VALUES
(1, 'Body Pump', 'BodyPump es un programa grupal de entrenamiento basado en el levantamiento de pesas, creado y distribuido internacionalmente por Les Mills International.', 1),
(2, 'Body Combat', 'BodyPump es un programa grupal de entrenamiento basado en las artes marciales.', 2),
(3, 'Spinning', 'El spinning es un ejercicio aeróbico y de piernas principalmente, donde el monitor o profesor puede mediante el cambio de la frecuencia de pedaleo y de la resistencia al movimiento.', 1),
(4, 'Zumba', 'Zumba es una disciplina fitness creada a mediados de los años 90​ enfocada por una parte a mantener un cuerpo saludable y a fortalecer y dar flexibilidad al cuerpo mediante movimientos de baile.', 2),
(5, 'Aerobic', 'Aeróbic​ es un tipo de gimnasia que se realiza con música. Sus beneficios son además de ejercitar capacidades físicas, ejercitar la flexibilidad, coordinación, orientación, ritmo, etc.', 2),
(6, 'Musculación', 'Actividad normal y típica de uso de máquinas del gimnasio para musculación.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apuntado`
--

CREATE TABLE `apuntado` (
  `CodCli` int(11) NOT NULL,
  `CodAct` int(11) NOT NULL,
  `FecApu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `apuntado`
--

INSERT INTO `apuntado` (`CodCli`, `CodAct`, `FecApu`) VALUES
(1, 1, '1900-01-01'),
(6, 3, '1900-01-01'),
(22, 1, '1900-01-01'),
(3245, 3, '1900-01-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `CodCli` int(11) NOT NULL,
  `NomCli` varchar(20) NOT NULL,
  `ApeCli` varchar(40) NOT NULL,
  `FechNac` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`CodCli`, `NomCli`, `ApeCli`, `FechNac`) VALUES
(1, 'AndrÃ©s', 'FernÃ¡ndez Nadales', '1998-02-11'),
(6, 'Andrea', 'Segado Vizcaíno', '2000-05-29'),
(22, 'Marcos', 'FernÃ¡ndez Nadales', '1999-05-07'),
(342, 'asdfsadf', 'asdfasdfsdf', '1999-01-01'),
(3245, 'juan', 'fern', '1999-01-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicios`
--

CREATE TABLE `ejercicios` (
  `codEje` int(11) NOT NULL,
  `codMus` int(11) NOT NULL,
  `nomEje` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ejercicios`
--

INSERT INTO `ejercicios` (`codEje`, `codMus`, `nomEje`) VALUES
(1, 1, 'Prensa'),
(2, 1, 'Extensión de cuádriceps'),
(3, 1, 'Sentadillas'),
(4, 1, 'Femoral'),
(5, 1, 'Gemelos'),
(6, 5, 'Curl'),
(7, 5, 'Predicador'),
(8, 5, 'Curl concentrado'),
(9, 2, 'Jalón al cuello'),
(10, 2, 'Peso muerto'),
(11, 2, 'Remo'),
(12, 2, 'Dominadas'),
(13, 2, 'Gironda'),
(14, 4, 'Elevación lateral'),
(15, 4, 'Elevación frontal'),
(16, 4, 'Press militar'),
(17, 4, 'Posterior'),
(18, 4, 'Encogimientos'),
(19, 3, 'Fondos'),
(20, 3, 'Press'),
(21, 3, 'Press superior'),
(22, 3, 'Cruces en polea'),
(23, 3, 'Apertura'),
(24, 6, 'Extensión de tríceps'),
(25, 6, 'Press francés'),
(26, 6, 'Patada de tríceps');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encargado`
--

CREATE TABLE `encargado` (
  `codEnc` int(11) NOT NULL,
  `nomEnc` varchar(50) NOT NULL,
  `usuEnc` varchar(20) NOT NULL,
  `emaEnc` varchar(100) NOT NULL,
  `conEnc` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `encargado`
--

INSERT INTO `encargado` (`codEnc`, `nomEnc`, `usuEnc`, `emaEnc`, `conEnc`) VALUES
(1, 'Andrés Fernández Nadales', 'afernandez', 'andresfernandeznadales@gmail.com', 'afernandez'),
(2, 'Gestión', 'gestionAdmin', 'gestionadmin@gmail.com', 'gestionAdmin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monitor`
--

CREATE TABLE `monitor` (
  `codMon` int(11) NOT NULL,
  `nomMon` varchar(40) NOT NULL,
  `apeMon` varchar(20) NOT NULL,
  `fechNacMon` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `monitor`
--

INSERT INTO `monitor` (`codMon`, `nomMon`, `apeMon`, `fechNacMon`) VALUES
(1, 'Juan', 'Fernández', '1990-04-02'),
(2, 'Paula', 'García', '1995-02-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musculos`
--

CREATE TABLE `musculos` (
  `codMus` int(11) NOT NULL,
  `nomMus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `musculos`
--

INSERT INTO `musculos` (`codMus`, `nomMus`) VALUES
(1, 'Piernas'),
(2, 'Espalda'),
(3, 'Pecho'),
(4, 'Hombros'),
(5, 'Bíceps'),
(6, 'Tríceps');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`CodAct`),
  ADD UNIQUE KEY `NomAct` (`NomAct`),
  ADD KEY `actividad_ibfk_1` (`codMon`);

--
-- Indices de la tabla `apuntado`
--
ALTER TABLE `apuntado`
  ADD PRIMARY KEY (`CodCli`,`CodAct`),
  ADD KEY `CodAct` (`CodAct`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`CodCli`);

--
-- Indices de la tabla `ejercicios`
--
ALTER TABLE `ejercicios`
  ADD PRIMARY KEY (`codEje`,`codMus`),
  ADD KEY `codMus` (`codMus`);

--
-- Indices de la tabla `encargado`
--
ALTER TABLE `encargado`
  ADD PRIMARY KEY (`codEnc`);

--
-- Indices de la tabla `monitor`
--
ALTER TABLE `monitor`
  ADD PRIMARY KEY (`codMon`);

--
-- Indices de la tabla `musculos`
--
ALTER TABLE `musculos`
  ADD PRIMARY KEY (`codMus`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD CONSTRAINT `actividad_ibfk_1` FOREIGN KEY (`codMon`) REFERENCES `monitor` (`codMon`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `apuntado`
--
ALTER TABLE `apuntado`
  ADD CONSTRAINT `apuntado_ibfk_1` FOREIGN KEY (`CodCli`) REFERENCES `cliente` (`CodCli`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `apuntado_ibfk_2` FOREIGN KEY (`CodAct`) REFERENCES `actividad` (`CodAct`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ejercicios`
--
ALTER TABLE `ejercicios`
  ADD CONSTRAINT `ejercicios_ibfk_1` FOREIGN KEY (`codMus`) REFERENCES `musculos` (`codMus`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
