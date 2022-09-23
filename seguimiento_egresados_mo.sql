-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-09-2022 a las 16:22:24
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `seguimiento_egresados_mo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `se_iestp1`
--

CREATE TABLE `se_iestp1` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `email_ins` varchar(100) NOT NULL,
  `email_per` varchar(100) NOT NULL,
  `tlf` varchar(12) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `egresado` tinyint(1) NOT NULL,
  `grado_acad` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `licenciatura` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `isEstEmpleabilidad` tinyint(1) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `rango_sueldo` varchar(50) DEFAULT NULL,
  `ubigeo` varchar(50) DEFAULT NULL,
  `modalidad` enum('Presencial','Virtual','Híbrido','No Definido') DEFAULT 'No Definido',
  `isContEstudios` tinyint(1) NOT NULL,
  `universidad` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `maestria` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `doctorado` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `especializacion` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `se_iestp1`
--
ALTER TABLE `se_iestp1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `email_ins` (`email_ins`),
  ADD UNIQUE KEY `email_per` (`email_per`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `se_iestp1`
--
ALTER TABLE `se_iestp1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `se_iestp2`
--

CREATE TABLE `se_iestp2` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `email_ins` varchar(100) NOT NULL,
  `email_per` varchar(100) NOT NULL,
  `tlf` varchar(12) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `egresado` tinyint(1) NOT NULL,
  `grado_acad` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `licenciatura` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `isEstEmpleabilidad` tinyint(1) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `rango_sueldo` varchar(50) DEFAULT NULL,
  `ubigeo` varchar(50) DEFAULT NULL,
  `modalidad` enum('Presencial','Virtual','Híbrido','No Definido') DEFAULT 'No Definido',
  `isContEstudios` tinyint(1) NOT NULL,
  `universidad` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `maestria` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `doctorado` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `especializacion` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `se_iestp2`
--
ALTER TABLE `se_iestp2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `email_ins` (`email_ins`),
  ADD UNIQUE KEY `email_per` (`email_per`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `se_iestp2`
--
ALTER TABLE `se_iestp2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `se_iestp3`
--

CREATE TABLE `se_iestp3` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `email_ins` varchar(100) NOT NULL,
  `email_per` varchar(100) NOT NULL,
  `tlf` varchar(12) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `egresado` tinyint(1) NOT NULL,
  `grado_acad` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `licenciatura` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `isEstEmpleabilidad` tinyint(1) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `rango_sueldo` varchar(50) DEFAULT NULL,
  `ubigeo` varchar(50) DEFAULT NULL,
  `modalidad` enum('Presencial','Virtual','Híbrido','No Definido') DEFAULT 'No Definido',
  `isContEstudios` tinyint(1) NOT NULL,
  `universidad` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `maestria` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `doctorado` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `especializacion` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `se_iestp3`
--
ALTER TABLE `se_iestp3`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `email_ins` (`email_ins`),
  ADD UNIQUE KEY `email_per` (`email_per`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `se_iestp3`
--
ALTER TABLE `se_iestp3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `se_iestp4`
--

CREATE TABLE `se_iestp4` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `email_ins` varchar(100) NOT NULL,
  `email_per` varchar(100) NOT NULL,
  `tlf` varchar(12) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `egresado` tinyint(1) NOT NULL,
  `grado_acad` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `licenciatura` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `isEstEmpleabilidad` tinyint(1) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `rango_sueldo` varchar(50) DEFAULT NULL,
  `ubigeo` varchar(50) DEFAULT NULL,
  `modalidad` enum('Presencial','Virtual','Híbrido','No Definido') DEFAULT 'No Definido',
  `isContEstudios` tinyint(1) NOT NULL,
  `universidad` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `maestria` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `doctorado` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `especializacion` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `se_iestp4`
--
ALTER TABLE `se_iestp4`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `email_ins` (`email_ins`),
  ADD UNIQUE KEY `email_per` (`email_per`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `se_iestp4`
--
ALTER TABLE `se_iestp4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `se_iestp5`
--

CREATE TABLE `se_iestp5` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `email_ins` varchar(100) NOT NULL,
  `email_per` varchar(100) NOT NULL,
  `tlf` varchar(12) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `egresado` tinyint(1) NOT NULL,
  `grado_acad` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `licenciatura` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `isEstEmpleabilidad` tinyint(1) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `rango_sueldo` varchar(50) DEFAULT NULL,
  `ubigeo` varchar(50) DEFAULT NULL,
  `modalidad` enum('Presencial','Virtual','Híbrido','No Definido') DEFAULT 'No Definido',
  `isContEstudios` tinyint(1) NOT NULL,
  `universidad` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `maestria` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `doctorado` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `especializacion` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `se_iestp5`
--
ALTER TABLE `se_iestp5`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `email_ins` (`email_ins`),
  ADD UNIQUE KEY `email_per` (`email_per`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `se_iestp5`
--
ALTER TABLE `se_iestp5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `se_iestp6`
--

CREATE TABLE `se_iestp6` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `email_ins` varchar(100) NOT NULL,
  `email_per` varchar(100) NOT NULL,
  `tlf` varchar(12) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `egresado` tinyint(1) NOT NULL,
  `grado_acad` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `licenciatura` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `isEstEmpleabilidad` tinyint(1) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `rango_sueldo` varchar(50) DEFAULT NULL,
  `ubigeo` varchar(50) DEFAULT NULL,
  `modalidad` enum('Presencial','Virtual','Híbrido','No Definido') DEFAULT 'No Definido',
  `isContEstudios` tinyint(1) NOT NULL,
  `universidad` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `maestria` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `doctorado` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `especializacion` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `se_iestp6`
--
ALTER TABLE `se_iestp6`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `email_ins` (`email_ins`),
  ADD UNIQUE KEY `email_per` (`email_per`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `se_iestp6`
--
ALTER TABLE `se_iestp6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `se_iestp7`
--

CREATE TABLE `se_iestp7` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `email_ins` varchar(100) NOT NULL,
  `email_per` varchar(100) NOT NULL,
  `tlf` varchar(12) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `egresado` tinyint(1) NOT NULL,
  `grado_acad` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `licenciatura` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `isEstEmpleabilidad` tinyint(1) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `rango_sueldo` varchar(50) DEFAULT NULL,
  `ubigeo` varchar(50) DEFAULT NULL,
  `modalidad` enum('Presencial','Virtual','Híbrido','No Definido') DEFAULT 'No Definido',
  `isContEstudios` tinyint(1) NOT NULL,
  `universidad` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `maestria` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `doctorado` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `especializacion` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `se_iestp7`
--
ALTER TABLE `se_iestp7`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `email_ins` (`email_ins`),
  ADD UNIQUE KEY `email_per` (`email_per`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `se_iestp7`
--
ALTER TABLE `se_iestp7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `se_iestp8`
--

CREATE TABLE `se_iestp8` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `email_ins` varchar(100) NOT NULL,
  `email_per` varchar(100) NOT NULL,
  `tlf` varchar(12) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `egresado` tinyint(1) NOT NULL,
  `grado_acad` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `licenciatura` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `isEstEmpleabilidad` tinyint(1) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `rango_sueldo` varchar(50) DEFAULT NULL,
  `ubigeo` varchar(50) DEFAULT NULL,
  `modalidad` enum('Presencial','Virtual','Híbrido','No Definido') DEFAULT 'No Definido',
  `isContEstudios` tinyint(1) NOT NULL,
  `universidad` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `maestria` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `doctorado` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `especializacion` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `se_iestp8`
--
ALTER TABLE `se_iestp8`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `email_ins` (`email_ins`),
  ADD UNIQUE KEY `email_per` (`email_per`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `se_iestp8`
--
ALTER TABLE `se_iestp8`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `se_iestp9`
--

CREATE TABLE `se_iestp9` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `email_ins` varchar(100) NOT NULL,
  `email_per` varchar(100) NOT NULL,
  `tlf` varchar(12) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `egresado` tinyint(1) NOT NULL,
  `grado_acad` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `licenciatura` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `isEstEmpleabilidad` tinyint(1) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `rango_sueldo` varchar(50) DEFAULT NULL,
  `ubigeo` varchar(50) DEFAULT NULL,
  `modalidad` enum('Presencial','Virtual','Híbrido','No Definido') DEFAULT 'No Definido',
  `isContEstudios` tinyint(1) NOT NULL,
  `universidad` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `maestria` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `doctorado` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `especializacion` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `se_iestp9`
--
ALTER TABLE `se_iestp9`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `email_ins` (`email_ins`),
  ADD UNIQUE KEY `email_per` (`email_per`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `se_iestp9`
--
ALTER TABLE `se_iestp9`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `se_iestp10`
--

CREATE TABLE `se_iestp10` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `email_ins` varchar(100) NOT NULL,
  `email_per` varchar(100) NOT NULL,
  `tlf` varchar(12) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `egresado` tinyint(1) NOT NULL,
  `grado_acad` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `licenciatura` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `isEstEmpleabilidad` tinyint(1) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `rango_sueldo` varchar(50) DEFAULT NULL,
  `ubigeo` varchar(50) DEFAULT NULL,
  `modalidad` enum('Presencial','Virtual','Híbrido','No Definido') DEFAULT 'No Definido',
  `isContEstudios` tinyint(1) NOT NULL,
  `universidad` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `maestria` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `doctorado` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `especializacion` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `se_iestp10`
--
ALTER TABLE `se_iestp10`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `email_ins` (`email_ins`),
  ADD UNIQUE KEY `email_per` (`email_per`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `se_iestp10`
--
ALTER TABLE `se_iestp10`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `se_iestp11`
--

CREATE TABLE `se_iestp11` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `email_ins` varchar(100) NOT NULL,
  `email_per` varchar(100) NOT NULL,
  `tlf` varchar(12) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `egresado` tinyint(1) NOT NULL,
  `grado_acad` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `licenciatura` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `isEstEmpleabilidad` tinyint(1) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `rango_sueldo` varchar(50) DEFAULT NULL,
  `ubigeo` varchar(50) DEFAULT NULL,
  `modalidad` enum('Presencial','Virtual','Híbrido','No Definido') DEFAULT 'No Definido',
  `isContEstudios` tinyint(1) NOT NULL,
  `universidad` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `maestria` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `doctorado` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `especializacion` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `se_iestp11`
--
ALTER TABLE `se_iestp11`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `email_ins` (`email_ins`),
  ADD UNIQUE KEY `email_per` (`email_per`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `se_iestp11`
--
ALTER TABLE `se_iestp11`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `se_iestp12`
--

CREATE TABLE `se_iestp12` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `email_ins` varchar(100) NOT NULL,
  `email_per` varchar(100) NOT NULL,
  `tlf` varchar(12) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `egresado` tinyint(1) NOT NULL,
  `grado_acad` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `licenciatura` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `isEstEmpleabilidad` tinyint(1) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `rango_sueldo` varchar(50) DEFAULT NULL,
  `ubigeo` varchar(50) DEFAULT NULL,
  `modalidad` enum('Presencial','Virtual','Híbrido','No Definido') DEFAULT 'No Definido',
  `isContEstudios` tinyint(1) NOT NULL,
  `universidad` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `maestria` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `doctorado` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `especializacion` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `se_iestp12`
--
ALTER TABLE `se_iestp12`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `email_ins` (`email_ins`),
  ADD UNIQUE KEY `email_per` (`email_per`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `se_iestp12`
--
ALTER TABLE `se_iestp12`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `se_iestp13`
--

CREATE TABLE `se_iestp13` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `email_ins` varchar(100) NOT NULL,
  `email_per` varchar(100) NOT NULL,
  `tlf` varchar(12) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `egresado` tinyint(1) NOT NULL,
  `grado_acad` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `licenciatura` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `isEstEmpleabilidad` tinyint(1) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `rango_sueldo` varchar(50) DEFAULT NULL,
  `ubigeo` varchar(50) DEFAULT NULL,
  `modalidad` enum('Presencial','Virtual','Híbrido','No Definido') DEFAULT 'No Definido',
  `isContEstudios` tinyint(1) NOT NULL,
  `universidad` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `maestria` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `doctorado` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `especializacion` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `se_iestp13`
--
ALTER TABLE `se_iestp13`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `email_ins` (`email_ins`),
  ADD UNIQUE KEY `email_per` (`email_per`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `se_iestp13`
--
ALTER TABLE `se_iestp13`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `se_iestp14`
--

CREATE TABLE `se_iestp14` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `email_ins` varchar(100) NOT NULL,
  `email_per` varchar(100) NOT NULL,
  `tlf` varchar(12) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `egresado` tinyint(1) NOT NULL,
  `grado_acad` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `licenciatura` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `isEstEmpleabilidad` tinyint(1) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `rango_sueldo` varchar(50) DEFAULT NULL,
  `ubigeo` varchar(50) DEFAULT NULL,
  `modalidad` enum('Presencial','Virtual','Híbrido','No Definido') DEFAULT 'No Definido',
  `isContEstudios` tinyint(1) NOT NULL,
  `universidad` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `maestria` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `doctorado` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `especializacion` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `se_iestp14`
--
ALTER TABLE `se_iestp14`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `email_ins` (`email_ins`),
  ADD UNIQUE KEY `email_per` (`email_per`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `se_iestp14`
--
ALTER TABLE `se_iestp14`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `se_iestp15`
--

CREATE TABLE `se_iestp15` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `email_ins` varchar(100) NOT NULL,
  `email_per` varchar(100) NOT NULL,
  `tlf` varchar(12) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `egresado` tinyint(1) NOT NULL,
  `grado_acad` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `licenciatura` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `isEstEmpleabilidad` tinyint(1) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `rango_sueldo` varchar(50) DEFAULT NULL,
  `ubigeo` varchar(50) DEFAULT NULL,
  `modalidad` enum('Presencial','Virtual','Híbrido','No Definido') DEFAULT 'No Definido',
  `isContEstudios` tinyint(1) NOT NULL,
  `universidad` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `maestria` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `doctorado` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `especializacion` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `se_iestp15`
--
ALTER TABLE `se_iestp15`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `email_ins` (`email_ins`),
  ADD UNIQUE KEY `email_per` (`email_per`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `se_iestp15`
--
ALTER TABLE `se_iestp15`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `se_iestp16`
--

CREATE TABLE `se_iestp16` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `email_ins` varchar(100) NOT NULL,
  `email_per` varchar(100) NOT NULL,
  `tlf` varchar(12) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `egresado` tinyint(1) NOT NULL,
  `grado_acad` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `licenciatura` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `isEstEmpleabilidad` tinyint(1) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `rango_sueldo` varchar(50) DEFAULT NULL,
  `ubigeo` varchar(50) DEFAULT NULL,
  `modalidad` enum('Presencial','Virtual','Híbrido','No Definido') DEFAULT 'No Definido',
  `isContEstudios` tinyint(1) NOT NULL,
  `universidad` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `maestria` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `doctorado` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `especializacion` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `se_iestp16`
--
ALTER TABLE `se_iestp16`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `email_ins` (`email_ins`),
  ADD UNIQUE KEY `email_per` (`email_per`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `se_iestp16`
--
ALTER TABLE `se_iestp16`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `se_iestp17`
--

CREATE TABLE `se_iestp17` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `email_ins` varchar(100) NOT NULL,
  `email_per` varchar(100) NOT NULL,
  `tlf` varchar(12) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `egresado` tinyint(1) NOT NULL,
  `grado_acad` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `licenciatura` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `isEstEmpleabilidad` tinyint(1) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `rango_sueldo` varchar(50) DEFAULT NULL,
  `ubigeo` varchar(50) DEFAULT NULL,
  `modalidad` enum('Presencial','Virtual','Híbrido','No Definido') DEFAULT 'No Definido',
  `isContEstudios` tinyint(1) NOT NULL,
  `universidad` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `maestria` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `doctorado` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `especializacion` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `se_iestp17`
--
ALTER TABLE `se_iestp17`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `email_ins` (`email_ins`),
  ADD UNIQUE KEY `email_per` (`email_per`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `se_iestp17`
--
ALTER TABLE `se_iestp17`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `se_iestp18`
--

CREATE TABLE `se_iestp18` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `email_ins` varchar(100) NOT NULL,
  `email_per` varchar(100) NOT NULL,
  `tlf` varchar(12) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `egresado` tinyint(1) NOT NULL,
  `grado_acad` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `licenciatura` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `isEstEmpleabilidad` tinyint(1) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `rango_sueldo` varchar(50) DEFAULT NULL,
  `ubigeo` varchar(50) DEFAULT NULL,
  `modalidad` enum('Presencial','Virtual','Híbrido','No Definido') DEFAULT 'No Definido',
  `isContEstudios` tinyint(1) NOT NULL,
  `universidad` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `maestria` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `doctorado` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `especializacion` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `se_iestp18`
--
ALTER TABLE `se_iestp18`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `email_ins` (`email_ins`),
  ADD UNIQUE KEY `email_per` (`email_per`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `se_iestp18`
--
ALTER TABLE `se_iestp18`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `se_iestp19`
--

CREATE TABLE `se_iestp19` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `email_ins` varchar(100) NOT NULL,
  `email_per` varchar(100) NOT NULL,
  `tlf` varchar(12) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `egresado` tinyint(1) NOT NULL,
  `grado_acad` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `licenciatura` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `isEstEmpleabilidad` tinyint(1) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `rango_sueldo` varchar(50) DEFAULT NULL,
  `ubigeo` varchar(50) DEFAULT NULL,
  `modalidad` enum('Presencial','Virtual','Híbrido','No Definido') DEFAULT 'No Definido',
  `isContEstudios` tinyint(1) NOT NULL,
  `universidad` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `maestria` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `doctorado` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `especializacion` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `se_iestp19`
--
ALTER TABLE `se_iestp19`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `email_ins` (`email_ins`),
  ADD UNIQUE KEY `email_per` (`email_per`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `se_iestp19`
--
ALTER TABLE `se_iestp19`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `se_iestp20`
--

CREATE TABLE `se_iestp20` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `email_ins` varchar(100) NOT NULL,
  `email_per` varchar(100) NOT NULL,
  `tlf` varchar(12) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `egresado` tinyint(1) NOT NULL,
  `grado_acad` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `licenciatura` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `isEstEmpleabilidad` tinyint(1) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `rango_sueldo` varchar(50) DEFAULT NULL,
  `ubigeo` varchar(50) DEFAULT NULL,
  `modalidad` enum('Presencial','Virtual','Híbrido','No Definido') DEFAULT 'No Definido',
  `isContEstudios` tinyint(1) NOT NULL,
  `universidad` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `maestria` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `doctorado` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `especializacion` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `se_iestp20`
--
ALTER TABLE `se_iestp20`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `email_ins` (`email_ins`),
  ADD UNIQUE KEY `email_per` (`email_per`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `se_iestp20`
--
ALTER TABLE `se_iestp20`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `se_iestp21`
--

CREATE TABLE `se_iestp21` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `email_ins` varchar(100) NOT NULL,
  `email_per` varchar(100) NOT NULL,
  `tlf` varchar(12) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `egresado` tinyint(1) NOT NULL,
  `grado_acad` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `licenciatura` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `isEstEmpleabilidad` tinyint(1) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `rango_sueldo` varchar(50) DEFAULT NULL,
  `ubigeo` varchar(50) DEFAULT NULL,
  `modalidad` enum('Presencial','Virtual','Híbrido','No Definido') DEFAULT 'No Definido',
  `isContEstudios` tinyint(1) NOT NULL,
  `universidad` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `maestria` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `doctorado` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `especializacion` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `se_iestp21`
--
ALTER TABLE `se_iestp21`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `email_ins` (`email_ins`),
  ADD UNIQUE KEY `email_per` (`email_per`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `se_iestp21`
--
ALTER TABLE `se_iestp21`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `se_iestp22`
--

CREATE TABLE `se_iestp22` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `email_ins` varchar(100) NOT NULL,
  `email_per` varchar(100) NOT NULL,
  `tlf` varchar(12) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `egresado` tinyint(1) NOT NULL,
  `grado_acad` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `licenciatura` enum('En Trámite','Obtenido','No Definido') NOT NULL DEFAULT 'No Definido',
  `isEstEmpleabilidad` tinyint(1) NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `rango_sueldo` varchar(50) DEFAULT NULL,
  `ubigeo` varchar(50) DEFAULT NULL,
  `modalidad` enum('Presencial','Virtual','Híbrido','No Definido') DEFAULT 'No Definido',
  `isContEstudios` tinyint(1) NOT NULL,
  `universidad` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `maestria` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `doctorado` enum('En Curso','Egresado','Titulado','No Definido') DEFAULT 'No Definido',
  `especializacion` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `se_iestp22`
--
ALTER TABLE `se_iestp22`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `email_ins` (`email_ins`),
  ADD UNIQUE KEY `email_per` (`email_per`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `se_iestp22`
--
ALTER TABLE `se_iestp22`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;