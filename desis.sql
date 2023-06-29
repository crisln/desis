-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 29-06-2023 a las 17:25:28
-- Versión del servidor: 5.7.39
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `desis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `id_candidato` int(11) NOT NULL,
  `nombre_candidato` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`id_candidato`, `nombre_candidato`) VALUES
(1, 'Nora Del Carmen Bugueño Aguilera'),
(2, 'Sergio Humberto Ríos Gamboa'),
(3, 'Karla Angélica Añes Gajardo'),
(4, 'Ernesto Rodrigo Plasencia Rojas'),
(5, 'Macarena Riveros Oyarzo'),
(6, 'Salvador Urrutia Cárdenas'),
(7, 'Gloria Lillo Rebolledo'),
(8, 'Raúl Ramón Castro Letelier'),
(9, 'Francisca Marina Cavieres Díaz'),
(10, 'Diego Alberto Vargas Castillo'),
(11, 'Jacqueline Carolina Boero Carvajal'),
(12, 'Carlos Miguel Alvarado Aguirre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas`
--

CREATE TABLE `comunas` (
  `id_comuna` int(11) UNSIGNED NOT NULL,
  `id_region` int(10) UNSIGNED NOT NULL,
  `nombre_comuna` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comunas`
--

INSERT INTO `comunas` (`id_comuna`, `id_region`, `nombre_comuna`) VALUES
(2, 1, 'Arica'),
(3, 1, 'Camarones'),
(4, 1, 'Putre'),
(5, 1, 'General Lagos'),
(6, 2, 'Iquique'),
(7, 2, 'Alto Hospicio'),
(8, 2, 'Pozo Almonte'),
(9, 2, 'Camiña'),
(10, 2, 'Colchane'),
(11, 2, 'Huara'),
(12, 2, 'Pica'),
(13, 3, 'Antofagasta'),
(14, 3, 'Mejillones'),
(15, 3, 'Sierra Gorda'),
(16, 3, 'Taltal'),
(17, 3, 'Calama'),
(18, 3, 'Ollagüe'),
(19, 3, 'San Pedro de Atacama'),
(20, 3, 'Tocopilla'),
(21, 3, 'María Elena'),
(22, 4, 'Copiapó'),
(23, 4, 'Caldera'),
(24, 4, 'Tierra Amarilla'),
(25, 4, 'Chañaral'),
(26, 4, 'Diego de Almagro'),
(27, 4, 'Vallenar'),
(28, 4, 'Alto del Carmen'),
(29, 4, 'Freirina'),
(30, 4, 'Huasco'),
(31, 5, 'La Serena'),
(32, 5, 'Coquimbo'),
(33, 5, 'Andacollo'),
(34, 5, 'La Higuera'),
(35, 5, 'Paihuano'),
(36, 5, 'Vicuña'),
(37, 5, 'Illapel'),
(38, 5, 'Canela'),
(39, 5, 'Los Vilos'),
(40, 5, 'Salamanca'),
(41, 5, 'Ovalle'),
(42, 5, 'Combarbalá'),
(43, 5, 'Monte Patria'),
(44, 5, 'Punitaqui'),
(45, 5, 'Río Hurtado'),
(46, 6, 'Valparaíso'),
(47, 6, 'Casablanca'),
(48, 6, 'Concón'),
(49, 6, 'Juan Fernández'),
(50, 6, 'Puchuncaví'),
(51, 6, 'Quintero'),
(52, 6, 'Viña del Mar'),
(53, 6, 'Isla de Pascua'),
(54, 6, 'Los Andes'),
(55, 6, 'Calle Larga'),
(56, 6, 'Rinconada'),
(57, 6, 'San Esteban'),
(58, 6, 'La Ligua'),
(59, 6, 'Cabildo'),
(60, 6, 'Papudo'),
(61, 6, 'Petorca'),
(62, 6, 'Zapallar'),
(63, 6, 'Quillota'),
(64, 6, 'La Calera'),
(65, 6, 'Hijuelas'),
(66, 6, 'La Cruz'),
(67, 6, 'Nogales'),
(68, 6, 'San Antonio'),
(69, 6, 'Algarrobo'),
(70, 6, 'Cartagena'),
(71, 6, 'El Quisco'),
(72, 6, 'El Tabo'),
(73, 6, 'Santo Domingo'),
(74, 6, 'San Felipe'),
(75, 6, 'Catemu'),
(76, 6, 'Llay-Llay'),
(77, 6, 'Panquehue'),
(78, 6, 'Putaendo'),
(79, 6, 'Santa María'),
(80, 6, 'Quilpué'),
(81, 6, 'Limache'),
(82, 6, 'Olmué'),
(83, 6, 'Villa Alemana'),
(84, 8, 'Rancagua'),
(85, 8, 'Codegua'),
(86, 8, 'Coinco'),
(87, 8, 'Coltauco'),
(88, 8, 'Doñihue'),
(89, 8, 'Graneros'),
(90, 8, 'Las Cabras'),
(91, 8, 'Machalí'),
(92, 8, 'Malloa'),
(93, 8, 'Mostazal'),
(94, 8, 'Olivar'),
(95, 8, 'Peumo'),
(96, 8, 'Pichidegua'),
(97, 8, 'Quinta de Tilcoco'),
(98, 8, 'Rengo'),
(99, 8, 'Requínoa'),
(100, 8, 'San Vicente'),
(101, 8, 'Pichilemu'),
(102, 8, 'La Estrella'),
(103, 8, 'Litueche'),
(104, 8, 'Marchihue'),
(105, 8, 'Navidad'),
(106, 8, 'Paredones'),
(107, 8, 'San Fernando'),
(108, 8, 'Chépica'),
(109, 8, 'Chimbarongo'),
(110, 8, 'Lolol'),
(111, 8, 'Nancagua'),
(112, 8, 'Palmilla'),
(113, 8, 'Peralillo'),
(114, 8, 'Placilla'),
(115, 8, 'Pumanque'),
(116, 8, 'Santa Cruz'),
(117, 9, 'Talca'),
(118, 9, 'Constitución'),
(119, 9, 'Curepto'),
(120, 9, 'Empedrado'),
(121, 9, 'Maule'),
(122, 9, 'Pelarco'),
(123, 9, 'Pencahue'),
(124, 9, 'Río Claro'),
(125, 9, 'San Clemente'),
(126, 9, 'San Rafael'),
(127, 9, 'Cauquenes'),
(128, 9, 'Chanco'),
(129, 9, 'Pelluhue'),
(130, 9, 'Curicó'),
(131, 9, 'Hualañé'),
(132, 9, 'Licantén'),
(133, 9, 'Molina'),
(134, 9, 'Rauco'),
(135, 9, 'Romeral'),
(136, 9, 'Sagrada Familia'),
(137, 9, 'Teno'),
(138, 9, 'Vichuquén'),
(139, 9, 'Linares'),
(140, 9, 'Colbún'),
(141, 9, 'Longaví'),
(142, 9, 'Parral'),
(143, 9, 'Retiro'),
(144, 9, 'San Javier'),
(145, 9, 'Villa Alegre'),
(146, 9, 'Yerbas Buenas'),
(147, 10, 'Chillán'),
(148, 10, 'Bulnes'),
(149, 10, 'Chillán Viejo'),
(150, 10, 'El Carmen'),
(151, 10, 'Pemuco'),
(152, 10, 'Pinto'),
(153, 10, 'Quillón'),
(154, 10, 'San Ignacio'),
(155, 10, 'Yungay'),
(156, 10, 'Quirihue'),
(157, 10, 'Cobquecura'),
(158, 10, 'Coelemu'),
(159, 10, 'Ninhue'),
(160, 10, 'Portezuelo'),
(161, 10, 'Ránquil'),
(162, 10, 'Treguaco'),
(163, 10, 'San Carlos'),
(164, 10, 'Coihueco'),
(165, 10, 'Ñiquén'),
(166, 10, 'San Fabián'),
(167, 10, 'San Nicolás'),
(168, 11, 'Concepción'),
(169, 11, 'Coronel'),
(170, 11, 'Chiguayante'),
(171, 11, 'Florida'),
(172, 11, 'Hualqui'),
(173, 11, 'Lota'),
(174, 11, 'Penco'),
(175, 11, 'San Pedro de La Paz'),
(176, 11, 'Santa Juana'),
(177, 11, 'Talcahuano'),
(178, 11, 'Tomé'),
(179, 11, 'Hualpén'),
(180, 11, 'Lebu'),
(181, 11, 'Arauco'),
(182, 11, 'Cañete'),
(183, 11, 'Contulmo'),
(184, 11, 'Curanilahue'),
(185, 11, 'Los Álamos'),
(186, 11, 'Tirúa'),
(187, 11, 'Los Ángeles'),
(188, 11, 'Antuco'),
(189, 11, 'Cabrero'),
(190, 11, 'Laja'),
(191, 11, 'Mulchén'),
(192, 11, 'Nacimiento'),
(193, 11, 'Negrete'),
(194, 11, 'Quilaco'),
(195, 11, 'Quilleco'),
(196, 11, 'San Rosendo'),
(197, 11, 'Santa Bárbara'),
(198, 11, 'Tucapel'),
(199, 11, 'Yumbel'),
(200, 11, 'Alto Biobío'),
(201, 12, 'Temuco'),
(202, 12, 'Carahue'),
(203, 12, 'Cunco'),
(204, 12, 'Curarrehue'),
(205, 12, 'Freire'),
(206, 12, 'Galvarino'),
(207, 12, 'Gorbea'),
(208, 12, 'Lautaro'),
(209, 12, 'Loncoche'),
(210, 12, 'Melipeuco'),
(211, 12, 'Nueva Imperial'),
(212, 12, 'Padre Las Casas'),
(213, 12, 'Perquenco'),
(214, 12, 'Pitrufquén'),
(215, 12, 'Pucón'),
(216, 12, 'Saavedra'),
(217, 12, 'Teodoro Schmidt'),
(218, 12, 'Toltén'),
(219, 12, 'Vilcún'),
(220, 12, 'Villarrica'),
(221, 12, 'Cholchol'),
(222, 12, 'Angol'),
(223, 12, 'Collipulli'),
(224, 12, 'Curacautín'),
(225, 12, 'Ercilla'),
(226, 12, 'Lonquimay'),
(227, 12, 'Los Sauces'),
(228, 12, 'Lumaco'),
(229, 12, 'Purén'),
(230, 12, 'Renaico'),
(231, 12, 'Traiguén'),
(232, 12, 'Victoria'),
(233, 13, 'Valdivia'),
(234, 13, 'Corral'),
(235, 13, 'Lanco'),
(236, 13, 'Los Lagos'),
(237, 13, 'Máfil'),
(238, 13, 'Mariquina'),
(239, 13, 'Paillaco'),
(240, 13, 'Panguipulli'),
(241, 13, 'La Unión'),
(242, 13, 'Futrono'),
(243, 13, 'Lago Ranco'),
(244, 13, 'Río Bueno'),
(245, 14, 'Puerto Montt'),
(246, 14, 'Calbuco'),
(247, 14, 'Cochamó'),
(248, 14, 'Fresia'),
(249, 14, 'Frutillar'),
(250, 14, 'Los Muermos'),
(251, 14, 'Llanquihue'),
(252, 14, 'Maullín'),
(253, 14, 'Puerto Varas'),
(254, 14, 'Castro'),
(255, 14, 'Ancud'),
(256, 14, 'Chonchi'),
(257, 14, 'Curaco de Vélez'),
(258, 14, 'Dalcahue'),
(259, 14, 'Puqueldón'),
(260, 14, 'Queilén'),
(261, 14, 'Quellón'),
(262, 14, 'Quemchi'),
(263, 14, 'Quinchao'),
(264, 14, 'Osorno'),
(265, 14, 'Puerto Octay'),
(266, 14, 'Purranque'),
(267, 14, 'Puyehue'),
(268, 14, 'Río Negro'),
(269, 14, 'San Juan de la Costa'),
(270, 14, 'San Pablo'),
(271, 14, 'Chaitén'),
(272, 14, 'Futaleufú'),
(273, 14, 'Hualaihué'),
(274, 14, 'Palena'),
(275, 15, 'Coyhaique'),
(276, 15, 'Lago Verde'),
(277, 15, 'Aysén'),
(278, 15, 'Cisnes'),
(279, 15, 'Guaitecas'),
(280, 15, 'Cochrane'),
(281, 15, 'O\'Higgins'),
(282, 15, 'Tortel'),
(283, 15, 'Chile Chico'),
(284, 15, 'Río Ibáñez'),
(285, 16, 'Punta Arenas'),
(286, 16, 'Laguna Blanca'),
(287, 16, 'Río Verde'),
(288, 16, 'San Gregorio'),
(289, 16, 'Cabo de Hornos'),
(290, 16, 'Antártica'),
(291, 16, 'Porvenir'),
(292, 16, 'Primavera'),
(293, 16, 'Timaukel'),
(294, 16, 'Natales'),
(295, 16, 'Torres del Paine'),
(296, 7, 'Santiago'),
(297, 7, 'Cerrillos'),
(298, 7, 'Cerro Navia'),
(299, 7, 'Conchalí'),
(300, 7, 'El Bosque'),
(301, 7, 'Estación Central'),
(302, 7, 'Huechuraba'),
(303, 7, 'Independencia'),
(304, 7, 'La Cisterna'),
(305, 7, 'La Florida'),
(306, 7, 'La Granja'),
(307, 7, 'La Pintana'),
(308, 7, 'La Reina'),
(309, 7, 'Las Condes'),
(310, 7, 'Lo Barnechea'),
(311, 7, 'Lo Espejo'),
(312, 7, 'Lo Prado'),
(313, 7, 'Macul'),
(314, 7, 'Maipú'),
(315, 7, 'Ñuñoa'),
(316, 7, 'Pedro Aguirre Cerda'),
(317, 7, 'Peñalolén'),
(318, 7, 'Providencia'),
(319, 7, 'Pudahuel'),
(320, 7, 'Quilicura'),
(321, 7, 'Quinta Normal'),
(322, 7, 'Recoleta'),
(323, 7, 'Renca'),
(324, 7, 'San Joaquín'),
(325, 7, 'San Miguel'),
(326, 7, 'San Ramón'),
(327, 7, 'Vitacura'),
(328, 7, 'Puente Alto'),
(329, 7, 'Pirque'),
(330, 7, 'San José de Maipo'),
(331, 7, 'Colina'),
(332, 7, 'Lampa'),
(333, 7, 'Til Til'),
(334, 7, 'San Bernardo'),
(335, 7, 'Buin'),
(336, 7, 'Calera de Tango'),
(337, 7, 'Paine'),
(338, 7, 'Melipilla'),
(339, 7, 'Alhué'),
(340, 7, 'Curacaví'),
(341, 7, 'María Pinto'),
(342, 7, 'San Pedro'),
(343, 7, 'Talagante'),
(344, 7, 'El Monte'),
(345, 7, 'Isla de Maipo'),
(346, 7, 'Padre Hurtado'),
(347, 7, 'Peñaflor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `id_region` int(10) UNSIGNED NOT NULL,
  `nombre_region` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`id_region`, `nombre_region`) VALUES
(1, 'Región de Arica y Parinacota'),
(2, 'Región de Tarapacá'),
(3, 'Región de Antofagasta'),
(4, 'Región de Atacama'),
(5, 'Región de Coquimbo'),
(6, 'Región de Valparaíso'),
(7, 'Región Metropolitana de Santiago'),
(8, 'Región del Libertador General Bernardo O\'Higgins'),
(9, 'Región del Maule'),
(10, 'Región de Ñuble'),
(11, 'Región del Biobío'),
(12, 'Región de La Araucanía'),
(13, 'Región de Los Ríos'),
(14, 'Región de Los Lagos'),
(15, 'Región Aysén del General Carlos Ibáñez del Campo'),
(16, 'Región de Magallanes y de la Antártica Chilena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votante`
--

CREATE TABLE `votante` (
  `id_votante` int(11) NOT NULL,
  `nombre_apellido` varchar(100) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `rut` varchar(50) NOT NULL,
  `email_votante` varchar(100) NOT NULL,
  `id_region` int(11) NOT NULL,
  `id_comuna` int(11) NOT NULL,
  `candidato_voto` varchar(100) NOT NULL,
  `como_supo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `votante`
--

INSERT INTO `votante` (`id_votante`, `nombre_apellido`, `alias`, `rut`, `email_votante`, `id_region`, `id_comuna`, `candidato_voto`, `como_supo`) VALUES
(2, 'juan cepeda', 'ert34', '132287589', 'demo@demo.cl', 5, 41, 'Diego Alberto Vargas Castillo', 'web, rrss');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id_candidato`);

--
-- Indices de la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD PRIMARY KEY (`id_comuna`),
  ADD KEY `FK_cities_regions` (`id_region`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`id_region`);

--
-- Indices de la tabla `votante`
--
ALTER TABLE `votante`
  ADD PRIMARY KEY (`id_votante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `id_candidato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `comunas`
--
ALTER TABLE `comunas`
  MODIFY `id_comuna` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT de la tabla `regiones`
--
ALTER TABLE `regiones`
  MODIFY `id_region` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `votante`
--
ALTER TABLE `votante`
  MODIFY `id_votante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD CONSTRAINT `FK_cities_regions` FOREIGN KEY (`id_region`) REFERENCES `regiones` (`id_region`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
