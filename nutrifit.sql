-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 27-05-2025 a las 17:04:07
-- Versión del servidor: 5.7.36-log
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nutrifit`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dietas`
--

DROP TABLE IF EXISTS `dietas`;
CREATE TABLE IF NOT EXISTS `dietas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text,
  `calorias` int(11) DEFAULT NULL,
  `proteinas` decimal(5,2) DEFAULT NULL,
  `carbohidratos` decimal(5,2) DEFAULT NULL,
  `grasas` decimal(5,2) DEFAULT NULL,
  `apto_para_diabetes` tinyint(1) DEFAULT NULL,
  `apto_para_colesterol` tinyint(1) DEFAULT NULL,
  `apto_para_hipertension` tinyint(1) DEFAULT NULL,
  `objetivo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dietas`
--

INSERT INTO `dietas` (`id`, `nombre`, `descripcion`, `calorias`, `proteinas`, `carbohidratos`, `grasas`, `apto_para_diabetes`, `apto_para_colesterol`, `apto_para_hipertension`, `objetivo`) VALUES
(1, 'Ensalada de Quinoa', 'Una deliciosa y nutritiva ensalada rica en proteinas y fibra.', 250, '10.00', '40.00', '8.00', 1, 1, 1, 'Perdida de peso'),
(2, 'Pechuga de pollo Asada', 'Pollo asado acompañado de verduras.', 400, '35.00', '5.00', '10.00', 1, 1, 1, 'Ganancia muscular'),
(3, 'Batido de Proteínas de Fresa', 'Un batido rico en proteínas y bajo en grasas ideal para antes o despues del entrenamiento.', 180, '25.00', '10.00', '2.00', 1, 1, 1, 'Ganancia muscular'),
(4, 'Salmón al Horno con Espárragos', 'Salmón al horno con espárragos y un toque de limon.', 350, '30.00', '0.00', '20.00', 1, 1, 1, 'Pérdida de peso'),
(5, 'Tofu a la Parrilla con Verduras', 'Tofu a la parrilla con una mezcla de verduras frecas.', 300, '20.00', '30.00', '10.00', 1, 1, 1, 'Pérdida de peso'),
(6, 'Ensalada de Espinacas y Aguacate', 'Ensalada fresca de espinacas, aguacate y nueces, rica en grasas saludables.', 200, '5.00', '12.00', '18.00', 1, 1, 1, 'Pérdida de pedo'),
(7, 'Sopa de Lentejas', 'Sopa de lentejas rica en proteínas vegetales y fibra.', 280, '18.00', '45.00', '5.00', 1, 1, 1, 'Pérdida de peso'),
(8, 'Tortilla de Claras con Verduras', 'Tortilla de claras de huevo con espnacas, champiñones y cebolla.', 150, '20.00', '5.00', '30.00', 1, 1, 1, 'Ganancia muscular'),
(9, 'Arroz Integral con Pollo y Verduras', 'Arroz integral con pechuga de pollo y verduras salteadas.', 500, '35.00', '50.00', '15.00', 1, 1, 1, 'Ganancia muscular'),
(10, 'Pescado a la Plancha con Brócoli', 'Pescado blanco a la plancha acompañado de brócoli al vapor.', 320, '25.00', '5.00', '10.00', 1, 1, 1, 'Pérdida de peso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes_bienvenida`
--

DROP TABLE IF EXISTS `mensajes_bienvenida`;
CREATE TABLE IF NOT EXISTS `mensajes_bienvenida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mensaje` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mensajes_bienvenida`
--

INSERT INTO `mensajes_bienvenida` (`id`, `mensaje`) VALUES
(1, 'Bienvenido a NutriFit!\nTu cambio hacia una vida saludable comienza aqui.'),
(2, '¡Descubre el poder del fitness!\nTransforma tu cuerpo y mente con nosotros.'),
(3, 'NutriFit: tu aliado en el camino\nhacia una vida saludable\ny equilibrada.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `correo` varchar(100) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_correo` (`correo`),
  UNIQUE KEY `unique_contrasena` (`contrasena`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `correo`, `contrasena`, `nombre`, `edad`) VALUES
(1, 'Jordi@gmail.com', 'jordi3', 'Christian Jordi Herrera QuirÃ³z', 20),
(4, 'Pedro23@gmail.com', '2311f', 'Pedro Hernandez ', 23),
(5, 'Daniel34@gmail.com', '34fr', 'Daniel HernÃ¡ndez ', 23),
(6, 'Christian34@gmail.com', '1234abcd', 'Christian Herrera QuirÃ³z ', 45),
(7, 'Liz34sdf@gmail.com', 'asdfg', 'Liz Ochoa', 34),
(9, 'Daniela23@gmail.com', 'dani3411', 'Daniela HernÃ¡ndez Acona', 33),
(10, 'Olga54@gmail.com', '1212sd', 'Olga Morales Ochoa', 22);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
