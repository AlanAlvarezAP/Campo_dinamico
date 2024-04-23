-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-04-2024 a las 01:53:31
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `formulario2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aptitudes`
--

CREATE TABLE `aptitudes` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `habilidad` varchar(50) DEFAULT NULL,
  `nivel_habilidad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aptitudes`
--

INSERT INTO `aptitudes` (`id`, `usuario_id`, `habilidad`, `nivel_habilidad`) VALUES
(7, 27, 'Amabilidad', 'Fuerte'),
(8, 27, 'Amabilidad', 'Fuerte'),
(9, 27, 'Responsabilidad', 'Débil'),
(10, 27, 'Responsabilidad', 'Débil'),
(11, 28, 'Amabilidad', 'Fuerte'),
(12, 28, 'Papas', 'Débil'),
(13, 29, 'Amabilidad', 'Fuerte'),
(14, 29, 'Fortaleza', 'Débil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia_laboral`
--

CREATE TABLE `experiencia_laboral` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `experiencia` varchar(50) DEFAULT NULL,
  `empresa` varchar(100) DEFAULT NULL,
  `rol` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `experiencia_laboral`
--

INSERT INTO `experiencia_laboral` (`id`, `usuario_id`, `experiencia`, `empresa`, `rol`) VALUES
(2, 5, 'menos de 1 año', 'asdsa', 'asdas'),
(20, 16, 'menos de 1 año', 'dsaas', 'asdas'),
(21, 16, 'menos de 1 año', 'dsads', 'asdsa'),
(22, 17, 'menos de 1 año', 'dsaas', 'asdas'),
(23, 17, 'menos de 1 año', 'dsads', 'asdsa'),
(24, 18, 'menos de 1 año', 'dsaas', 'asdas'),
(25, 18, 'menos de 1 año', 'dsads', 'asdsa'),
(30, 21, 'menos de 1 año', 'dsadsa', 'asdasd'),
(31, 21, 'menos de 1 año', 'asdsa', 'asdsa'),
(32, 22, 'menos de 1 año', 'dsadsa', 'asdasd'),
(33, 22, 'menos de 1 año', 'asdsa', 'asdsa'),
(34, 26, '2 años', 'dsadsa', 'asdasd'),
(35, 27, '1 año', 'Albañil', 'Trabajador'),
(36, 27, '4 años', 'Tejidos', 'Gerente'),
(37, 28, 'menos de 1 año', 'Paquito inc', 'Jefe'),
(38, 28, '3 años', 'Abogado', 'Trabajador'),
(39, 29, '1 año', 'Paquito inc', 'Manager');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formacion`
--

CREATE TABLE `formacion` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `institucion` varchar(100) DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `formacion`
--

INSERT INTO `formacion` (`id`, `usuario_id`, `institucion`, `titulo`, `fecha_inicio`) VALUES
(12, 16, 'asdsa', NULL, '2024-04-17'),
(13, 17, 'asdsa', NULL, '2024-04-17'),
(14, 18, 'asdsa', NULL, '2024-04-17'),
(17, 21, 'sadasd', NULL, '2024-04-23'),
(18, 22, 'sadasd', NULL, '2024-04-23'),
(22, 29, 'Isur', NULL, '2024-04-02'),
(23, 30, 'asdasda', NULL, '2024-04-02'),
(24, 31, 'dsaasdsa', NULL, '2024-04-02'),
(25, 32, 'dsaasdsa', 'Ingeniero', '2024-04-02'),
(26, 33, 'dasdsa', 'Ingeniero', '2024-04-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idiomas`
--

CREATE TABLE `idiomas` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `idioma` varchar(50) DEFAULT NULL,
  `nivel_idioma` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `idiomas`
--

INSERT INTO `idiomas` (`id`, `usuario_id`, `idioma`, `nivel_idioma`) VALUES
(3, 5, 'dasdsa', NULL),
(4, 5, 'sadasda', NULL),
(16, 16, 'dsadas', NULL),
(20, 21, 'asdasd', 'Básico'),
(21, 21, 'asdad', 'Intermedio'),
(22, 22, 'asdasd', 'Básico'),
(23, 22, 'asdad', 'Intermedio'),
(24, 27, 'Quechua', 'Nativo'),
(25, 27, 'Portugues', 'Básico'),
(26, 28, 'Quechua', 'Fluido'),
(27, 28, 'Portugues', 'Básico'),
(28, 29, 'Quechua', 'Nativo'),
(29, 30, 'sdasd', 'Básico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `email`) VALUES
(5, 'dsadsa', 'asdasd', 'asdsadsa@gmail.com'),
(16, 'Aurelio', 'Alvarez', 'patriciapuma66@hotmail.com'),
(17, 'Aurelio', 'Alvarez', 'patriciapuma66@hotmail.com'),
(18, 'Aurelio', 'Alvarez', 'patriciapuma66@hotmail.com'),
(21, 'Aurelio', 'Alvarez', 'patriciapuma66@hotmail.com'),
(22, 'Aurelio', 'Alvarez', 'patriciapuma66@hotmail.com'),
(26, 'dasdsa', 'asdsad', 'patriciapuma66@hotmail.com'),
(27, 'Alan Patrizio', 'Alvarez Puma', 'alan.alvarez@ucsp.edu.pe'),
(28, 'Alan', 'Alvarez Puma', 'patrizioalvarez2005@gmail.com'),
(29, 'Alan', 'Alvarez', 'patriciapuma66@hotmail.com'),
(30, 'dasdas', 'asdasda', 'asdasd@gmail.com'),
(31, 'dsadsa', 'asdsad', 'patriciapuma66@hotmail.com'),
(32, 'dsadsa', 'asdsad', 'patriciapuma66@hotmail.com'),
(33, 'Aurelio', 'Alvarez', 'patriciapuma66@hotmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aptitudes`
--
ALTER TABLE `aptitudes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario_id_aptitudes` (`usuario_id`);

--
-- Indices de la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario_id_experiencia` (`usuario_id`);

--
-- Indices de la tabla `formacion`
--
ALTER TABLE `formacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `formacion_ibfk_1` (`usuario_id`);

--
-- Indices de la tabla `idiomas`
--
ALTER TABLE `idiomas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idiomas_ibfk_1` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aptitudes`
--
ALTER TABLE `aptitudes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `formacion`
--
ALTER TABLE `formacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `idiomas`
--
ALTER TABLE `idiomas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aptitudes`
--
ALTER TABLE `aptitudes`
  ADD CONSTRAINT `aptitudes_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuario_id_aptitudes` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  ADD CONSTRAINT `experiencia_laboral_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuario_id_experiencia` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `formacion`
--
ALTER TABLE `formacion`
  ADD CONSTRAINT `fk_usuario_id_formacion` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `formacion_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `idiomas`
--
ALTER TABLE `idiomas`
  ADD CONSTRAINT `fk_usuario_id_idiomas` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idiomas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
