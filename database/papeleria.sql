-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-11-2023 a las 19:39:22
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
-- Base de datos: `papeleria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(100) NOT NULL,
  `nomProducto` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` varchar(100) NOT NULL,
  `stock` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nomProducto`, `descripcion`, `precio`, `stock`) VALUES
(6, 'MIRADO', 'LAPIZ DEL NUMERO 2 EXTRA REQUETE RECONTRA DURADERO 100% MADERA DE CAOBA IMPORTADA DESDE TAILANDIA Y ', '75', '121'),
(7, 'sasas', 'wwqwq', '75', '212'),
(8, 'Lápiz HB', 'Lápiz con grafito de dureza media', '5', '500'),
(9, 'Cuaderno de notas', 'Cuaderno de 100 hojas con tapa dura', '10', '300'),
(10, 'Bolígrafo azul', 'Bolígrafo de tinta azul', '2', '1000'),
(11, 'Goma de borrar', 'Goma de borrar blanca', '1', '800'),
(12, 'Regla de plástico', 'Regla de 30 cm', '3', '400'),
(13, 'Marcador fluorescente', 'Marcador amarillo', '2', '200'),
(14, 'Carpeta de archivos', 'Carpeta de archivador con 5 separadores', '8', '150'),
(15, 'Tijeras de oficina', 'Tijeras con mango de plástico', '4', '250'),
(16, 'Papel blanco A4', 'Resma de papel blanco tamaño A4', '12', '600'),
(17, 'Pegamento en barra', 'Pegamento en barra transparente', '1', '300'),
(18, 'Cinta adhesiva', 'Rollo de cinta adhesiva transparente', '2', '400'),
(19, 'Clips metálicos', 'Paquete de 100 clips metálicos', '3', '700'),
(20, 'Calculadora de bolsillo', 'Calculadora solar de bolsillo', '10', '100'),
(21, 'Carpeta de anillas', 'Carpeta de anillas con bolsillos internos', '7', '200'),
(22, 'Resaltador naranja', 'Resaltador de color naranja', '2', '300'),
(23, 'Borrador de pizarra blanca', 'Borrador magnético para pizarra blanca', '3', '150'),
(24, 'Papel adhesivo', 'Rollo de papel adhesivo decorativo', '4', '100'),
(25, 'Cinta de embalar', 'Rollo de cinta de embalaje marrón', '2', '500'),
(26, 'Libreta de espiral', 'Libreta de espiral con hojas rayadas', '6', '400'),
(27, 'Rotuladores de colores', 'Paquete de 12 rotuladores de colores', '8', '300'),
(28, 'Borrador de lápiz', 'Borrador pequeño para lápices', '1', '800'),
(29, 'Marcadores permanentes', 'Juego de 4 marcadores permanentes', '6', '250'),
(30, 'Papel de colores', 'Resma de papel de colores surtidos', '15', '300'),
(31, 'Carpeta de plástico', 'Carpeta de plástico resistente', '4', '400'),
(32, 'Lápices de colores', 'Juego de 24 lápices de colores', '10', '350'),
(33, 'Agenda semanal', 'Agenda semanal con tapa de cuero', '20', '100'),
(34, 'Grapas metálicas', 'Paquete de 1000 grapas metálicas', '3', '600'),
(35, 'Papel fotográfico', 'Pack de papel fotográfico brillante', '7', '200'),
(36, 'Clipboards', 'Pack de 5 clipboards de escritorio', '12', '150'),
(37, 'Calculadora científica', 'Calculadora científica avanzada', '15', '120'),
(38, 'Lápiz de color', 'Lápiz de color individual', '1', '900'),
(39, 'Archivador de documentos', 'Archivador de documentos con 10 carpetas', '18', '100'),
(40, 'Rotuladores de pizarra', 'Juego de 8 rotuladores de pizarra', '8', '250'),
(41, 'Sellos de tinta', 'Pack de 5 sellos de tinta negra', '5', '300'),
(42, 'Cajas de almacenamiento', 'Pack de 10 cajas de almacenamiento', '22', '80'),
(43, 'Pegatinas decorativas', 'Pack de pegatinas decorativas', '3', '400'),
(44, 'Etiquetas adhesivas', 'Pack de etiquetas adhesivas', '2', '600'),
(45, 'Cizallas de papel', 'Cizalla de papel de 12 pulgadas', '15', '120'),
(46, 'Plastificadora', 'Máquina plastificadora de documentos', '30', '50'),
(47, 'Grapadora de oficina', 'Grapadora de oficina resistente', '5', '200'),
(48, 'Papel de regalo', 'Rollo de papel de regalo estampado', '4', '300'),
(49, 'Lápices mecánicos', 'Pack de 5 lápices mecánicos', '7', '250'),
(50, 'Calculadora de escritorio', 'Calculadora de escritorio con impresora', '40', '80'),
(51, 'Carpeta de anillas de cuero', 'Carpeta de anillas de cuero con bolsillos', '15', '120'),
(52, 'Rotuladores de punta fina', 'Juego de 12 rotuladores de punta fina', '10', '300'),
(53, 'Papel milimetrado', 'Resma de papel milimetrado', '8', '200'),
(54, 'Gomas de borrar de colores', 'Pack de 5 gomas de borrar de colores', '3', '400'),
(55, 'Tijeras de precisión', 'Tijeras de precisión para manualidades', '6', '150'),
(56, 'Bandeja de escritorio', 'Bandeja organizadora de escritorio', '12', '100'),
(57, 'Notas adhesivas', 'Bloque de notas adhesivas', '2', '500'),
(58, 'Carpetas colgantes', 'Pack de 10 carpetas colgantes', '14', '80'),
(59, 'Portaclips magnético', 'Portaclips magnético para escritorio', '4', '300'),
(60, 'Borradores de tinta', 'Pack de 3 borradores de tinta', '2', '600'),
(61, 'Bolsas de papel kraft', 'Pack de 100 bolsas de papel kraft', '10', '200'),
(62, 'Carpeta expandible', 'Carpeta expandible con fuelle', '6', '150'),
(63, 'Cinta correctora', 'Cinta correctora en rollo', '3', '300'),
(64, 'Papel de fax', 'Rollo de papel de fax térmico', '5', '250'),
(65, 'Bandejas para correspondencia', 'Pack de 3 bandejas para correspondencia', '12', '100'),
(66, 'Bolsas de polietileno', 'Pack de 200 bolsas de polietileno', '8', '200'),
(67, 'Pizarra blanca', 'Pizarra blanca de tamaño mediano', '20', '100'),
(68, 'Clips magnéticos', 'Pack de 10 clips magnéticos', '3', '400'),
(69, 'Bandeja de papel', 'Bandeja organizadora de papel', '6', '150'),
(70, 'Papel pergamino', 'Rollo de papel pergamino', '4', '200'),
(71, 'Plumas de gel', 'Pack de 5 plumas de gel de colores', '7', '250'),
(72, 'Encuadernadora', 'Máquina encuadernadora de documentos', '25', '80'),
(73, 'Papel adhesivo transparente', 'Rollo de papel adhesivo transparente', '2', '600'),
(74, 'Calculadora financiera', 'Calculadora financiera programable', '45', '50'),
(75, 'Bolsas de papel de regalo', 'Pack de 20 bolsas de papel de regalo', '5', '300'),
(76, 'Etiquetadora', 'Máquina etiquetadora de precios', '12', '120'),
(77, 'Carpeta de lona', 'Carpeta de lona resistente', '10', '150'),
(78, 'Portaminas', 'Pack de 3 portaminas con minas', '4', '400'),
(79, 'Libros de contabilidad', 'Libro de contabilidad con páginas numeradas', '8', '100'),
(80, 'Portaclaves', 'Portaclaves de pared con ganchos', '6', '200'),
(81, 'Cintas de embalaje de colores', 'Pack de 6 cintas de embalaje de colores', '4', '250'),
(82, 'Grapadora de escritorio', 'Grapadora de escritorio pesada', '8', '100'),
(83, 'Bloc de notas adhesivas', 'Bloc de notas adhesivas surtido', '2', '300'),
(84, 'Reglas flexibles', 'Pack de 3 reglas flexibles', '5', '200'),
(85, 'Papel transfer', 'Hoja de papel transfer para tela', '3', '400'),
(86, 'Marcadores de pizarra', 'Pack de 4 marcadores de pizarra', '5', '150'),
(87, 'Caja de almacenamiento de archivos', 'Caja de almacenamiento de archivos resistente', '15', '120'),
(88, 'Tijeras de seguridad', 'Tijeras de seguridad con punta redondeada', '5', '250'),
(89, 'Carpeta de plástico con asa', 'Carpeta de plástico con asa y cierre', '8', '100'),
(90, 'Borradores de pizarra', 'Pack de 4 borradores de pizarra', '4', '300'),
(91, 'Papel pergamino de colores', 'Resma de papel pergamino de colores', '12', '150'),
(92, 'Estuches para bolígrafos', 'Pack de 10 estuches para bolígrafos', '3', '400'),
(93, 'Sobres de papel kraft', 'Pack de 50 sobres de papel kraft', '7', '200'),
(94, 'Calculadora de bolsillo solar', 'Calculadora de bolsillo con panel solar', '6', '150'),
(95, 'Clipboards de plástico', 'Pack de 5 clipboards de plástico', '10', '100'),
(96, 'Bandeja de entrada', 'Bandeja de entrada apilable', '5', '200'),
(97, 'Carpeta de anillas de tela', 'Carpeta de anillas de tela con compartimentos', '14', '80'),
(98, 'Resmas de papel reciclado', 'Resma de papel reciclado tamaño carta', '10', '100'),
(99, 'Porta tarjetas de visita', 'Porta tarjetas de visita de metal', '3', '250'),
(100, 'Bloc de notas de cuaderno', 'Bloc de notas estilo cuaderno', '2', '300'),
(101, 'Grapadora de oficina pesada', 'Grapadora de oficina con capacidad de 100 hojas', '18', '70'),
(102, 'Cinta de doble cara', 'Rollo de cinta de doble cara', '4', '200'),
(103, 'Papel adhesivo para etiquetas', 'Rollo de papel adhesivo para etiquetas', '3', '250'),
(104, 'Calculadora gráfica', 'Calculadora gráfica avanzada', '35', '50'),
(105, 'Gomas de borrar grandes', 'Pack de 5 gomas de borrar grandes', '7', '100'),
(106, 'Clips de colores', 'Pack de 100 clips de colores surtidos', '2', '300'),
(107, 'Cajas de archivo', 'Pack de 5 cajas de archivo para documentos', '20', '80'),
(108, 'Carpeta de cartón', 'Carpeta de cartón con diseño', '6', '150'),
(109, 'Bolígrafo negro', 'Bolígrafo de tinta negra', '2', '500'),
(110, 'Papel fotográfico satinado', 'Pack de 50 hojas de papel fotográfico satinado', '15', '100'),
(111, 'Cinta adhesiva de doble cara', 'Rollo de cinta adhesiva de doble cara', '3', '250'),
(112, 'Rotuladores permanentes', 'Pack de 6 rotuladores permanentes surtidos', '5', '200'),
(113, 'Grapadora de escritorio metálica', 'Grapadora de escritorio de metal', '8', '100'),
(114, 'Lápices de grafito', 'Pack de 12 lápices de grafito', '4', '300'),
(115, 'Reglas de acero inoxidable', 'Pack de 3 reglas de acero inoxidable', '6', '150'),
(116, 'Papel de lija', 'Pack de papel de lija surtido', '3', '400'),
(117, 'Etiquetas de envío', 'Pack de 100 etiquetas de envío', '4', '300'),
(118, 'Marcadores de punta gruesa', 'Pack de 8 marcadores de punta gruesa', '6', '150'),
(119, 'Clasificadores de documentos', 'Pack de 5 clasificadores de documentos', '10', '100'),
(120, 'Notas autoadhesivas de colores', 'Pack de 4 blocs de notas autoadhesivas', '7', '80'),
(121, 'Portaminas de colores', 'Pack de 5 portaminas de colores', '2', '200'),
(122, 'Portatarjetas de plástico', 'Pack de 10 portatarjetas de plástico', '3', '300'),
(123, 'Afiladores de lápices', 'Pack de 10 afiladores de lápices', '1', '400'),
(124, 'Tijeras de bordar', 'Pack de 5 tijeras de bordar', '6', '100'),
(125, 'Papel de acuarela', 'Resma de papel de acuarela', '10', '120'),
(126, 'Estuches para documentos', 'Pack de 10 estuches para documentos', '4', '250'),
(127, 'Carpeta de anillas de plástico', 'Carpeta de anillas de plástico con bolsillos internos', '8', '100'),
(128, 'Grapadoras eléctricas', 'Grapadora eléctrica de alta velocidad', '30', '50'),
(129, 'Cinta de enmascarar', 'Rollo de cinta de enmascarar', '2', '400'),
(130, 'Papel de seda', 'Resma de papel de seda de colores', '12', '120'),
(131, 'Lápices de grafito número 2', 'Pack de 48 lápices de grafito número 2', '10', '250'),
(132, 'Estuches para tarjetas de visita', 'Pack de 20 estuches para tarjetas de visita', '5', '200'),
(133, 'Blocs de notas adhesivas de diseño', 'Pack de 3 blocs de notas adhesivas de diseño', '3', '300'),
(134, 'Papel kraft de embalaje', 'Rollo de papel kraft de embalaje', '4', '250'),
(135, 'Bolígrafos de gel', 'Pack de 12 bolígrafos de gel de colores', '7', '150'),
(136, 'Papel de calcar', 'Resma de papel de calcar', '8', '100'),
(137, 'Portaclips de metal', 'Portaclips de metal con imán', '3', '200'),
(138, 'Cajas de almacenamiento de plástico', 'Pack de 10 cajas de almacenamiento de plástico', '15', '80'),
(139, 'Rotuladores de pizarra líquida', 'Pack de 4 rotuladores de pizarra líquida', '6', '150'),
(140, 'Gomas de borrar grandes', 'Pack de 10 gomas de borrar grandes', '5', '100'),
(141, 'Portaminas mecánicos', 'Pack de 6 portaminas mecánicos', '4', '300'),
(142, 'Papel de regalo de lujo', 'Rollo de papel de regalo de lujo', '7', '120'),
(143, 'Calculadoras programables', 'Pack de 5 calculadoras programables', '20', '70'),
(144, 'Bolsas de polietileno transparentes', 'Pack de 200 bolsas de polietileno transparentes', '6', '150'),
(145, 'Resmas de papel de archivo', 'Resma de papel de archivo tamaño oficio', '11', '100'),
(146, 'Carpeta de anillas de cuero sintético', 'Carpeta de anillas de cuero sintético con bolsillos', '14', '80'),
(147, 'Grapadora de esfuerzo reducido', 'Grapadora de esfuerzo reducido para manos débiles', '7', '100'),
(148, 'Papel fotográfico mate', 'Pack de 100 hojas de papel fotográfico mate', '10', '150'),
(149, 'Etiquetas de dirección', 'Pack de 300 etiquetas de dirección', '3', '300'),
(150, 'Cinta adhesiva de doble cara extrafuerte', 'Rollo de cinta adhesiva de doble cara extrafuerte', '5', '200'),
(151, 'Rotuladores de pizarra magnética', 'Pack de 6 rotuladores de pizarra magnética', '6', '120'),
(152, 'Cajas de almacenamiento apilables', 'Pack de 5 cajas de almacenamiento apilables', '8', '100'),
(153, 'Lápices de carpintero', 'Pack de 6 lápices de carpintero', '4', '250'),
(154, 'Papel de lija de grano fino', 'Pack de papel de lija de grano fino surtido', '2', '400'),
(155, 'Carpeta de anillas de metal', 'Carpeta de anillas de metal resistente', '12', '80'),
(156, 'Bolígrafos de tinta gel negra', 'Pack de 10 bolígrafos de tinta gel negra', '5', '150'),
(157, 'Papel milimetrado de ingeniería', 'Resma de papel milimetrado para ingeniería', '7', '100'),
(158, 'Cajas de almacenamiento de cartón', 'Pack de 10 cajas de almacenamiento de cartón', '6', '150'),
(159, 'Tijeras para zurdos', 'Tijeras para zurdos con mango ergonómico', '4', '200'),
(160, 'Clips de papel de acero inoxidable', 'Pack de 100 clips de papel de acero inoxidable', '2', '250'),
(161, 'Cintas correctoras de precisión', 'Pack de 6 cintas correctoras de precisión', '3', '300'),
(162, 'Papel adhesivo para envíos', 'Rollo de papel adhesivo para etiquetas de envío', '4', '200'),
(163, 'Marcadores de pizarra líquida de colores', 'Pack de 8 marcadores de pizarra líquida de colores', '6', '100'),
(164, 'Reglas de madera', 'Pack de 3 reglas de madera', '3', '150'),
(165, 'Papel de calcar para artistas', 'Resma de papel de calcar para artistas', '5', '120'),
(166, 'Carpeta de anillas de tela de alta calidad', 'Carpeta de anillas de tela de alta calidad con bolsillos internos', '10', '80'),
(167, 'Gomas de borrar de diseño', 'Pack de 5 gomas de borrar de diseño', '4', '300'),
(168, 'Estuches para bolígrafos de cuero', 'Pack de 3 estuches para bolígrafos de cuero', '5', '250'),
(169, 'Blocs de notas adhesivas de colores pastel', 'Pack de 4 blocs de notas adhesivas de colores pastel', '2', '400'),
(170, 'Papel de embalaje', 'Rollo de papel de embalaje resistente', '6', '150'),
(171, 'Grapadora de escritorio con grapas incluidas', 'Grapadora de escritorio con grapas incluidas', '8', '100'),
(172, 'Lápices de carpintero con borrador', 'Pack de 6 lápices de carpintero con borrador', '3', '200'),
(173, 'Portaminas mecánicos de alta calidad', 'Pack de 6 portaminas mecánicos de alta calidad', '5', '120'),
(174, 'Papel de lija de grano grueso', 'Pack de papel de lija de grano grueso surtido', '7', '80'),
(175, 'Cintas correctoras recargables', 'Pack de 3 cintas correctoras recargables', '4', '250'),
(176, 'Bolígrafos de tinta gel de colores', 'Pack de 10 bolígrafos de tinta gel de colores', '6', '150'),
(177, 'Carpeta de anillas de plástico reforzado', 'Carpeta de anillas de plástico reforzado con bolsillos internos', '10', '100'),
(178, 'Papel de seda de colores surtidos', 'Resma de papel de seda de colores surtidos', '3', '300'),
(179, 'Etiquetas adhesivas de colores', 'Pack de 200 etiquetas adhesivas de colores surtidos', '5', '200'),
(180, 'Papel para acuarelas', 'Resma de papel para acuarelas de alta calidad', '8', '100'),
(181, 'Marcadores de punta fina de colores', 'Pack de 12 marcadores de punta fina de colores', '4', '150'),
(182, 'Papel adhesivo para envíos personalizado', 'Rollo de papel adhesivo para etiquetas de envío personalizado', '10', '80'),
(183, 'Clips de papel de colores pastel', 'Pack de 100 clips de papel de colores pastel', '2', '150'),
(184, 'Tijeras de precisión para manualidades', 'Tijeras de precisión para manualidades con estuche', '6', '100'),
(185, 'Resmas de papel de archivo tamaño legal', 'Resma de papel de archivo tamaño legal', '7', '120');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombreRol` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombreRol`) VALUES
(1, 'administrador'),
(2, 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(100) NOT NULL,
  `nomU` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `id_rol` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nomU`, `contraseña`, `id_rol`) VALUES
(1, 'admin', '12222', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(100) NOT NULL,
  `fechaV` varchar(100) NOT NULL,
  `totalV` varchar(100) NOT NULL,
  `id_usuario` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `fechaV`, `totalV`, `id_usuario`) VALUES
(1, '2023-10-01', '88', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
