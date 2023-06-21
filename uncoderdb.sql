-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-06-2023 a las 06:39:07
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
-- Base de datos: `uncoderdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230620181547', '2023-06-20 18:16:03', 59);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrevista`
--

CREATE TABLE `entrevista` (
  `id` int(11) NOT NULL,
  `testigo` varchar(255) NOT NULL,
  `tipo_crimen` varchar(255) NOT NULL,
  `transcripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entrevista`
--

INSERT INTO `entrevista` (`id`, `testigo`, `tipo_crimen`, `transcripcion`) VALUES
(2260, ' Carlos Mendez', ' Asalto a mano armada', 'Estaba saliendo de la tienda cuando vi a dos hombres encapuchados entrar rapidamente con armas en la mano. Gritaron y amenazaron a todos los presentes, exigiendo que entregaramos nuestras pertenencias. El panico se apodero de la tienda mientras los asalta'),
(2358, 'Nacyla Messaoud', 'Homicidio', 'Menciona que vio a un hombre sospechoso de aspecto robusto merodeando cerca de la escena del crimen. El hombre llevaba una gorra oscura que ocultaba parcialmente su rostro, con unos grandes bolsos negros. Aunque asegura recordar que el color de su credenc'),
(2560, 'Chiara Vigilante', ' Homicidio', 'Estaba caminando por el bosque cuando me tope con una escena macabra. Habia un cuerpo sin vida colgado de un arbol, rodeado de extra?os simbolos y velas. Me fui corriendo asustado y llame a la policia'),
(2678, 'Juan Antonio Garcia', 'Homicidio', 'Escucho un grito agudo proveniente de la direccion de la biblioteca antes del crimen. El recuerda haber visto a una mujer apresurada salir del lugar, y noto que llevaba una bufanda de colores vibrantes envuelta alrededor de su mu?eca. Menciona haber visto'),
(5998, 'Yeny Garcia', ' Robo a mano armada', 'Estaba caminando cerca del parque cuando vi a dos personas discutiendo acaloradamente. De repente, una de ellas saco un arma y disparo a la otra. Luego huyo del lugar a toda prisa'),
(6036, 'Laura Martinez', ' Incendio intencional', 'Estaba pescando en el lago cercano cuando vi como se desataba un incendio forestal en la distancia. Las llamas se extendian rapidamente, creando un resplandor aterrador en el cielo nocturno. El sonido del fuego crepitando y los arboles colapsando era esca'),
(6563, 'Sofia Lopez', ' Asalto a mano armada', 'Estaba dentro de la tienda comprando cuando de repente escuche un estruendo. Me di la vuelta y vi a dos hombres enmascarados irrumpir en el lugar con armas en sus manos. Todos entraron en panico y comenzaron a correr en todas las direcciones. Los asaltant'),
(6755, ' Roberto Sanchez', ' Incendio intencional', 'Estaba caminando por el sendero cuando note un fuerte olor a humo y vi columnas de humo negro elevandose hacia el cielo. Pronto, me di cuenta de que habia un incendio forestal en curso. Las llamas se propagaban rapidamente, devorando los arboles y la vege'),
(7182, 'Alberto Diaz', ' Robo a mano armada', 'Estaba en mi balcon cuando vi un coche chocar contra una farola. Dos hombres salieron del vehiculo y comenzaron a pelearse violentamente. Uno de ellos saco un objeto punzante y apu?alo al otro. Luego escaparon en direcciones opuestas'),
(7253, 'Liliana Garcia', ' Homicidio', 'Vi a una figura sospechosa merodeando cerca del callejon a altas horas de la noche. De repente, escuche un grito y vi a un hombre caido en el suelo, aparentemente apu?alado. La figura se alejo rapidamente antes de que pudiera hacer algo'),
(7663, 'Maria Soledad Piquer', ' Homicidio', 'Estaba en mi apartamento cuando escuche una fuerte discusion proveniente del piso de abajo. Baje rapidamente y vi a un hombre con sangre en las manos y una mujer inconsciente en el suelo. Parecia haber sido golpeada brutalmente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escena`
--

CREATE TABLE `escena` (
  `id` int(11) NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `ciudad` varchar(255) NOT NULL,
  `tipo_crimen` varchar(255) NOT NULL,
  `descripcion` longtext NOT NULL,
  `testigo1` varchar(255) NOT NULL,
  `testigo2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `escena`
--

INSERT INTO `escena` (`id`, `fecha`, `ciudad`, `tipo_crimen`, `descripcion`, `testigo1`, `testigo2`) VALUES
(2, ' 3 de enero de 2023', ' Angularville', ' Robo a mano armada', ' Un individuo armado irrumpio en una joyeria y amenazo al personal con una pistola. Robo varias joyas valiosas y huyo en una motocicleta.', 'Yeny Garcia', 'Alberto Diaz'),
(3, ' 12 de febrero de 2023', ' Reactburg', ' Homicidio', ' Se encontro el cuerpo de un hombre apu?alado en un callejon. La victima presentaba multiples heridas de arma blanca.', 'Liliana Garcia', 'Maria Soledad Piquer'),
(4, ' 5 de marzo de 2023', ' Vuefield', ' Secuestro', ' Una joven fue secuestrada mientras caminaba a casa despues de la escuela. Se exigio un rescate a la familia para su liberacion.', ' No hay testigos presenciales', '-'),
(5, ' 20 de abril de 2023', ' Emberstadt', ' Fraude financiero', ' Un empresario influyente fue acusado de realizar operaciones financieras fraudulentas para enriquecerse ilicitamente. Se sospecha de un esquema de lavado de dinero.', ' Varios empleados de la empresa', '-'),
(6, ' 8 de mayo de 2023', ' Laravelia', ' Incendio intencional', ' Un edificio residencial fue incendiado deliberadamente durante la noche. Varias familias fueron evacuadas y se investiga si fue un acto intencional.', ' Roberto Sanchez', 'Laura Martinez'),
(7, ' 17 de junio de 2022', ' Pythonton', ' Asalto a mano armada', ' Dos individuos ingresaron a un banco y amenazaron al personal y a los clientes con armas de fuego. Robaron dinero en efectivo y huyeron en un automovil.', ' Carlos Mendez', 'Sofia Ramirez'),
(8, ' 2 de julio de 2022', ' Rubytown', ' Trafico de drogas', ' La policia intercepto un camion que transportaba una gran cantidad de drogas ilegales. Se realizo un arresto y se decomisaron los estupefacientes.', ' Agentes de la policia', '-'),
(9, ' 14 de agosto de 2022', ' Djangoville', ' Violencia domestica', ' Se reporto un caso de violencia domestica en una residencia. Una mujer resulto herida por su pareja durante una discusion.', ' Vecinos que escucharon el altercado', '-'),
(10, ' 6 de septiembre de 2022', ' Svelteburg', ' Robo agravado', ' Un grupo de delincuentes ingreso a un museo y sustrajo varias obras de arte valiosas. Utilizaron explosivos para abrir las vitrinas de exhibicion.', ' No hay testigos presenciales', '-'),
(11, ' 25 de octubre de 2022', ' Codeigniter City', ' Estafa en linea', ' Un individuo estafo a varias personas a traves de un sofisticado esquema de phishing en linea. Utilizo identidades falsas y tarjetas de credito robadas.', ' Victimas que reportaron el fraude', '-'),
(12, ' 9 de noviembre de 2022', ' Nodeburg', ' Homicidio', ' Un cuerpo sin vida fue encontrado en el interior de un vehiculo estacionado en un callejon. La victima presentaba heridas de bala en el pecho y en la cabeza.', 'Santiago Andrade', 'Chiara Vigilante'),
(13, ' 18 de diciembre de 2022', 'JavaScriptville', ' Homicidio', ' En un lujoso apartamento, se descubrio el cadaver de un hombre joven estrangulado. El lugar estaba desordenado, lo que indica un posible forcejeo antes del asesinato.', ' No hay testigos presenciales', '-'),
(14, '27 de marzo de 2023', 'Boostrap', ' Homicidio', 'Segun los testimonios de los testigos presentes en el lugar, se escucharon ruidos fuertes provenientes de la seccion de misterio cerca de las 13:15 p.m. Al acudir al lugar, se encontro el cuerpo de la victima, una mujer de _ tendida en el suelo. ', 'Nacyla Messaoud', 'Juan Antonio Garcia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `library`
--

CREATE TABLE `library` (
  `id` int(11) NOT NULL,
  `tarjeta_id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `seudonimo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `library`
--

INSERT INTO `library` (`id`, `tarjeta_id`, `nombre`, `seudonimo`) VALUES
(2, 2219, 'Marta Lopez', ' Shadow13'),
(3, 3860, ' Santiago Herrera', ' Ember14'),
(4, 5067, ' Ana Martinez', ' Whisper19'),
(5, 6581, ' Valentina Vargas', ' Sapphire17'),
(6, 6539, ' Matias Rojas', ' Solstice16'),
(7, 7365, ' Isabella Medina', ' Enigma17'),
(8, 2267, ' Andrea Rodriguez', ' Serene12'),
(9, 1484, ' Daniel Sanchez', ' Raven3'),
(10, 6563, ' Sofia Lopez', ' Luna9'),
(11, 6592, ' Leonardo Castro', ' Phoenix3'),
(12, 2075, ' Isabel Torres', ' Velvet11'),
(13, 2720, ' Sergio Vargas', ' Nova8'),
(14, 1556, ' Paula Martin', ' Cascade10'),
(15, 1945, ' Ricardo Gomez', ' Bliss12'),
(16, 1662, ' Maria Torres', ' Midnight5'),
(17, 3407, ' Pedro Ramirez', ' Echo10'),
(18, 4920, ' Luciana Morales', ' Aurora7'),
(19, 7415, ' Javier Lopez', ' Seraph10'),
(20, 6603, ' Marta Sanchez', ' Mist15'),
(21, 3653, ' Diego Garcia', ' Zephyr19'),
(22, 8569, ' Ana Rodriguez', ' Solace19'),
(23, 3316, ' David Torres', ' Jinx19'),
(24, 4315, ' Adrian Ortega', ' Willow10'),
(25, 8191, ' Miguel Ramirez', ' Tempest5'),
(26, 1018, ' Andrea Garcia', ' Astral13'),
(27, 3590, ' Camila Mendoza', ' Cipher18'),
(28, 0, 'nombre', 'seudonimo'),
(29, 2219, 'Marta Lopez', ' Shadow13'),
(30, 3860, ' Santiago Herrera', ' Ember14'),
(31, 5067, ' Ana Martinez', ' Whisper19'),
(32, 6581, ' Valentina Vargas', ' Sapphire17'),
(33, 6539, ' Matias Rojas', ' Solstice16'),
(34, 7365, ' Isabella Medina', ' Enigma17'),
(35, 2267, ' Andrea Rodriguez', ' Serene12'),
(36, 1484, ' Daniel Sanchez', ' Raven3'),
(37, 6563, ' Sofia Lopez', ' Luna9'),
(38, 6592, ' Leonardo Castro', ' Phoenix3'),
(39, 2075, ' Isabel Torres', ' Velvet11'),
(40, 2720, ' Sergio Vargas', ' Nova8'),
(41, 1556, ' Paula Martin', ' Cascade10'),
(42, 1945, ' Ricardo Gomez', ' Bliss12'),
(43, 1662, ' Maria Torres', ' Midnight5'),
(44, 3407, ' Pedro Ramirez', ' Echo10'),
(45, 4920, ' Luciana Morales', ' Aurora7'),
(46, 7415, ' Javier Lopez', ' Seraph10'),
(47, 6603, ' Marta Sanchez', ' Mist15'),
(48, 3653, ' Diego Garcia', ' Zephyr19'),
(49, 8569, ' Ana Rodriguez', ' Solace19'),
(50, 3316, ' David Torres', ' Jinx19'),
(51, 4315, ' Adrian Ortega', ' Willow10'),
(52, 8191, ' Miguel Ramirez', ' Tempest5'),
(53, 1018, ' Andrea Garcia', ' Astral13'),
(54, 3590, ' Camila Mendoza', ' Cipher18'),
(55, 7588, ' Emiliano Pena', ' Ember17'),
(56, 1874, ' Sofia Rodriguez', ' Vortex9'),
(57, 7514, ' Natalia Rios', ' Dusk3'),
(58, 3561, ' Gael Silva', ' Catalyst11'),
(59, 8194, ' Adrian Perez', ' Shadow6'),
(60, 3279, ' Laura Gonzalez', ' Ember15'),
(61, 1389, ' Alejandro Morales', ' Whisper4'),
(62, 6750, ' Marta Fernandez', ' Sapphire12'),
(63, 5556, ' Javier Garcia', ' Solstice20'),
(64, 2421, ' Paula Lopez', ' Enigma11'),
(65, 3020, ' Daniel Perez', ' Serene15'),
(66, 6273, ' Gabriela Paredes', ' Raven15'),
(67, 6755, ' David Sanchez', ' Luna13'),
(68, 6708, ' Maria Ramirez', ' Phoenix5'),
(69, 8086, ' Miguel Gonzalez', ' Velvet6'),
(70, 5576, ' Carla Rodriguez', ' Nova13'),
(71, 7600, ' Juan Torres', ' Cascade9'),
(72, 5549, ' Sebastian Cruz', ' Bliss5'),
(73, 2496, ' Sergio Gomez', ' Midnight4'),
(74, 8667, ' Valeria Jimenez', ' Echo16'),
(75, 4308, ' Daniel Lopez', ' Aurora14'),
(76, 2620, ' Marta Garcia', ' Seraph10'),
(77, 3232, ' Juan Pablo Vargas', ' Mist10'),
(78, 7731, ' Laura Sanchez', ' Zephyr18'),
(79, 3314, ' Alberto Ramirez', ' Solace20'),
(80, 3601, ' Laura Torres', ' Jinx20'),
(81, 4456, ' Juan Morales', ' Willow20'),
(82, 1957, ' Sofia Delgado', ' Tempest5'),
(83, 8976, ' Alejandro Ramirez', ' Astral3'),
(84, 2260, ' Carlos Jimenez', ' Cipher8'),
(85, 2678, ' Alejandro Torres', ' Ember4'),
(86, 3570, ' Antonella Lopez', ' Vortex9'),
(87, 3485, ' Francisco Ruiz', ' Dusk16'),
(88, 3118, ' Daniel Ramirez', ' Catalyst5'),
(89, 3329, ' Victoria Ramirez', ' Shadow8'),
(90, 1548, ' Juan Lopez', ' Ember16'),
(91, 6036, ' Laura Martinez', ' Whisper16'),
(92, 2444, ' Sergio Ramirez', ' Sapphire20'),
(93, 2049, ' Laura Garcia', ' Solstice9'),
(94, 8179, ' Carlos Lopez', ' Enigma4'),
(95, 1285, ' Laura Rodriguez', ' Serene4'),
(96, 5200, ' Alejandro Sanchez', ' Raven9'),
(97, 3065, ' Laura Lopez', ' Luna6'),
(98, 8544, ' Javier Ramirez', ' Phoenix4'),
(99, 4441, ' Sofia Ramos', ' Velvet20'),
(100, 7582, ' Rodrigo Medina', ' Nova16'),
(101, 8468, ' Marina Vargas', ' Cascade5'),
(102, 4248, ' Hugo Paredes', ' Bliss3'),
(103, 5792, ' Valeria Ortega', ' Midnight8'),
(104, 7172, ' Adrian Torres', ' Echo6'),
(105, 1792, ' Carolina Silva', ' Aurora10'),
(106, 6125, ' Mateo Vidal', ' Seraph15'),
(107, 3265, ' Daniela Torres', ' Mist4'),
(108, 3234, ' Mario Lopez', ' Zephyr5'),
(109, 1220, 'Franci Sanchez Zambrano', ' Solace16'),
(110, 2342, 'Melanie Rodriguez Perez', ' Jinx19'),
(111, 3583, 'Gabriela', ' Willow14'),
(112, 2560, 'Chiarita', ' Tempest6'),
(113, 7825, 'Kibria', ' Astral8'),
(114, 8331, 'Bea', ' Cipher15'),
(115, 6893, 'Mariama', ' Ember16'),
(116, 3281, 'Marcela Romero', ' Vortex13'),
(117, 2678, 'Juan Antonio', ' Dusk4'),
(118, 5063, 'Cyma', ' Catalyst7'),
(119, 2197, 'Sara', ' Shadow19'),
(120, 6446, 'Juan Carlos', ' Ember5'),
(121, 5295, 'Greiskel', ' Whisper6'),
(122, 4753, 'Eva', ' Sapphire3'),
(123, 3709, 'Jorge', ' Solstice19'),
(124, 6696, 'Ana', ' Enigma14'),
(125, 2711, 'Leydy Garcia', ' Serene13'),
(126, 7663, 'Marisol', ' Raven15'),
(127, 7253, 'Liliana', ' Luna19'),
(128, 7182, 'Alberto Diaz Esteban', ' Phoenix12'),
(129, 5694, 'Zoraida Manzanares Jimenez', ' Velvet7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `c_ojos` varchar(255) NOT NULL,
  `c_cabello` varchar(255) NOT NULL,
  `t_zapato` varchar(255) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `tatuaje` varchar(255) NOT NULL,
  `t_tatuaje` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `nombre`, `c_ojos`, `c_cabello`, `t_zapato`, `genero`, `tatuaje`, `t_tatuaje`) VALUES
(1018, ' Andrea Garcia', ' Azul', ' Rubio', '36', ' Femenino', 'no', 'no'),
(1220, 'Franci Sanchez Zambrano', 'Marron oscuro', 'Negro', '37', ' Femenino', 'si', 'Arbol de cerezo, pierna izquierda'),
(1285, ' Laura Rodriguez', ' Verde', ' Castano', '37', ' Femenino', 'si', 'Simbolo del infinito en la muneca izquierda'),
(1389, ' Alejandro Morales', ' Azul', ' Rubio', '41', ' Masculino', 'no', 'no'),
(1484, ' Daniel Sanchez', ' Azul', ' Rubio', '44', ' Masculino', 'no', 'no'),
(1548, ' Juan Lopez', ' Marron', ' Negro', '41', ' Masculino', 'no', 'no'),
(1556, ' Paula Martin', ' Verde', ' Rubio', '38', ' Femenino', 'no', 'no'),
(1662, ' Maria Torres', ' Azul', ' Rubio', '37', ' Femenino', 'no', 'no'),
(1792, ' Carolina Silva', ' Verde', ' Castano', '37', ' Femenino', 'si', 'Sol y una luna en los omoplatos'),
(1874, ' Sofia Ramirez', ' Verde', ' Castano', '37', ' Femenino', 'no', 'no'),
(1945, ' Ricardo Gomez', ' Marron', ' Pelirrojo', '42', ' Masculino', 'no', 'no'),
(1957, ' Sofia Delgado', ' Verde', ' Rubio', '39', ' Femenino', 'no', 'no'),
(2049, ' Laura Garcia', ' Azul', ' Rubio', '36', ' Femenino', 'no', 'no'),
(2075, ' Isabel Torres', ' Azul', ' Castano', '39', ' Femenino', 'no', 'no'),
(2197, 'Sara', 'Marron Verdoso', 'Azul O Verde', '40', 'Femenino', 'si', 'Tatuaje Tribal, brazo izquierdo'),
(2219, 'Marta Lopez', ' Marron', ' Rubio', '38', ' Femenino', 'no', 'no'),
(2260, ' Carlos Mendez', ' Marron', ' Negro', '42', ' Masculino', 'si', 'Mandala en el antebrazo izquierdo'),
(2267, ' Andrea Rodriguez', ' Verde', ' Castano', '36', ' Femenino', 'no', 'no'),
(2342, 'Melanie Rodriguez Perez', 'Marron oscuro', 'Castano obscuro', '41', 'Femenino', 'no', 'no'),
(2358, 'Nacyla Messaoud', '', '', '', '', '', ''),
(2421, ' Paula Lopez', ' Azul', ' Rubio', '39', ' Femenino', 'no', 'no'),
(2444, ' Sergio Ramirez', ' Marron', ' Pelirrojo', '42', ' Masculino', 'si', 'Dragon envolviendo el brazo derecho'),
(2496, ' Sergio Gomez', ' Marron', ' Pelirrojo', '42', ' Masculino', 'no', 'no'),
(2560, 'Chiarita', 'Castano', 'Castano', '38', 'Mujer', 'no', 'no'),
(2620, ' Marta Garcia', ' Verde', ' Castano', '37', ' Femenino', 'no', 'no'),
(2678, ' Alejandro Torres', ' Verde', ' Castano', '37', ' Masculino', 'si', 'Pluma con aves volando en la muneca derecha'),
(2711, 'Leydy Garcia', 'Marron Oscuro', 'Negro', '38', 'Femenina', 'no', 'no'),
(2720, ' Sergio Vargas', ' Marron', ' Negro', '43', ' Masculino', 'no', 'no'),
(3020, ' Daniel Perez', ' Marron', ' Negro', '43', ' Masculino', 'no', 'no'),
(3065, ' Laura Lopez', ' Marron', ' Rubio', '37', ' Femenino', 'no', 'no'),
(3118, ' Daniel Ramirez', ' Marron', ' Castano', '42', ' Masculino', 'si', 'Ancla con una brujula en el pecho'),
(3232, ' Juan Pablo Vargas', ' Azul', ' Rubio', '43', ' Masculino', 'no', 'no'),
(3234, ' Mario Lopez', ' Marron', ' Castano', '42', ' Masculino', 'si', 'Leon rugiendo en el biceps derecho'),
(3265, ' Daniela Torres', ' Marron', ' Rubio', '37', ' Femenino', 'no', 'no'),
(3279, ' Laura Gonzalez', ' Marron', ' Negro', '38', ' Femenino', 'no', 'no'),
(3281, 'Marcela Romero', 'Cafe Claro', 'Chocolate', '39', 'Femenino', 'si', 'Corazones de colores brazo derecho parte superior'),
(3314, ' Alberto Ramirez', ' Marron', ' Castano', '42', ' Masculino', 'no', 'no'),
(3316, ' David Torres', ' Marron', ' Negro', '41', ' Masculino', 'no', 'no'),
(3329, ' Victoria Ramirez', ' Azul', ' Rubio', '37', ' Femenino', 'si', 'Tatuaje Tribal, pierna derecha'),
(3407, ' Pedro Ramirez', ' Marron', ' Negro', '40', ' Masculino', 'no', 'no'),
(3485, ' Francisco Ruiz', ' Marron', ' Rubio', '37', ' Femenino', 'no', 'no'),
(3561, ' Gael Silva', ' Marron', ' Rubio', '37', ' Masculino', 'no', 'no'),
(3570, ' Antonella Lopez', ' Azul', ' Rubio', '43', ' Femenino', 'no', 'no'),
(3583, 'Gabriela', 'castano', 'castano', '40', 'femenino', 'no', 'no'),
(3590, ' Camila Mendoza', ' Marron', ' Negro', '42', ' Femenino', 'no', 'no'),
(3601, ' Laura Torres', ' Azul', ' Rubio', '37', ' Femenino', 'si', 'Lobo aullando en la luna en el brazo derecho'),
(3653, ' Diego Garcia', ' Marron', ' Castano', '42', ' Masculino', 'no', 'no'),
(3709, 'Jorge', 'Verdes', 'Negro', '45', 'Masculino', 'no', 'no'),
(3860, ' Santiago Herrera', ' Azul', ' Negro', '42', ' Masculino', 'no', 'no'),
(4248, ' Hugo Paredes', ' Marron', ' Castano', '42', ' Masculino', 'no', 'no'),
(4308, ' Daniel Lopez', ' Marron', ' Negro', '40', ' Masculino', 'no', 'no'),
(4315, ' Adrian Ortega', ' Verde', ' Rubio', '39', ' Masculino', 'no', 'no'),
(4441, ' Sofia Ramos', ' Verde', ' Rubio', '38', ' Femenino', 'no', 'no'),
(4456, ' Juan Morales', ' Marron', ' Negro', '41', ' Masculino', 'no', 'no'),
(4753, 'Eva', 'Negros', 'Negro', '41', 'Mujer', 'si', 'Dragon multicolor pierna derecha'),
(4920, ' Luciana Morales', ' Verde', ' Castano', '36', ' Femenino', 'no', 'no'),
(5063, 'Cyma', 'Verde', 'Pelirroja', '37', 'Mujer', 'no', 'no'),
(5067, ' Ana Martinez', ' Verde', ' Castano', '37', ' Femenino', 'no', 'no'),
(5200, ' Alejandro Sanchez', ' Azul', ' Rubio', '43', ' Masculino', 'no', 'no'),
(5295, 'Greiskel', 'Negro', 'Negro', '37', 'Mujer', 'no', 'no'),
(5549, ' Sebastian Cruz', ' Verde', ' Rubio', '39', ' Masculino', 'no', 'no'),
(5556, ' Javier Garcia', ' Marron', ' Pelirrojo', '42', ' Masculino', 'no', 'no'),
(5576, ' Carla Rodriguez', ' Azul', ' Rubio', '37', ' Femenino', 'no', 'no'),
(5694, 'Zoraida Manzanares Jimenez', 'Marron', 'Castano Oscuro', '38', 'No Gender', 'si', 'Dos lineas con dos pajaritas al final'),
(5792, ' Valeria Ortega', ' Azul', ' Rubio', '36', ' Femenino', 'no', 'no'),
(5998, 'Yeny Garcia', '', '', '', '', '', ''),
(6036, ' Laura Martinez', ' Verde', ' Rubio', '39', ' Femenino', 'no', 'no'),
(6125, ' Mateo Vidal', ' Azul', ' Rubio', '43', ' Masculino', 'no', 'no'),
(6273, ' Gabriela Paredes', ' Verde', ' Castano', '36', ' Femenino', 'no', 'no'),
(6446, 'Juan Carlos', 'Verde', 'Blanco', '42', 'Masculino', 'no', 'no'),
(6539, ' Matias Rojas', ' Azul', ' Rubio', '39', ' Masculino', 'no', 'no'),
(6563, ' Sofia Lopez', ' Marron', ' Rubio', '37', ' Femenino', 'no', 'no'),
(6581, ' Valentina Vargas', ' Marron', ' Pelirrojo', '43', ' Femenino', 'no', 'no'),
(6592, ' Leonardo Castro', ' Marron', ' Castano', '42', ' Masculino', 'no', 'no'),
(6603, ' Marta Sanchez', ' Marron', ' Rubio', '38', ' Femenino', 'no', 'no'),
(6696, 'Ana', 'Cafe', 'Cafe', '38', 'Femenino', 'no', 'no'),
(6708, ' Maria Ramirez', ' Marron', ' Rubio', '38', ' Femenino', 'no', 'no'),
(6750, ' Marta Fernandez', ' Verde', ' Rubio', '37', ' Femenino', 'no', 'no'),
(6755, 'Roberto Sanchez', ' Azul', ' Rubio', '44', ' Masculino', 'no', 'no'),
(6893, 'Mariama', 'Marron', 'Rubio', '38', 'No Binario', 'si', 'Calavera en llamas espalda'),
(7172, ' Adrian Torres', ' Marron', ' Negro', '42', ' Masculino', 'si', 'Reloj de bolsillo con flores en el antebrazo izquierdo'),
(7182, 'Alberto Diaz Esteban', 'Azul', 'Rubio', '43', 'No Binario', 'no', 'no'),
(7253, 'Liliana', 'Marron', 'Marron Con Mechas', '36', 'Mujer', 'no', 'no'),
(7365, ' Isabella Medina', ' Marron', ' Negro', '41', ' Femenino', 'no', 'no'),
(7415, ' Javier Lopez', ' Azul', ' Rubio', '43', ' Masculino', 'no', 'no'),
(7514, ' Natalia Rios', ' Azul', ' Rubio', '43', ' Femenino', 'no', 'no'),
(7582, ' Rodrigo Medina', ' Marron', ' Negro', '41', ' Masculino', 'si', 'no'),
(7588, ' Emiliano Pena', ' Marron', ' Negro', '42', ' Masculino', 'no', 'no'),
(7600, ' Juan Torres', ' Marron', ' Negro', '41', ' Masculino', 'no', 'no'),
(7663, 'Marisol', 'Verde', 'Rubio', '39', 'Femenino', 'no', 'no'),
(7731, ' Laura Sanchez', ' Marron', ' Rubio', '38', ' Femenino', 'no', 'no'),
(7825, 'Kibria', 'Negro', 'Negro', '40', 'Masculino', 'no', 'no'),
(8086, ' Miguel Gonzalez', ' Marron', ' Castano', '42', ' Masculino', 'no', 'no'),
(8179, ' Carlos Lopez', ' Marron', ' Negro', '42', ' Masculino', 'si', 'no'),
(8191, ' Miguel Ramirez', ' Marron', ' Pelirrojo', '44', ' Masculino', 'no', 'no'),
(8194, ' Adrian Perez', ' Marron', ' Castano', '42', ' Masculino', 'no', 'no'),
(8331, 'Bea', 'Marrones', 'Negro', '40', 'Femenino', 'si', 'Arbol de la vida en la espalda baja'),
(8468, ' Marina Vargas', ' Azul', ' Rubio', '39', ' Femenino', 'si', 'Corazon entrelazado con las iniciales de un ser querido en el pecho'),
(8544, ' Javier Ramirez', ' Marron', ' Castano', '42', ' Masculino', 'si', 'Pluma de pajaro detras de la oreja derecha'),
(8569, ' Ana Rodriguez', ' Azul', ' Rubio', '37', ' Femenino', 'no', 'no'),
(8667, ' Valeria Jimenez', ' Azul', ' Rubio', '36', ' Femenino', 'no', 'no'),
(8976, ' Alejandro Ramirez', ' Marron', ' Pelirrojo', '42', ' Masculino', 'si', 'Rosa con tallo y espinas en el hombro izquierd'),
(8977, '', '', '', '', '', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `entrevista`
--
ALTER TABLE `entrevista`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `escena`
--
ALTER TABLE `escena`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `entrevista`
--
ALTER TABLE `entrevista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7664;

--
-- AUTO_INCREMENT de la tabla `escena`
--
ALTER TABLE `escena`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `library`
--
ALTER TABLE `library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8978;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
