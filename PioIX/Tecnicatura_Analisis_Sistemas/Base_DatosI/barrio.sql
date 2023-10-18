-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 10-04-2016 a las 22:57:39
-- Versión del servidor: 5.5.42-37.1-log
-- Versión de PHP: 5.4.31

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cabubico_mirioba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anunciantes`
--

DROP TABLE IF EXISTS `anunciantes`;
CREATE TABLE IF NOT EXISTS `anunciantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `horario` varchar(140) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono1` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono2` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `celular1` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `celular2` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `nextel` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `contestador` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `web` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `facebook` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `twitter` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `youtube` varchar(140) NOT NULL,
  `link_contacto` varchar(140) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `delivery` tinyint(1) NOT NULL DEFAULT '0',
  `promociones` tinyint(1) NOT NULL DEFAULT '0',
  `tarjetas` varchar(10) NOT NULL DEFAULT '0:0:0:0:0',
  `notas` text CHARACTER SET utf8 COLLATE utf8_spanish_ci,
  `estado` binary(1) NOT NULL DEFAULT '1',
  `fecha_alta` date DEFAULT NULL,
  `fecha_baja` date DEFAULT NULL,
  `link_anuncio` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `txt_alt` varchar(140) NOT NULL,
  `tags` text CHARACTER SET utf8 COLLATE utf8_spanish_ci,
  `descripcion_anunciante` text CHARACTER SET utf8 COLLATE utf8_spanish_ci,
  `altura` int(11) DEFAULT NULL,
  `dir_extra` varchar(140) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `dir_google` varchar(255) NOT NULL,
  `dir_google_2` varchar(255) NOT NULL,
  `dir_google_3` varchar(255) NOT NULL,
  `categoria_idcategoria` int(11) NOT NULL DEFAULT '1',
  `calles_idcalles` int(11) DEFAULT NULL,
  `link_cuponera` varchar(140) NOT NULL,
  `txt_alt_cupo` varchar(140) NOT NULL,
  PRIMARY KEY (`id`,`categoria_idcategoria`),
  KEY `fk_anunciantes_categoria1_idx` (`categoria_idcategoria`),
  KEY `fk_anunciantes_calles1_idx` (`calles_idcalles`),
  FULLTEXT KEY `nombre` (`nombre`,`tags`,`descripcion_anunciante`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=253 ;

--
-- Volcado de datos para la tabla `anunciantes`
--

INSERT INTO `anunciantes` (`id`, `nombre`, `horario`, `telefono1`, `telefono2`, `celular1`, `celular2`, `nextel`, `contestador`, `email`, `web`, `facebook`, `twitter`, `youtube`, `link_contacto`, `delivery`, `promociones`, `tarjetas`, `notas`, `estado`, `fecha_alta`, `fecha_baja`, `link_anuncio`, `txt_alt`, `tags`, `descripcion_anunciante`, `altura`, `dir_extra`, `dir_google`, `dir_google_2`, `dir_google_3`, `categoria_idcategoria`, `calles_idcalles`, `link_cuponera`, `txt_alt_cupo`) VALUES
(68, 'Alejandra Rivero - Objetos Cerámicos', '', '49221309', '', '', '', '', '', '', 'www.arceramica.com.ar', '', '', '', '', 0, 0, '', '', '1', '0000-00-00', NULL, 'arceramicos.jpg', '', 'Cerámica,ceramica,clases de cerámica,clases de ceramica', '<p>TALLER DE CER&Aacute;MICA</p>\n\n<p>Clases Grupales e Individuales</p>\n\n<ul>\n	<li>Alfarer&iacute;a</li>\n	<li>Torno</li>\n	<li>Modelado</li>\n	<li>Baldosas Esmaltadas</li>\n</ul>\n', 1081, '', '', '', '', 1, 12, '', ''),
(67, 'Profesor Christian Massimo', '', '', '', '1566291604', '', '', '', 'chistian_mass@hotmail.com', 'www.youtube.com/user/ChristianMassimo86', 'www.facebook.com/pages/Christian-lionel-Massimo/209312022476150', '', '', '', 0, 0, '', '', '1', '0000-00-00', NULL, 'clasesdeguitarra.jpg', '', 'Guitarra,criolla,eléctrica,electrica,guitarra criolla,guitarra eléctrica,guitarra electrica', '<p>CLASES DE GUITARRA PARA TODAS LAS EDADES</p>\n\n<p>CRIOLLA Y EL&Eacute;CTRICA</p>\n\n<p>Todos los estilos - Clases personalizadas</p>\n\n<p>11 A&Ntilde;OS DE EXPERIENCIA</p>\n\n<ul>\n	<li><strong>T&eacute;cnica</strong></li>\n	<li><strong>Audioperceptiva</strong></li>\n	<li><strong>Armon&iacute;a</strong></li>\n	<li><strong>Lectura</strong></li>\n	<li><strong>Repertorio</strong></li>\n</ul>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(64, 'Alicia y Eduardo', '', '49570994', '', '', '', '', '', 'ecocca@fibertel.com.ar', '', '', '', '', '', 0, 0, '', '', '1', '0000-00-00', NULL, 'comprolibrousados.jpg', '', 'Libros usados,libros,venta libros,comra libros', '<p>COMPRO LIBROS USADOS ! ! !</p>\n\n<p><em><strong>Vamos a domicilio</strong></em></p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 1, '', ''),
(65, 'Gift - Centro de Estudios', '', '49220310', '', '1558372186', '', '', '', 'institutogift@yahoo.com.ar', '', 'www.facebook.com/giftinstituto?_rdr', '', '', '', 0, 0, '', '', '1', '0000-00-00', NULL, 'gift.jpg', '', 'frances,italiano,portugués,portugues,Francés,Ingles,Inglés,PC,internet,primario,primaria,secundario,CBC', '<p>CENTRO DE ESTUDIOS de Idiomas y Apoyo Escolar desde 1993</p>\n\n<p><em>PRECIOS ACCESIBLES &iexcl;LOS ESPERAMOS!</em></p>\n\n<hr />\n<p>Idioma</p>\n\n<ul>\n	<li><strong>Franc&eacute;s</strong></li>\n	<li><strong>Ingl&eacute;s</strong></li>\n	<li><strong>Italiano</strong></li>\n	<li><strong>Alem&aacute;n</strong></li>\n	<li><strong>Portugu&eacute;s</strong></li>\n</ul>\n\n<hr />\n<p>​Apoyo Escolar</p>\n\n<ul>\n	<li><strong>Primario</strong></li>\n	<li><strong>Secundario</strong></li>\n	<li><strong>Computaci&oacute;n</strong></li>\n	<li><strong>C.B.C.</strong></li>\n</ul>\n\n<hr />\n<p><span style="line-height:1.6em">Computaci&oacute;n para Adultos</span></p>\n\n<ul>\n	<li><strong>Operador PC</strong></li>\n	<li><strong>Internet</strong></li>\n	<li><strong>Otros</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n', 3796, '', '', '', '', 1, 29, '', ''),
(62, 'Wilborada', 'Solicitar entrevista', '', '', '1544792146', '', '', '', 'info@wilboradalibros.com.ar', 'www.wilboradalibros.com.ar', 'www.facebook.com/WilboradaLibros', '', '', '', 0, 0, '', '', '1', '2014-06-12', NULL, 'comprolibrosusados.jpg', '', 'Libros usados,libros,vinilos,antiguedades,colecciones,Literatura,historia,filosofía,filosofia,psicología,psicologia,esoterismo,Objetos', '<p>COMERCIALIZACI&Oacute;N, PERITAJE Y VALUACI&Oacute;N DE LIBROS, ARTE Y ANTIG&Uuml;EDADES</p>\n\n<p>Compramos Libros, Vinilos, Arte, Antiguedades y Objetos coleccionables</p>\n\n<p><strong><em>Pagamos en Efectivo y vamos a domicilio</em></strong></p>\n\n<p>&nbsp;</p>\n\n<p>LIBROS:</p>\n\n<ul>\n	<li><strong>Literatura</strong></li>\n	<li><strong>Historia</strong></li>\n	<li><strong>Filosof&iacute;a</strong></li>\n	<li><strong>Psicolog&iacute;a</strong></li>\n	<li><strong>Esoter&iacute;smo</strong></li>\n	<li><strong>Etc</strong></li>\n</ul>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 1, '', ''),
(60, 'No Te Dejes Estar', '', '49321067', '', '1557171962', '1565591067', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '0000-00-00', NULL, 'NOTEDEJESESTAR.jpg', '', 'Matemáticas,matematicas,fìsica,ficica,lengua,biología,inglés,ingles', '<p>TE APOYAMOS EN TODAS LAS MATERIAS</p>\n\n<p>Tareas y Trabajos Pr&aacute;cticos</p>\n\n<p>clases individuales y grupales</p>\n\n<ul>\n	<li>Matem&aacute;ticas</li>\n	<li>F&iacute;sica</li>\n	<li>Lengua</li>\n	<li>Biolog&iacute;a</li>\n	<li>Ingl&eacute;s</li>\n	<li>Etc.</li>\n</ul>\n', 0, '', '', '', '', 1, 48, '', ''),
(61, 'Génesis', '', '49312872', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '0000-00-00', NULL, 'genesis.jpg', '', 'Librería,libreria,Papelería,papeleria,estudiante,primaria,primario,empresas,escolar', '<p>LIBRER&Iacute;A ESCOLAR Y PAPELER&Iacute;A</p>\n\n<p>Todo para el Estudiante Primario y Secundario</p>\n\n<p>Tabi&eacute;n atendemos a Empresas</p>\n\n<p>&nbsp;</p>\n\n<p>En el coraz&oacute;n de su barrio</p>\n', 926, '', '', '', '', 1, 13, '', ''),
(59, 'Miriam', 'de 10 a 13 y de 17 a 22 hs', '44330621', '', '1536892136', '', '', '', 'miriamgan3021@gmail.com ', '', '', '', '', '', 0, 1, '', '', '1', '0000-00-00', NULL, 'miriam.jpg', '', 'apoyo escolar,primaria,primario,secundario,CBC', '<p>APOYO ESCOLAR</p>\n\n<p>Docente:<strong> Miriam&nbsp;Gandolfo</strong></p>\n\n<p><em>&quot;Todas la Materias&quot;</em></p>\n\n<hr />\n<p>Niveles</p>\n\n<ul>\n	<li><strong>Primario </strong></li>\n	<li><strong>Secundario</strong></li>\n	<li><strong>Examen de ingreso CBC (Comprensi&oacute;n de texto)</strong></li>\n</ul>\n\n<hr />\n<p>Consultar por Clases</p>\n\n<ul>\n	<li><strong>Semanales</strong></li>\n	<li><strong>Mensuales​</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 1, 'MiriamApoyo‏.png', 'apoyo escolar boedo'),
(58, 'Lucía (UBA)', '', '49226813', '', '1559140732', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '0000-00-00', NULL, 'LuciaUBA.jpg', '', 'Lengua,literatura,historia,psicología,filosofía,psicologia,filosofia,CBC,apoyo escolar,monografias,monografia,monofrafía', '<p>CLASES DE APOYO</p>\n\n<p>Monograf&iacute;as y Trabajos Pr&aacute;cticos</p>\n\n<p><strong>PRIMARIA, SECUNDARIA y CBC</strong></p>\n\n<ul>\n	<li>Lengua</li>\n	<li>Literatura</li>\n	<li>Historia</li>\n	<li>Psicolog&iacute;a</li>\n	<li>Filosof&iacute;a</li>\n</ul>\n\n<p>&nbsp;</p>\n', 4000, '', '', '', '', 1, 29, '', ''),
(57, 'Clases Particulares', '', '', '', '1533136829', '1533138394', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '0000-00-00', NULL, 'clasesparticulares.jpg', '', 'sociologia,sociología,civismo,historia,Lenguaje,filosofia,filosofía,economia,economía,materias sociales', '<p>CLASES PARA ALUMNOS PRIMARIOS, SECUNDARIOS Y C.B.C.</p>\n\n<ul>\n	<li><strong>Sociolog&iacute;a</strong></li>\n	<li><strong>Civismo</strong></li>\n	<li><strong>Historia</strong></li>\n	<li><strong>Lenguaje</strong></li>\n	<li><strong>Filosof&iacute;a</strong></li>\n	<li><strong>Econom&iacute;a</strong></li>\n	<li><strong>Materias Sociales</strong></li>\n</ul>\n\n<p>Voy a domicilio - Precios econ&oacute;micos</p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 1, '', ''),
(56, 'Sra. Marina', 'Combinar Turno', '49034360', '', '1531201982', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '0000-00-00', NULL, '', '', 'Apoyo escolar,cbc,c.b.c.,biologia,biología,geografia,geografía,ingles,inglés,matematica,matemática,quimica,química,fisica,física,sociedad y estado,sociedad,estado', '<p><strong>APOYO NIVEL PRIMARIO</strong></p>\n\n<p><strong>Profesores Especializados</strong>​</p>\n\n<ul>\n	<li>Biolog&iacute;a</li>\n	<li>Geograf&iacute;a</li>\n	<li>Ingl&eacute;s</li>\n	<li>Matem&aacute;tica</li>\n	<li>Qu&iacute;mica</li>\n	<li>F&iacute;sica</li>\n</ul>\n\n<p><strong>C.B.C</strong></p>\n\n<ul>\n	<li>Matem&aacute;ticas</li>\n	<li>Qu&iacute;mica</li>\n	<li>Sociedad y Estado</li>\n	<li>F&iacute;sica</li>\n</ul>\n', 0, '', '', '', '', 2, 1, '', ''),
(55, 'Razas Pequeñas', '', '49561892', '', '1564022746', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '0000-00-00', NULL, 'RAZASPEQUENAS.jpg', '', 'perros pequeños,pensionado,guardería,guarderías,Pensionados,cuidado de mascotas,guarderia,guarderias,pensionado mascotas', '<p>Cuido t&uacute; perrito en mi casa si te vas de viaje,&nbsp;por trabajo, vacaciones, etc</p>\n\n<p><strong>Por d&iacute;a, semana o mensual.</strong></p>\n\n<p>EL MEJOR PRECIO Y CUIDADO EXCLUSIVO <em><strong>&quot;NO ES GUARDER&Iacute;A&quot;</strong></em></p>\n\n<p>Lamame sin compromiso, Sra. Elvira.</p>\n\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(53, 'Dr. Pelo ', 'Lun/Vier de 09:00 a 21:00  Sab de 09:30 a 21:', '49212348', '20734373', '', '', '', '', '', 'drpelo.wix.com/petshop', '', '', '', '', 1, 0, '', '', '1', '2014-02-10', NULL, 'DRPELO.jpg', '', 'Baño Canino,pulgas,antipulgas,pipetas,corte de pelo,corte,alimento balanceado,alimento,acsesorios,accesorios,peluqueria canina,peluqueria', '<p><strong>PET SHOP</strong></p>\n\n<p>Ven&iacute; a conocernos</p>\n\n<ul>\n	<li><strong>Ba&ntilde;o Canino - Perro chico $ 49</strong></li>\n	<li><strong>Tratamiento Antipulgas $ 10</strong></li>\n	<li><strong>Corte Higi&eacute;nico $ 10</strong></li>\n	<li><strong>Acsesorios</strong></li>\n	<li><strong>Alimento suelto y en bolsa - Todas las marcas</strong></li>\n</ul>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 4185, '', '', '', '', 1, 29, 'cupon654654drpelo.jpg', ''),
(52, 'Koquetos & Koquetas', '', '49253300', '', '1531720876', '1565394982', '592*161', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-01-01', NULL, 'mascotasboedo.jpg', '', 'Peluqueria canina,Peluquería canina,pensionado,pensión,corte de pelo,paseos,paseador,estetica canina,estética canina,adopción mascotas', '<p><strong>EST&Eacute;TICA CANINA</strong></p>\n\n<p><strong>Tambien en Banfield en la calle Par&iacute;s 839</strong></p>\n\n<p>&quot;Atendido por su due&ntilde;a&quot;</p>\n\n<ul>\n	<li>Ba&ntilde;os y Cortes</li>\n	<li>Pensi&oacute;n de mascotas</li>\n	<li>Abierto todo el a&ntilde;o</li>\n	<li>Paseos diurnos en el Barrio con LEO el paseador</li>\n</ul>\n\n<p><em><strong>Damos Mascotas en adopci&oacute;n con responsabilidad !!!</strong></em></p>\n\n<hr />\n<p>&nbsp;</p>\n', 708, '', 'www.google.com.ar/maps/@-34.6199181,-58.4254792,3a,75y,262.44h,90t/data=!3m4!1e1!3m2!1sxn-Oh90mqVu69howkQAraQ!2e0?hl=es', '', '', 1, 14, 'Promocion_Windows.jpg', 'xzczxc'),
(69, 'Danzaprima', '', '35285699', '', '1559193389', '', '', '', '', 'danzaprima.blogspot.com.ar/', '', '', '', '', 0, 0, '', '', '1', '2013-06-05', NULL, 'danzaprimaflamenco.jpg', '', 'Danza,Baile,Español,Española,Flamenco,Danza española,baile español', '<ul>\n	<li><strong>Danza Espa&ntilde;ola</strong></li>\n	<li><strong>Flamenco</strong></li>\n	<li><strong>Danza Contempor&aacute;nea</strong></li>\n	<li><strong>Gimnasia Consciente</strong></li>\n	<li><strong>Iniciaci&oacute;n a la Danza</strong> a Ni&ntilde;os, J&oacute;venes, Adultos, Adultos Mayores</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(71, 'Taller de Canto y Música Latinoamericana', 'Solicitar horarios', '49422408', '49224132', '1551514389', '', '', '', 'lorenaedelstein@yahoo.com.ar', '', '', '', '', '', 0, 0, '', '', '1', '2015-04-15', NULL, 'tallerdecantoymusica.jpg', '', 'batería,bateria,percusión,percusion,afro,afrobrasilera,afrobrasilero,samba,guitarra,guitarra acústica,guitarra acustica,guitarra criolla,guitarra eléctrica,guitarra electrica,música,musica', '<p>Taller de Canto Grupal y Ensamble de M&uacute;sica Latinoamericana</p>\n\n<p>Clases y Talleres&nbsp;para :</p>\n\n<p>Ni&ntilde;os: <a href="http://es-es.facebook.com/pages/La-Casita-Zumba/375884539104924">Facebook La Casita Zumba&nbsp;</a>&nbsp;</p>\n\n<p>Adultos <a href="http://www.facebook.com/pages/callesón/603503509742070?sk=photos_stream">Facebook Calles&oacute;n.</a></p>\n\n<hr />\n<p>Talleres</p>\n\n<ul>\n	<li><strong>Bater&iacute;a</strong></li>\n	<li><strong>Canto</strong></li>\n	<li><strong>Guitarra&nbsp;</strong></li>\n	<li><strong>Percusi&oacute;n</strong></li>\n</ul>\n\n<hr />\n<p>Para quienes&nbsp;deseen hacer m&uacute;sica con otros.</p>\n\n<p><strong>VOZ</strong><br />\nEn el taller se trabajar&aacute; la t&eacute;cnica vocal.</p>\n\n<p>Profundizar en la t&eacute;cnica da herramientas para mejorar la afinaci&oacute;n, la calidad sonora y la amplitud de registro.</p>\n\n<p>El objetivo de este trabajo es que a la hora de cantar, encontremos un decir placentero, en el cual podamos reconocernos.<br />\n<br />\n<strong>ENSAMBLE</strong><br />\nNos acompa&ntilde;aremos, en principio, con instrumentos de percusi&oacute;n para fortalecer y desarrollar el aspecto r&iacute;tmico, tan profundo y rico en el repertorio latinoamericano.</p>\n\n<p>Luego, incorporaremos la guitarra para quienes ya tengan alguna experiencia con el instrumento y deseen aplicarla al repertorio.</p>\n\n<p>Tambi&eacute;n usaremos el canto grupal a voces para desarrollar el o&iacute;do arm&oacute;nico.</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(72, 'Tango con Anabel Saldaña', '', '', '', '1534028353', '', '', '', 'tango.anabel@hotmail.com', '', '', '', '', '', 0, 0, '', '', '1', '2014-02-13', NULL, 'TangoconAnabelSaldana.jpg', '', 'Tango,clases de tango', '<p>CLASES DE TANGO</p>\n\n<ul>\n	<li><strong>Privadas</strong></li>\n	<li><strong>Grupales</strong></li>\n	<li><strong>Shows</strong></li>\n</ul>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(73, 'Farmacia Suiza', 'Atención las 24 hs', '49311458 - Rotativas', '', '', '', '', '', 'info@farmaciasuiza.com.ar', '', '', '', '', '', 1, 0, '1:2:3', '', '1', '2014-02-13', NULL, 'farmaciasuiza1.jpg', '', 'Farmacia,Farmacias,vacunas,vacunatorio,inyecciones,perfumería,perfumeria,laboratorio,laboratorios,genéricos,generico', '<p>SIEMPRE BRINDANDO M&Aacute;S Y MEJOR SERVICIO</p>\n\n<p>ASESORAMIENTO PROFESIONAL</p>\n\n<ul>\n	<li><strong>Obras Sociales y Prepagas</strong></li>\n	<li><strong>Vacunatorio acreditado</strong></li>\n	<li><strong>Perfumer&iacute;a integral</strong></li>\n	<li><strong>Laboratorio</strong></li>\n	<li><strong>Gen&eacute;ricos</strong></li>\n</ul>\n\n<p><strong>​</strong></p>\n\n<hr />\n<p>&nbsp;</p>\n', 937, '', '', '', '', 1, 13, '', ''),
(74, 'Farmacia Nueva Soper', '', '49311675 - Lineas Rotativas', '', '', '', '', '', 'soper@datamarkets.com.ar', '', '', '', '', '', 1, 0, '1:2:3', '', '1', '2014-02-13', NULL, 'farmaciasoper.jpg', '', 'farmacia,laboratorio,genéricos,genericos,farmacias', '<p>M&Aacute;S Y MEJOR SERVICIO</p>\n\n<ul>\n	<li><strong>Obras Sociales</strong></li>\n	<li><strong>Vacunatorio Acreditado</strong></li>\n	<li><strong>Laboratorio de Preparados</strong></li>\n</ul>\n\n<p><strong>​</strong></p>\n\n<hr />\n<p>&nbsp;</p>\n', 783, '', '', '', '', 1, 13, '', ''),
(75, 'Madre Tierra', '', '49222482', '', '', '', '', '', 'madretierra_2003@yahoo.com.ar', '', '', '', '', '', 0, 0, '', '', '1', '2014-02-13', NULL, 'madretierra.jpg', '', 'dietética,dietetica,frutas secas,granos,celíacos,celiacos,diabéticos,diabeticos,Hipertensos', '<p>DIET&Eacute;TICA INTEGRAL</p>\n\n<ul>\n	<li><strong>Miel y derivados</strong></li>\n	<li><strong>Frutas secas</strong></li>\n	<li><strong>Granos sueltos</strong></li>\n	<li><strong>Productos para Cel&iacute;acos y Diab&eacute;ticos, Hipertensos...... y m&aacute;s</strong></li>\n</ul>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 3722, '', '', '', '', 1, 13, 'cupon.jpg', 'cupon madre ti'),
(76, 'Optica Ortopedía Popular', 'Lunes a viernes de 9 a 12:30 y de 15 a 19:30 - Sábados de 9 a 12:30', '49225435', '', '', '', '', '', 'info@oopopular.com.ar', 'www.oopopular.com.ar', '', '', '', 'ortopediapopular.com.ar/contacto/', 0, 1, '1:2:3:4:5', '', '1', '2014-02-13', NULL, 'ooopticapopular.jpg', '', 'Optica,opticas,anteojos,lentes de contacto,lentes,prótesis,protesis,plantillas,corsets,ortopedia,ortopedias', '<p>&Oacute;PTICA y ORTOPEDIA INTEGRAL</p>\n\n<p>&Oacute;ptica</p>\n\n<ul>\n	<li><strong>Anteojos Recetados</strong></li>\n	<li><strong>Anteojos para Ni&ntilde;os</strong></li>\n	<li><strong>Anteojos de Seguridad</strong></li>\n	<li><strong>Lentes de Contacto</strong></li>\n</ul>\n\n<hr />\n<p>Ortopedia</p>\n\n<ul>\n	<li><strong>Plantillas</strong></li>\n	<li><strong>Corsets</strong></li>\n	<li><strong>Ortes&iacute;s</strong></li>\n	<li><strong>​Pr&oacute;tesis</strong></li>\n	<li><strong>Sillas de Ruedas</strong></li>\n	<li><strong>Alquiler de Muletas y Botas Walkers</strong></li>\n</ul>\n\n<p>Y mucho m&aacute;s...</p>\n\n<p>Ac&eacute;rquese sin compromiso y cons&uacute;ltenos, juntos buscaremos soluci&oacute;n a su necesidad.</p>\n\n<p>M&Aacute;S DE 50 A&Ntilde;OS BRINDANDO SERVICIO AL BARRIO</p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 1084, '', '', '', '', 1, 49, 'OpticaOrtopediaPopular‏.png', 'OPTICA POPULAR CUPON BOEDO'),
(77, 'Vivir -Taller Ortopédico', 'de 9 a 19 hs.', '49217302', '', '1551513110', '', '', '', 'opvivir@hotmail.com', 'tovivir.wix.com/ortopedia', 'www.facebook.com/tovivir.gabrielaviegas?fref=ts', '', '', '', 0, 1, '', '', '1', '2014-02-13', NULL, 'productosortopedicos.jpg', '', 'ortopedia,ortopédicos,fajas,corsets,inmovilizadores,productos ortopedicos,productos ortpédicos,walker,corset', '<p><strong>PRODUCTOS ORTOP&Eacute;DICOS A MEDIDA</strong></p>\n\n<p>Responsable<strong>: Gabriela Viegas</strong></p>\n\n<p>Materiales de primera calidad</p>\n\n<p><em>Env&iacute;os&nbsp;a todo el pa&iacute;s</em></p>\n\n<p>Precios de F&aacute;brica</p>\n\n<hr />\n<p>Productos</p>\n\n<ul>\n	<li><strong>Fajas</strong></li>\n	<li><strong>Corset</strong></li>\n	<li><strong>Walker Infantil</strong></li>\n	<li><strong>Walker Adulto</strong></li>\n	<li><strong>Plantillas</strong></li>\n	<li><strong>​Inmovilizadores</strong></li>\n	<li><strong>Faja de Trabajo</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, 'vivir-taller-ortopedico-mi-rioba-boedo‏.png', 'taller ortopedico boedo'),
(78, 'Consultorio Odontógico Integral', 'Solicitar Turno', '49232529', '49234399', '1559523153', '', '', '49234399', 'co_od_in@yahoo.com.ar', '', '', '', '', '', 0, 0, '', '', '1', '2014-02-13', NULL, 'consultorioodontologicointegral.jpg', '', 'dientes,odontólogo,odontologo,dentista,prótesis dentales,ortodoncia', '<p>Dra. Alicia S. Mart&iacute;nez</p>\n\n<p>Dr. Juan Oszurkiewicz</p>\n\n<ul>\n	<li>Pr&oacute;tesis Fijas</li>\n	<li>Pr&oacute;tesis Completas</li>\n	<li>Porcelana - Hal&oacute;gena</li>\n	<li>Blanqueamiento Dental</li>\n	<li>Ortodoncia Pedi&aacute;trica</li>\n	<li>​Implantes</li>\n	<li>Cirug&iacute;as</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 393, '', '', '', '', 1, 50, '', ''),
(79, 'Daniela Goncalves Cueto', '', '', '', '1524683360', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-02-13', NULL, '79acompananteterapeutica.jpg', 'acompañantes terapeutica boedo', 'Cuida enfermos,acompañante,acompañante terapeutico,tgd,autismo,adicciones,retraso', '<p>ACOMPA&Ntilde;ANTE TERAP&Eacute;UTICA</p>\n\n<p>Egresada del &nbsp;<strong>Centro Psicosocial Argentino</strong></p>\n\n<p>Estudiante de <strong>Psicolog&iacute;a en la U.B.A.</strong></p>\n\n<p>Con experiencia en: TGD, Autismo, Retraso Madurativo, Adicciones, etc</p>\n\n<p><em>Honorarios a Convenir</em></p>\n\n<ul>\n	<li>Ni&ntilde;os</li>\n	<li>Adolescentes</li>\n	<li>J&oacute;venes</li>\n	<li>Adultos</li>\n	<li>Adultos Mayores</li>\n</ul>\n', 0, '', '', '', '', 1, 1, '', ''),
(80, 'Podóloga Universitaria', 'Solicitar Turno', '49223362', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-02-13', NULL, 'podologauniversitaria.jpg', '', 'Pedicura,pedicuro,pie,micosis,pie diabético,pie diabetico,pies,podóloga,podologa,podologo,podólogo', '<p>DOCENTE EGRESADA DE LA FACULTAD DE MEDICINA DE LA U.B.A.</p>\n\n<ul>\n	<li><strong>Tratamiento Integral del Pie</strong></li>\n	<li><strong>Atenci&oacute;n Pie Diab&eacute;tico</strong></li>\n	<li><strong>Utilizaci&oacute;n de Material Descartable&nbsp;</strong></li>\n</ul>\n\n<p><em><strong>CUIDE SUS PIES !!!</strong></em></p>\n\n<p><em>Son elementos esenciales en el movimiento del cuerpo.</em></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(81, 'Dra. María Teresa Garay', 'Solicitar Turno', '49324082', '48265328', '', '', '', '', 'mariateresabarbaragaray@yahoo.com.ar', '', '', '', '', '', 0, 1, '', '', '1', '2014-02-12', NULL, 'psiquiatriasexologiaypsicologia.jpg', '', 'depresión,depresion,angustia,pánico,panico,fobias,obseciones,insomnio,ansiedad,inseguridad,celos,menopausia,bloqueos,anorexia,bulimia,adicciones,sexo,sexualidad,impotencia,eyaculación precoz,eyaculacion precoz,eyaculación,eyaculacion', '<p>M&eacute;dica especialista en:</p>\n\n<p>PSIQUIATR&Iacute;A - SEXOLOG&Iacute;A - PSICOANALISTA</p>\n\n<p>Jefa del Departamento Psicopatolog&iacute;a Cestoni</p>\n\n<p>Ex-Docente y Ex-Concurrente del Hospital Borda</p>\n\n<ul>\n	<li><strong>Depresi&oacute;n, Angustias, P&aacute;nico, Fobias, Obsesiones, Insomnio, Ansiedad, Inseguridad</strong></li>\n	<li><strong>Celos, Menopausia, Bloqueos, Anorexia, Bulimia, Adicciones.</strong></li>\n	<li><strong>Conflictos entre Padres e Hijos, Pareja</strong></li>\n	<li><strong>Sexualidad, Falta de deseos, Anorgasmia, Eyaculaci&oacute;n Precoz, Impotencia</strong></li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p><strong>​Tratamiento de Avanzada,&nbsp;Breve y Eficaz</strong></p>\n\n<p>UNA RESPUESTA DIFERENTE, PARA UNA VIDA MEJOR</p>\n\n<p><em>ARANCEL ACCESIBLE</em></p>\n\n<p>Martes consultas de media hora&nbsp;<strong>sin cargo</strong>&nbsp;de 11 a 17 hs. <strong>Reservar turno con anticipaci&oacute;n</strong></p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, 'DraMTGaray.png', 'psiquiatra psicologa boedo'),
(82, 'Lic. Analía Martino', 'Solicitar Turno', '49261172', '', '1557101175', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '0000-00-00', NULL, 'martinopsicologa.jpg', '', 'padres,crianza,psicóloga,psicologa,Adultos,adolescentes,niños', '<p>PSIC&Oacute;LOGA</p>\n\n<ul>\n	<li><strong>Orientaci&oacute;n a Padres</strong></li>\n	<li><strong>Talleres de Crianza</strong></li>\n	<li><strong>Atenci&oacute;n Psicol&oacute;gica Adultos, Adolescentes y Ni&ntilde;os</strong></li>\n</ul>\n\n<p><strong>​</strong></p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 2, 48, '', ''),
(84, 'Lic.  María del Rosario González', 'Solicitar Turno', '49239455', '', '1538576998', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '0000-00-00', NULL, 'rosariopsicologa.jpg', '', 'ANGUSTIA,DEPRESIÓN,DEPRESION,STRESS,STRES,ALIMENTACIÓN,ALIMENTACION,ANOREXIA,BULIMIA,ADICCIONES,PSICODIAGNÓSTICOS,PSICODIAGNÓSTOCO,PSICODIAGNOSTICOS,PSICODIAGNOSTICO', '<p>PSIC&Oacute;LOGA (U.B.A.) M.N. 45.463</p>\n\n<p>Coordinadora del servicio 65 del Hospital Jos&eacute; T. Borda</p>\n\n<ul>\n	<li><strong>Angustia</strong></li>\n	<li><strong>Depresi&oacute;n</strong></li>\n	<li><strong>Stress.</strong></li>\n	<li><strong>Trastornos de Alimentaci&oacute;n</strong></li>\n	<li><strong>Adicciones</strong></li>\n	<li><strong>Problemas de Parejas</strong></li>\n	<li><strong>Psicodiagn&oacute;sticos</strong></li>\n</ul>\n\n<p><em>NI&Ntilde;OS, ADOLESCENTES Y ADULTOS</em></p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, 'Licboedo.png', ''),
(85, 'Lic. Cecilia Ostuni', 'Solicitar Turno', '49261263', '', '1567430881', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '0000-00-00', NULL, 'ceciliaostunipsicologa.jpg', '', 'Psicóloga,¨Psicologa,Niños,Adolescentes,Adultos,ioma', '<p>PSIC&Oacute;LOGA&nbsp;&nbsp;M.N. 3.404</p>\n\n<ul>\n	<li><strong>Ni&ntilde;os</strong></li>\n	<li><strong>Adolescentes</strong></li>\n	<li><strong>Adultos</strong></li>\n</ul>\n\n<p><strong>Atenci&oacute;n <strong>Obra Social IOMA</strong></strong></p>\n\n<p>Consultorio en Caballito</p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(86, ' Consultor Mariano Degliangioli', 'Solicitar Turno', '', '', '1522116271', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '0000-00-00', NULL, 'consultorpsicologico.jpg', '', 'consultor,psicólogo,psicologo,orientación,orientacion,conflictos', '<p>CONSULTOR PSICOL&Oacute;GICO - RSE 212/98</p>\n\n<p><strong>Orientaci&oacute;n hacia la soluci&oacute;n de conflictos normales de la vida cotidiana</strong></p>\n\n<p>&nbsp;</p>\n\n<p><strong>Consultorio propio en Boedo</strong></p>\n\n<p><em><strong>ARANCEL PROMOCIONAL</strong></em></p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(87, 'Lic. Gabriela López', 'Solicitar Turno', '39732166', '', '1555978142', '', '', '', 'gflopez@argentina.com', '', '', '', '', '', 0, 0, '', '', '1', '0000-00-00', NULL, 'gabrielalopezpsicologa.jpg', '', 'Psicóloga,psicologa,niños,adolescentes,adultos,orientación padres,orientacion padres,orientación,orientacion,vocaional,evaluaciones,evaluación,evaluacion', '<p>ATENCI&Oacute;N PSICOL&Oacute;GICA</p>\n\n<ul>\n	<li><strong>Ni&ntilde;os</strong></li>\n	<li><strong>Adolescentes</strong></li>\n	<li><strong>Adultos</strong></li>\n	<li><strong>Orientaci&oacute;n a Padres</strong></li>\n	<li><strong>Orientaci&oacute;n Vocacional</strong></li>\n	<li><strong>Evaluaciones Psicot&eacute;cnicas</strong></li>\n</ul>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 159, '', '', '', '', 2, 50, '', ''),
(88, 'Lic. Valeria Yanin Medina', 'Solicitar Turno', '', '', '1553489107', '', '', '', 'valeriapsi4@hotmail.com.ar', '', '', '', '', '', 0, 0, '', '', '1', '2014-02-14', NULL, 'atpsicoyanina.jpg', '', 'Psicóloga,psicologa,niños,adolescentes,adultos', '<p>ATENCI&Oacute;N PSICOANAL&Iacute;TICA</p>\n\n<p>U.B.A. - M.N. 44.990</p>\n\n<blockquote>\n<p>Crear una salida a trav&eacute;s de la palabra es posible... quiz&aacute;s ya estabas all&iacute;</p>\n</blockquote>\n\n<ul>\n	<li>Ni&ntilde;os</li>\n	<li>Adolescentes</li>\n	<li>Adultos</li>\n</ul>\n', 0, 'Zona Almagro', '', '', '', 2, 13, '', ''),
(89, 'Lic. María Angélica Binetti', 'Solicitar Turno', '43086108', '', '1564313974', '', '', '43086108', '', '', '', '', '', '', 0, 0, '', '', '1', '2015-11-06', NULL, 'mariaangelicapsicologa.jpg', '', 'Psicóloga,psicologa,psicoanalista,adolescentes,pareja,familia,adultos,pareja y familia', '<p>PSIC&Oacute;LOGA - PSICOANALISTA</p>\n\n<p>Cl&iacute;nica de Adolescentes y&nbsp;Adultos</p>\n\n<p>Analista de Centro Dos</p>\n\n<p><strong><em>Consultorio Privado&nbsp;en Balvanera</em></strong></p>\n\n<hr />\n<p>Tratamientos de Adicciones</p>\n\n<ul>\n	<li><strong>Fobias</strong></li>\n	<li><strong>Depresi&oacute;n</strong></li>\n	<li><strong>Trastornos de Alimentaci&oacute;n</strong></li>\n	<li><strong>Angustia</strong></li>\n	<li><strong>Ataques de P&aacute;nico</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 53, '', ''),
(92, 'Dra. Karina S. Dusefante', 'Consultas de Lunes a Viernes de 14 a 17 hs', '43849802', '', '1550106920', '', '', '', 'karinadusefante@yahoo.com.ar', '', 'ar.linkedin.com/pub/karina-silvana-dusefante/34/573/921', '', '', '', 0, 0, '', '', '1', '2014-03-12', NULL, 'abogadakarinadusefante.jpg', '', 'Abogado,Abogada,Sucesiones,Divorcios,Alimentos,Obras Sociales,Prepagas,Divorcio,familia,concursos y quiebras,estudio,jurídico,juridico,reclamos,medicina,prepaga,legales,tribunales,boedo', '<ul>\n	<li><strong>Sucesiones</strong></li>\n	<li><strong>Divorcios</strong></li>\n	<li><strong>Alimentos</strong></li>\n	<li><strong>Familia</strong></li>\n	<li><strong>Reclamos Obras Siciales</strong></li>\n	<li><strong>Reclamos Prepagas</strong></li>\n</ul>\n\n<p><strong>​</strong></p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(93, 'Estudio Jurídico Previsional Farran', 'Solicitar Entrevista', '49220958', '', '1550133202', '', '', '', 'paulafarran@yahoo.com.ar', '', '', '', '', '', 0, 0, '', '', '1', '2014-03-12', NULL, 'estudiojuridicopaulafarran.jpg', '', 'anses,jubilación,pensión,pension,invalidez,reajuste,sicam,reajuste haberes,retiro,moratoria,moratoria previsional,edad,boedo', '<p>DRA. &nbsp;PAULA &nbsp;FARRAN</p>\n\n<p>Registrada en el Anses</p>\n\n<hr />\n<p>&nbsp;</p>\n\n<p><strong>NUEVA &nbsp;MORATORIA &nbsp;PREVISIONAL &nbsp;2014</strong></p>\n\n<p>UNICO REQUISITO EDAD JUBILATORIA&nbsp;</p>\n\n<ul>\n	<li>60 A&ntilde;os las Mujeres&nbsp;</li>\n	<li>65 A&ntilde;os los Hombres</li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n\n<ul>\n	<li>Jubilaci&oacute;n con o sin aportes</li>\n	<li>Pensi&oacute;n por fallecimiento</li>\n	<li>Retiro por invalidez</li>\n	<li>Reconocimiento de Servicios</li>\n	<li>Reajuste de Haberes</li>\n	<li>SICAM</li>\n</ul>\n\n<p>Los honorarios los abona una vez obtenido el beneficio.</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(95, 'Estudio Contable Pérez & Norry', 'Lunes a viernes de 10 a 17 hs', '49561096 Lineas Rotativas', '', '1556380394', '1556380391', '', '49561096', 'contadorespereznorry@gmail.com', '', '', '', '', '', 0, 1, '', '', '1', '2014-03-12', NULL, 'estudiocontablepereznorry.JPG', '', 'contador,contadores,ganancias,bienes,sociedades,iva,ingresos brutos,monotributo', '<p>&nbsp;</p>\n\n<p>Atenci&oacute;n Personalizada y Especializada</p>\n\n<hr />\n<p>NUESTROS SERVICIOS:​</p>\n\n<ul>\n	<li><strong>Asesoramiento integral a Empresas y Unipersonales</strong></li>\n	<li><strong>Liquidaciones de Sueldos y Cargas Sociales &nbsp;(Altas y Bajas de Personal)</strong></li>\n	<li><strong>IVA</strong></li>\n	<li><strong>Ganancia Sociedades y Personas F&iacute;sicas</strong></li>\n	<li><strong>Aut&oacute;nomos y Bienes Personales</strong></li>\n	<li><strong>Moratorias Impositivas &nbsp;(Planes Mis Facilidades)</strong></li>\n	<li><strong>Ingresos Brutos &nbsp;(R&eacute;gimen General y Simplificado)</strong></li>\n	<li><strong>Convenio Multilateral</strong></li>\n	<li><strong>​Personal Dom&eacute;stico &nbsp;(Altas, Bajas, Liquidaciones y Cargas Impositivas)</strong></li>\n	<li><strong>Retenciones SIRCREB</strong></li>\n	<li><strong>Notificaciones / Intimaciones&nbsp;AFIP</strong></li>\n</ul>\n\n<p><strong>​Estamos a su entera disposici&oacute;n para cualquier consulta. Ases&oacute;rese&nbsp;sin cargo</strong></p>\n\n<hr />\n<p>NOVEDADES DEL MES:</p>\n\n<p><strong>Plan 36 cuotas AFIP Abril 2015.</strong></p>\n\n<p>En estos d&iacute;as, la AFIP anunciar&aacute; un plan de Regularizaci&oacute;n de Obligaciones Impositivas de <strong>36 cuotas con un inter&eacute;s del 1.9 mensual</strong>. Se puede regularizar:</p>\n\n<ul>\n	<li><strong>Obligaciones impositivas y de los recursos de la Seguridad Social.</strong></li>\n	<li><strong>Impuesto a las&nbsp;Ganancias&nbsp;que recae sobre las erogaciones no documentadas.</strong></li>\n	<li><strong>Las&nbsp;deudas&nbsp;en discusi&oacute;n administrativa, contencioso-administrativa o judicial, as&iacute; como en ejecuci&oacute;n judicial,&nbsp;</strong></li>\n	<li><strong>Monotributo.</strong></li>\n	<li><strong>Obligaciones de cualquier naturaleza que hayan sido incluidas en planes de facilidades de pago presentados a trav&eacute;s del Sistema&nbsp;&quot;Mis Facilidades&quot;&nbsp;que se encuentren caducos con anterioridad al d&iacute;a 31 de marzo de 2015</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 3294, 'Piso 5° Oficina B - BOEDO - C.A.Bs.As.', '', '', '', 1, 31, 'pereznorrymiriobaboedo.png', 'PEREZ NORRY'),
(96, 'Dra. Verónica Miranda', 'Comunicarse a partir de las 14 hs', '49329169', '', '1555265425', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-03-12', NULL, 'veronicamiranda.jpg', '', 'monotributo,afip,agip,arba,iva,ingresos brutos,IIBB,ganancias,sueldos,previsional,jubilaciones', '<p>SERVICIOS CONTABLES E IMPOSITIVOS</p>\n\n<ul>\n	<li><strong>Monotributo: Alta, baja y recategorizaci&oacute;n</strong></li>\n	<li><strong>AFIP - AGIP - ARBA, inscripciones</strong></li>\n	<li><strong>IVA - IIBB, liquidaciones de impuestos mensuales y anuales</strong></li>\n	<li><strong>Convenio Multilateral, Ganancia, etc.</strong></li>\n	<li><strong>Sueldo y Jornales</strong></li>\n	<li><strong>Liquidaci&oacute;n por Convenios</strong></li>\n	<li><strong>Asesoramiento y Gesti&oacute;n Previsional</strong></li>\n</ul>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(97, 'Marcela Montegrande', 'Lunes a viernes de 9 a 18 hs', '49560267', '', '', '', '', '49560267', 'contacto@marcelamontegrande.com.ar', 'www.marcelamontegrande.com.ar', '', '', '', '', 0, 0, '', '', '1', '2014-03-13', NULL, 'marcelamontegrande.jpg', '', 'inmuebles,inmueble,hipoteca,hipotecas,remate,remates,embargo,sucesión,sucesion,alquileres,departamento,departamentos,locales,local,casas,Loft,PH,propiedad,propiedades', '<p>Sucursal &nbsp;<strong>J. B. Alberdi&nbsp;2304 &nbsp;- &nbsp;</strong>4613 1707 - CABsAs.</p>\n\n<p>Sucursal &nbsp;<strong>Av. San Juan 3542 &nbsp;- &nbsp;</strong>4932 1207 - CABsAs&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><em><strong>TASACIONES EN EL D&Iacute;A</strong></em></p>\n\n<p>Solucionamos su problema de:</p>\n\n<ul>\n	<li><strong>Remate</strong></li>\n	<li><strong>Embargo</strong></li>\n	<li><strong>Sucesi&oacute;n</strong></li>\n	<li><strong>Cancelaci&oacute;n Hipotecaria</strong></li>\n	<li><strong>Inhibici&oacute;n</strong></li>\n	<li><strong>Etc</strong></li>\n</ul>\n\n<p>Cr&eacute;ditos Hipotecarios</p>\n\n<ul>\n	<li><strong>En pesos sin requisitos</strong></li>\n</ul>\n\n<p>Asesoramiento Legal</p>\n\n<ul>\n	<li><strong>Consulta sin cargo</strong></li>\n</ul>\n\n<p>Venta</p>\n\n<ul>\n	<li><strong>Publicamos hasta vender</strong></li>\n</ul>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 3915, '', 'https://goo.gl/maps/VO0JS', '', '', 1, 7, '', ''),
(98, 'Alfa Inmobiliaria', '', '49238773', '', '1568250843', '1568249755', '', '', 'alfaboedo@gmail.com', '', '', '', '', '', 0, 0, '', '', '1', '2014-03-13', NULL, 'alfainmobiliaria.jpg', '', 'inmueble,inmuebles,departamento,departamentos,alquiler,alquileres,tasaciones,tasación,tasacion,divorcio,divorcios,desalojo,desalojos,locales,local,ph,sucesiones', '<p>CAROLINA BALDERRAMA</p>\n\n<p>Martillera P&uacute;blica - Universidad de Mor&oacute;n</p>\n\n<ul>\n	<li><strong>Venta</strong></li>\n	<li><strong>Alquileres</strong></li>\n	<li><strong>Administraci&oacute;n</strong></li>\n	<li><strong>Tasaciones</strong></li>\n</ul>\n\n<p>Asesoramiento Legal</p>\n\n<ul>\n	<li><strong>Sucesiones</strong></li>\n	<li><strong>Divorcios</strong></li>\n	<li><strong>Desalojos</strong></li>\n</ul>\n\n<p><em>URGENTE</em>:<strong> Necesitamos departamento de 1, 2 y 3 ambientes para alquiler.</strong></p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 3856, '', '', '', '', 1, 36, '', ''),
(113, 'Instalred', '', '', '', '1556619377', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-03-24', NULL, 'instalred2.jpg', '', 'aire acondicionado,aire,split,frío,frio,calor,gas,boedo', '<p>DANIEL ARAVENA Instalador Matriculado</p>\n\n<p>SOLICITE ASESORAMIENTO T&Eacute;CNICO Y PRESUPUESTO A DOMICILIO SIN CARGO</p>\n\n<ul>\n	<li><strong>Equipos Split&nbsp;Fr&iacute;o y Calor</strong></li>\n	<li><strong>Centrales de Fr&iacute;o</strong></li>\n	<li><strong>Service&nbsp;Especializado</strong></li>\n	<li><strong>Instalaci&oacute;n y Reparaci&oacute;n</strong></li>\n	<li><strong>Cargas de Gas</strong></li>\n	<li><strong>Trabajo Profesional Garantizado</strong></li>\n</ul>\n\n<p><strong>​</strong></p>\n\n<hr />\n<p>&nbsp;</p>\n', 1221, 'Planta Alta', '', '', '', 1, 16, '', ''),
(100, 'Lic. María Luján D''Addona', 'Solicitar entrevista dejando mensaje', '49260965', '', '1561759822', '', '', '49260965', 'mldaddona@hotmail.com', '', '', '', '', '', 0, 1, '', '', '1', '2014-03-15', NULL, 'psicologa-uba-mi-rioba-boedo.jpg', '', 'anorexia,bulimia,obesidad,depresión depresion,ansiedad,angustia,drogas,pánico,panico,fobias,miedo,miedos,insomnio,agresividad,psicóloga,boedo', '<p><strong>Inscripta en el Registro Nacional&nbsp;de prestadores del Mimisterio de Salud de la Naci&oacute;n</strong></p>\n\n<p><strong>Superintendencia de Servicios de Salud N&deg; 272.995 -&nbsp;</strong><strong>M.N. 55940</strong></p>\n\n<hr />\n<p><strong>Consultas individuales, Pareja y&nbsp;Familia.</strong></p>\n\n<p><em>HONORARIOS ACCESIBLES</em></p>\n\n<p><strong>&quot;Entrevista de admisi&oacute;n sin costo&quot;</strong></p>\n\n<p>Entrega de factura para reintegro en Obras Sociales</p>\n\n<hr />\n<p>S&iacute;ntomas de la &eacute;poca:&nbsp;</p>\n\n<ul>\n	<li><strong>Trastornos Alimenticios</strong></li>\n	<li><strong>Depresi&oacute;n</strong></li>\n	<li><strong>Ansiedad</strong></li>\n	<li><strong>Agresividad</strong></li>\n	<li><strong>Angustia</strong></li>\n	<li><strong>Adicciones</strong></li>\n	<li><strong>Ataques de p&aacute;nico</strong></li>\n	<li><strong>Fobias</strong></li>\n	<li><strong>Falta de concentraci&oacute;n</strong></li>\n	<li><strong>Miedos</strong></li>\n	<li><strong>Imsomnio</strong></li>\n	<li><strong>Trastornos Sexuales</strong></li>\n	<li><strong>Problemas de rendimiento</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 373, 'Consultorio en Barrio Caballito', '', '', '', 1, 56, 'Lic-Addona-psicologa-mi-rioba-boedo.png', 'lic psicologa boedo mi rioba'),
(103, 'Profesora Betania', 'Solicitar horario', '', '', '1556691810', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-03-15', NULL, 'clasesdeyogabetania.jpg', '', 'Yoga boedo,yoga,equilibrio,flexibilidad,fuerza,elongación,elongacion,respiración,respiracion', '<p>Regula&nbsp;t&uacute; energ&iacute;a y aleja&nbsp;somatizaciones.</p>\n\n<p>Aclara&nbsp;tu mente y las emociones</p>\n\n<p>Te conecta con t&uacute; mundo espiritual</p>\n\n<ul>\n	<li><strong>Mayor coordinaci&oacute;n y equilibrio</strong></li>\n	<li><strong>Flexibilidad</strong></li>\n	<li><strong>Fuerza</strong></li>\n	<li><strong>Elongaci&oacute;n</strong></li>\n	<li><strong>Respiraci&oacute;n</strong></li>\n	<li><strong>Relax</strong></li>\n</ul>\n\n<p><strong><em>​Clases Individuales y Grupales</em></strong></p>\n\n<p>&nbsp;</p>\n\n<p>Disciplina Milenaria originaria de India que nos permite a trav&eacute;s de sus pr&aacute;cticas psicof&iacute;sicas reconocer y unificar CUERPO, MENTE y ESP&Iacute;RITU&nbsp;alejando todo tipo de tensi&oacute;n.</p>\n\n<p>Es medicina Activa y Preventiva. Mejora notablemente nuestra Energ&iacute;a Vital.</p>\n\n<blockquote>\n<p>... Yoga es uni&oacute;n con uno mismo y con todos los seres sintientes...&nbsp;</p>\n</blockquote>\n\n<p>Nos conecta con lo esencial.</p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(104, 'Elena Salud & Spa', 'Solicitar Turno', '', '', '1556017726', '', '', '', 'elenagabrielalisak@hotmail.com', '', 'www.facebook.com/ElenaSaludSpa?fref=ts', '', '', '', 0, 1, '', '', '1', '2014-03-17', NULL, 'elenasalud.jpg', 'elena salud estetica boedo', 'Masajes,masaje,drenaje linfático,drenaje linfatico,exfoliación,exfoliacion,facial,estética,promo,rejuvenecimiento,spa de pies,spa de manos,piedras,spa,reducción,laca,boedo,laboratorio laca,tratamientos,mascaras,máscaras,relax,vinoterapia,piel seca,linfático,pulido corporal', '<p><em>20 A&Ntilde;OS DE DEDICACI&Oacute;N&nbsp;TRATANDO LA EST&Eacute;TICA y SALUD PERSONALIZADAMENTE EN BOEDO</em></p>\n\n<p><strong>Utilizaci&oacute;n &nbsp;en todos los tratamientos de productos &nbsp;del LABORATORIO LACA, como as&iacute; tambi&eacute;n su VENTA</strong></p>\n\n<hr />\n<p>Llego&nbsp;la &eacute;poca para hacerte un PEELING</p>\n\n<ul>\n	<li><strong>Consiste en producir la ca&iacute;da de las capas superficiales de la piel, con el fin de acelerar y facilitar el recambio celular y mantener la vitalidad del tejido</strong></li>\n</ul>\n\n<hr />\n<p><em><!--[if !supportLineBreakNewLine]--></em>Para el cuidado de tu Imagen lleg&oacute; el&nbsp;Horno de BIERS, reductor y relajante.<br />\n<em><!--[endif]--></em></p>\n\n<ul>\n	<li><strong>Es un Tratamientos de Termoterapia.</strong></li>\n	<li><strong>Acelera la destrucci&oacute;n del tejido adiposo.</strong></li>\n	<li><strong>Mejora la circulaci&oacute;n.</strong></li>\n	<li><strong>Aumenta el aporte de ox&iacute;geno y nutrientes</strong></li>\n</ul>\n\n<hr />\n<p><span style="line-height:1.6em">Masajes Reductores</span></p>\n\n<ul>\n	<li><strong>Turbo-Liposuctor</strong></li>\n	<li><strong>Contractores</strong></li>\n	<li><strong>Masajes en todas las zonas con adiposidad</strong></li>\n	<li><strong>Vendas Fr&iacute;as</strong></li>\n	<li><strong>M&aacute;scaras corporales</strong></li>\n</ul>\n\n<hr />\n<p>Drenaje Linf&aacute;tico</p>\n\n<ul>\n	<li><strong>En todo el Cuerpo</strong></li>\n	<li><strong>Masaje de Relax en la Espalda</strong>&nbsp;</li>\n</ul>\n\n<hr />\n<p>Reducci&oacute;n y Reafirmaci&oacute;n de Gluteos y Abdomen</p>\n\n<ul>\n	<li><strong>10 Sesiones de Radiofrecuencia + Contractores + Yesoterapia</strong></li>\n	<li><strong>Masajes Localizados</strong></li>\n	<li><strong>Duraci&oacute;n por sesi&oacute;n, aproximadamente&nbsp;45&#39;&nbsp;por zona</strong></li>\n	<li><strong>Resultado Comprobado </strong></li>\n</ul>\n\n<hr />\n<p>Reducci&oacute;n sin Aparatos</p>\n\n<ul>\n	<li><strong>Drenaje Linf&aacute;tico </strong></li>\n	<li><strong>Masajes reductores en las zonas con adiposidad</strong></li>\n	<li><strong>Vendas</strong></li>\n	<li><strong>M&aacute;scaras de</strong>&nbsp;<strong>Algas, Chocolate, Fango</strong></li>\n</ul>\n\n<hr />\n<p>Vinoterapia -&nbsp;SPA DE UVA</p>\n\n<ul>\n	<li><strong>Pulido corporal, con Crema Exfoliante y Vino tibio, aplicaci&oacute;n de ampolla </strong></li>\n	<li><strong>Masaje con Crema y M&aacute;scara Corporal a base de Uva</strong></li>\n	<li><strong>Tratamiento de Rostro</strong></li>\n	<li><strong>Masaje Relax, Hidratando y Humectando la piel con un aroma muy especial</strong></li>\n	<li><strong>Duraci&oacute;n aproximada 2 &frac12; hs.</strong></li>\n</ul>\n\n<hr />\n<p>CONTRACTURADA?</p>\n\n<p>La soluci&oacute;n es un buen <strong>Masaje con Piedras Calientes</strong></p>\n\n<p>Un merecido Masaje Placentero</p>\n\n<hr />\n<p><strong>PROMOCIONES VIGENTES</strong></p>\n\n<p>COSMETOLOG&Iacute;A</p>\n\n<p>Higiene Facial</p>\n\n<ul>\n	<li><strong>Para pieles Sensibles, Normales y Grasas</strong></li>\n</ul>\n\n<p>Pulido corporal para piel seca</p>\n\n<ul>\n	<li><strong>Excelente para retirar las c&eacute;lulas muertas, dejando la piel suave e hidratada</strong></li>\n	<li><strong>Masaje circulatorio</strong></li>\n	<li><strong>Exfoliaci&oacute;n</strong></li>\n	<li><strong>M&aacute;scara descongestiva</strong></li>\n</ul>\n\n<p>​Pesta&ntilde;as</p>\n\n<ul>\n	<li><strong>Permanente y Tintura</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, 'elenasalud‏.png', 'elena salud boedo '),
(105, 'Vivi Pleno Hoy - Spa', 'Turnos programados', '49261610', '49223542', '1564833344', '', '', '', 'viviplenohoy@gmail.com', '', 'www.facebook.com/EsteticaViviplenohoy', '', '', '', 0, 1, '1:3:4:5', '', '1', '2014-03-18', NULL, 'viviplenohoycaseros.jpg', '', '', '<p>&quot;Somos un centro de est&eacute;tica que contamos con la&nbsp;m&aacute;s alta&nbsp;tecnolog&iacute;a&nbsp; para el cuidado y la salud del cuerpo.</p>\n\n<p><em>Consultas sin cargo&quot;</em></p>\n\n<p>Responsable: <strong>Viviana Sayour</strong></p>\n\n<p>Esteticista Modeladora Correctiva Matriculada</p>\n\n<p><strong>Promociones y Paquetes con Descuentos</strong></p>\n\n<hr />\n<p>Tratamientos Corporales</p>\n\n<ul>\n	<li><strong>Personalizados</strong></li>\n	<li><strong>Diagn&oacute;stico previo</strong></li>\n	<li><strong>Masajes</strong></li>\n	<li><strong>Multicavitaci&oacute;n</strong></li>\n	<li><strong>Presoterapia</strong></li>\n	<li><strong>Electroestimulaci&oacute;n</strong></li>\n	<li><strong>Ultra Cavitaci&oacute;n</strong></li>\n	<li><strong>Radiofrecuencia Tripolar</strong></li>\n	<li><strong>Drenaje linf&aacute;tico Manual</strong></li>\n	<li><strong>Termolipolisis</strong></li>\n	<li><strong>Mesoterapia Virtual</strong></li>\n	<li><strong>Plataforma Vibratoria</strong></li>\n</ul>\n\n<hr />\n<p>Circuito Modelador</p>\n\n<ul>\n	<li><strong>Intensivo y Correctivo</strong></li>\n	<li><strong>Tratamiento facial</strong></li>\n	<li><strong>Peeling</strong></li>\n	<li><strong>Manchas Faciles</strong></li>\n	<li><strong>Acne</strong></li>\n	<li><strong>Arrugas</strong></li>\n	<li><strong>Botox-&aacute;cido hialuronico-prp (Plasma rico en plaquetas)</strong></li>\n</ul>\n\n<hr />\n<p>Nutrici&oacute;n</p>\n\n<ul>\n	<li><strong>Nutricionista, M&eacute;dico Homeop&aacute;tico</strong></li>\n</ul>\n\n<hr />\n<p>Depilaci&oacute;n</p>\n\n<ul>\n	<li><strong>Sistema Espa&ntilde;ol</strong></li>\n	<li><strong>Ipl Definitiva</strong></li>\n</ul>\n\n<hr />\n<p>Pesta&ntilde;as</p>\n\n<ul>\n	<li><strong>Permanente</strong></li>\n	<li><strong>Color</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 3671, '2° piso', '', '', '', 1, 39, 'ViviPlenoHoySpa.png', 'vivi pleno hoy spa boedo'),
(106, 'Lola Estética', 'de 9 a 20 hs.', '49221255', '', '1567219369', '', '', '20655793', '', '', '', '', '', '', 0, 1, '1', '', '1', '2014-03-18', NULL, 'LolaEstetica.jpg', 'lola estetica boedo', '', '<p><strong>INSTITUTO INTEGRAL PARA LA SALUD Y EL&nbsp;BIENESTAR DE LA MUJER</strong></p>\n\n<p>Responsable: <strong>Marcela Lilina Perini&nbsp;</strong></p>\n\n<p>Cosmiatra Matriculada</p>\n\n<p><em>&ldquo;10 a&ntilde;os en la zona de Boedo con el compromiso de profesionales a cargo&rdquo;</em></p>\n\n<hr />\n<p>Tratamientos Corporales y Faciales</p>\n\n<ul>\n	<li><strong>Celulitis</strong></li>\n	<li><strong>Flacidez</strong></li>\n	<li><strong>Estr&iacute;as</strong></li>\n	<li><strong>Acn&eacute;</strong></li>\n	<li><strong>Ros&aacute;cea</strong></li>\n	<li><strong>Fotoenvejecimiento</strong></li>\n</ul>\n\n<hr />\n<p>Est&eacute;tica</p>\n\n<ul>\n	<li><strong>Depilaci&oacute;n</strong></li>\n	<li><strong>Manicur&iacute;a</strong></li>\n	<li><strong>Belleza de Pie</strong></li>\n	<li><strong>Masajes</strong></li>\n</ul>\n\n<hr />\n<p>Circuito de Spa &ndash; Ideal para un buen regalo!!!</p>\n\n<ul>\n	<li><strong>Cama de Ozono y Vapor</strong></li>\n	<li><strong>Masaje</strong></li>\n	<li><strong>M&aacute;scara Facial</strong></li>\n</ul>\n\n<hr />\n<p>Aparatolog&iacute;a</p>\n\n<ul>\n	<li><strong>Radiofrecuencia</strong></li>\n	<li><strong>Presoterapia</strong></li>\n	<li><strong>Ultracavitaci&oacute;n</strong></li>\n	<li><strong>Punta de Diamante</strong></li>\n</ul>\n\n<hr />\n<p>Pilates</p>\n\n<ul>\n	<li><strong>Acondicion&aacute;&nbsp;tu cuerpo</strong></li>\n	<li><strong>Mejor&aacute;&nbsp;posturas</strong></li>\n	<li><strong>Tonific&aacute;&nbsp;los m&uacute;sculos</strong></li>\n	<li><strong>Super&aacute;&nbsp;el estr&eacute;s</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 4348, '', '', '', '', 1, 51, 'Lola-Estetica-Boedo-Mi-Rioba.png', ''),
(107, 'SC Verte Bien', 'Solicitar Turno', '20729339', '', '1556995834', '1557488216', '', '', 'scvertebien@hotmail.com', '', 'es-es.facebook.com/pages/SC-Verte-Bien/398422973550285', '', '', '', 0, 0, '', '', '1', '2014-03-18', NULL, 'scvertebien.jpg', '', 'corporales,celulitis,estrias,estrías,adiposidad,masajes,linfático,linfatico,acne,acné,exfoliación,exfoliacion,peeling,punta diamante,ultrasonido', '<p>CENTRO DE EST&Eacute;TICA PORPORAL Y FACIAL</p>\n\n<p>UN LUGAR CON CALIEZ EN LA ATENCI&Oacute;N Y EXCELENCIA EN EL TRATAMIENTO</p>\n\n<p>Atendido por sus due&ntilde;as, <span style="line-height:1.6em">CLAUDIA Y SUSANA, <strong>Cosmiatras Matriculadas</strong></span></p>\n\n<p>Tratamiento Corporales</p>\n\n<ul>\n	<li><strong>Adiposidad, celulitis, reafirmantes, estr&iacute;as, piernas cansadas, edemas, etc</strong></li>\n	<li><strong>Masajes decontracturantes, drenaje linf&aacute;tico,&nbsp;</strong></li>\n	<li><strong>Tratamiento de acn&eacute; y exfoliaci&oacute;n de espalda</strong></li>\n	<li><strong>Depilaci&oacute;n sistema espa&ntilde;ol y descartable</strong></li>\n</ul>\n\n<p>Tratamientos Faciales</p>\n\n<ul>\n	<li><strong>Limpieza, exfoliaci&oacute;n, peeling, acn&eacute;, hidrataci&oacute;n, rejuvenecimiento</strong></li>\n	<li><strong>Tratamientos capilares, etc</strong></li>\n</ul>\n\n<p>Aparatolog&iacute;a</p>\n\n<ul>\n	<li><strong>Contractores musculares, Presotrapia, Cavitador, Ultrasonido, Radiofrecuencia, Punta Diamante, Alta Frecuencia</strong></li>\n</ul>\n\n<p>&nbsp;</p>\n\n<blockquote>\n<p><strong>Asesoramiento y venta de productos de los siguientes laboratorios:</strong></p>\n\n<p><strong>Lidherma - Exel - Cartaghe - Idraet - Viviana Bustos - Prodermic - Laca y otros</strong></p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, 'a pasos de Av, Boedo', '', '', '', 1, 51, '', '');
INSERT INTO `anunciantes` (`id`, `nombre`, `horario`, `telefono1`, `telefono2`, `celular1`, `celular2`, `nextel`, `contestador`, `email`, `web`, `facebook`, `twitter`, `youtube`, `link_contacto`, `delivery`, `promociones`, `tarjetas`, `notas`, `estado`, `fecha_alta`, `fecha_baja`, `link_anuncio`, `txt_alt`, `tags`, `descripcion_anunciante`, `altura`, `dir_extra`, `dir_google`, `dir_google_2`, `dir_google_3`, `categoria_idcategoria`, `calles_idcalles`, `link_cuponera`, `txt_alt_cupo`) VALUES
(108, 'Te Quiero Asi', 'Solicitar Turno', '', '', '1569762466', '', '', '', 'gracielalopez10 @hotmail.com.ar', '', 'www.facebook.com/pages/Te-Quiero-Asi/285936011540213', '', '', '', 0, 1, '', '', '1', '2014-03-19', NULL, 'tequieroasi.jpg', '', 'masaje,masajes,boedo,ciático,ciatico,lumbar,desestresante,estres,estress,circulatorio,reflexología,reflexologia,piedras calientes,manucuría,manicura,manicuria,manos,pedicuría,pedicura,podóloga,podologa,pies,cosmetología,cosmetologia,punta diamente,cutis,peeling,acné,acne,rosácea,rosacea,manchas,cicatrices', '<p>NO SOY LO QUE SOY, SOY LO QUE HAGO CON MIS MANOS</p>\n\n<p>Responsable: <strong>Graciela L&oacute;pez</strong></p>\n\n<p>Cosmet&oacute;loga, Masajista, Maquilladora, Manicura, Reflex&oacute;loga</p>\n\n<p><em><strong>Se atiende en Gabinete o Domicilio</strong></em></p>\n\n<hr />\n<p>Consultora Swiss Just&nbsp;</p>\n\n<ul>\n	<li><strong>Venta de Productos destinados al cuidado, prevenci&oacute;n y tratamiento de la salud, en lo f&iacute;sico y emocional</strong></li>\n	<li><strong>No se comercializan en negocios, solamente por intermedio de un&nbsp;profesional del &aacute;rea</strong></li>\n	<li><strong>Elaborados a base de aceites esenciales 100% puros.</strong></li>\n	<li><strong>Ricas concentraciones de ingredientes naturales y de calidad Farmac&eacute;utica</strong></li>\n	<li><strong>​Asesoramiento personalizado.&nbsp;El producto adecuado a su necesidad</strong></li>\n	<li><strong>Origen: Suiza</strong></li>\n</ul>\n\n<hr />\n<p>Masajes</p>\n\n<ul>\n	<li><strong>Descontracturantes</strong></li>\n	<li><strong>Ci&aacute;tico y Lumbar</strong></li>\n	<li><strong>Desestresante</strong></li>\n	<li><strong>Circulatorio</strong></li>\n	<li><strong>Reflexolog&iacute;a</strong></li>\n	<li><strong>Masajes con Piedras Calientes</strong></li>\n	<li><strong>Shantala para Bebes (Junto a la mam&aacute; favoreciendo la conexi&oacute;n y v&iacute;nculo Madre e Hijo)</strong></li>\n</ul>\n\n<hr />\n<p>Est&eacute;tica</p>\n\n<ul>\n	<li><strong>Maquillaje Integral</strong></li>\n	<li><strong>Manicura</strong></li>\n	<li><strong>Belleza de Pies</strong></li>\n</ul>\n\n<hr />\n<p>Cosmetolog&iacute;a</p>\n\n<ul>\n	<li><strong>Microdermosbrasi&oacute;n con Punta de Diamante</strong></li>\n	<li><strong>Limpieza de cutis profunda</strong></li>\n	<li><strong>Peeling Qu&iacute;mico</strong></li>\n	<li><strong>Acn&eacute;, Ros&aacute;cea, Manchas, Cicatrices y Pieles Sensibles</strong></li>\n</ul>\n\n<hr />\n<p>Aromaterapia</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, 'tequieroasi.png', ''),
(109, 'Mi Spa', 'Solicitar Turno', '49437902', '', '1556386088', '', '', '', 'lopezsandra@hotmail.com.ar', '', 'es-la.facebook.com/institutonuevasconciencias.demetafisica', '', '', '', 0, 0, '', '', '1', '2014-03-19', NULL, 'MISPA.jpg', 'mi spa boedo', 'Masaje,masajes,Piedras caliente,reiki,reflexología,armonizaciones,armonización,armonozacion', '<p>....UN &nbsp;LUGAR PARA QUE TU CUERPO,&nbsp;MENTE Y ALMA SE INTEGREN Y ENCUENTRES LA ARMON&Iacute;A.</p>\n\n<p>UN LUGAR PARA QUE TE MIMES, TE ENCUENTRES CON VOS MISMA Y DISFRUTES DEL RELAX.</p>\n\n<p>TE DOY LA BIENVENIDA A <strong>MI SPA</strong>, PORQUE TAMBI&Eacute;N ES TUYO!!!</p>\n\n<p>&nbsp;</p>\n\n<p><em>SANDRA L&Oacute;PEZ</em></p>\n\n<p><em>Maestra en S&iacute;mbolos de Luz</em></p>\n\n<p><em>Terapeuta Mataf&iacute;sica - Reiki Master</em></p>\n\n<p><em>Cursos - Seminarios</em></p>\n\n<ul>\n	<li><strong>Masajes con Piedras Calientes</strong></li>\n	<li><strong>Sanaci&oacute;n y Reiki con cristales</strong></li>\n	<li><strong>Reflexolog&iacute;a</strong></li>\n	<li><strong>Armonizaciones</strong></li>\n</ul>\n\n<p><strong>​</strong></p>\n\n<hr />\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(110, 'Huella de Mar', 'Solicitar Turno', '', '', '1550597528', '1555863852', '', '', 'huellademar@hotmail.com', '', 'www.facebook.com/huellasde.mar', '', '', '', 0, 0, '', '', '1', '2014-03-19', NULL, 'HUELLADEMAR.jpg', '', 'reiki,usui,karuna,Egipcio,flores bach,masajes,descontracturante,estres,estress,masoterapia,shiatzu,quiropraxia', '<p>UN ESPACIO PARA VOS...</p>\n\n<p><strong>MARIEL AGUIRRE</strong></p>\n\n<p>Maestra de Reiki -&nbsp;Terapeuta Flores de Bach</p>\n\n<p>&nbsp;</p>\n\n<p>Riki</p>\n\n<ul>\n	<li><strong>Sesiones</strong></li>\n	<li><strong>Cursos</strong></li>\n	<li><strong>Usui -&nbsp;<strong>Karuna&nbsp;<strong>Egipcio</strong></strong></strong></li>\n</ul>\n\n<p>Flores de Bach</p>\n\n<ul>\n	<li><strong>Terapia</strong></li>\n	<li><strong>Orientaci&oacute;n psicoterap&eacute;utica</strong></li>\n</ul>\n\n<p><strong>​</strong></p>\n\n<hr />\n<p><strong>​</strong></p>\n\n<p><strong>JOS&Eacute; LUIS S&Aacute;NCHEZ</strong></p>\n\n<p>T&eacute;cnico Superior en Masoterapia</p>\n\n<p>Masajes</p>\n\n<ul>\n	<li><strong>Terap&eacute;utico</strong></li>\n	<li><strong>Descontracturante</strong></li>\n</ul>\n\n<p><strong>​</strong></p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 1, '', ''),
(114, 'Cli-Max  Refrigeración - Aire Acondicionado', 'Solicitar Técnico', '49323822', '', '1563821145', '1563995021', '397*418', '49323822', 'refrigeracion.climaxg@gmail.com', '', 'www.facebook.com/climaxmantenimiento?ref=profile', '', '', '', 0, 0, '', '', '1', '2014-03-24', NULL, 'climax.jpg', '', '', '<p>&nbsp;</p>\n\n<p><strong>PERSONAL ALTAMENTE CAPACITADO</strong></p>\n\n<p><strong>Instaladores Matriculados</strong></p>\n\n<p>Responsable:<strong>&nbsp;Maximiliano Vega</strong></p>\n\n<p>Atenci&oacute;n a Consorcios y Administraciones</p>\n\n<p><em>&ldquo;Solicite asesoramiento t&eacute;cnico, nuestro compromiso es brindarle una soluci&oacute;n a su problema&rdquo;</em></p>\n\n<p>Mantenimiento todo el a&ntilde;o</p>\n\n<p><strong>Presupuestos &ldquo;SIN CARGO&rdquo;</strong></p>\n\n<hr />\n<p><span style="line-height:1.6em">Refrigeraci&oacute;n- Aire Acondicionado</span></p>\n\n<ul>\n	<li><strong>Venta de Equipos</strong></li>\n	<li><strong>Instalaci&oacute;n</strong></li>\n	<li><strong>Servicio T&eacute;cnico</strong></li>\n	<li><strong>Equipos Split</strong></li>\n	<li><strong>Equipos Centrales</strong></li>\n	<li><strong>Equipos Tipo Cassete y Piso Techo</strong></li>\n	<li><strong>Carga de Gas</strong></li>\n</ul>\n\n<hr />\n<p><span style="line-height:1.6em">Durlock</span></p>\n\n<p>Sistema de Construcci&oacute;n en Seco</p>\n\n<ul>\n	<li><strong>Revestimientos</strong></li>\n	<li><strong>Paredes</strong></li>\n	<li><strong>Cielorrasos</strong></li>\n	<li><strong>Taparrollos</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 3927, '', '', '', '', 1, 39, '', ''),
(115, 'Mina Clavero - Refrigeración', '', '48666976', '43085297', '1565119469 Martín', '1565548965 Daniel', '', '48666976', 'minaclavero.refrigeracion@live.com.ar', 'www.mc-refrigeracion.com.ar', '', '', '', '', 0, 0, '', '', '1', '2014-03-24', NULL, 'Boedo-Mi-Rioba-MINACLAVERO.jpg', '', 'Boedo,heladeras,heladera,freezer,aire,aire acondicionado,split,refrigeración,refrigeracion,Cámaras frigorificas,camaras frigorificas,centrales de frío,centrales de frio,carga de gas', '<p>TODO EN REFRIGERACI&Oacute;N</p>\n\n<p><strong><em>Reparamos todas las marcas</em></strong></p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>Heladeras</p>\n\n<ul>\n	<li><strong>Familiares</strong></li>\n	<li><strong>Comerciales</strong></li>\n	<li><strong>Freezer</strong></li>\n	<li><strong>C&aacute;maras Frigor&iacute;ficas</strong></li>\n</ul>\n\n<hr />\n<p>Aire Acondicionado</p>\n\n<ul>\n	<li><strong>Split Fr&iacute;o - Calor</strong></li>\n	<li><strong>Centrales de Fr&iacute;o</strong></li>\n	<li><strong>Cuadrados</strong></li>\n	<li><strong>Carga de Gas</strong></li>\n	<li><strong>Instalaci&oacute;n - Reparaci&oacute;n </strong></li>\n	<li><strong>Mantenimiento - Limpieza</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(116, 'Electrofrío', '', '', '', '1545303903', '1538213034', '', '', 'electrofrio_jd@autloock.com', '', '', '', '', '', 0, 0, '', '', '1', '2014-03-24', NULL, 'tecnicosenrefirgeracionyelectricidad.jpg', '', 'ELECTRICISTA,TERMICAS,TÉRMICAS,BOEDO,DISYUNTORES,AIRE,AIRE ACONDICIONADO,SPLIT,HLEDERA,HELADERAS', '<p>T&Eacute;CNICOS EN REFRIGERACI&Oacute;N Y ELECTRICIDAD,&nbsp;DESDE SIEMPRE BRINDANDO LA MAS CORRECTA ATENCI&Oacute;N SERIEDAD Y GARANT&Iacute;A DE TRABAJO</p>\n\n<p>DANIEL OVIN Y JONATHAN ALAN OVIN</p>\n\n<p>E. Garz&oacute;n &nbsp;5493 &nbsp;C.A.Bs.As.</p>\n\n<ul>\n	<li><strong>Instalaci&oacute;n y reparaci&oacute;n de Aire Acondicionado y Split</strong></li>\n	<li><strong>Reparaci&oacute;n de Heladeras</strong></li>\n	<li><strong>Instalaciones El&eacute;ctricas en General - T&eacute;rmicas - Disyuntores - Tableros - Fugas El&eacute;ctricas - Puesta a Tierra&nbsp;</strong></li>\n</ul>\n\n<p><strong>URGENCIAS 24 HS</strong></p>\n\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(112, 'Peluquería a Domicilio', 'Solicitar Turno', '49328821', '', '1538439357', '', '', '', '', '', '', '', '', '', 0, 1, '', '', '1', '2014-03-19', NULL, 'peluwueriaadomicilio.jpg', '', 'peluquería,peluqueria,a domicilio,queratina,alisado,micosis,uña,uñas,encarnada,tintura,brushing,belleza de pie', '<p><strong>SE&Ntilde;ORA AMELIA</strong></p>\n\n<p><strong>​Profesional Certificada en DAYLOPLAS</strong></p>\n\n<p>Atenci&oacute;n personalizada en mi direcci&oacute;n o su domicilio</p>\n\n<hr />\n<p>Peluquer&iacute;a - Alisado Definitivo</p>\n\n<ul>\n	<li><strong>Un alisado diferente que dura entre 4 a 6 meses, o m&aacute;s dependiendo del cuidado posterior. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></li>\n	<li><strong>No m&aacute;s brushing y plancha!! con shock QUERATINICO incluido despu&eacute;s del alisado para lucir a&uacute;n con m&aacute;s naturalidad y brillo</strong></li>\n	<li><strong>Botox, no contiene formol, es un&nbsp;tratamiento especial para el pelo&nbsp;despu&eacute;s de un alisado definitivo&nbsp;renovando cada fibra capilar del cabello​</strong></li>\n</ul>\n\n<hr />\n<p>Pedicura</p>\n\n<ul>\n	<li><strong>Tratamiento de Micosis</strong></li>\n	<li><strong>U&ntilde;a Encarnada, etc</strong></li>\n	<li><strong>Distintas Patolog&iacute;as en&nbsp;las u&ntilde;as.&nbsp;</strong></li>\n	<li><strong>Materiales descartables</strong></li>\n	<li><strong>Instrumental esterilizado<strong>​</strong>&nbsp;</strong></li>\n</ul>\n\n<hr />\n<p>A domicilio tambi&eacute;n se realiza:</p>\n\n<ul>\n	<li><strong>Corte</strong></li>\n	<li><strong>Color</strong></li>\n	<li><strong>Brushing</strong></li>\n	<li><strong>Plancha</strong></li>\n	<li><strong>Belleza de Pies</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 0, 'y Av. San Juan - Boedo', '', '', '', 1, 24, 'Peluqueria-a-Domicilio-boedo-mi-rioba‏.png', ''),
(117, 'PMG Multiservicios', '', '', '', '1550479015', '', '', '', 'gasistamatriculado1@hotmail.com', '', 'www.facebook.com/gasista.matriculadopmg', '', '', '', 0, 0, '', '', '1', '2014-03-24', NULL, 'gasistapablo.jpg', '', 'gasista,gas,herreria,herrería,plomería,plomeria,pintura,pintor,cerragero,cerragería,albañilería,albañileria,Albañiles,herreo,herreros', '<p><big>PABLO GASISTA MATRICULADO</big></p>\n\n<p>Atenci&oacute;n a Consorcios y Administraciones</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li><strong>Gasista</strong></li>\n	<li><strong>Herrer&iacute;a</strong></li>\n	<li><strong>Plomer&iacute;a</strong></li>\n	<li><strong>Pintura</strong></li>\n	<li><strong>Cerrager&iacute;a</strong></li>\n	<li><strong>Alba&ntilde;iler&iacute;a</strong></li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>Trabajos en General - Presupuestos sin Cargo</p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(118, 'Degastaldi, Leonel', '', '49316381', '', '1536880055', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-03-26', NULL, 'leoneldegastaldi.jpg', '', 'GAS,PLOMERÍA,PLOMERIA,INSTALACIONES,INSTALACIÓN,BOEDO,CAÑERÍAS,CAÑERIAS,ESTUFAS,SANITARIOS', '<p>PLOMERO Y GASISTA MATRICULADO</p>\n\n<p>PRESENTACI&Oacute;N DE PLANOS</p>\n\n<p><em>Gas</em></p>\n\n<ul>\n	<li><strong>Instalaciones</strong></li>\n	<li><strong>Limpieza</strong></li>\n	<li><strong>Colocaci&oacute;n de Ca&ntilde;er&iacute;as y Artefactos</strong></li>\n</ul>\n\n<p><em>Plomer&iacute;a</em></p>\n\n<ul>\n	<li><strong>Instalaci&oacute;n&nbsp;de red</strong></li>\n	<li><strong>Reparaciones</strong></li>\n	<li><strong>Instalaciones de Sanitarios</strong></li>\n</ul>\n\n<p>ATENCI&Oacute;N A CONSORCIOS</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(119, 'Plomero y Gasista', '', '49121241', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-03-26', NULL, 'PLOMEROYGASISTA.jpg', '', 'plomería,plomeria,gasista,calefones,estufas,calefon,estufa,termotanques,termotanque,gas,calefón,grifería,griferias,griferia,griferías,filtraciones,humedad,cañerías,cañerias,cañería,cañeria', '<p><em>GASISTA MATRICULADO</em></p>\n\n<ul>\n	<li><strong>Instalaci&oacute;n de Calefones - Estufas - Termotanques - Cocinas</strong></li>\n	<li><strong>Todas las marcas</strong></li>\n	<li><strong>Red de Gas, p&eacute;rdidas&nbsp;y reparaciones</strong></li>\n</ul>\n\n<p><em>PLOMER&Iacute;A</em></p>\n\n<ul>\n	<li><strong>Grifer&iacute;as - V&aacute;lvulas</strong></li>\n	<li><strong>Filtraciones - Reformas</strong></li>\n	<li><strong>Cambios de Artefactos</strong></li>\n	<li><strong>Columnas - Rejillas</strong></li>\n	<li><strong>Ca&ntilde;er&iacute;a de Agua Fr&iacute;a y Caliente</strong></li>\n	<li><strong>Ubicaci&oacute;n de Filtraciones</strong></li>\n</ul>\n', 0, '', '', '', '', 1, 48, '', ''),
(120, 'Electricista Instalador  (UOCRA)', '', '39735681', '', '1531306993', '', '', '39735681', 'Pop.litico@gmail.com', '', '', '', '', '', 0, 0, '', '', '1', '2014-03-26', NULL, 'suvecinoelectricista.jpg', '', 'electricidad,electricista,instalaciones,fugas eléctricas,tableros,disyuntores,tierra,Instalador,diferenciales,diyuntor,térmicas,termica,termomagnéticas,termomagneticas,puesta a tierra,medidores', '<p><em>ELECTRICIDAD GABRIEL</em></p>\n\n<ul>\n	<li><strong>Instalaciones</strong></li>\n	<li><strong>Reparaciones en General</strong></li>\n	<li><strong>Verificaci&oacute;n de Fugas El&eacute;ctricas</strong></li>\n	<li><strong>Tableros - T&eacute;rmicas - Disyuntores</strong></li>\n	<li><strong>Puesta a Tierra</strong></li>\n	<li><strong>Se proyectan y realizan todo&nbsp;tipo&nbsp;de trabajos sobre Circuitos El&eacute;ctricos</strong></li>\n</ul>\n\n<p><strong>​</strong></p>\n\n<hr />\n<p>​</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(121, 'Electricista', '', '49113862', '', '1561779823', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-03-26', NULL, 'electricista.jpg', '', 'ELECTRICISTA,ELECTRICIDAD,TABLEROS,TÉRMICAS,TERMICAS,DISYUNTORES,DIYUNTORES,TIERRA,URGENCIAS', '<p>ELECTRICISTA</p>\n\n<ul>\n	<li><strong>Instalaciones en General</strong></li>\n	<li><strong>Reparaciones</strong></li>\n	<li><strong>Tableros - T&eacute;rmicas - Disyuntores</strong></li>\n	<li><strong>Puesta a Tierra</strong></li>\n	<li><strong>Hogares</strong></li>\n	<li><strong>Comercios</strong></li>\n	<li><strong>Industria</strong></li>\n</ul>\n\n<p><em><strong>URGENCIAS</strong></em></p>\n\n<p>PRESUPUESTOS EN EL D&Iacute;A</p>\n', 0, '', '', '', '', 2, 48, '', ''),
(122, 'Carpintería Alexis', '', '20579178', '', '1563561979', '', '', '', 'alexis_anunziata@hotmail.com', '', '', '', '', '', 0, 0, '', '', '1', '2014-03-26', NULL, 'CARPINTERIAALEXIS.jpg', '', 'carpintero,carpinteria,encolados,modulares,muebles,cocina,boedo', '<p>CARPINTER&Iacute;A</p>\n\n<ul>\n	<li><strong>Trabajos a Domicilio</strong></li>\n	<li><strong>Restauraciones</strong></li>\n	<li><strong>Reciclados</strong></li>\n	<li><strong>Encolados</strong></li>\n	<li><strong>Armado de Modulares Modulares y de Cocina</strong></li>\n	<li><strong>Reformas y Arreglos en General</strong></li>\n</ul>\n\n<p><em>VENTA DE MUEBLES DE PINO DIRECTOS DEL TIGRE</em></p>\n\n<p><em>MUY BUENOS PRECIOS !!!!</em></p>\n\n<p>PRESUPUESTOS SIN CARGO EN 48 HS.</p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(123, 'Septiembre Diseños', '', '', '', '1533945777', '', '', '', 'septiembrediseños@yahoo.com', '', 'www.facebook.com/septiembrediseños', '', '', '', 0, 0, '', '', '1', '2014-03-26', NULL, 'SEPTIEMBREDISENOS.jpg', '', 'carpintería,carpinteria,muebles,diseños,medida,trabajo a medida,espacios reducidos', '<p>TRABAJOS ESPECIALES PARA ESPACIOS REDUCIDOS</p>\n\n<ul>\n	<li>Dise&ntilde;os en Muebles</li>\n	<li>Trabajos a Medida</li>\n	<li>Amueblamientos</li>\n</ul>\n', 0, '', '', '', '', 2, 48, '', ''),
(125, 'Adriana Álvarez - Paisajista', '', '49112686', '', '1540963969', '', '', '', 'adrianaalvarezpaisajismo@yahoo.com.ar', '', 'es-la.facebook.com/pages/Desde-el-jard%C3%ADn-paisajismo/123165927892245', '', '', '', 0, 0, '', '', '1', '2014-04-06', NULL, 'ADRIANAALVAREZPAISAJISTA.jpg', '', 'Plantas,jardines,flores,decoración,decoracion,tierra,espacios verdes,jardinería,jerdineria', '<p>PAISAJISTA - T&Eacute;CNICA EN JARDINER&Iacute;A (UBA)</p>\n\n<ul>\n	<li><strong>Dise&ntilde;o, ejecuci&oacute;n y&nbsp;mantenimiento de espacios verdes</strong></li>\n	<li><strong>Jardines - Terrazas - Balcones</strong></li>\n	<li><strong>Ambientaci&oacute;n&nbsp;de exteriores e&nbsp;interiores para el Hogar, Empresas, Hoteles, Restaurantes, etc,</strong></li>\n</ul>\n\n<p><strong>​</strong></p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(126, 'Jardinería Ecológica', '', '49319943', '', '1545596979', '', '', '', 'teojardín@yahoo.com', '', '', '', '', '', 0, 0, '', '', '1', '2014-04-06', NULL, 'JARDINERIAECOLOGICA.jpg', '', 'Plantas,Jardines,Jardinería,jardineria,espacios verdes,tierra', '<p>RUB&Eacute;N BEGUIRISTAIN</p>\n\n<p>​T&Eacute;CNICO EN FLORICULTURA Y JARDINER&Iacute;A (UBA)</p>\n\n<ul>\n	<li>\n	<p><strong>Dise&ntilde;o y construcci&oacute;n de jardines y maceteros</strong></p>\n	</li>\n	<li>\n	<p><strong><strong>Interiores y Exteriores</strong></strong></p>\n	</li>\n	<li><strong>Asesoramiento T&eacute;cnico</strong></li>\n</ul>\n\n<p><strong><em>Mantenimiento de jardines y espacios verdes</em></strong>:</p>\n\n<p>La salud de las plantas se construye d&aacute;ndoles lo que ellas necesitan<span dir="rtl">.</span></p>\n\n<p><span dir="rtl">A partir del conocimiento de sus necesidades, se evita el uso de pesticidas y los riesgos que ellos&nbsp;producen a la salud humana, y en nuestras mascotas.</span></p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(127, 'Tapicería Gandolfo', '', '49211046', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', '', '1', '2014-04-06', NULL, 'tapiceria.jpg', '', 'Tapicero,tapicería,tapiceria,restauración,restauracion,mueble,muebles,madera,lustre', '<p>RUB&Eacute;N GANDOLFO</p>\n\n<ul>\n	<li><strong>Retapizado en General</strong></li>\n	<li><strong>Almohadones</strong></li>\n	<li><strong>Fundas</strong></li>\n	<li><strong>Esterillas</strong></li>\n	<li><strong>Encolado y Lustre</strong></li>\n</ul>\n', 4116, '', '', '', '', 1, 32, 'tapiceria-sillones-gandolfo-mi-rioba-boedo-argentina‏.png', ''),
(128, 'Gustavo Correa', '', '49429138', '', '1562055780', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-04-06', NULL, 'cerrajeria.jpg', '', 'Cerrajero,cerrajería,cerrajeria,llave,llaves,caja fuerte,combinaciones,blindex,blindaje,automotor,levanta cristales', '<p>CERRAJER&Iacute;A EN GENERAL</p>\n\n<ul>\n	<li><strong>Domiciliaria</strong></li>\n	<li><strong>Duplicado de Llaves</strong></li>\n	<li><strong>Aperturas</strong></li>\n	<li><strong>Cambio de Combinaciones</strong></li>\n	<li><strong>Restauraciones de Cerraduras</strong></li>\n	<li><strong>Sistema &quot;Cierrasola&quot; (Consorcios)</strong></li>\n	<li><strong>Aperturas de Caja&nbsp;Fuerte</strong></li>\n	<li><strong>Colocaci&oacute;n y Mantenimiento de &quot;Cierrapuertas Blindex&quot;</strong></li>\n	<li><strong>Blindaje de Puertas</strong></li>\n	<li><strong>Cerrajer&iacute;a del Automotor</strong></li>\n	<li><strong>Levanta Cristales, manual y el&eacute;ctrico</strong></li>\n	<li><strong>Cierre Centralizado</strong></li>\n</ul>\n\n<blockquote>\n<pre>\n<big><var><em><strong>TRABAJOS A DOMICILIO LAS 24 HS. LOS 365 D&Iacute;AS DEL A&Ntilde;O</strong></em></var></big></pre>\n</blockquote>\n\n<p><strong>Trabajos Garantizados - Presupuestos sin cargo en CABsAs</strong></p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 1, '', ''),
(129, 'Servicio Técnico N° 1', '', '48579578', '', '', '', '', '', '', 'servicios.mercadolibre.com.ar/servicio-tecnico-n%C2%B0-1-de-lavarropas-y-heladeras-46373995', '', '', '', '', 0, 0, '', '', '1', '2014-04-06', NULL, 'serviciotecnicon1.jpg', '', 'Técnico,tecnico,heladeras,heladera,lavarropas,lavarropa,split,cocina,cocinas,microondas,microonda,aire acondicionado', '<p>SERVICE DE LAVARROPAS, HELADERAS, AIRE SPLIT ,&nbsp;COCINAS Y MICROONDAS</p>\n\n<p><em>REPARAMOS TODAS LAS MARCAS Y MODELOS</em></p>\n\n<p><em><strong>&quot;TRABAJOS CON GARANT&Iacute;A&quot;&nbsp;</strong></em></p>\n\n<p><strong>M&aacute;s de 30 a&ntilde;os brindando Confianza y Seguridad</strong></p>\n\n<p><em>- PRESUPUESTOS SIN CARGO -</em></p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 1, '', ''),
(131, 'Julián, Técnico PC - UBA', '', '49328821', '49220419', '1551244226', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2015-04-16', NULL, 'tecnicopcjulian.jpg', '', 'pc,computadora,reparación,reparacion,antivirus,placas mather,placa madre,programas,tecnico,técnico', '<p>SERVICIO T&Eacute;CNICO ESPECIALIZADO EN PC</p>\n\n<ul>\n	<li><strong>Servicio y Reparaci&oacute;n de PC a domicilio</strong></li>\n	<li><strong>Atenci&oacute;n Personalizada</strong></li>\n	<li><strong>Formateo, Instalaci&oacute;n, Actualizaci&oacute;n y Reemplazo de sistema operativo</strong></li>\n	<li><strong>Mantenimiento e Instalaci&oacute;n de Programas requeridos</strong></li>\n	<li><strong>Instalaci&oacute;n de Antivirus y Antispyware</strong></li>\n	<li><strong>Armado de PC a medida del cliente</strong></li>\n	<li><strong>Reparaci&oacute;n de Placas&nbsp;Madre</strong></li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p><strong><em>PRESUPUESTO SIN CARGO</em></strong></p>\n\n<hr />\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(132, 'Tobias', '', '49262750', '', '1530007610', '', '', '49262750', 'tobias_vidal@live.com', 'www.pulidoratobiasvidal.com/', '', '', '', '', 0, 0, '', '', '1', '2014-04-10', NULL, 'tobias.jpg', '', 'pisos,pulidos,plastificado,plastificados,mosaicos,mosaico,mármol,marmol,pisos flotantes', '<p>PULIDORA Y PLASTIFICADORA TOBIAS</p>\n\n<p><em>DESDE 1997&nbsp;DEDIC&Aacute;NDOLE AMOR A SUS PISOS</em></p>\n\n<p><em><strong>PRESUPUESTOS SIN CARGO Y GARANT&Iacute;A ESCRITA</strong></em></p>\n\n<hr />\n<ul>\n	<li><strong>Pulido sin polvo</strong></li>\n	<li><strong>Plastificado</strong></li>\n	<li><strong>Hidrolaqueado</strong></li>\n	<li><strong>Arreglos y colocaci&oacute;n</strong></li>\n	<li><strong>Pulido de Mosaicos y M&aacute;rmol</strong></li>\n	<li><strong>Vitrificado</strong></li>\n	<li><strong>Colocaci&oacute;n de Deck y Flotantes</strong></li>\n</ul>\n\n<p><em><strong>Aplicador Autorizado</strong></em></p>\n\n<hr />\n<p>&nbsp;</p>\n', 4001, '', '', '', '', 1, 37, '', ''),
(133, 'Cortinas Damián', '', '63793378', '', '1560069430', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-04-10', NULL, 'cortinasdamian.jpg', '', 'cortinas,Madera,pvc,enrrollar,cortinas de enrrollar', '<p>VENTA Y ARREGLO DE CORTINAS DE ENRROLLAR</p>\n\n<ul>\n	<li><strong>Madera</strong></li>\n	<li><strong>PVC</strong></li>\n	<li><strong>Aluminio</strong></li>\n	<li><strong>Cambios de Cinta</strong></li>\n	<li><strong>Reductores de Peso</strong></li>\n	<li><strong>Motores sin ruptura de pared</strong></li>\n	<li><strong>Ejes -&nbsp;Poleas - E</strong><strong>nrolladores</strong></li>\n</ul>\n\n<p><strong>TRABAJOS CON GARANT&Iacute;A</strong></p>\n\n<p><strong>Presupuesto sin cargo</strong></p>\n', 0, '', '', '', '', 1, 29, '', ''),
(134, 'Casa Riff', '', '49222494', '', '1556677685', '1546050353', '', '', 'pappo102003@yahoo.com.ar', '', '', '', '', '', 0, 0, '', '', '1', '2014-04-10', NULL, 'casariff.jpg', '', 'cortina,cortinas,enrrollar,reductores de peso,madera,PVC,barrio,reparacion cortinas,reparación cortinas', '<p>REPARACI&Oacute;N DE CORTINAS DE ENRROLLAR</p>\n\n<p>Service en General:</p>\n\n<ul>\n	<li><strong>Cambio de Cinta</strong></li>\n	<li><strong>Aparatos Enrrolladores</strong></li>\n	<li><strong>Reductores de Peso</strong></li>\n	<li><strong>Ejes</strong></li>\n	<li><strong>Varillas</strong></li>\n	<li><strong>Lijado y Barnizado</strong></li>\n	<li><strong>Fabricaci&oacute;n y colocaci&oacute;n de Cortinas de Madera -&nbsp;PVC -&nbsp;Barrio</strong></li>\n	<li><strong>Elevadores El&eacute;ctricos (Motores) sin rotura de pared</strong></li>\n</ul>\n\n<p><em>SU CONSULTA NO MOLESTA</em></p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(135, 'Salvador', '', '49224257', '39309101', '1538037054', '', '', '', '', '', '', '', '', '', 0, 1, '', '', '1', '2014-04-10', NULL, 'SALVADOR.jpg', '', 'Cortina,cortinas,reparación,madera', '<p>REPARACI&Oacute;N GENERAL DE CORTINAS DE ENRROLLAR</p>\n\n<p>Desde el a&ntilde;o 1972</p>\n\n<p>COLOCACI&Oacute;N DE TRABAS ANTIRROBO</p>\n\n<ul>\n	<li><strong>Canbio de Cintas</strong></li>\n	<li><strong>Engrases completos</strong></li>\n	<li><strong>Rodillos para alivianar peso</strong></li>\n	<li><strong>Ejes, Pernos, Ganchos, Poleas, Hebillas, Rulemanes, Bujes, Topes, Resortes y&nbsp;Enrrolladores</strong></li>\n	<li><strong>M&aacute;quinas Reductoras</strong></li>\n	<li><strong>Se hacen o Modifican Taparrollos</strong></li>\n	<li><strong>Cambio de Maderas y Tablas Pl&aacute;sticas PVC</strong></li>\n	<li><strong>Reparaci&oacute;n de Puertas, Ventanas y Ventanales corredizos tipo Barrio</strong></li>\n	<li><strong>Estabilizadores Antirruido o Vibraciones para Ventanas y Ventanales corredizos</strong></li>\n</ul>\n\n<p><em>VENTA DE CORTINAS NUEVAS</em></p>\n\n<p><strong>Atenci&oacute;n solamente en C.A.Bs.As.</strong></p>\n', 0, '', '', '', '', 1, 48, 'salvadorcupon.png', ''),
(136, 'Forestal Parket SRL', '', '49329090', '', '', '', '', '', 'forestalparket@yahoo.com.ar', '', '', '', '', '', 0, 1, '1:3', '', '1', '2014-04-10', NULL, 'forestalparket.jpg', '', 'Pisos,madera,flotantes,melamínicos,melaminicos,prefinished,decks,escaleras,instalacion,instalación', '<p>VENTA DE PISOS DE MADERA</p>\n\n<ul>\n	<li><strong>Especialidad en Prefinished</strong></li>\n	<li><strong>Flotantes Melam&iacute;nicos</strong></li>\n	<li><strong>Decks y Escaleras</strong></li>\n	<li><strong>Asesoramiento e Instalaci&oacute;n</strong></li>\n</ul>\n\n<blockquote>\n<p><big><var>CON TARJETAS HASTA 3 PAGOS SIN INTER&Eacute;S</var></big></p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 3991, 'Local', '', '', '', 1, 29, 'Forestal-Parket-SRL‏.png', ''),
(137, 'Look English', '', '49422408', '', '1559537162', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-04-10', NULL, 'lookenglish.jpg', '', 'ingles,inglés,cambridge,traducciones,traduccion,traducción,cursos', '<p>ENSE&Ntilde;ANZA DE INGL&Eacute;S CON PROFESORES NATIVOS</p>\n\n<ul>\n	<li><strong>Clases particulares</strong></li>\n	<li><strong>Clases Grupales</strong></li>\n	<li><strong>Preparaci&oacute;n para Ex&aacute;menes Internacionales (TOEFL Cambridge)</strong></li>\n	<li><strong>​Traducciones de primera calidad</strong></li>\n	<li><strong>Cursos intensivos de verano</strong></li>\n</ul>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 1, '', ''),
(138, 'Unión de Peinadores de la República Argentina', 'Lunes a viernes de 9.30 a 15 hs', '48636361', '48643939', '', '', '', '', 'upa@unionpeinadores.com.ar', '', '', '', '', '', 0, 0, '', '', '1', '2014-04-10', NULL, 'uniondepeinadores.jpg', '', 'Peluquería,peluqueria,maquillaje,cursos peluquería,cursos maquillaje,cursos peluqueria', '<p><strong>UPA</strong> - FUNDADA EN 1965</p>\n\n<ul>\n	<li><strong>Cursos de Peluquer&iacute;a Unisex</strong></li>\n	<li><strong>Cursos de Maquillaje</strong></li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>Solicita MODELOS de ambos sexos para cortes de Cabello, Color y Permanente</p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 2922, '', '', '', '', 1, 52, '', ''),
(139, 'Dayloplas - Belleza y Salud', 'Lunes a Sábado de 10 a 20 hs.', '49314173', '', '', '', '', '', 'boedo@dayloplas.com.ar', 'dayloplas-boedo.com.ar', 'es-la.facebook.com/dayloplasBoedo', '', '', '', 0, 0, '', '', '1', '2014-04-10', NULL, 'dayloplas.jpg', '', 'Depilación,depilacion,Pedicuría,pedicuria,manicuría,manicuria,uñas,cosmetología,cosmetologia,peluquería,peluqueria,estética,estetica,maquilaje,pestañas', '<p>CURSOS CON R&Aacute;PIDA SALIDA LABORAL</p>\n\n<ul>\n	<li><strong>Depilaci&oacute;n</strong></li>\n	<li><strong>Pedicur&iacute;a</strong></li>\n	<li><strong>Manicur&iacute;a</strong></li>\n	<li><strong>U&ntilde;as Esculpidas</strong></li>\n	<li><strong>Cosmetolog&iacute;a</strong></li>\n	<li><strong>Peluquer&iacute;a</strong></li>\n	<li><strong>Est&eacute;tica Corporal</strong></li>\n	<li><strong>Reflexolog&iacute;a</strong></li>\n	<li><strong>Maquillaje</strong></li>\n	<li><strong>Automaquillaje</strong></li>\n	<li><strong>Tinturas de Pesta&ntilde;as</strong></li>\n</ul>\n\n<p><strong>​Y mucho m&aacute;s !!!</strong></p>\n\n<p>Acompa&ntilde;&aacute;ndote con la m&aacute;s amplia linea de COSM&Eacute;TICOS Y ACCESORIOS&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 1160, 'a una cuadra de Boedo y San Juan', '', '', '', 1, 26, '', ''),
(141, 'Soul & Body - Pilates y Estética', 'Solicitar Turno', '49116775', '', '1544041853', '', '', '', 'pilates.bodysoul@yahoo.com.ar', '', '', '', '', '', 0, 0, '', '', '1', '2014-04-10', NULL, 'soulbody.jpg', '', 'pilates,posturas,rehabilitación,rehabilitacion,cuerpo,movilidad,musculatura,flexibilidad,concentración,faciales,facial,corporal,corporales', '<p>VEN&Iacute; A HACER PILATES, CLASE DE PRUEBA SIN CARGO</p>\n\n<ul>\n	<li><strong>Reeducaci&oacute;n Postural y Rehabilitaci&oacute;n</strong></li>\n	<li><strong>Dominio Corporal</strong></li>\n	<li><strong>Trabajo de Coordinaci&oacute;n y Equilibrio</strong></li>\n	<li><strong>Movilidad Articular, 3&deg; edad y adolescentes</strong></li>\n	<li><strong>Fortalece la Musculatura y Flexibilidad</strong></li>\n	<li><strong>Eleva niveles de Concentraci&oacute;n</strong></li>\n</ul>\n\n<hr />\n<p>Consulta por abonos: REFORMER, CIRCUITO y&nbsp;ELONGACI&Oacute;N</p>\n\n<p>&nbsp;</p>\n\n<p>Tratamientos FACIALES y CORPORALES</p>\n\n<p>Consultar por Turnos y Aranceles</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(142, 'Gabriel Porto', '', '', '', '1535135692', '', '', '', 'megaelectri@gmail.com', '', '', '', '', '', 0, 0, '', '', '1', '2014-04-10', NULL, '', '', 'ELECTRICIDAD,ILUMINACIÓN,ILUMINACION,electricista,luces,tableros,lamparitas,lámparas,lamparas', '<p>SERVICIOS EL&Eacute;CTRICOS INDUSTRIALES</p>\n\n<ul>\n	<li><strong>Instalaciones el&eacute;ctricas domiciliarias y comerciales</strong></li>\n	<li><strong>Colocaci&oacute;n de luces y su mantenimiento</strong></li>\n	<li><strong>Reparaciones</strong></li>\n	<li><strong>Cambios de luminarias</strong></li>\n	<li><strong>Instalaci&oacute;n de llaves combinadas, tomas y sensor de movimiento</strong></li>\n	<li><strong>Correcci&oacute;n del factor de potencia</strong></li>\n	<li><strong>Iluminacion de emergencia central e individual</strong></li>\n	<li><strong>Refacci&oacute;n, armado y/o actualizaci&oacute;n de tableros</strong></li>\n</ul>\n\n<p>PRESUPUESTOS SIN CARGO</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(143, 'Instituto de Inglés', '', '49239342', '', '', '1557461621 Marcela', '', '', '', 'www.institutodeinglesmo.blogspot.com.ar', '', '', '', '', 0, 0, '', '', '1', '2014-04-11', NULL, 'institutodeingles.jpg', '', 'Cambridge,Inglés,ingles,Cursos,inglés empresas,ingles empresas,traducciones,clases,Boedo,examenes,exámenes,examen,exámen,instituto', '<p>Cursos por niveles:</p>\n\n<ul>\n	<li><strong>Kinder - Ni&ntilde;os - Adolescentes - Adultos</strong></li>\n</ul>\n\n<p>Ingl&eacute;s para fines espec&iacute;ficos:</p>\n\n<ul>\n	<li><strong>Empresas - Conversaci&oacute;n - Etc</strong></li>\n</ul>\n\n<p>Ex&aacute;menes en Cambridge:</p>\n\n<ul>\n	<li><strong>Ket - Pet - First Certificate - CAE</strong></li>\n</ul>\n\n<hr />\n<p>Traducciones</p>\n\n<ul>\n	<li><strong>Cient&iacute;ficas</strong></li>\n	<li><strong>Literarias</strong></li>\n	<li><strong>P&uacute;blicas</strong></li>\n</ul>\n\n<hr />\n<p>Clases de Apoyo para todos los niveles:</p>\n\n<ul>\n	<li><strong>Clases Grupales</strong></li>\n	<li><strong>Grupos Reducidos</strong></li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p><em><strong>INSCRIPCI&Oacute;N TODO EL A&Ntilde;O</strong></em></p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n', 3923, 'PB Dto ', '', '', '', 1, 38, '', ''),
(144, 'Ponele Ritmo a Tus Días', 'Solicitar Turno', '39679224', '', '1536299758', '', '', '', 'lalystauro33@gmail.com', '', '', '', '', '', 0, 0, '', '', '1', '2014-04-12', NULL, 'poneleritmo.jpg', '', 'piano,pianos,órgano,organo,partituras,musica,música,Ritmos,Ritmo', '<p>APREND&Eacute; PIANO U &Oacute;RGANO</p>\n\n<p>Clases Garantizadas M&Eacute;TODO SUZUKI</p>\n\n<p><em>Talleres para Adultos:</em></p>\n\n<ul>\n	<li><strong>Interpretaci&oacute;n de Partituras</strong></li>\n	<li><strong>Digitaci&oacute;n y posiciones de las manos</strong></li>\n	<li><strong>Ritmos</strong></li>\n	<li><strong>Repertorios</strong></li>\n</ul>\n\n<p><strong>​</strong></p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(145, 'Juancito', '', '49020663', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-04-12', NULL, 'juancito.jpg', '', 'Plagas,fumigador,fumigación,fumigacion,cucarachas,insectos,murciélagos,murcielagos', '<p>FUMIGADOR JUANCITO</p>\n\n<p>Cucarachas</p>\n\n<p>LAS MATAMOS DE VERDAD</p>\n\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 1, '', ''),
(146, 'Desde el Altillo', '', '', '', '', '', '', '', '', 'eshops.mercadolibre.com.ar/desdeelaltillo', 'desdeelaltillo.mercadoshops.com.ar/', '', '', '', 0, 0, '', '', '1', '2014-04-12', NULL, 'desdeelaltillo.jpg', '', 'Compra,venta,tienda,artículos,articulos', '<p>TIENDA VIRTUAL DE COMPRA-VENTA</p>\n\n<p>donde TODO tiene&nbsp;VALOR</p>\n\n<p><strong>Semanalmente incorporamoscientos de art&iacute;culos diversos que ser&aacute;n de su inter&eacute;s !!!</strong></p>\n\n<p>Vis&iacute;teno entrando en nuestras direcciones Web.</p>\n', 0, '', '', '', '', 1, 1, '', ''),
(147, 'Solo Resultados', '', '49313843', '', '1537046113', '', '', '', 'soloresultados@gmail.com', 'www.youtube.com/results?search_query=omnilife+testimonios', 'www.youtube.com/results?search_query=omnilife+productos', '', '', '', 0, 0, '', '', '1', '2014-04-29', NULL, '147-1norbertogomezsoloresultados.jpg', '', 'Peso,dieta,dietas,apetito,dulces,carbohidratos,natural,naturales,talle,energía', '<p><strong><em>Asesor Nutricional</em></strong></p>\n\n<p><strong>Norberto G&oacute;mez - DMI N&deg; 17350</strong></p>\n\n<p>Distribuidor independiente</p>\n\n<p>&nbsp;</p>\n\n<p>Estar bien, es sentirse bien</p>\n\n<ul>\n	<li><strong>Tu silueta ideal contra la Celulitis y los kilos&nbsp;dem&aacute;s&nbsp;tomando Te,&nbsp;Caf&eacute; o deliciosos Jugos Naturales</strong></li>\n	<li><strong>Energ&iacute;a y Salud TODO EL A&Ntilde;O&nbsp;</strong></li>\n</ul>\n\n<hr />\n<p>Reductores de Peso y Talle</p>\n\n<ul>\n	<li><strong>Sin Esfuerzo, Privaciones o Efecto Rebote</strong></li>\n	<li><strong>Totalmente Naturales</strong></li>\n	<li><strong>Deliciosos y Libres de Qu&iacute;micos</strong></li>\n	<li><strong>Controlan el Apetito y la Ansiedad por Dulces y Carbohidratos</strong></li>\n</ul>\n\n<hr />\n<p>​Elevador Natural de Defensas</p>\n\n<ul>\n	<li><strong>Previenen y&nbsp;mejoran toda Afecci&oacute;n</strong></li>\n	<li><strong>Sabrosos y&nbsp;Libres de Qu&iacute;micos</strong></li>\n	<li><strong>100% Naturales</strong></li>\n</ul>\n\n<hr />\n<p>Elevador Natural de Energ&iacute;a</p>\n\n<ul>\n	<li><strong>Dan Potencia</strong></li>\n	<li><strong>Hidratan Naturalmente</strong></li>\n	<li><strong>Para Deportistas Amateurs y Profesionales (&quot;Cero&quot; dopping, aprobado por WADA de Alemania)</strong></li>\n	<li><strong>​Ideal en Personas sin Actividad F&iacute;sica</strong></li>\n	<li><strong>Muy Sabrosos y sin&nbsp;Qu&iacute;micos</strong></li>\n</ul>\n\n<hr />\n<p>​Actividades</p>\n\n<p><em>Capacitaci&oacute;n con Salida Laboral inmediata</em></p>\n\n<ul>\n	<li><strong>Nutrici&oacute;n Integral -&nbsp;Miscelizaci&oacute;n</strong></li>\n	<li><strong>Cosm&eacute;tica Nutricional</strong></li>\n</ul>\n\n<p><strong>V&Eacute;ASE MUY BIEN, </strong></p>\n\n<p><strong>SI&Eacute;NTASE VITAL Y SALUDABLE A TODA EDAD,</strong></p>\n\n<p><strong>DISFRUTE DE UN ESTILO DE VIDA DIFERENTE Y SIN&nbsp;ESTRESS !!!</strong></p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(150, 'Maza Propiedades', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-02', NULL, '', '', 'Inmobiliaria,inmobiliarias,casa,departamentos', '', 0, '', '', '', '', 2, 26, '', ''),
(151, 'Gonzalez Propiedades', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-02', NULL, '', '', 'inmobiliaria,inmobiliarias,casas,departamentos', '', 0, '', '', '', '', 2, 13, '', ''),
(152, 'Loponte - Reyes', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-02', NULL, '', '', 'inmobiliaria,inmobiliarias,casas,departamentos', '', 0, '', '', '', '', 2, 13, '', ''),
(153, 'Marisol Propiedades', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-02', NULL, '', '', 'inmobiliaria,inmobiliarias,casas,departamentos', '', 0, '', '', '', '', 2, 13, '', ''),
(154, 'Gailus ', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-02', NULL, '', '', 'inmobiliaria,inmobiliarias,casas,departamentos', '', 0, '', '', '', '', 2, 7, '', ''),
(155, 'Davo Propiedades', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-02', NULL, '', '', 'inmobiliarias,inmobiliaria,casas,departamentos', '', 0, '', '', '', '', 2, 7, '', ''),
(156, 'Merchan & Gluck', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-02', NULL, '', '', 'inmobiliaria,inmobiliarias,casas,departamentos', '', 0, '', '', '', '', 2, 7, '', ''),
(157, 'Palacios, Gustavo', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-02', NULL, '', '', 'inmobiliaria,inmobiliarias,casa,departamentos', '', 0, '', '', '', '', 2, 7, '', ''),
(158, 'Hominis Propiedades', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-02', NULL, '', '', 'inmobiliaria,inmobiliarias,casas,departamentos', '', 0, '', '', '', '', 2, 39, '', ''),
(159, 'Renzi Gustavo Bienes Raices', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-02', NULL, '', '', 'inmueble,inmuebles,casas,departamentos', '', 0, '', '', '', '', 2, 15, '', ''),
(160, 'Calafate Servicios Inmobiliarios', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-02', NULL, '', '', 'inmobiliaria,inmobiliarias,casas,departamentos', '', 0, '', '', '', '', 2, 32, '', ''),
(161, 'Lamar Bienes Raices', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-03', NULL, '', '', 'inmobiliaria,inmobiliarias,casas,departamentos', '', 0, '', '', '', '', 2, 13, '', ''),
(162, 'Converti Propiedades', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-03', NULL, '', '', 'inmobiliarias,inmobiliaria,casas,departamentos', '', 0, '', '', '', '', 2, 9, '', ''),
(163, 'Palomba Propiedades', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-03', NULL, '', '', 'inmobiliaria,inmobiliarias,casas,departamentos', '', 0, '', '', '', '', 2, 9, '', ''),
(165, 'Coas Propiedades', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-03', NULL, '', '', 'inmobiliaria,inmobiliarias,casas,departamentos', '', 0, '', '', '', '', 2, 29, '', ''),
(166, 'Domus Propiedades', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-03', NULL, '', '', 'inmobiliarias,inmobiliaria,casas,departamentos', '', 0, '', '', '', '', 2, 49, '', ''),
(167, 'Holder', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-03', NULL, '', '', 'Inmobiliaria,inmobiliarias,casas,departamentos', '', 0, '', '', '', '', 2, 29, '', ''),
(168, 'Nueva Farmacia Almagro', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-11', NULL, '', '', '', '', 0, '', '', '', '', 2, 49, '', ''),
(169, 'FarmaCity', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-11', NULL, '', '', '', '', 0, '', '', '', '', 2, 13, '', ''),
(170, 'Nueva Quintino', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-11', NULL, '', '', '', '', 0, '', '', '', '', 2, 29, '', ''),
(171, 'Nueva Independencia', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-11', NULL, '', '', '', '', 0, '', '', '', '', 2, 51, '', ''),
(172, 'Farmacia Europea', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-11', NULL, '', '', '', '', 0, '', '', '', '', 2, 7, '', ''),
(173, 'La Guardiana', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-11', NULL, '', '', '', '', 0, '', '', '', '', 2, 49, '', ''),
(174, 'Universo Canino - Pet Shop', 'Lunes a viernes de 9 a 20 hs - Sábados de 9 a 15 hs', '49575588', '', '', '', '', '', 'egalzerano@live.com.ar', '', 'es-es.facebook.com/PETSHOPUNIVERSOCANINO', '', '', '', 1, 0, '1:2:3:4:5', '', '1', '2014-05-12', NULL, 'PETSHOPUNIVERSOCANINO2.jpg', '', 'pet shop,alimento balanceado,baño canino,baños caninos,farmacia,peluquería canina,pensionados,guardería canina,guardería,mascotas,venta de mascotas,veterinaria,alimentos,alimento,curso peluqueria canina', '<p>&nbsp;</p>\n\n<p>Casa&nbsp;Central: <strong>Av. San Juan &nbsp;3654 &nbsp;- &nbsp;4957 5588 &nbsp;- &nbsp;CABsAs</strong></p>\n\n<p>Sucursal: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>Av. San Juan &nbsp;4282 &nbsp;- &nbsp;4922 3338 &nbsp;- &nbsp;CABsAs</strong></p>\n\n<p>&nbsp;</p>\n\n<p>Le brindamos todos los servicios que su Mascota necesita para tener una vida feliz y sana</p>\n\n<ul>\n	<li><strong>Accesorios</strong></li>\n	<li><strong>Alimentos Balanceados</strong></li>\n	<li><strong>Ba&ntilde;os Caninos</strong></li>\n	<li><strong>Cursos de Peluquer&iacute;a Canina Profesional</strong></li>\n	<li><strong>Farmacia Veterinaria</strong></li>\n	<li><strong>Peluquer&iacute;a Canina</strong></li>\n	<li><strong>Pensionados</strong></li>\n	<li><strong>Venta de Mascotas</strong></li>\n	<li><strong>​Venta Mayorista</strong></li>\n	<li><strong>Veterinaria</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n\n<p>Trabajamos con las principales marcas</p>\n\n<ul>\n	<li><strong>Eukanuba</strong></li>\n	<li><strong>​Royal Canin</strong></li>\n	<li><strong>​Pro Plan</strong></li>\n	<li><strong>Pedigree</strong></li>\n	<li><strong>Whiskas</strong></li>\n	<li><strong>​Dog&nbsp;Chow</strong></li>\n	<li><strong>​Cat Chow</strong></li>\n	<li><strong>​Iams&nbsp;Cooperaci&oacute;n Sabrocitos Hill&acute;s</strong></li>\n	<li><strong>​Raza</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n\n<p>Cachorros</p>\n\n<ul>\n	<li><strong>Todas las Razas, durante todo el a&ntilde;o</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 3654, '', '', '', '', 1, 29, '', ''),
(175, 'Morolent', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-15', NULL, '', '', '', '', 0, '', '', '', '', 2, 29, '', ''),
(176, 'Farmacia Social 1402', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-05-17', NULL, '', '', '', '', 0, '', '', '', '', 2, 49, '', ''),
(177, 'La Ventana', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-06-05', NULL, '', '', '', '', 0, '', '', '', '', 2, 29, '', ''),
(178, 'Mi Rincón Hindú', '', '49310976', '', '1544907963', '', '', '', 'mirinconhindu@hotmail.com', 'eshops.mercadolibre.com.ar/sissi52', 'es-es.facebook.com/mirinconhindu', '', '', '', 0, 1, '1:2:3:4:5', '', '1', '2014-07-17', NULL, 'mirionconhindu.jpg', '', 'Ropa hindú,ropa hindu,ropa,prendas,camisa hindú,camisa hindu,cubrecamas,almohadones,sahumerios,saumerios,bolsos,pantalones,tapices,camisola,boedo', '<p><em>ROPA HIND&Uacute; PARA ELLAS, ELLOS Y NI&Ntilde;OS</em></p>\n\n<ul>\n	<li><strong>Ropa Artesanal e Informal</strong></li>\n	<li><strong>Bolsos</strong></li>\n	<li><strong>Regalos y Toranes</strong></li>\n	<li><strong>Tapices de Dioses Hindues</strong></li>\n	<li><strong>Pantal&oacute;n Bali Rayado</strong></li>\n	<li><strong>Camisola Kurta Artesanal</strong></li>\n	<li><strong>Cubrecamas Hindues</strong></li>\n	<li><strong>Fundas de Almohadones</strong></li>\n	<li><strong>Sahumerios Hindues</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 969, 'Galería Boedo - Local 42 bajando la escalera', '', '', '', 1, 13, 'mirinconhindu.png', 'cupon de descuento boedo'),
(179, 'Vivi Pleno Hoy - Masajes Ambos Sexos', 'Solicitar Turno', '49261610', '49223542', '1564833344', '', '', '', 'viviplenohoy@gmail.com', '', 'www.facebook.com/EsteticaViviplenohoy', '', '', '', 0, 1, '1:3:4:5', '', '1', '2014-03-18', NULL, '179-ViviPlenoHoyMasajesAmbosSexos.jpg', 'masajes ambos sexos', '', '<p>Responsable: <strong>Viviana Sayour&nbsp;</strong></p>\n\n<p>Masajista Profesional Matriculada</p>\n\n<hr />\n<p>Masajes</p>\n\n<ul>\n	<li><strong>Kinesiolog&iacute;a</strong></li>\n	<li><strong>Reflexolog&iacute;a</strong></li>\n	<li><strong>Quiropraxia</strong></li>\n	<li><strong>Tratamientos Reum&aacute;ticos: Artrosis y Artritis</strong></li>\n	<li><strong>Rehabilitaci&oacute;n de Hemiplejias y Muscular</strong></li>\n	<li><strong>Masajes deportivos</strong></li>\n	<li><strong>Descontracturantes</strong></li>\n	<li><strong>Energizantes</strong></li>\n	<li><strong>Lumbalgias</strong></li>\n	<li><strong>Dorsalgias</strong></li>\n	<li><strong>Cervicalgias</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 3671, '2° piso', '', '', '', 1, 39, 'Vivi_Pleno_Hoy_Masajes_Ambos_Sexos.png', 'cupon masajes'),
(180, 'Instituto Superior Argentino de Belleza', '', '49316692', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-07-27', NULL, '', '', '', '', 0, '', '', '', '', 2, 13, '', ''),
(181, 'Pitukitos', '', '49216437', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-07-27', NULL, '', '', '', '', 0, '', '', '', '', 2, 49, '', ''),
(183, 'Max''s... Cotas', '', '49327030', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-07-27', NULL, '', '', '', '', 0, '', '', '', '', 2, 27, '', ''),
(184, 'Kikyo', '', '20599155', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-07-27', NULL, '', '', '', '', 0, '', '', '', '', 2, 17, '', ''),
(185, 'Clínica Médica Veterinaria San Lazaro', '', '49325018', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-07-27', NULL, '', '', '', '', 0, '', '', '', '', 2, 51, '', ''),
(186, 'Auto Italia', 'Lunes a Viernes de 8 a 18 hs.', '49824833', '', '', '', '602*2200 - Marcelo', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-08-24', NULL, 'Autoitalia.jpg', '', 'Mecánica,mecanica,electricidad,automovil,aire acondicionado,chapa y pintura,boedo', '<p>TALLER INTEGRAL DEL AUTOMOTOR</p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>Especialistas en:</p>\n\n<ul>\n	<li>Mec&aacute;nica General</li>\n	<li>Electricidad Automotriz</li>\n	<li>Aire Acondicionado</li>\n	<li>Chapa y Pintura</li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 453, '', '', '', '', 1, 25, '', ''),
(192, 'Escuela Almafuerte', 'TM 8 a 12,15 - TT 13 a 17,15 hs', '49217220', '', '', '', '', '', 'escuela08distrito06@gmail.com', 'www.buenosaires.gob.ar/areas/educacion/establecimientos/ficha.php?id=20143400&menu_id=10194', '', '', '', '', 0, 0, '', '', '1', '2014-08-29', NULL, 'MA1935-3.jpg', '', 'Escuelas,escuelas primarias,educación primaria,educacion primaria,jornada simple,escuelas estatales,boedo', '<p>Establecimiento N&deg; 08 - Distrito Escolar N&deg; 6</p>\n\n<ul>\n	<li><strong>Educaci&oacute;n Estatal.</strong></li>\n	<li><strong>Primaria Com&uacute;n</strong></li>\n	<li><strong>Jornada Simple</strong></li>\n</ul>\n\n<p><strong><em>M&aacute;s informaci&oacute;n en nuestra Web Oficial</em></strong></p>\n\n<hr />\n<p>Distrito Escolar N&deg; 6</p>\n\n<ul>\n	<li><strong>Humberto 1&deg;&nbsp; 3187&nbsp; C.A.Bs.As.</strong></li>\n	<li><strong>4957 1563 &ndash; 4932 6395/5497</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 1935, '', '', '', '', 1, 26, '', '');
INSERT INTO `anunciantes` (`id`, `nombre`, `horario`, `telefono1`, `telefono2`, `celular1`, `celular2`, `nextel`, `contestador`, `email`, `web`, `facebook`, `twitter`, `youtube`, `link_contacto`, `delivery`, `promociones`, `tarjetas`, `notas`, `estado`, `fecha_alta`, `fecha_baja`, `link_anuncio`, `txt_alt`, `tags`, `descripcion_anunciante`, `altura`, `dir_extra`, `dir_google`, `dir_google_2`, `dir_google_3`, `categoria_idcategoria`, `calles_idcalles`, `link_cuponera`, `txt_alt_cupo`) VALUES
(193, 'Escuela Paula Albarracín de Sarmiento', '8.15 a 16.20 hs.', '49225797', '', '', '', '', '', 'escuela25distrito06@gmail.com', 'www.buenosaires.gob.ar/areas/educacion/establecimientos/ficha.php?id=20130100&menu_id=10194', '', '', '', '', 0, 0, '', '', '1', '2014-08-29', NULL, 'Tarija4136.JPG', '', 'Escuelas,escuelas primarias,educación primaria,educacion primaria,jornada completa,escuelas estatales,boedo', '<p>Establecimiento N&deg; 25 - Distrito Escolar N&deg; 6</p>\n\n<ul>\n	<li><strong>Educaci&oacute;n Estatal.</strong></li>\n	<li><strong>Primaria Com&uacute;n</strong></li>\n	<li><strong>Jornada Completa</strong></li>\n	<li><strong>Servicio de Comedor Escolar</strong></li>\n</ul>\n\n<p><strong><em>M&aacute;s informaci&oacute;n en nuestra Web Oficial</em></strong></p>\n\n<hr />\n<p>Distrito Escolar N&deg; 6</p>\n\n<ul>\n	<li><strong>Humberto 1&deg;&nbsp; 3187&nbsp; C.A.Bs.As.</strong></li>\n	<li><strong>4957 1563 &ndash; 4932 6395/5497</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 4136, '', '', '', '', 1, 4, '', ''),
(195, 'Escuela República de Colombia', '8.15 a 16.20 hs.', '49210566', '', '', '', '', '', 'escuela26distrito06@gmail.com', 'www.buenosaires.gob.ar/areas/educacion/establecimientos/ficha.php?id=20165900&menu_id=10194', '', '', '', '', 0, 0, '', '', '1', '2014-08-29', NULL, 'Garay3972.jpg', '', 'Escuelas,escuelas primarias,educación primaria,educacion primaria,jornada completa,escuelas estatales,boedo', '<p>Establecimiento N&deg; 26 - Distrito Escolar N&deg; 6</p>\n\n<ul>\n	<li><strong>Educaci&oacute;n Estatal.</strong></li>\n	<li><strong>Primaria Com&uacute;n</strong></li>\n	<li><strong>Jornada Completa</strong></li>\n	<li><strong>Servicio de Comedor Escolar</strong></li>\n</ul>\n\n<p><strong><em>M&aacute;s informaci&oacute;n en nuestra Web Oficial</em></strong></p>\n\n<hr />\n<p>Especialidades</p>\n\n<ul>\n	<li><strong>Intensificaci&oacute;n de Arte</strong></li>\n</ul>\n\n<hr />\n<p>Distrito Escolar N&deg; 6</p>\n\n<ul>\n	<li><strong>Humberto 1&deg;&nbsp; 3187&nbsp; C.A.Bs.As.</strong></li>\n	<li><strong>4957 1563 &ndash; 4932 6395/5497</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 3972, '', '', '', '', 1, 15, '', ''),
(191, 'Escuela Intendente Alvear', 'TM 8 a 12,15 - TT 13 a 17,15 hs', '49311524', '', '', '', '', '', 'escuela14distrito06@gmail.com', 'www.buenosaires.gob.ar/areas/educacion/establecimientos/ficha.php?id=20032900&menu_id=10194', '', '', '', '', 0, 0, '', '', '1', '2014-08-29', NULL, 'Castro954.JPG', '', 'escuelas,escuelas primarias,educación primaria,educacion primaria,escuelas estatales,boedo,jornada simple', '<p>Establecimiento N&deg; 14 - Distrito Escolar N&deg; 6</p>\n\n<ul>\n	<li><strong>Educaci&oacute;n Estatal.</strong></li>\n	<li><strong>Primaria Com&uacute;n</strong></li>\n	<li><strong>Jornada Simple</strong></li>\n</ul>\n\n<p><em><strong>M&aacute;s informaci&oacute;n en&nbsp;nuestra Web Oficial</strong></em></p>\n\n<hr />\n<p>Distrito Escolar N&deg; 6</p>\n\n<ul>\n	<li><strong>Humberto 1&deg;&nbsp; 3187&nbsp; C.A.Bs.As.</strong></li>\n	<li><strong>4957 1563 &ndash; 4932 6395/5497</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 954, '', '', '', '', 1, 24, '', ''),
(196, 'Escuela Provincia de Entre Ríos', '8.15 a 16.20 hs.', '49211975', '49825473', '', '', '', '', 'escuela23distrito06@gmail.com', 'www.buenosaires.gob.ar/areas/educacion/establecimientos/ficha.php?id=20155500&menu_id=10194', '', '', '', '', 0, 0, '', '', '1', '2014-08-29', NULL, 'PRovER.jpg', '', 'escuelas,escuelas primarias,educación primaria,educacion primaria,jornada completa,escuelas estatales,boedo', '<p>Establecimiento N&deg; 23 - Distrito Escolar N&deg; 6</p>\n\n<ul>\n	<li><strong>Educaci&oacute;n Estatal.</strong></li>\n	<li><strong>Primaria Com&uacute;n</strong></li>\n	<li><strong>Jornada Completa</strong></li>\n	<li><strong>Servicio de Comedor Escolar</strong></li>\n</ul>\n\n<p><strong><em>M&aacute;s informaci&oacute;n en nuestra Web Oficial</em></strong></p>\n\n<hr />\n<p>Distrito Escolar N&deg; 6</p>\n\n<ul>\n	<li><strong>Humberto 1&deg;&nbsp; 3187&nbsp; C.A.Bs.As.</strong></li>\n	<li><strong>4957 1563 &ndash; 4932 6395/5497</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 1935, '', '', '', '', 1, 13, '', ''),
(197, 'Jardín de Infantes Nucleado N° 25 - Letra C', '', '49225797', '', '', '', '', '', '', 'www.buenosaires.gob.ar/areas/educacion/establecimientos/ficha.php?id=20065701&menu_id=10194', '', '', '', '', 0, 0, '', '', '1', '2014-08-29', NULL, 'Tarija4136.JPG', '', 'Jardín de infantes,jardin de infantes,jardines de infantes,jornada simple', '<p>Establecimiento N&deg; 25 &ndash; D.E. N&deg; 6 &ndash; Letra C</p>\n\n<ul>\n	<li><strong>Educaci&oacute;n Estatal. &nbsp;&nbsp;</strong></li>\n	<li><strong>Inicial Com&uacute;n. </strong></li>\n	<li><strong>Jard&iacute;n de Infantes Nucleado</strong></li>\n	<li><strong>Jornada Simple.</strong></li>\n	<li><strong>Salitas de 3 a&ntilde;os, 4 a&ntilde;os, 5 a&ntilde;os.</strong></li>\n</ul>\n\n<p><strong><em>M&aacute;s informaci&oacute;n en nuestra Web Oficial</em></strong></p>\n\n<hr />\n<p>Lugar de Informaci&oacute;n:</p>\n\n<ul>\n	<li><strong>Grupo 1 b</strong></li>\n	<li><strong><strong>Independencia Av. N&deg; 3354</strong></strong></li>\n	<li><strong><strong><strong>4932 6757</strong></strong></strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 4136, '', '', '', '', 1, 4, '', ''),
(198, 'Jardín de Infantes Nucleado N° 8 - Letra C', '', '49326757', '', '', '', '', '', '', 'www.buenosaires.gob.ar/areas/educacion/establecimientos/ficha.php?id=20065700&menu_id=10194', '', '', '', '', 0, 0, '', '', '1', '2014-08-29', NULL, 'MA1935-3.jpg', '', 'Jardin de infantes,Jardín de Infantes,jardines de infantes', '<p>Establecimiento N&deg; 8&nbsp;&ndash; D.E. N&deg; 6 &ndash; Letra C</p>\n\n<ul>\n	<li><strong>Educaci&oacute;n Estatal. &nbsp;&nbsp;</strong></li>\n	<li><strong>Inicial Com&uacute;n. </strong></li>\n	<li><strong>Jard&iacute;n de Infantes Nucleado</strong></li>\n	<li><strong>Jornada Simple.</strong></li>\n	<li><strong>Salitas de 3 a&ntilde;os, 4 a&ntilde;os, 5 a&ntilde;os.</strong></li>\n</ul>\n\n<p><strong><em>M&aacute;s informaci&oacute;n en nuestra Web Oficial</em></strong></p>\n\n<hr />\n<p>Lugar de Informaci&oacute;n:</p>\n\n<ul>\n	<li><strong>Grupo 1 b</strong></li>\n	<li><strong><strong>Independencia Av. N&deg; 3354</strong></strong></li>\n	<li><strong><strong><strong>4932 6757</strong></strong></strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 1913, '', '', '', '', 1, 26, '', ''),
(199, 'Jardín de Infantes Mariano Boedo', '', '49326757', '', '', '', '', '', 'Jic4de6@gmail,com', 'www.buenosaires.gob.ar/areas/educacion/establecimientos/ficha.php?id=20088900&menu_id=10194', '', '', '', '', 0, 0, '', '', '1', '2014-08-29', NULL, 'escuelainfantilCastroBarros965.JPG', '', 'jardín de infantes,jardin de infantes,jardines de infantes,boedo', '<p>Establecimiento N&deg; 4 &ndash; D.E. N&deg; 6</p>\n\n<ul>\n	<li><strong>Educaci&oacute;n Estatal. &nbsp;&nbsp;</strong></li>\n	<li><strong>Inicial Com&uacute;n. </strong></li>\n	<li><strong>Jard&iacute;n de Infantes Nucleado</strong></li>\n	<li><strong>Jornada Simple.</strong></li>\n	<li><strong>Salitas de 3 a&ntilde;os, 4 a&ntilde;os, 5 a&ntilde;os.</strong></li>\n</ul>\n\n<p><strong><em>M&aacute;s informaci&oacute;n en nuestra Web Oficial</em></strong></p>\n\n<hr />\n<p>Lugar de Informaci&oacute;n:</p>\n\n<ul>\n	<li><strong>Grupo 1 b</strong></li>\n	<li><strong><strong>Independencia Av. N&deg; 3354</strong></strong></li>\n	<li><strong><strong><strong>4932 6757</strong></strong></strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 965, '', '', '', '', 1, 9, '', ''),
(200, 'Jardín de Infantes Integral N° 2', '', '49311287', '', '', '', '', '', '', 'www.buenosaires.gob.ar/areas/educacion/establecimientos/ficha.php?id=20130900&menu_id=10194', '', '', '', '', 0, 0, '', '', '1', '2014-08-29', NULL, '100_9222.jpg', '', 'jardín de infantes,jardin de infantes,jardines de infante,boedo', '<p>Establecimiento N&deg; 2 &ndash; D.E. N&deg; 6</p>\n\n<ul>\n	<li><strong>Educaci&oacute;n Estatal. &nbsp;&nbsp;</strong></li>\n	<li><strong>Inicial Com&uacute;n. </strong></li>\n	<li><strong>Jard&iacute;n de Infantes Integral</strong></li>\n	<li><strong>Jornada Completa</strong></li>\n	<li><strong>Salitas de 3 a&ntilde;os, 4 a&ntilde;os, 5 a&ntilde;os.</strong></li>\n</ul>\n\n<p><strong><em>M&aacute;s informaci&oacute;n en nuestra Web Oficial</em></strong></p>\n\n<hr />\n<p>Lugar de Informaci&oacute;n:</p>\n\n<ul>\n	<li><strong>Grupo 1 b</strong></li>\n	<li><strong><strong>Independencia Av. N&deg; 3354</strong></strong></li>\n	<li><strong><strong><strong>4932 6757</strong></strong></strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 3354, '', '', '', '', 1, 51, '', ''),
(201, 'Crema y Chocolate', 'Solicitar entrevista para su comodidad', '49216043 Caballito', '49329447 Boedo', '', '', '', '', 'Jardincremaychocolate@yahoo.com.ar', 'www.cremaychocolate.com/', '', '', '', '', 0, 1, '', '', '1', '2014-09-03', NULL, 'CremayChocolate.jpg', '', 'Jardín de infantes,jardin de infantes,sala de bebes,sala de bebés,Jardín maternal', '<p>ABIERTA LA&nbsp;INSCRIPCI&Oacute;N</p>\n\n<p>Consulte por vacantes disponibles:</p>\n\n<ul>\n	<li><strong>Horario Extendido de 8 a 18.30&nbsp;hs</strong></li>\n	<li><strong>​Jornada Simple y/o Completa</strong></li>\n	<li><strong>​Comedor Escolar</strong></li>\n	<li><strong>​Abierto todo el a&ntilde;o</strong></li>\n	<li><strong>Colonia de Vacaciones</strong></li>\n</ul>\n\n<p><strong><em>M&aacute;s informaci&oacute;n en nuestra Web Oficial</em></strong></p>\n\n<hr />\n<p>JARD&Iacute;N MATERNAL, <strong>Sede Caballito</strong></p>\n\n<ul>\n	<li><strong>Sala de Beb&eacute;s, 1,&nbsp;2 y 3 a&ntilde;os</strong></li>\n	<li><strong>Carlos Calvo &nbsp;4348</strong></li>\n	<li><strong>4921-6043</strong></li>\n	<li><strong>DGEGP&nbsp;Registro 215</strong></li>\n</ul>\n\n<hr />\n<p>JARD&Iacute;N MATERNAL Y DE INFANTES, <strong>Sede Boedo</strong></p>\n\n<ul>\n	<li><strong>Sala de&nbsp;Beb&eacute;s, 1,&nbsp;2, 3, 4 y 5&nbsp;a&ntilde;os</strong></li>\n	<li><strong>Castro Barros &nbsp;977</strong></li>\n	<li><strong>4932-9447</strong></li>\n	<li><strong>DGEGP&nbsp;Registro 220</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, 'cuponcrema.png', 'crema y chocolate'),
(202, 'El Correntino  ', '', '49318758', '', '', '', '', '', '', '', 'www.facebook.com/el.correntino.121', '', '', '', 1, 1, '1:2:3:4:5', '', '1', '2014-09-03', NULL, 'elcorrentino.jpg', '', 'restaurante,parrilla,parrillada,pastas,pastas caseras,minutas,menu ejecutivo,menú ejecutivo,pescados,cocina criolla', '<p>ATENDIDO POR SUS DUE&Ntilde;OS</p>\n\n<p><strong><em>HACE LA DIFERENCIA EN BOEDO</em></strong></p>\n\n<p><strong><em>&quot;Segu&iacute; los men&uacute;es diarios por FACEBOOK&quot;</em></strong></p>\n\n<hr />\n<p>Restaurante y Parrilla</p>\n\n<ul>\n	<li><strong>Entradas</strong></li>\n	<li><strong>Pescados</strong></li>\n	<li><strong>Variedad en Guarniciones</strong></li>\n	<li><strong>Ensaladas con Hortalizas de Quinta</strong></li>\n	<li><strong>Pastas Caseras Amasadas Artesanalmente</strong></li>\n	<li><strong>Salsas al Gusto</strong></li>\n	<li><strong>Platos Light</strong></li>\n	<li><strong>Cocina Sorpresa</strong></li>\n	<li><strong>Parrilla Gourmet</strong></li>\n	<li><strong>Parrillada &quot;El Correntino&quot;</strong></li>\n	<li><strong>Postres</strong></li>\n</ul>\n\n<hr />\n<p>AGASAJATE</p>\n\n<p><strong>TODOS LOS DOMINGOS DOMINGOS EN NUESTRO SAL&Oacute;N:</strong></p>\n\n<p><strong><em>&quot;PASTA LIBRE&quot;&nbsp;</em></strong></p>\n\n<p><strong><em>AMASADO ARTESANAL</em></strong></p>\n\n<hr />\n<p>&nbsp;</p>\n', 3629, 'En el corazón de Boedo', '', '', '', 1, 7, 'elcorrentino.png', 'el correntino boedo'),
(203, 'Escuela de Danzas Estatal', '', '49225797', '', '', '', '', '', '', 'www.buenosaires.gob.ar/areas/educacion/establecimientos/ficha.php?id=20084421&menu_id=10194', '', '', '', '', 0, 0, '', '', '1', '2014-09-13', NULL, 'Tarija4136.JPG', '', 'Danza clásica,danza clasica,tango,folclore,folklore,danza contemporanea,danzas,boedo,estatal', '<p>Curso Infantil N&deg;&nbsp;10 - Distrito Escolar 6</p>\n\n<ul>\n	<li><strong>Estatal. &nbsp;</strong></li>\n	<li><strong>Talleres y Cursos de Educaci&oacute;n Art&iacute;stica</strong></li>\n	<li><strong>Danza Cl&aacute;sica y Contempor&aacute;nea. (Duraci&oacute;n 7 a&ntilde;os)</strong></li>\n	<li><strong>Int&eacute;rprete de Danzas Folcl&oacute;ricas Argentinas y Tango (Duraci&oacute;n 5 a&ntilde;os)</strong></li>\n	<li><strong>Cursos Vocacionales y de Preiniciaci&oacute;n a la Danza, sin Titulaci&oacute;n </strong></li>\n</ul>\n\n<p><strong><em>M&aacute;s informaci&oacute;n en nuestra Web Oficial</em></strong></p>\n\n<hr />\n<p>Distrito Escolar N&deg; 6</p>\n\n<ul>\n	<li><strong>Humberto 1&deg;&nbsp; 3187&nbsp; C.A.Bs.As.</strong></li>\n	<li><strong>4957 1563 &ndash; 4932 6395/5497</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 4136, '', '', '', '', 1, 4, '', ''),
(204, 'CFP N° 30 - UOyPE', '', '51683200', 'Int.: 4275', '', '', '', '', 'cfp30plasticos@yahoo.com.ar', 'www.buenosaires.gob.ar/areas/educacion/establecimientos/ficha.php?id=99999955&menu_id=10194', '', '', '', '', 0, 0, '', '', '1', '2014-09-13', NULL, 'cdrat.jpg', '', 'Formación profesional,profesional,Formacion profesional', '<p>CFP N&deg; 30 &ndash; D.E. N&deg; 6</p>\n\n<ul>\n	<li><strong>Educaci&oacute;n Estatal. &nbsp;</strong></li>\n	<li><strong>Formaci&oacute;n Profesional</strong></li>\n	<li><strong>Personas mayores de 14 a&ntilde;os</strong></li>\n	<li><strong>La duraci&oacute;n de Cursos var&iacute;a seg&uacute;n la especialidad</strong></li>\n	<li><strong>Certificados Oficiales</strong></li>\n</ul>\n\n<p><strong><em>M&aacute;s informaci&oacute;n en nuestra Web Oficial</em></strong></p>\n\n<hr />\n<p>Gerencia Operativa de Educaci&oacute;n y Trabajo</p>\n\n<ul>\n	<li><strong>Esmeralda 55 Piso 7&deg;&nbsp;Frente</strong></li>\n	<li><strong><strong>4339 1745</strong></strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 1350, '', '', '', '', 1, 17, '', ''),
(205, 'Escuela de Comercio G. M. Zubiría', '', '49222353', '', '', '', '', '', 'com22de6@buenosaires.edu.ar', 'www.buenosaires.gob.ar/areas/educacion/establecimientos/ficha.php?id=20130300&menu_id=10194', '', '', '', '', 0, 0, '', '', '1', '2014-09-13', NULL, 'Constitución.jpg', '', 'Perito mercantil,comercial,boedo,escuela de comercio,escuela comercial', '<p>Escuela de Comercio N&deg; 22 &ndash; D.E. N&deg; 6</p>\n\n<ul>\n	<li><strong>Educaci&oacute;n Estatal. &nbsp;</strong></li>\n	<li><strong>Media Com&uacute;n</strong></li>\n	<li><strong>Escuela de Comercio</strong></li>\n	<li><strong>T&iacute;tulo Perito Mercantil</strong></li>\n</ul>\n\n<p><strong><em>M&aacute;s informaci&oacute;n en nuestra Web Oficial</em></strong></p>\n\n<hr />\n<p>Regi&oacute;n III</p>\n\n<ul>\n	<li><strong>Boedo 760</strong></li>\n	<li><strong><strong>4957 5476</strong></strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 4154, '', '', '', '', 1, 31, '', ''),
(206, 'Escuela Técnica Reconquista de Buenos Aires', '', '49310118', '49572920', '', '', '', '', 'et29de6@gmail.com.ar', 'www.buenosaires.gob.ar/areas/educacion/establecimientos/ficha.php?id=20129800&menu_id=10194', '', '', '', '', 0, 0, '', '', '1', '2014-09-13', NULL, 'Boedo760.JPG', '', 'Industrial,educación técnica,educacion tecnica,tecnica,técnica', '<p>Escuela T&eacute;cnica N&deg; 29 &ndash; D.E. N&deg; 6</p>\n\n<ul>\n	<li><strong>Educaci&oacute;n Estatal. &nbsp;</strong></li>\n	<li><strong>Media Com&uacute;n</strong></li>\n	<li><strong>Escuela T&eacute;cnica</strong></li>\n</ul>\n\n<p><strong><em>M&aacute;s informaci&oacute;n en nuestra Web Oficial</em></strong></p>\n\n<hr />\n<p>Direcci&oacute;n de Educaci&oacute;n T&eacute;cnica</p>\n\n<ul>\n	<li><strong>Esmeralda 55 Piso 5 Frente</strong></li>\n	<li><strong><strong>4339 1840</strong></strong></li>\n	<li><strong><strong><strong>4339 1846</strong></strong></strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 760, '', '', '', '', 1, 13, '', ''),
(207, 'CFP N° 8 - SMATA', '', '49570186', '', '', '', '', '', 'centro8pymes@datamarkets.com', 'www.buenosaires.gob.ar/areas/educacion/establecimientos/ficha.php?id=20201200&menu_id=10194', '', '', '', '', 0, 0, '', '', '1', '2014-09-13', NULL, 'smata.jpg', '', 'Educación técnica,educacion tecnica,automotor,electricidad', '<p>Centro de Formaci&oacute;n Profecional N&deg; 8 &ndash; D.E. N&deg; 6</p>\n\n<p>SMATA</p>\n\n<ul>\n	<li><strong>Educaci&oacute;n Estatal. &nbsp;</strong></li>\n	<li><strong>Formaci&oacute;n Profesional</strong></li>\n	<li><strong>Mec&aacute;nica y Electricidad del Automotor</strong></li>\n	<li><strong>Otros</strong></li>\n</ul>\n\n<p><strong><em>M&aacute;s informaci&oacute;n en nuestra Web Oficial</em></strong></p>\n\n<hr />\n<p>Gerencia operativa de Educaci&oacute;n y Trabajo</p>\n\n<ul>\n	<li><strong>Esmeralda 55 Piso 7&deg; Frente</strong></li>\n	<li><strong><strong>4339 1745</strong></strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 851, '', '', '', '', 1, 26, '', ''),
(208, 'Escuela Primaria para Adultos República de Colombia', 'de 18 a 21,45 hs', '49210566', '', '', '', '', '', '', 'www.buenosaires.gob.ar/areas/educacion/establecimientos/ficha.php?id=20038800&menu_id=10194', '', '', '', '', 0, 0, '', '', '1', '2014-09-14', NULL, 'Garay3972.jpg', '', 'Primaria adulto,primaria adultos,adultos', '<p>Escuela Primaria para Adultos N&deg; 26 - Distrito Escolar 6</p>\n\n<ul>\n	<li><strong>Educaci&oacute;n Estatal. &nbsp;</strong></li>\n	<li><strong>Primaria Adultos &ndash; Formaci&oacute;n Profesional duraci&oacute;n 3 a&ntilde;os</strong></li>\n	<li><strong>Plan de estudio</strong></li>\n	<li><strong>Se cursan 2 horas diarias</strong></li>\n</ul>\n\n<p><strong><em>M&aacute;s informaci&oacute;n en nuestra Web Oficial</em></strong></p>\n\n<hr />\n<p>Direcci&oacute;n de Educaci&oacute;n del Adulto y del Adolescente</p>\n\n<ul>\n	<li><strong>Esmeralda 55 Piso 4&deg;</strong></li>\n	<li><strong>4339 1818 </strong></li>\n	<li><strong>4339 1819</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 3972, '', '', '', '', 1, 15, '', ''),
(209, 'Jardín de Infantes Nucleados N°6 - Letra B', '', '49249527', '', '', '', '', '', '', 'www.buenosaires.gob.ar/areas/educacion/establecimientos/ficha.php?id=20015800&menu_id=10194', '', '', '', '', 0, 0, '', '', '1', '2014-09-14', NULL, '100_9213.jpg', '', 'Jardín de infantes,jardin de infantes,salita de 2,salita de 3,salita de 4,salita de 5,boedo', '<p>Establecimiento N&deg; 06 &ndash; D.E. N&deg; 8</p>\n\n<ul>\n	<li><strong>Educaci&oacute;n Estatal. &nbsp;</strong></li>\n	<li><strong>Inicial Com&uacute;n. </strong></li>\n	<li><strong>Jard&iacute;n de Infantes Nucleados</strong></li>\n	<li><strong>Jornada Simple.</strong></li>\n	<li><strong>Salas de 2 a&ntilde;os, 3 a&ntilde;os, 4 a&ntilde;os, 5 a&ntilde;os.</strong></li>\n</ul>\n\n<p><strong><em>M&aacute;s informaci&oacute;n en nuestra Web Oficial</em></strong></p>\n\n<hr />\n<p>Lugar de Informaci&oacute;n:</p>\n\n<ul>\n	<li><strong>Grupo IV</strong></li>\n	<li><strong><strong>Lautaro 752</strong></strong></li>\n	<li><strong><strong><strong>4633 2702</strong></strong></strong></li>\n	<li><strong><strong><strong><strong>4633 3448</strong></strong></strong></strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 4396, '', '', '', '', 1, 29, '', ''),
(210, 'Jardín de Infantes Nucleados N° 20 - Letra C', '', '49222612', '', '', '', '', '', '', 'www.buenosaires.gob.ar/areas/educacion/establecimientos/ficha.php?id=20155101&menu_id=10194', '', '', '', '', 0, 0, '', '', '1', '2014-09-14', NULL, 'EFA.jpg', '', 'Jardín de Infantes,jardin de infantes,salita de 3,salita de 4,salita de 5,boedo', '<p>Establecimiento N&deg; 20 &ndash; Letra C &ndash; D.E. N&deg; 8</p>\n\n<ul>\n	<li><strong>Educaci&oacute;n Estatal. &nbsp;</strong></li>\n	<li><strong>Inicial Com&uacute;n. </strong></li>\n	<li><strong>Jard&iacute;n de Infantes Nucleados</strong></li>\n	<li><strong>Jornada Simple.</strong></li>\n	<li><strong>Salas de 3 a&ntilde;os, 4 a&ntilde;os, 5 a&ntilde;os.</strong></li>\n</ul>\n\n<p><strong><em>M&aacute;s informaci&oacute;n en nuestra Web Oficial</em></strong></p>\n\n<hr />\n<p>Lugar de Informaci&oacute;n:</p>\n\n<ul>\n	<li><strong>Grupo IV</strong></li>\n	<li><strong><strong>Lautaro 752</strong></strong></li>\n	<li><strong><strong><strong>4633 2702</strong></strong></strong></li>\n	<li><strong><strong><strong><strong>4633 3448</strong></strong></strong></strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 2147, '', '', '', '', 1, 16, '', ''),
(211, 'Escuela Eloy Fernández Alonso', 'TM 8 a 12,15 - TT 13 a 17,15 hs', '49222612', '', '', '', '', '', 'pri20de08@yahoo.com.ar', 'www.buenosaires.gob.ar/areas/educacion/establecimientos/ficha.php?id=20134700&menu_id=10194', '', '', '', '', 0, 0, '', '', '1', '2014-09-14', NULL, 'EFA.jpg', '', 'Escuela primaria,educación primaria,educacion primaria,jornada simple,boedo', '<p>Establecimiento N&deg; 20 - Distrito Escolar 8</p>\n\n<ul>\n	<li><strong>Educaci&oacute;n Estatal. &nbsp;</strong></li>\n	<li><strong>Primaria Com&uacute;n</strong></li>\n	<li><strong>Jornada Simple</strong></li>\n</ul>\n\n<p><strong><em>M&aacute;s informaci&oacute;n en nuestra Web Oficial</em></strong></p>\n\n<hr />\n<p>Distrito Escolar N&deg; 8</p>\n\n<ul>\n	<li><strong>Av. La Plata 632&nbsp; C.A.Bs.As.</strong></li>\n	<li><strong><strong>4921 8612</strong></strong></li>\n	<li><strong><strong><strong>4922 9043</strong></strong></strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 2147, '', '', '', '', 1, 16, '', ''),
(213, 'Escuela San José de Calasanz', 'TM 8 a 12,15 - TT 13 a 17,15 hs', '49220697', '', '', '', '', '', 'calasanz68@yahoo.com.ar', 'www.buenosaires.gob.ar/areas/educacion/establecimientos/ficha.php?id=20090200&menu_id=10194', '', '', '', '', 0, 0, '', '', '1', '2014-09-14', NULL, 'calasanz.jpg', '', 'educación primaria,educacion primaria,jornada simple,primaria,boedo', '<p>Establecimiento N&deg; 6 - Distrito Escolar 8</p>\n\n<ul>\n	<li><strong>Educaci&oacute;n Estatal. &nbsp;</strong></li>\n	<li><strong>Primaria Com&uacute;n</strong></li>\n	<li><strong>Jornada Simple</strong></li>\n</ul>\n\n<p><strong><em>M&aacute;s informaci&oacute;n en nuestra Web Oficial</em></strong></p>\n\n<hr />\n<p>Distrito Escolar N&deg; 8</p>\n\n<ul>\n	<li><strong>Av. La Plata 632&nbsp; C.A.Bs.As.</strong></li>\n	<li><strong><strong>4921 8612</strong></strong></li>\n	<li><strong><strong><strong>4922 9043</strong></strong></strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 1038, '', '', '', '', 1, 49, '', ''),
(214, 'Escuela Primaria para Adultos  San José de Calasanz', 'de 18 a 21,45 hs', '49220697', '', '', '', '', '', '', 'www.buenosaires.gob.ar/areas/educacion/establecimientos/ficha.php?id=20105500&menu_id=10194', '', '', '', '', 0, 0, '', '', '1', '2014-09-16', NULL, 'calasanz.jpg', '', 'Primaria Adultos,formacion profesional,formación profesional', '<p>Establecimiento N&deg; 06 - Distrito Escolar 8</p>\n\n<ul>\n	<li><strong>Educaci&oacute;n Estatal. &nbsp;</strong></li>\n	<li><strong>Primaria Adultos </strong></li>\n	<li><strong>Formaci&oacute;n Profesional</strong></li>\n	<li><strong>Plan de Estudios de 3 a&ntilde;os</strong></li>\n	<li><strong>Jornada de 2 horas diarias</strong></li>\n</ul>\n\n<p><strong><em>M&aacute;s informaci&oacute;n en nuestra Web Oficial</em></strong></p>\n\n<hr />\n<p>Direcci&oacute;n de Educaci&oacute;n del Adulto y Adolescente</p>\n\n<ul>\n	<li><strong>Esmeralda 55 Piso 4&deg;&nbsp; C.A.Bs.As.</strong></li>\n	<li><strong>4339 1818</strong></li>\n	<li><strong>4339 1819</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 1038, '', '', '', '', 1, 49, '', ''),
(215, 'CENP  Asociación Vecinal Florentino Ameghino', '', '46722684', '', '', '', '', '', 'edu_centrosyahoo.com.ar', 'www.buenosaires.gob.ar/areas/educacion/establecimientos/ficha.php?id=20159824&menu_id=10194', '', '', '', '', 0, 0, '', '', '1', '2014-09-16', NULL, 'FAmeghino‏.jpg', '', 'Primaria Adultos,Adultos', '<p>Establecimiento N&deg; 32 - Distrito Escolar 8</p>\n\n<ul>\n	<li><strong>Educaci&oacute;n Estatal. &nbsp;</strong></li>\n	<li><strong>Primaria Adultos </strong></li>\n	<li><strong>Formaci&oacute;n Profesional</strong></li>\n	<li><strong>Plan de Estudios de 3 a&ntilde;os</strong></li>\n	<li><strong>Jornada de 2 horas diarias en Turno Ma&ntilde;ana, Tarde y Noche</strong></li>\n	<li><strong>Funciona en Empresas o Sindicatos</strong></li>\n</ul>\n\n<p><strong><em>M&aacute;s informaci&oacute;n en nuestra Web Oficial</em></strong></p>\n\n<hr />\n<p>Direcci&oacute;n de Educaci&oacute;n del Adulto y Adolescente</p>\n\n<ul>\n	<li><strong>Esmeralda 55 Piso 4&deg;&nbsp; C.A.Bs.As.</strong></li>\n	<li><strong>4339 1818</strong></li>\n	<li><strong>4339 1819</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 4224, '', '', '', '', 1, 51, '', ''),
(216, 'Instituto Ramón L. Falcón', '', '49313159', '', '', '', '', '', 'Info@institutofalcon.com.ar', 'WWW.INSTITUTOFALCON.EDU.AR', '', '', '', '', 0, 0, '', '', '1', '2014-09-22', NULL, 'ramonfalcon.jpg', '', 'Bachiller,perito mercantil,educacion fisica,infomática', '<p><strong>Desde 1966 al Servicio de la Educaci&oacute;n</strong></p>\n\n<p>Incorporado &quot;D.G.E.G.P.&quot; &nbsp;A-167</p>\n\n<p><em><strong>ABIERTA LA INSCRIPCI&Oacute;N 2015</strong></em></p>\n\n<p>de 9 a 12 y de 14 A 17 hs</p>\n\n<p>Aranceles Accesibles</p>\n\n<p><strong><em>M&aacute;s informaci&oacute;n en nuestra Web Oficial&nbsp;</em></strong></p>\n\n<hr />\n<p>Turno Ma&ntilde;ana</p>\n\n<ul>\n	<li><strong>Bachiller en Econom&iacute;a y Administraci&oacute;n (Ex Perito Mercantil)</strong></li>\n</ul>\n\n<p>Turno Tarde</p>\n\n<ul>\n	<li><strong>Bachiller en Econom&iacute;a y Administraci&oacute;n (Ex Perito Mercantil)</strong></li>\n	<li><strong>Bachiller en Educaci&oacute;n F&iacute;sica</strong></li>\n	<li><strong>Bachiller en Inform&aacute;tica</strong></li>\n</ul>\n\n<hr />\n<p>Institucional</p>\n\n<ul>\n	<li><strong>Tutor&iacute;as</strong></li>\n	<li><strong>Gabinete Psicopedag&oacute;gico</strong></li>\n	<li><strong>Asistencia Terap&eacute;utica - Convenio con la Facultad de Psicolog&iacute;a de la UBA</strong></li>\n	<li><strong>Talleres Extraprogram&aacute;ticos</strong></li>\n	<li><strong>​Jornadas de Convivencia</strong></li>\n	<li><strong>Dos Salas de Inform&aacute;tica</strong></li>\n	<li><strong>Polideportivo en el Establecimiento</strong></li>\n	<li><strong>Sal&oacute;n de usos m&uacute;ltiples</strong></li>\n	<li><strong>Sala de Audio, Proyecciones y Video</strong></li>\n	<li><strong>​Sal&oacute;n Comedor</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 660, '', '', '', '', 1, 54, '', ''),
(217, 'María Marta', 'Horarios a Convenir', '49414022', '', '1540436282', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-09-28', NULL, 'acompañamientoterapeutico.jpg', '', 'Cuidado abuelos,cuidado enfermos,acompañante,cuidado,cuidados,cuidado mayores,cuidado domiciliario', '<p>Atenci&oacute;n a:</p>\n\n<ul>\n	<li><strong>Abuelos</strong></li>\n	<li><strong>Enfermos</strong></li>\n	<li><strong>Personas Mayores</strong></li>\n</ul>\n\n<hr />\n<p>Servicios brindados:</p>\n\n<ul>\n	<li><strong>Acompa&ntilde;ante y Cuidados en Hospital o Sanatorio</strong></li>\n	<li><strong>Guardias en Internaci&oacute;n</strong></li>\n	<li><strong>Cuidados y Asistencia Domiliciaria por Convalecencia</strong></li>\n	<li><strong>Cuidados y Asistencia Domiciliaria Especial</strong></li>\n	<li><strong>Higiene y Confort</strong></li>\n</ul>\n\n<hr />\n<p>Curr&iacute;culum V&iacute;tae</p>\n\n<ul>\n	<li><strong>Certificado Habilitante</strong></li>\n	<li><strong>Referencias Constatables</strong></li>\n	<li><strong>Confianza y Responsabilidad</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(218, 'Lic. Verónica Giancristiano', 'Solicitar Turno', '49250755', '', '1531908642', '', '', '', 'verogiancris@yahoo.com.ar', '', '', '', '', '', 0, 0, '', '', '1', '2014-10-09', NULL, 'Giancristiano‏.jpg', '', 'Psocóloga,psicologa,psicologo,psicólogo,adolescentes,adolescente,Adultos,adulto,Tercer Edad', '<p>PSIC&Oacute;LOGA &nbsp; M.N. 56.342&nbsp;</p>\n\n<ul>\n	<li><strong>Adolescentes</strong></li>\n	<li><strong>Adultos</strong></li>\n	<li><strong>Tercer Edad</strong></li>\n</ul>\n\n<hr />\n<p><strong>Profesional del Hospital General de Agudos P. Pi&ntilde;ero</strong></p>\n\n<p>Honoracios accesibles</p>\n\n<p>Llamar para combinar disponibilidad horaria</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(219, 'Cortinas de Enrollar AD', '', '49245781', '', '1562797939 Gabriel - URGENCIAS', '', '', '49245781', '', '', '', '', '', '', 0, 0, '', '', '1', '2014-10-19', NULL, 'CortinasdeEnrollarAD‏.jpg', '', 'cortinas,cortinas de enrollar,veneciana,reparación de cortinas,colocación de cortinas,venta de cortinas', '<p>FABRICACI&Oacute;N, VENTA, REPARACIONES Y COLOCACI&Oacute;N</p>\n\n<hr />\n<p>Servicio General</p>\n\n<ul>\n	<li><strong>Cambio de Cintas</strong></li>\n	<li><strong>Reductores de Peso</strong></li>\n	<li><strong>Enrolladores Reforzados</strong></li>\n	<li><strong>Ejes de Madera, Chapa y Poleas</strong></li>\n	<li><strong>Cambio de Varillas</strong></li>\n	<li><strong>Cortinas de Madera P.V.C. Barrios Americanas</strong></li>\n	<li><strong>Automatizaci&oacute;n, Motores Nacionales e Importados</strong></li>\n	<li><strong>Cortinas Veneciana</strong></li>\n	<li><strong>Cortinas de Aluminio</strong></li>\n	<li><strong>Recuperado de Cortinas, Lijado y Barnizado</strong></li>\n	<li><strong>Ganchos, Rulemanes, Corazones de Madera y P.V.C.</strong></li>\n	<li><strong>Sistema Maravilla con Manivela</strong></li>\n</ul>\n\n<hr />\n<p><em>20 A&ntilde;os de trayectoria y responsabilidad nos avalan !!</em></p>\n\n<p>Solicite asesoramiento especializado</p>\n\n<p>Presupuesto sin cargo</p>\n\n<p>Su consulta no molesta, comun&iacute;quese que encontraremos una soluci&oacute;n para su necesidad.</p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(225, 'Cortez Diseño', 'Lunes a viernes de 9 a 13 y 14 a 18 hs', '49333156', '', '154445 6452', '', '', '49333156', 'miguelangelcortez@fibertel.com.ar', 'www.cortez.hol.es', 'www.facebook.com/cortezdesign', '', '', '', 0, 0, '', '', '1', '2015-02-22', NULL, 'Frente_Cortez.jpg', 'Diseño Grafico Cortez boedo', 'Diseño grafico,diseño,diseño cortez,grafica web,web,carteles,marquesina,banner,envases,papeleria,folletos,revistas,Páginas web,paginas web', '<p><strong>Somos profesionales con m&aacute;s de 20 a&ntilde;os de experiencia en creatividad, producci&oacute;n e impresi&oacute;n.</strong></p>\n\n<hr />\n<p>Realizamos todo tipo de trabajo en las distintas &aacute;reas del dise&ntilde;o:</p>\n\n<ul>\n	<li><strong>Web&nbsp;</strong></li>\n	<li><strong>Grafico</strong></li>\n	<li><strong>Audiovisual</strong></li>\n</ul>\n\n<hr />\n<p>Dise&ntilde;amos y ejecutamos piezas que respondan a cada necesidad y cada proyecto en desarrollo.</p>\n\n<ul>\n	<li><strong>Logos - Marcas - Papeler&iacute;a</strong></li>\n	<li><strong>Carteles - Marquesinas</strong></li>\n	<li><strong>Packaging</strong></li>\n	<li><strong>Dise&ntilde;o Editorial</strong></li>\n	<li><strong>Retoque Digital</strong></li>\n	<li><strong>Desarrollos Web</strong></li>\n	<li><strong>Impresi&oacute;n en general (tarjetas, folletos, revistas, etc)</strong></li>\n	<li><strong>Gigantografias / Banners</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 3761, '', '', '', '', 1, 34, '', ''),
(226, 'Lic. Anahí Porto', 'Solicitar turno', '', '', '1554964373', '', '', '', 'anahiporto.ph@gmail.com', '', '', '', '', '', 0, 0, '', '', '1', '2015-03-17', NULL, 'LicAnahiPorto.jpg', 'psicologa boedo', 'psicologo,psicologa,psicólogo,psicóloga,ayuda,trastornos,discapacidad,Angustia,Deprecion,Stress,psicodiagnostico,psicodiagnóstico,Depreción,conducta,hiperactividad,aprendisaje,eneuresis,eneurésis', '<p>PSIC&Oacute;LOGA UBA</p>\n\n<p>Master en Psicolog&iacute;a Cl&iacute;nica en la Universidad Paris 7, Francia</p>\n\n<p><strong>Inscripta en el REGISTRO NACIONAL de prestadores del MINISTERIO DE SALUD</strong></p>\n\n<hr />\n<p>&nbsp;</p>\n\n<p>Ni&ntilde;os y Adolescentes</p>\n\n<ul>\n	<li><strong>Problemas de Conducta</strong></li>\n	<li><strong>Hiperactividad</strong></li>\n	<li><strong>Trastornos en el aprendizaje</strong></li>\n	<li><strong>Eneur&eacute;sis</strong></li>\n	<li><strong>Discapacidad</strong></li>\n</ul>\n\n<hr />\n<p>Otras Terapias</p>\n\n<ul>\n	<li><strong>Orientaci&oacute;n a Padres</strong></li>\n	<li><strong>Orientaci&oacute;n Vocacional</strong></li>\n	<li><strong>Psicodiagn&oacute;sticos</strong></li>\n</ul>\n\n<hr />\n<p>Obras Sociales</p>\n\n<ul>\n	<li><strong>OSPIT</strong></li>\n	<li><strong>OSPEDYC</strong></li>\n	<li><strong>OSPEC</strong></li>\n	<li><strong>OSFOT</strong></li>\n	<li><strong>OSPIP&nbsp;</strong></li>\n	<li><strong>OSMISS (P.100)&nbsp;</strong></li>\n	<li><strong>OSMISS (P.200)​</strong></li>\n</ul>\n\n<p><strong>Entrega de factura para Reintegro</strong></p>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(227, 'Lic. Laura Scotoni', 'Desde 15 hs. Solicitar Turno', '20578871', '', '1566713036', '', '', '20578871', '', '', 'www.facebook.com/pages/Consultorio-Psicol%C3%B3gico/261436184053806?ref=aymt_homepage_panel', '', '', '', 0, 0, '', '', '1', '2015-03-17', NULL, 'LicLauraScotoni.jpg', 'psicologia en boedo', 'psicologa,clinica,psicóloga,psicologo,psicólogo', '<p>Psic&oacute;loga Matr&iacute;cula N&deg; 56341</p>\n\n<blockquote>\n<p><strong>Parte de la curaci&oacute;n est&aacute;,&nbsp;</strong><strong>en la voluntad de sanar</strong></p>\n</blockquote>\n\n<hr />\n<p>Psicoan&aacute;lisis</p>\n\n<ul>\n	<li><strong>Cl&iacute;nica de Adultos y Adolescentes</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(228, 'Amirarse Counseling', 'Solicitar Turno', '49313346', '', '1559515555', '', '', '49313346', 'amirarsecounseling@gmail.com', '', 'www.facebook.com/pages/Amirarse-Counseling/284754541559932?fref=photo', '', '', '', 0, 0, '', '', '1', '2015-03-18', NULL, 'consultoriapsicologica.jpg', 'psicologa boedo', '', '<p><strong>CONSULTOR&Iacute;A PSICOL&Oacute;GICA</strong></p>\n\n<p>Clr. Andrea Ram&iacute;rez (COUNSELOR)</p>\n\n<p>R.S.E. 212/98</p>\n\n<p><strong>Asociaci&oacute;n Argentina de Counselors, Legajo N&deg; 2328/2011/015</strong></p>\n\n<p>&nbsp;</p>\n\n<p><em>&ldquo;El problema no es como nos trata la vida,</em></p>\n\n<p><em>sino como la tratamos nosotros a ella&rdquo;</em></p>\n\n<p>&nbsp;</p>\n\n<p>Procesos de ayuda focalizados, de corta duraci&oacute;n.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Primer consulta orientativa sin cargo</strong></p>\n\n<hr />\n<p>Individual</p>\n\n<ul>\n	<li><strong>Desarrollo Personal</strong></li>\n	<li><strong>Crisis</strong></li>\n	<li><strong>Sexualidad</strong></li>\n	<li><strong>Educaci&oacute;n</strong></li>\n	<li><strong>Crisis Vitales (<em>Adolescencia, Menopausia, Tercera Edad</em>)</strong></li>\n</ul>\n\n<hr />\n<p>Pareja y Familia</p>\n\n<ul>\n	<li><strong>Separaci&oacute;n</strong></li>\n	<li><strong>Sexualidad</strong></li>\n	<li><strong>Apoyo en tratamientos de fertilidad</strong></li>\n	<li><strong>Conflictos</strong></li>\n</ul>\n\n<hr />\n<p>Laboral</p>\n\n<ul>\n	<li><strong>Organizacional</strong></li>\n	<li><strong>Trabajo Nuevo</strong></li>\n	<li><strong>Desempleo</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(230, 'Diseños Bobcat', '', '', '', '1530098111', '', '', '', 'contacto@dwgsite.com', 'dwgsite.com', '', '', '', '', 0, 1, '', '', '1', '2015-03-20', NULL, 'DiseñosBobcat.jpg', 'Diseño Grafico bobcat boedo', '', '<p><strong>DISE&Ntilde;AMOS TU P&Aacute;GINA WEB</strong></p>\n\n<p><em>Precios econ&oacute;micos.</em></p>\n\n<p><em>Planes de acuerdo a tus necesidades</em></p>\n\n<hr />\n<ul>\n	<li><strong>Dise&ntilde;amos y alojamos tu P&aacute;gina Web</strong></li>\n	<li><strong>Efectuamos el dise&ntilde;o o redise&ntilde;o de tu marca de acuerdo con las posibilidades de cada persona</strong></li>\n	<li><strong>Brindamos mantenimiento, actualizaci&oacute;n, dominio y hosting de P&aacute;ginas Web</strong></li>\n	<li><strong>Creamos logos, isologos, volantes y tarjetas personales</strong></li>\n</ul>\n\n<hr />\n<ul>\n	<li><strong>Facilita el est&iacute;mulo de las ventas</strong></li>\n	<li><strong>Ofrec&eacute; un apoyo visual a los servicios y mercader&iacute;a ofrecidos</strong></li>\n	<li><strong>Despierta el deseo de contacto con las propuestas</strong></li>\n	<li><strong>Agiliza el tiempo e increment&aacute; visitas con un s&oacute;lo clic</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, 'Bobcat-cuponera.jpg', ''),
(231, 'Dra. Florencia C. Germino', 'Solicitar entrevista', '49310763', '', '1559202136', '', '', '49310763', 'florencia_germino@hotmail.com', '', '', '', '', '', 0, 1, '', '', '1', '2015-04-05', NULL, 'DraFlorenciaGermino.jpg', '', '', '<p>Abogada recibida en la UBA</p>\n\n<hr />\n<p>Especializada en:</p>\n\n<ul>\n	<li><strong>Civil y Comercial&nbsp;</strong></li>\n	<li><strong>Accidentes de Transito</strong></li>\n	<li><strong>Familia </strong></li>\n	<li><strong>Sucesiones</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, 'abogada.png', 'abogada boedo'),
(232, 'CromicPC', 'Llamar para combinar Servicio', '', '', '1522359575', '', '', '', 'soporte@cromicpc.com.ar', 'www.cromicpc.com.ar/', '', '', '', '', 0, 1, '', '', '1', '2015-04-14', NULL, 'CromicPC.jpg', '', '', '<p>Servicio T&eacute;cnico garantizado y Soluciones para cada problema</p>\n\n<p>T&eacute;cnico Responsable:&nbsp;<strong>Mat&iacute;as H.</strong></p>\n\n<p><strong>Consulte sin compromiso</strong></p>\n\n<p><strong>Por m&aacute;s info. dirigirse a nuestra p&aacute;gina Web</strong></p>\n\n<hr />\n<p>Reparaci&oacute;n</p>\n\n<ul>\n	<li><strong>Instalaci&oacute;n</strong></li>\n	<li><strong>Configuraci&oacute;n</strong></li>\n	<li><strong>Mantenimiento de Sistemas Operativos</strong></li>\n	<li><strong>PC</strong></li>\n	<li><strong>Notebook</strong></li>\n	<li><strong>MacBooks</strong></li>\n</ul>\n\n<hr />\n<p>Ventas</p>\n\n<ul>\n	<li><strong>PC</strong></li>\n	<li><strong>Notebooks</strong></li>\n	<li><strong>Monitores</strong></li>\n</ul>\n\n<hr />\n<p>Soluciones simples</p>\n\n<ul>\n	<li><strong>BackUp (Resguardo de archivos)</strong></li>\n	<li><strong>Instalaci&oacute;n de sistemas Operativos</strong></li>\n	<li><strong>Aplicaciones (Office, Antivirus, etc)</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, 'CromocPC.png', 'reparaciones pc boedo'),
(237, 'Servicios Integrales ND', '', '49121241', '', '', '', '', '49121241', '', '', '', '', '', '', 0, 1, '', '', '1', '2015-06-09', NULL, 'ServiciosIntegralesND‏.png', 'servicios integrales nd boedo', '', '<p>&ldquo;<em>Su problema ahora es nuestro problema&rdquo;</em></p>\n\n<p>Responsable: <strong>Daniel Techera</strong></p>\n\n<p><strong>Trabajos Garantizados</strong></p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>Plomer&iacute;a</p>\n\n<ul>\n	<li><strong>Instalaci&oacute;n de Red</strong></li>\n	<li><strong>Grifer&iacute;as</strong></li>\n	<li><strong>V&aacute;lvulas</strong></li>\n	<li><strong>Filtraciones</strong></li>\n	<li><strong>Reformas</strong></li>\n	<li><strong>Cambio de artefactos</strong></li>\n	<li><strong>Columnas</strong></li>\n	<li><strong>Rejillas</strong></li>\n	<li><strong>Ca&ntilde;er&iacute;a de agua fr&iacute;a y caliente</strong></li>\n</ul>\n\n<hr />\n<p>Gas (Gasista Matriculado)</p>\n\n<ul>\n	<li><strong>Planos</strong></li>\n	<li><strong>Instalaci&oacute;n de red</strong></li>\n	<li><strong>P&eacute;rdidas</strong></li>\n	<li><strong>Instalaciones y reparaci&oacute;n de odas las marcas</strong></li>\n	<li><strong>Calefones</strong></li>\n	<li><strong>Estufas</strong></li>\n	<li><strong>Termotanques</strong></li>\n	<li><strong>Cocinas</strong></li>\n</ul>\n\n<hr />\n<p>Alba&ntilde;iler&iacute;a</p>\n\n<ul>\n	<li><strong>Cer&aacute;micas</strong></li>\n	<li><strong>Aberturas</strong></li>\n	<li><strong>Membranas</strong></li>\n	<li><strong>Revoque</strong></li>\n	<li><strong>Refacciones en general</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, 'ServiciosIntegralesND.png', 'servicios integrales boedo'),
(236, 'Pilates Free Body', 'De 8 a 12 y 16 a 21 hs.', '39642185', '', '', '', '', '39642185', '', '', 'www.facebook.com/pages/Pilates-Free-Body/481829145298143', '', '', '', 0, 1, '', '', '1', '2015-06-09', NULL, 'PilatesFreeBody.jpg', 'pilates free body en boedo', '', '<p><strong>An&iacute;mate a conocer un PILATES distinto en BOEDO</strong></p>\n\n<p>Responsable: <strong>Sonia Mariela Barrios</strong></p>\n\n<p><strong>Profesora de Educaci&oacute;n F&iacute;sica - Instructora de Pilates</strong></p>\n\n<p><em>&ldquo;Ven&iacute; a disfrutar liberando tu mente y</em><em>&nbsp;ejercitando tu&nbsp;cuerpo&rdquo;</em></p>\n\n<p><strong>&iexcl;Pregunt&aacute; por nuestras <em>Promos</em>!</strong><strong> </strong></p>\n\n<hr />\n<p>Beneficios de Pilates y Localizada</p>\n\n<ul>\n	<li><strong>Reduce el estr&eacute;s y la ansiedad</strong></li>\n	<li><strong>Fortalece la musculatura</strong></li>\n	<li><strong>Estilizala figura</strong></li>\n	<li><strong>Da mayor flexibilidad</strong></li>\n	<li><strong>Corrige posturas</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 3992, '', '', '', '', 1, 31, 'Pilates-Free-Body.png', ''),
(238, 'Instituto Privado 9 de Julio', 'Turno Mañana y Tarde', '49319299', '', '', '', '', '', '', 'www.inst9dejuliocaba.edu.ar/', 'www.facebook.com/institutoprivado9dejulio?fref=ts', '@colegio9dejulio', '', '', 0, 1, '', '', '1', '2015-06-09', NULL, 'instituto9dejulio.jpg', 'instituto 9 de julio Boedo', '', '<p><strong>80 A&Ntilde;OS AL SERVICIO DE LA EDUCACI&Oacute;N</strong></p>\n\n<p>Incorporado al &ldquo;D.G.E.G.P&rdquo;&nbsp; &nbsp;A-60</p>\n\n<p>T&Iacute;TULOS OFICIALES</p>\n\n<p><strong>Abierta la inscripci&oacute;n</strong></p>\n\n<p><em>M&aacute;s informaci&oacute;n en la Web Oficial o seguinos por Facebook</em></p>\n\n<hr />\n<p>Turno Ma&ntilde;ana</p>\n\n<ul>\n	<li><strong>Bachillerato con orientaci&oacute;n en Econom&iacute;a</strong></li>\n</ul>\n\n<hr />\n<p>Turno Tarde</p>\n\n<ul>\n	<li><strong>Bachillerato con orientaci&oacute;n en comunicaci&oacute;n</strong></li>\n</ul>\n\n<hr />\n<p>Institucional</p>\n\n<ul>\n	<li><strong>Grupos Reducidos de Alumnos</strong></li>\n	<li><strong>Talleres de Arte y Pl&aacute;stica</strong></li>\n	<li><strong>Gabinete Psicopedag&oacute;gico</strong></li>\n	<li><strong>Salidas Did&aacute;cticas</strong></li>\n	<li><strong>Convivencias</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 3156, '', '', '', '', 1, 31, 'Instituto9deJulio.png', 'instituto 9 de julio boedo'),
(239, 'Cli-Max - Durlock', 'De 9 a 18 hs ', '49323822', '', '1563821145', '1563995021', '397*418', '', 'refrigeración.climaxg.@gmail.com', '', 'www.facebook.com/climaxmantenimiento?ref=profile', '', '', '', 0, 0, '', '', '1', '2015-06-16', NULL, 'Boedo-Mi-Rioba-Cli-Max-Servicios-Generales.jpg', '', '', '<p><strong>PERSONAL ALTAMENTE CAPACITADO</strong></p>\n\n<p><strong>Instaladores Matriculados</strong></p>\n\n<p>Responsable:<strong>&nbsp;Maximiliano Vega</strong></p>\n\n<p>Atenci&oacute;n a Consorcios y Administraciones</p>\n\n<p><em>&ldquo;Solicite asesoramiento t&eacute;cnico, nuestro compromiso es brindarle una soluci&oacute;n a su problema&rdquo;</em></p>\n\n<p>Mantenimiento todo el a&ntilde;o</p>\n\n<p><strong>Presupuestos &ldquo;SIN CARGO&rdquo;</strong></p>\n\n<hr />\n<p>Refrigeraci&oacute;n- Aire Acondicionado</p>\n\n<ul>\n	<li><strong>Venta de Equipos</strong></li>\n	<li><strong>Instalaci&oacute;n</strong></li>\n	<li><strong>Servicio T&eacute;cnico</strong></li>\n	<li><strong>Equipos Split</strong></li>\n	<li><strong>Equipos Centrales</strong></li>\n	<li><strong>Equipos Tipo Cassete y Piso Techo</strong></li>\n	<li><strong>Carga de Gas</strong></li>\n</ul>\n\n<hr />\n<p>Durlock</p>\n\n<p>Sistema de Construcci&oacute;n en Seco</p>\n\n<ul>\n	<li><strong>Revestimientos</strong></li>\n	<li><strong>Paredes</strong></li>\n	<li><strong>Cielorrasos</strong></li>\n	<li><strong>Taparrollos</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 3927, '', '', '', '', 1, 39, '', ''),
(240, 'Clases de Canto', 'Solicitar Turno', '', '', '15555765246', '', '', '', 'lucia_alonsomoser@hotmail.com', '', '', '', '', '', 0, 0, '', '', '1', '2015-06-18', NULL, 'ClasesdeCanto.jpg', 'clases de canto boedo', '', '<p><strong>TODOS PODEMOS CANTAR</strong></p>\n\n<p>Responsable: <strong>Profesora Luc&iacute;a Alonso</strong></p>\n\n<hr />\n<p>Individual</p>\n\n<ul>\n	<li><strong>Para todas las edades</strong></li>\n	<li><strong>Clases personalizadas</strong></li>\n	<li><strong>T&eacute;cnica L&iacute;rica y Popular</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 55, '', ''),
(241, 'Cdora. Myrian Inés Schvind', '', '49248568', '', '1560314294', '', '', '49248568', 'contadoramyrian@delegales.com', '', '', '', '', '', 0, 0, '', '', '1', '2015-10-01', NULL, 'boedo-mi-rioba-Contadora-Myriam-Schvind.jpg', '', 'iva,autonomos,autónomos,ganancias,sueldos,monotributo,Declaraciones juradas', '<p><strong>Asesoramiento Contable&nbsp;Integral</strong></p>\n\n<hr />\n<p>Monotributo</p>\n\n<ul>\n	<li><strong>Inscripci&oacute;n</strong></li>\n	<li><strong>Recategorizaci&oacute;n</strong></li>\n	<li><strong>Declaraciones Juradas Informativas</strong></li>\n</ul>\n\n<hr />\n<p>Responsable Inscripto</p>\n\n<ul>\n	<li><strong>Inscripci&oacute;n</strong></li>\n	<li><strong>Recategorizaci&oacute;n de Aut&oacute;nomos</strong></li>\n	<li><strong>Declaraci&oacute;n Jurada de IVA</strong></li>\n	<li><strong>Impuesto a las Ganancias</strong></li>\n	<li><strong>Bienes Personales</strong></li>\n	<li><strong>Liquidaci&oacute;n de Sueldos y Cargas Sociales</strong></li>\n</ul>\n\n<hr />\n<p>Empresas</p>\n\n<ul>\n	<li><strong>Libros Societarios</strong></li>\n	<li><strong>Estados Contables</strong></li>\n	<li><strong>Liquidaci&oacute;n a la Ganancia M&iacute;nima Presunta</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(243, 'Residencia San Cristóbal', 'de 10 a 12 y de 16 a 19 hs.', '20105917', '', '', '', '', '20105917', 'residenciasancristobal@yahoo.com.ar', '', '', '', '', '', 0, 0, '', '', '1', '2015-10-05', NULL, 'mi-rioba-boedo-recidencia-san-cristobal.jpg', '', 'geriatrico,geriátrico,residencia,tercera edad', '<p>Directora: <strong>Natalia Raffo Palma</strong></p>\n\n<p><em>&ldquo;Experiencia, bienestar, profesionalismo y calidez son nuestro lema para diferenciarnos y brindar el mejor servicio&rdquo;</em></p>\n\n<hr />\n<p>Residencia apta para</p>\n\n<ul>\n	<li><strong>Autov&aacute;lidos</strong></li>\n	<li><strong>Semidependientes</strong></li>\n	<li><strong>Dependientes</strong></li>\n</ul>\n\n<hr />\n<p>Profesionales</p>\n\n<ul>\n	<li><strong>M&eacute;dico Cl&iacute;nico</strong></li>\n	<li><strong>Psiquiatra</strong></li>\n	<li><strong>Kinesi&oacute;logo</strong></li>\n	<li><strong>Nutricionista</strong></li>\n	<li><strong>Asistentes</strong></li>\n</ul>\n\n<hr />\n<p>Actividades</p>\n\n<ul>\n	<li><strong>Musicoterapia</strong></li>\n	<li><strong>Festejo de Cumplea&ntilde;os</strong></li>\n	<li><strong>Fechas Patrias</strong></li>\n</ul>\n\n<hr />\n<p>Comodidades</p>\n\n<ul>\n	<li><strong>Estructura edilicia en un solo nivel.</strong></li>\n	<li><strong>Amplios dormitorios con placar.</strong></li>\n	<li><strong>Habitaciones muy luminosas con llamador personal en cada cama.</strong></li>\n	<li><strong>Gran patio de estar.</strong></li>\n	<li><strong>Sal&oacute;n Comedor de amplio ventanal.</strong></li>\n</ul>\n\n<hr />\n<p>Servicios</p>\n\n<ul>\n	<li><strong>Lavander&iacute;a y Hoteler&iacute;a</strong></li>\n	<li><strong>Podolog&iacute;a y Peluquer&iacute;a opcional</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 2414, '', '', '', '', 1, 7, '', ''),
(244, 'Cosas de Modista', '', '20543609', '', '1559378933', '', '', '', 'cosademodistasgimail.com', '', 'www.facebook.com/Cosa-de-Modistas-398881606973299/timeline/', '', '', '', 0, 0, '', '', '1', '2015-10-08', NULL, 'cosa-de-modista.jpg', '', '', '<p>Profesora<strong> Paola&nbsp;Beatr&iacute;z&nbsp;Figliomeni</strong></p>\n\n<p><em>Indumentaria Creativa</em></p>\n\n<hr />\n<p>El Arte de Aprender</p>\n\n<ul>\n	<li><strong>Clases</strong></li>\n	<li><strong>Prototipos</strong></li>\n	<li><strong>Modelista</strong></li>\n	<li><strong>Vestuarista</strong></li>\n</ul>\n\n<hr />\n<p>El Arte de la Costura​</p>\n\n<ul>\n	<li><strong>Vestuario para Espect&aacute;culos</strong></li>\n	<li><strong>Vestidos de Fiesta</strong></li>\n	<li><strong>Disfraces</strong></li>\n	<li><strong>Indumentaria a Medida</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, 'cosa-de-modista.jpg', '');
INSERT INTO `anunciantes` (`id`, `nombre`, `horario`, `telefono1`, `telefono2`, `celular1`, `celular2`, `nextel`, `contestador`, `email`, `web`, `facebook`, `twitter`, `youtube`, `link_contacto`, `delivery`, `promociones`, `tarjetas`, `notas`, `estado`, `fecha_alta`, `fecha_baja`, `link_anuncio`, `txt_alt`, `tags`, `descripcion_anunciante`, `altura`, `dir_extra`, `dir_google`, `dir_google_2`, `dir_google_3`, `categoria_idcategoria`, `calles_idcalles`, `link_cuponera`, `txt_alt_cupo`) VALUES
(246, 'Pergamino Libros', '', '48566526', '', '', '', '', '', 'pergaminolibros@gmail.com', '', 'www.facebook.com/librospergamino', '', '', '', 1, 1, '1:3:4', '', '1', '2015-10-08', NULL, 'Pergamino-Libros‏.jpg', '', 'Librería,libreria,textos,novelas,libros,boedo', '<p>Somos m&aacute;s que una Librer&iacute;a.</p>\n\n<p><em>Cont&aacute;s con asesoramiento, eventos, sorteos, ofertas, distintos medios de pago y las &uacute;ltimas publicaciones lanzadas al mercado.</em></p>\n\n<p>Pod&eacute;s visitarnos tambi&eacute;n en&nbsp;<strong>Mercado Libre</strong>: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a href="http://listado.mercadolibre.com.ar/_CustId_189348998">http://listado.mercadolibre.com.ar/_CustId_189348998</a></p>\n\n<p><strong><em>Las entregas en BOEDO son &quot;SIN CARGO&quot;</em></strong></p>\n\n<p><strong><em>S&Iacute;, lo compr&aacute;s y te lo entregamos gratis en tu domicilio.</em></strong></p>\n\n<hr />\n<p>Libros a Pedido</p>\n\n<ul>\n	<li><strong>Novelas</strong></li>\n	<li><strong>Textos Escolares</strong></li>\n	<li><strong>Juveniles</strong></li>\n	<li><strong>Infantiles</strong></li>\n	<li><strong>Historia</strong></li>\n	<li><strong>Pol&iacute;tica</strong></li>\n	<li><strong>Ciencia</strong></li>\n	<li><strong>Filosof&iacute;a</strong></li>\n	<li><strong>Psicolog&iacute;a</strong></li>\n	<li><strong>Superaci&oacute;n Personal</strong></li>\n	<li><strong>Arte</strong></li>\n	<li><strong>Libros en Ingl&eacute;s</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 1131, '', '', '', '', 1, 58, 'mi-rioba-boedo-Pergamino-Libros‏.png', ''),
(247, 'AAB Servicios Informáticos', '', '49260881', '', '1566596159', '', '', '49260881', '', '', '', '', '', '', 0, 0, '', '', '1', '2015-10-19', NULL, 'mi-rioba-boedo-AAB‏.jpg', '', 'Servicio técnico,Servicio tecnico,PC,Notebook,Mac', '<p>Responsable T&eacute;cnico:&nbsp;<strong>Alejandro Barrios</strong></p>\n\n<p><strong><em>&quot;TENGA SU EQUIPO LISTO EN EL D&Iacute;A&quot;</em></strong></p>\n\n<p>Si lo realizamos en su casa u oficina, puede aprender como se hace y la pr&oacute;xima reinstalaci&oacute;n la realiza&nbsp;Ud. mismo.</p>\n\n<p>15 a&ntilde;os de experiencia nos avalan.</p>\n\n<p><strong>Presupuesto Sin Cargo</strong></p>\n\n<hr />\n<p>&nbsp;</p>\n\n<p>Servicio T&eacute;cnico</p>\n\n<ul>\n	<li><strong>PC</strong></li>\n	<li><strong>Notebook</strong></li>\n	<li><strong>MAC</strong></li>\n	<li><strong>Reinstalaci&oacute;n nativa de su computadora. ($ 250)</strong></li>\n	<li><strong>Configuraci&oacute;n de acuerdo a las necesidades del usuario.</strong></li>\n	<li><strong>Mantenimiento de Sistemas Operativos.</strong></li>\n	<li><strong>Servicio y Reparaci&oacute;n a domicilio.</strong></li>\n	<li><strong>Instalaci&oacute;n de Programas requeridos.</strong></li>\n	<li><strong>Limpieza de virus.</strong></li>\n	<li><strong>WIFI</strong></li>\n	<li><strong>MacBooks</strong></li>\n	<li><strong>Digitalizaci&oacute;n.</strong></li>\n	<li><strong>Recupero de datos ante la falla f&iacute;sica de su disco r&iacute;gido.</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, '', ''),
(248, 'Herrajes Boedo', '', '49218008', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '1', '2015-10-20', NULL, 'MI-RIOBA-Herrajes-Boedo.jpg', '', '', '<p>Cerrajer&iacute;a</p>\n\n<hr />\n<p>Herrajes</p>\n\n<ul>\n	<li>de Obra</li>\n	<li>Muebles de Cocina</li>\n	<li>Portones Levadisos</li>\n	<li>Portones Corredisos</li>\n</ul>\n\n<hr />\n<p>Accesorios</p>\n\n<ul>\n	<li>Amoblamiento de Cocinas</li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 1572, '', '', '', '', 1, 13, '', ''),
(249, 'Turismo San Cristóbal', 'Lunes, Martes y Jueves de 15 a 18 hs.', '49785684', '', '1538916277', '', '', '49785684', 'Claudiapelliza@hotmail.com', '', '', '', '', '', 0, 0, '1:2:3:4:5', '', '1', '2015-11-08', NULL, 'Turismo-San-Cristobal-mi-rioba-boedo‏.jpg', '', '', '<p>Coordinadora Responsable:<strong>&nbsp;Claudia Pelliza&nbsp;</strong></p>\n\n<p>I.G.J. N&deg; 61</p>\n\n<p>PAMI N&deg; 001-001-00132</p>\n\n<p>ROAC N&deg; 39</p>\n\n<p>Inscripto en 3&deg; Edad de G. C.A.Bs.As.</p>\n\n<p><em>&ldquo;Centro de Jubilados y &nbsp;Pensionados San Crist&oacute;bal&rdquo;</em></p>\n\n<p><strong>Turismo para TODAS LAS EDADES</strong></p>\n\n<hr />\n<p>Turismo de la Naci&oacute;n.&nbsp;&nbsp;Por m&aacute;s Info&nbsp;llamar al&nbsp;<strong>4978-5684 y 1538916277.</strong></p>\n\n<hr />\n<p><strong>21-02-2016</strong> Horario de salia a convenir. Para todo tipo de edades. <strong>San Clemente del Tuy&uacute;</strong> - 6 d&iacute;as y 5 noches, media pensi&oacute;n, Bus Semicama, <strong>Hotel Bellini</strong> cernano a la playa.$ 2500. <strong>Llamar por m&aacute;s INFO.</strong></p>\n\n<hr />\n<p><strong>06-03- 2016</strong> Horarios a convenir - <strong>San Rafael Pcia. de Mendoza</strong>&nbsp;- 6 d&iacute;as y 5 noches, pensi&oacute;n completa, Bus Semicama, Catering ida a bordo, incluye Asistencia M&eacute;dica, Hotel Pehelches - $ 3250 -&nbsp;<strong>Llamar por m&aacute;s INFO.</strong></p>\n\n<p>Excurciones optativas a City:</p>\n\n<ul>\n	<li>Bodegas</li>\n	<li>Las Le&ntilde;as</li>\n	<li>Reyu&ntilde;os</li>\n	<li>Ca&ntilde;on del Atuel</li>\n	<li>Termas de Cacheuta</li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 575, '', '', '', '', 1, 8, '', ''),
(250, 'La Barrial Eléctrica', 'De 8 a 20 hs.', '', '', '1531523598 Adrián', '1537802005 Walter', '', '', 'LaBarrialElectrica@gmail.com', '', '', '', '', '', 0, 1, '', '', '1', '2015-12-13', NULL, 'lbe.jpg', '', '', '<p><strong>T&eacute;cnicos Electricistas&nbsp;</strong></p>\n\n<p>Contactos</p>\n\n<ul>\n	<li><strong>15 3152 3598</strong> &nbsp;Adri&aacute;n</li>\n	<li><strong>15 3780 2005</strong> &nbsp;Walter</li>\n	<li><strong>15 5018 8279 </strong>&nbsp;Leandro.</li>\n</ul>\n\n<p><em>&ldquo;Trabajos Garantizados&rdquo;</em></p>\n\n<p><strong>Presupuestos sin cargo</strong></p>\n\n<hr />\n<p>Aire Acondicionado</p>\n\n<ul>\n	<li><strong>Equipos Splits</strong></li>\n	<li><strong>Sistema Fr&iacute;o-Calor</strong></li>\n	<li><strong>Instalaci&oacute;n</strong></li>\n	<li><strong>Reparaciones</strong></li>\n	<li><strong>Mantenimiento y Limpieza</strong></li>\n	<li><strong>Carga de Gas</strong></li>\n</ul>\n\n<hr />\n<p>Electricidad</p>\n\n<ul>\n	<li><strong>Instalaciones Domiciliarias</strong></li>\n	<li><strong>Reparaciones en General</strong></li>\n	<li><strong>Detecci&oacute;n de fugas el&eacute;ctricas</strong></li>\n	<li><strong>Descarga a Tierra</strong></li>\n</ul>\n\n<hr />\n<p>&nbsp;</p>\n', 0, '', '', '', '', 1, 48, 'La-Barrial-Electrica.png', ''),
(252, 'VitroArte - Técnicas en Vidrio', 'Solicitar horario para Taller o Cursos', '', '', '1569170645', '', '', '', 'info@vitroarteweb.com', 'www.vitroarteweb.com', 'www.facebook.com/DecoGlass-504418713024333/', '', '', '', 0, 0, '', '', '1', '2016-01-18', NULL, 'VitroArte.jpg', '', '', '<p>Responsable: <strong>Profesora Adriana Bertol</strong></p>\n\n<p><em>&ldquo;</em><em>La vitrofusi&oacute;n es la t&eacute;cnica de fundir y superponer uno a m&aacute;s vidrios utilizando altas temperaturas</em><em>&rdquo;</em></p>\n\n<hr />\n<p>Clases y Talleres de</p>\n\n<ul>\n	<li><strong>Vitrofusi&oacute;n</strong></li>\n	<li><strong>Tiffany</strong></li>\n	<li><strong>Mosaiquismo</strong></li>\n	<li><strong>Vidrio L&iacute;quido</strong></li>\n</ul>\n\n<hr />\n<p>Caracter&iacute;sticas</p>\n\n<ul>\n	<li><strong>Cursos semanales pr&aacute;cticos</strong></li>\n	<li><strong>Las Clases tienen una duraci&oacute;n de 2 horas</strong></li>\n	<li><strong>Grupos reducidos de hasta 4 personas</strong></li>\n	<li><strong>No se requiere experiencia previa</strong></li>\n	<li><strong>Aprendizaje art&iacute;stico o con salida Laboral</strong></li>\n	<li><strong>Venta de productos</strong></li>\n</ul>\n\n<hr />\n<p>Arteterapia</p>\n\n<ul>\n	<li><strong>Es la disciplina que utiliza el arte como principal v&iacute;a de comunicaci&oacute;n.</strong></li>\n	<li><strong>La expresi&oacute;n creativa art&iacute;stica es el veh&iacute;culo que permite desarrollar la capacidad de reflexi&oacute;n, comunicaci&oacute;n, expresi&oacute;n y desarrollo personal. </strong></li>\n	<li><strong>Se aplica dentro de los &aacute;mbitos relacionados con la salud f&iacute;sica y mental, el bienestar emocional y social.</strong></li>\n</ul>\n\n<hr />\n<p>Por m&aacute;s Informaci&oacute;n, ver nuestra p&aacute;gina Web</p>\n\n<hr />\n<p>&nbsp;</p>\n', 3342, '', '', '', '', 1, 59, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anunciantes_has_subrubro`
--

DROP TABLE IF EXISTS `anunciantes_has_subrubro`;
CREATE TABLE IF NOT EXISTS `anunciantes_has_subrubro` (
  `anunciantes_id` int(11) NOT NULL,
  `subrubro_idsubrubro` int(11) NOT NULL,
  `subrubro_rubro_idrubro` int(11) NOT NULL,
  PRIMARY KEY (`anunciantes_id`,`subrubro_idsubrubro`,`subrubro_rubro_idrubro`),
  KEY `fk_anunciantes_has_subrubro_subrubro1_idx` (`subrubro_idsubrubro`,`subrubro_rubro_idrubro`),
  KEY `fk_anunciantes_has_subrubro_anunciantes1_idx` (`anunciantes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `anunciantes_has_subrubro`
--

INSERT INTO `anunciantes_has_subrubro` (`anunciantes_id`, `subrubro_idsubrubro`, `subrubro_rubro_idrubro`) VALUES
(52, 60, 70),
(52, 61, 70),
(52, 62, 70),
(52, 63, 70),
(53, 60, 70),
(53, 62, 70),
(53, 64, 70),
(53, 74, 70),
(53, 75, 70),
(55, 63, 70),
(56, 65, 71),
(56, 68, 71),
(57, 65, 71),
(57, 67, 71),
(57, 68, 71),
(58, 65, 71),
(58, 67, 71),
(58, 68, 71),
(59, 65, 71),
(59, 67, 71),
(59, 68, 71),
(60, 67, 71),
(60, 68, 71),
(61, 76, 74),
(61, 77, 74),
(62, 78, 74),
(64, 78, 74),
(65, 65, 71),
(65, 66, 71),
(65, 67, 71),
(65, 68, 71),
(65, 70, 71),
(65, 71, 71),
(65, 72, 71),
(65, 73, 71),
(65, 81, 71),
(67, 82, 75),
(68, 86, 75),
(69, 90, 75),
(69, 91, 75),
(71, 82, 75),
(71, 83, 75),
(71, 85, 75),
(71, 210, 75),
(71, 211, 75),
(72, 89, 75),
(73, 96, 80),
(73, 99, 80),
(73, 100, 80),
(74, 96, 80),
(74, 99, 80),
(74, 100, 80),
(75, 101, 79),
(76, 102, 78),
(76, 103, 78),
(77, 102, 78),
(78, 93, 78),
(79, 104, 78),
(80, 105, 78),
(81, 106, 78),
(81, 107, 78),
(81, 108, 78),
(82, 108, 78),
(84, 108, 78),
(85, 108, 78),
(86, 205, 78),
(87, 108, 78),
(88, 108, 78),
(89, 108, 78),
(92, 112, 82),
(93, 112, 82),
(93, 114, 82),
(95, 110, 81),
(95, 111, 81),
(96, 110, 81),
(97, 115, 84),
(97, 116, 84),
(98, 115, 84),
(98, 116, 84),
(100, 108, 78),
(103, 127, 96),
(104, 117, 96),
(104, 121, 96),
(104, 126, 96),
(104, 128, 96),
(105, 117, 96),
(105, 118, 96),
(105, 121, 96),
(105, 126, 96),
(105, 128, 96),
(106, 117, 96),
(106, 118, 96),
(106, 119, 96),
(106, 120, 96),
(106, 121, 96),
(106, 122, 96),
(106, 124, 96),
(106, 125, 96),
(106, 126, 96),
(106, 128, 96),
(107, 117, 96),
(107, 118, 96),
(107, 119, 96),
(107, 121, 96),
(107, 126, 96),
(107, 128, 96),
(108, 118, 96),
(108, 120, 96),
(108, 121, 96),
(108, 122, 96),
(108, 128, 96),
(108, 207, 96),
(108, 208, 96),
(109, 121, 96),
(109, 125, 96),
(109, 126, 96),
(109, 128, 96),
(110, 121, 96),
(110, 125, 96),
(112, 122, 96),
(112, 123, 96),
(113, 141, 99),
(114, 141, 99),
(114, 217, 99),
(115, 141, 99),
(115, 145, 99),
(116, 136, 99),
(116, 141, 99),
(116, 145, 99),
(117, 132, 99),
(117, 135, 99),
(117, 139, 99),
(117, 169, 99),
(117, 170, 99),
(117, 172, 99),
(118, 132, 99),
(118, 139, 99),
(119, 132, 99),
(119, 139, 99),
(120, 136, 99),
(121, 136, 99),
(122, 133, 99),
(123, 133, 99),
(125, 147, 99),
(126, 147, 99),
(127, 140, 99),
(128, 135, 99),
(129, 141, 99),
(129, 145, 99),
(129, 148, 99),
(131, 149, 100),
(131, 150, 100),
(132, 138, 99),
(132, 151, 99),
(133, 142, 99),
(133, 146, 99),
(134, 142, 99),
(134, 146, 99),
(135, 142, 99),
(135, 146, 99),
(136, 151, 99),
(136, 152, 99),
(137, 66, 71),
(138, 153, 75),
(138, 154, 75),
(139, 153, 75),
(139, 154, 75),
(139, 155, 75),
(139, 156, 75),
(139, 157, 75),
(139, 158, 75),
(141, 118, 96),
(141, 124, 96),
(141, 128, 96),
(142, 136, 99),
(143, 66, 71),
(143, 67, 71),
(143, 68, 71),
(144, 159, 75),
(144, 160, 75),
(145, 161, 99),
(146, 162, 99),
(147, 168, 79),
(150, 115, 84),
(150, 116, 84),
(151, 115, 84),
(151, 116, 84),
(152, 115, 84),
(152, 116, 84),
(153, 115, 84),
(153, 116, 84),
(154, 115, 84),
(154, 116, 84),
(155, 115, 84),
(155, 116, 84),
(156, 115, 84),
(156, 116, 84),
(157, 115, 84),
(157, 116, 84),
(158, 115, 84),
(158, 116, 84),
(159, 115, 84),
(159, 116, 84),
(160, 115, 84),
(160, 116, 84),
(161, 115, 84),
(161, 116, 84),
(162, 115, 84),
(162, 116, 84),
(163, 115, 84),
(163, 116, 84),
(165, 115, 84),
(165, 116, 84),
(166, 115, 84),
(166, 116, 84),
(167, 115, 84),
(167, 116, 84),
(168, 100, 80),
(169, 100, 80),
(170, 100, 80),
(171, 100, 80),
(172, 100, 80),
(173, 100, 80),
(174, 60, 70),
(174, 62, 70),
(174, 63, 70),
(174, 64, 70),
(174, 74, 70),
(174, 75, 70),
(174, 174, 70),
(174, 175, 70),
(174, 176, 70),
(174, 177, 70),
(174, 179, 70),
(175, 103, 78),
(176, 100, 80),
(177, 147, 99),
(178, 178, 104),
(179, 213, 78),
(180, 153, 75),
(180, 154, 75),
(180, 155, 75),
(180, 156, 75),
(180, 157, 75),
(180, 158, 75),
(181, 60, 70),
(181, 62, 70),
(181, 64, 70),
(181, 74, 70),
(181, 75, 70),
(181, 175, 70),
(183, 60, 70),
(183, 62, 70),
(183, 64, 70),
(183, 74, 70),
(183, 175, 70),
(183, 177, 70),
(184, 61, 70),
(184, 64, 70),
(184, 74, 70),
(185, 60, 70),
(185, 61, 70),
(185, 62, 70),
(185, 63, 70),
(185, 74, 70),
(185, 175, 70),
(186, 180, 105),
(186, 181, 105),
(186, 182, 105),
(186, 183, 105),
(191, 167, 101),
(192, 167, 101),
(193, 167, 101),
(195, 167, 101),
(196, 167, 101),
(197, 163, 101),
(198, 163, 101),
(199, 163, 101),
(200, 163, 101),
(201, 184, 102),
(201, 185, 102),
(202, 186, 106),
(202, 187, 106),
(202, 188, 106),
(202, 189, 106),
(203, 89, 75),
(203, 91, 75),
(203, 190, 75),
(203, 191, 75),
(204, 192, 101),
(205, 165, 101),
(206, 165, 101),
(207, 192, 101),
(208, 166, 101),
(208, 192, 101),
(209, 163, 101),
(210, 163, 101),
(211, 167, 101),
(213, 167, 101),
(214, 166, 101),
(214, 192, 101),
(215, 166, 101),
(216, 193, 102),
(217, 104, 78),
(217, 194, 78),
(218, 108, 78),
(219, 142, 99),
(219, 146, 99),
(225, 195, 107),
(225, 196, 107),
(225, 197, 107),
(225, 198, 107),
(225, 199, 107),
(225, 200, 107),
(225, 201, 107),
(225, 202, 107),
(225, 204, 107),
(225, 206, 107),
(226, 108, 78),
(227, 108, 78),
(228, 205, 78),
(230, 202, 107),
(230, 206, 107),
(231, 112, 82),
(232, 149, 100),
(232, 150, 100),
(232, 209, 100),
(236, 124, 96),
(237, 132, 99),
(237, 139, 99),
(237, 172, 99),
(238, 193, 102),
(239, 141, 99),
(239, 217, 99),
(240, 210, 75),
(241, 110, 81),
(241, 111, 81),
(243, 219, 78),
(244, 220, 104),
(244, 221, 104),
(244, 222, 104),
(246, 77, 74),
(246, 224, 74),
(247, 149, 100),
(247, 150, 100),
(248, 135, 99),
(248, 225, 99),
(248, 226, 99),
(248, 227, 99),
(248, 228, 99),
(248, 229, 99),
(249, 230, 99),
(250, 136, 99),
(250, 141, 99),
(252, 231, 75),
(252, 232, 75),
(252, 233, 75);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `baner`
--

DROP TABLE IF EXISTS `baner`;
CREATE TABLE IF NOT EXISTS `baner` (
  `idbaner` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(60) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `link` varchar(60) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `alternativo` varchar(140) NOT NULL,
  `pagina` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `posicion` tinyint(1) NOT NULL DEFAULT '0',
  `targeta` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL DEFAULT '_blank',
  `estado` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:Banner esta activo, 0:el banner esta inactivo',
  `enhome` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idbaner`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=133 ;

--
-- Volcado de datos para la tabla `baner`
--

INSERT INTO `baner` (`idbaner`, `titulo`, `link`, `alternativo`, `pagina`, `posicion`, `targeta`, `estado`, `enhome`) VALUES
(84, 'Optica Popular', 'oopopticapopular.png', 'Optica', 'www.opticapopular.com.ar', 3, '_blank', 1, 1),
(109, 'SoloResultados', 'solresultados3222.jpg', 'Solo Resultados', 'www.mirioba.com.ar/anuncio/168/147-Solo_Resultados', 1, '_blank', 0, 0),
(87, 'Vivi Pleno Hoy', 'viviplenohoy.png', 'Centro de Estetica', 'www.facebook.com/EsteticaViviplenohoy', 5, '_blank', 1, 1),
(103, 'Estudio Juridico Paula Farran', 'paulafarran12.png', 'Estudio Juridico', 'www.mirioba.com.ar/anuncio/167/93-Estudio_Jurdico_Previsional_Farran', 4, '_blank', 0, 0),
(99, 'Pet Shop Universo Canino', 'PETSHOPUNIVERSOACANINOBANNER.jpg', 'Pet Shop Universo Canino', 'www.facebook.com/PETSHOPUNIVERSOCANINO', 8, '_blank', 0, 0),
(119, 'El Correntino', 'el-correntino-mi-rioba-boedo.png', 'El Correntino', 'www.mirioba.com.ar/anuncio/186/202-El_Correntino_Restaurante_Parrilla', 3, '_blank', 1, 0),
(106, 'Mina Clavero Refrigeración ', 'minaclavero.png', 'Mina Clavero Refrigeración 2', 'www.mc-refrigeracion.com.ar', 3, '_blank', 1, 0),
(107, 'Crema y Chocolate jardín de infantes', 'cremaychocolate.png', 'Crema y Chocolate jardín de infantes', 'www.cremaychocolate.com/', 3, '_blank', 1, 0),
(132, 'Instituto Ramon Falcon', 'bannerinstramonfalcon.png', 'instituto ramon falcon', 'WWW.INSTITUTOFALCON.EDU.AR', 4, '_blank', 1, 0),
(112, 'Estudio Contable Perez Norry', 'pereznorry.png', 'Estudio Contable Perez Norry', 'www.mirioba.com.ar/anuncio/166/95-Estudio_Contable_Prez_Norry', 3, '_blank', 1, 0),
(116, 'Cortez Diseño', 'BannerCortez.png', 'Diseño Grafico Cortez boedo', 'www.cortez.hol.es', 7, '_blank', 1, 1),
(118, 'Vivi Pleno Hoy Masajes Ambos Sexos', 'viviplenohoymasculino.png', 'masajes en boedo', 'www.facebook.com/EsteticaViviplenohoy?fref=ts', 6, '_blank', 1, 1),
(120, 'Residencia San Cristobal', 'mi-rioba-boedo-recidencia-san-cristobal.jpg', 'residencia san cristobal en boedo', 'www.mirioba.com.ar/anuncio/219/243-Residencia_San_Cristbal', 8, '_blank', 1, 0),
(121, 'Contadora Publica Myriam Ines Schvind', 'contadora-boedo-mi-rioba.jpg', 'contadora boedo', 'www.mirioba.com.ar/anuncio/110/241-Cdora_Myrian_Ins_Schvind', 1, '_blank', 1, 1),
(127, 'Cli Max Aire Acondicionado Durlock y vos', 'Cli-Max-Mantenimiento-General-banner‏.png', 'Cli Max Aire Acondicionado Durlock y vos', 'www.mirioba.com.ar/anuncio/132/239-Cli-Max_Mantenimiento_General', 2, '_blank', 1, 1),
(125, 'Marcela Montegrande Propiedades', 'marcela-montegrande-mi-rioba-boedo.png', 'Marcela Montegrande Propiedades ', 'www.marcelamontegrande.com.ar', 2, '_blank', 1, 0),
(128, 'VitroArte', 'VitroArte.png', 'vitro arte boedo', 'www.vitroarteweb.com', 4, '_blank', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `baner_rubro`
--

DROP TABLE IF EXISTS `baner_rubro`;
CREATE TABLE IF NOT EXISTS `baner_rubro` (
  `idbaner` int(11) NOT NULL,
  `idrubro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `baner_rubro`
--

INSERT INTO `baner_rubro` (`idbaner`, `idrubro`) VALUES
(106, 99),
(107, 102),
(109, 0),
(112, 81),
(116, 0),
(118, 0),
(119, 106),
(120, 0),
(121, 0),
(125, 84),
(127, 0),
(128, 0),
(132, 102);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calles`
--

DROP TABLE IF EXISTS `calles`;
CREATE TABLE IF NOT EXISTS `calles` (
  `idcalles` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(140) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idcalles`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=60 ;

--
-- Volcado de datos para la tabla `calles`
--

INSERT INTO `calles` (`idcalles`, `nombre`) VALUES
(1, 'SIN DIRECCION'),
(3, 'Sarasa'),
(4, 'Tarija'),
(7, 'Carlos Calvo'),
(8, 'Virrey Liniers'),
(9, 'Castro Barros'),
(10, 'Sanchez de Loria'),
(11, 'Estados Unidos'),
(12, 'Treinta y Tres Orientales'),
(13, 'Boedo, Av.'),
(14, 'La Plata, Av.'),
(15, 'Garay, Juan de Av.'),
(16, 'Muñiz'),
(17, 'Mármol, Jose'),
(18, 'Bocayuva, Quintino'),
(19, 'Totoral Pje.'),
(20, 'Ambato Pje.'),
(21, 'Bidegain Pje.'),
(22, 'Angaco Pje.'),
(23, 'Yapeyu Pje.'),
(24, 'Castro'),
(25, 'Colombres'),
(26, 'Maza'),
(27, 'Humberto 1°'),
(28, 'San Ignacio Pje.'),
(29, 'San Juan Av.'),
(30, 'Cochabamba'),
(31, 'Constitución'),
(32, 'Pavón Av.'),
(33, 'Inclán'),
(34, 'Salcedo'),
(35, 'Las Casas'),
(36, 'Metán'),
(37, 'Rondeau'),
(38, 'Gibson'),
(39, 'Caseros Av.'),
(40, 'Pereyra Pje.'),
(41, 'Jantin Pje.'),
(42, 'Chiclana Av.'),
(43, 'Alzaga Pje.'),
(44, 'Gallegos Pje.'),
(45, 'Venialvo'),
(46, 'Cabot Pje.'),
(47, 'Bathurst Pje.'),
(48, 'Barrio de Boedo'),
(49, 'La Plata Av.'),
(50, 'Vernet Av.'),
(51, 'Independencia Av.'),
(52, 'Sarmiento'),
(53, 'Barrio de Almagro'),
(54, 'La Rioja'),
(55, 'Parque Chacabuco'),
(56, 'Guayaquil'),
(57, ''),
(58, 'Pueyrredón Honorio'),
(59, 'Mexico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `idcategoria` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `descripcion`) VALUES
(1, 'Abonado'),
(2, 'Potenciales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indice`
--

DROP TABLE IF EXISTS `indice`;
CREATE TABLE IF NOT EXISTS `indice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(140) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=51 ;

--
-- Volcado de datos para la tabla `indice`
--

INSERT INTO `indice` (`id`, `descripcion`) VALUES
(42, 'Mascotas'),
(43, 'Arte, Cultura y Educacion'),
(45, 'Salud'),
(46, 'Para Ellas y Ellos'),
(47, 'Contable y Financiero'),
(48, 'Bienes Raices'),
(49, 'Servicios Generales'),
(50, 'Gastronomía');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubro`
--

DROP TABLE IF EXISTS `rubro`;
CREATE TABLE IF NOT EXISTS `rubro` (
  `idrubro` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(140) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idrubro`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=110 ;

--
-- Volcado de datos para la tabla `rubro`
--

INSERT INTO `rubro` (`idrubro`, `descripcion`) VALUES
(70, 'Estética y Servicios'),
(71, 'Clases y Apoyo Escolar'),
(74, 'Librerías - Textos'),
(75, 'Cursos y Talleres'),
(77, 'Salud'),
(78, 'Prestadores de Salud'),
(79, 'Productos Naturales'),
(80, 'Farmacias'),
(81, 'Asesores Contables'),
(82, 'Asesores Legales'),
(83, 'Gestorías'),
(84, 'Inmobiliarias'),
(96, 'Estética y Belleza'),
(99, 'Prestaciones'),
(100, 'Computación'),
(101, 'Educación Estatal'),
(102, 'Educación Privada'),
(104, 'Indumentaria'),
(105, 'Automotor'),
(106, 'Gourmet'),
(107, 'Gráfica'),
(108, 'Geriátricos'),
(109, 'Tercera Edad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubro_has_indice`
--

DROP TABLE IF EXISTS `rubro_has_indice`;
CREATE TABLE IF NOT EXISTS `rubro_has_indice` (
  `rubro_idrubro` int(11) NOT NULL,
  `indice_id` int(11) NOT NULL,
  PRIMARY KEY (`rubro_idrubro`,`indice_id`),
  KEY `fk_rubro_has_indice_indice1_idx` (`indice_id`),
  KEY `fk_rubro_has_indice_rubro_idx` (`rubro_idrubro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `rubro_has_indice`
--

INSERT INTO `rubro_has_indice` (`rubro_idrubro`, `indice_id`) VALUES
(70, 42),
(71, 43),
(74, 43),
(75, 43),
(101, 43),
(102, 43),
(78, 45),
(79, 45),
(80, 45),
(96, 46),
(104, 46),
(81, 47),
(82, 47),
(83, 47),
(84, 48),
(99, 49),
(100, 49),
(105, 49),
(107, 49),
(106, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subrubro`
--

DROP TABLE IF EXISTS `subrubro`;
CREATE TABLE IF NOT EXISTS `subrubro` (
  `idsubrubro` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(140) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rubro_idrubro` int(11) NOT NULL,
  PRIMARY KEY (`idsubrubro`,`rubro_idrubro`),
  KEY `fk_subrubro_rubro1_idx` (`rubro_idrubro`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=234 ;

--
-- Volcado de datos para la tabla `subrubro`
--

INSERT INTO `subrubro` (`idsubrubro`, `descripcion`, `rubro_idrubro`) VALUES
(60, 'Baños Caninos', 70),
(61, 'Paseos Caninos', 70),
(62, 'Peluquería Canina', 70),
(63, 'Pensionados', 70),
(64, 'Alimentos Balanceados', 70),
(65, 'Clases de Apoyo CBC', 71),
(66, 'Clases de Inglés', 71),
(67, 'Clases Nivel Primario', 71),
(68, 'Clases Nivel Secundario', 71),
(70, 'Clases de Portugués', 71),
(71, 'Clases de Francés', 71),
(72, 'Clases de Italiano', 71),
(73, 'Clases de Alemán', 71),
(74, 'Pet Shop', 70),
(75, 'Accesorios', 70),
(76, 'Comerciales', 74),
(77, 'Escolares', 74),
(78, 'Compra y Venta de Textos', 74),
(81, 'Clases de Computación', 71),
(82, 'Instrumento - Guitarra', 75),
(83, 'Instrumento - Batería', 75),
(85, 'Instrumento - Percusión', 75),
(86, 'Cerámica', 75),
(89, 'Danza - Tango', 75),
(90, 'Danza - Española', 75),
(91, 'Danza - Contemporanea', 75),
(93, 'Odontólogos', 78),
(96, 'Recetas Magistrales', 80),
(99, 'Vacunatorio', 80),
(100, 'Medicamentos en general', 80),
(101, 'Dietéticas', 79),
(102, 'Ortopedias', 78),
(103, 'Opticas', 78),
(104, 'Acompañante Terapéutico', 78),
(105, 'Podólogos', 78),
(106, 'Psiquiatras', 78),
(107, 'Sexólogos', 78),
(108, 'Psicólogos', 78),
(110, 'Contadores', 81),
(111, 'Estudios Contables', 81),
(112, 'Abogados', 82),
(113, 'Asesoramiento Automotor', 83),
(114, 'Estudios Jurídicos', 82),
(115, 'Administración de Propiedades', 84),
(116, 'Compra - Venta - Alquileres', 84),
(117, 'Centro de Estética', 96),
(118, 'Tratamientos Faciales', 96),
(119, 'Cosmiatría', 96),
(120, 'Manicuría', 96),
(121, 'Masajes', 96),
(122, 'Pedicuría', 96),
(123, 'Peluquerías', 96),
(124, 'Pilates', 96),
(125, 'Reiki', 96),
(126, 'Spa', 96),
(127, 'Yoga', 96),
(128, 'Tratamientos Corporales', 96),
(132, 'Gasistas', 99),
(133, 'Carpinteros', 99),
(135, 'Cerrajeros', 99),
(136, 'Electricistas', 99),
(138, 'Pisos - Pulido y Plastificado', 99),
(139, 'Plomeros', 99),
(140, 'Tapiceros', 99),
(141, 'Aire Acondicionado - Servicio Técnico', 99),
(142, 'Cortinas de Enrrollar - Reparación', 99),
(145, 'Heladeras - Servicio Técnico', 99),
(146, 'Cortinas de Enrrollar - Venta', 99),
(147, 'Plantas y Jardines', 99),
(148, 'Lavarropas - Servicio Técnico', 99),
(149, 'Reparación y Mantenimiento', 100),
(150, 'Armado de Equipos', 100),
(151, 'Pisos - Instalación', 99),
(152, 'Pisos de Madera - Venta', 99),
(153, 'Cursos de Peluquería', 75),
(154, 'Cursos de Maquillaje', 75),
(155, 'Cursos de Depilación', 75),
(156, 'Cursos de Pedicuría', 75),
(157, 'Cursos de Manicuría', 75),
(158, 'Cursos de Cosmetología', 75),
(159, 'Instrumento - Piano', 75),
(160, 'Instrumento - Órgano', 75),
(161, 'Fumigaciones', 99),
(162, 'Compra y Venta Virtual', 99),
(163, 'Jardínes de Infantes', 101),
(165, 'Media Común', 101),
(166, 'Primaria para Adultos', 101),
(167, 'Primaria Común', 101),
(168, 'Nutrientes', 79),
(169, 'Pintores', 99),
(170, 'Herreros de Obra', 99),
(172, 'Albañiles', 99),
(174, 'Venta de Mascotas', 70),
(175, 'Veterinarias', 70),
(176, 'Venta Mayorista', 70),
(177, 'Farmacia Veterinaria', 70),
(178, 'Ropa Hindú', 104),
(179, 'Cursos Peluquería Canina', 70),
(180, 'Mecánica General', 105),
(181, 'Electricidad', 105),
(182, 'Aire Acondicionado', 105),
(183, 'Chapa y Pintura', 105),
(184, 'Jardines de Infantes', 102),
(185, 'Jardines Maternales', 102),
(186, 'Restaurante', 106),
(187, 'Pastas Caseras', 106),
(188, 'Parrilla', 106),
(189, 'Turismo Gastronómico', 106),
(190, 'Danza - Clásica', 75),
(191, 'Danza - Folclore Argentino', 75),
(192, 'Formación Profesional', 101),
(193, 'Media Común', 102),
(194, 'Cuidado de Adultos', 78),
(195, 'Gigantografía', 107),
(196, 'Carteles', 107),
(197, 'Marquesinas', 107),
(198, 'Envases', 107),
(199, 'Impresiones', 107),
(200, 'Folletería', 107),
(201, 'Revistas', 107),
(202, 'Diseño Gráfico', 107),
(204, 'Banners', 107),
(205, 'Consultor Psicológico', 78),
(206, 'Diseño Páginas Web', 107),
(207, 'Maquillaje', 96),
(208, 'Aromaterapia', 96),
(209, 'Venta de Computadoras y Acc.', 100),
(210, 'Canto', 75),
(211, 'Música', 75),
(213, 'Masajista', 78),
(215, 'Herreros', 99),
(217, 'Durlock - Instalación', 99),
(218, 'Geriátricos', 109),
(219, 'Geriátricos', 78),
(220, 'Diseñadoras/es', 104),
(221, 'Modistas', 104),
(222, 'Prototipos - Clases', 104),
(223, 'Profesoras en Indumentaria', 81),
(224, 'Libros de Textos', 74),
(225, 'Cerrajería', 99),
(226, 'Herrajes', 99),
(227, 'Herrajes de Obra', 99),
(228, 'Herrajes para Muebles', 99),
(229, 'Accesorios Muebles Cocina', 99),
(230, 'Turismo', 99),
(231, 'Arteterapia', 75),
(232, 'Talleres de Vitrofusión', 75),
(233, 'Cursos de Vitrofusión', 75);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) NOT NULL DEFAULT '',
  `apellido` varchar(15) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `pass` varchar(255) NOT NULL DEFAULT '',
  `idgrupo` tinyint(1) NOT NULL DEFAULT '0',
  `foto` varchar(25) NOT NULL DEFAULT '',
  `mail` varchar(50) NOT NULL DEFAULT '',
  `llave` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `user`, `pass`, `idgrupo`, `foto`, `mail`, `llave`) VALUES
(2, 'Ezequiel', 'Bajo', '05bfee35beb19ade49710084cbb908cf', '87379e230e86b7faaa26cdc17a57dfef', 0, '', 'ezebajo@gmail.com', '0c6fb9c992508b3c3c37b584d990c230'),
(3, 'Mi', 'Rioba', '6acbd50b402d7c53a865763a04a2d714', '78ed0066d669b26a7fb368476307b711', 0, '', '', '');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `rubro_has_indice`
--
ALTER TABLE `rubro_has_indice`
  ADD CONSTRAINT `fk_rubro_has_indice_indice1` FOREIGN KEY (`indice_id`) REFERENCES `indice` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rubro_has_indice_rubro` FOREIGN KEY (`rubro_idrubro`) REFERENCES `rubro` (`idrubro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `subrubro`
--
ALTER TABLE `subrubro`
  ADD CONSTRAINT `fk_subrubro_rubro1` FOREIGN KEY (`rubro_idrubro`) REFERENCES `rubro` (`idrubro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
