-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 01, 2022 at 05:22 PM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `believe_travel_group`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `posicion` int(2) DEFAULT NULL,
  `imagen` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0: sin publicar, 1: publicar, 2: eliminado',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `posicion`, `imagen`, `nombre`, `descripcion`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, '114209210616.jpg', 'Banner para Ron Peculo.', 'El mejor ron mexicano', 0, '2021-05-16 14:54:53', '2021-06-16 15:42:09', NULL),
(2, NULL, '110141210616.jpg', 'Paris', 'La ciudad del Amor', 1, '2021-05-16 15:05:14', '2021-06-17 03:01:41', NULL),
(3, NULL, '105954210616.jpg', 'Cancun', 'Cancún un maravilla', 1, '2021-05-16 15:08:29', '2021-06-17 02:59:55', NULL),
(4, NULL, '114002210616.jpg', 'Banner1 aa4s98', 'banner1 sdsf', 0, '2021-06-11 00:57:59', '2021-06-16 15:40:18', NULL),
(5, NULL, '114548210616.jpg', 'Banner1', 'Ciudad del los globos', 1, '2021-06-11 01:03:43', '2021-06-16 15:46:28', NULL),
(6, NULL, '011720210611.jpg', 'Egipto', 'Las maravillas de las piramides', 1, '2021-06-11 01:17:20', '2021-06-16 15:43:53', NULL),
(7, NULL, '114300210616.jpg', 'Turquia', 'Conoce todo sobre turquia', 1, '2021-06-12 02:32:06', '2021-06-16 15:43:16', NULL),
(8, NULL, '114111210616.jpg', 'Las vegas', 'La ciudad que nunca duerme', 1, '2021-06-12 10:31:30', '2021-06-16 15:41:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `id` int(11) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `marca` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `ano` varchar(255) NOT NULL,
  `placa` varchar(255) NOT NULL,
  `transmision` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `cant_persona` int(11) DEFAULT NULL,
  `cap_gasolina` int(11) DEFAULT NULL,
  `cant_puertas` int(11) DEFAULT NULL,
  `cant_puesto` int(11) DEFAULT NULL,
  `precio_dia` decimal(20,2) NOT NULL,
  `precio_semanal` decimal(20,2) DEFAULT NULL,
  `precio_mensual` decimal(20,3) DEFAULT NULL,
  `KM` int(11) DEFAULT NULL,
  `AA` int(11) DEFAULT NULL,
  `GPS` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `id_office` int(11) NOT NULL,
  `cantidad_disponible` int(11) DEFAULT NULL,
  `cantidad_rentada` int(11) DEFAULT NULL,
  `cantidad_total` int(11) DEFAULT '1',
  `status` tinyint(1) DEFAULT '1' COMMENT '1 activo, 0 en el mecanico, 2 alquilado, 3 deshabilitado, 4 apartado para renta',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `imagen`, `logo`, `marca`, `modelo`, `ano`, `placa`, `transmision`, `id_categoria`, `cant_persona`, `cap_gasolina`, `cant_puertas`, `cant_puesto`, `precio_dia`, `precio_semanal`, `precio_mensual`, `KM`, `AA`, `GPS`, `descripcion`, `id_office`, `cantidad_disponible`, `cantidad_rentada`, `cantidad_total`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '090840210624marca.png', '044937210624logo.png', 'FORD', 'FIESTA', '2010', 'ASD796ASFS', 2, 1, 4, 42, 4, 5, 10.00, NULL, NULL, NULL, 1, 1, 'nuevo', 1, NULL, NULL, 1, 1, '2021-06-18 03:03:28', '2021-06-24 21:10:57', NULL),
(2, '095253210624marca.png', NULL, 'TOYOTA', 'TERIOS', '2007', 'DEF556ASC', 2, 2, 4, 45, 4, 5, 1.00, NULL, NULL, NULL, 1, 1, 'nuevo', 2, NULL, NULL, 1, 1, '2021-06-18 03:14:03', '2021-06-25 01:52:53', NULL),
(3, '084512210624marca.png', '044937210624logo.png', 'FORD', 'FIESTA', '2010', 'ASD796ASFS', 2, 3, 4, 42, 4, 5, 10.00, NULL, NULL, NULL, 1, 1, 'nuevo', 2, NULL, NULL, 1, 4, '2021-06-18 03:15:33', '2021-10-14 04:07:39', NULL),
(4, '090804210624marca.png', '032556210624logo.png', 'Hyundai', 'lancer', '2020', 'asd784as', 1, 1, 5, 45, 4, 5, 12.00, NULL, NULL, 457852415, 1, 2, 'nuevo', 2, NULL, NULL, 1, 1, '2021-06-21 02:03:35', '2021-06-24 21:10:45', NULL),
(5, '090900210624marca.png', NULL, 'Cherry', 'A1', '2020', 'DE85S62', 1, 2, 5, 45, 5, 4, 9.66, NULL, NULL, 250000, 1, 1, 'nuevo', 1, NULL, NULL, 1, 1, '2021-06-21 02:12:37', '2021-06-25 01:09:00', NULL),
(6, '090945210624marca.png', NULL, 'mitsubishi', 'lancer', '2021', 'ASD458SDD', 1, 1, 4, 60, 4, 5, 8.55, NULL, NULL, 12, 1, 1, 'nuevo', 2, NULL, NULL, 1, 1, '2021-06-23 01:40:30', '2021-06-25 01:09:45', NULL),
(7, '014124210623.png', NULL, 'toyota', 'fortuner', '2021', 'asd896asd', 1, 1, 4, 45, 4, 4, 15.00, NULL, NULL, 12, 1, 1, 'asdad', 2, NULL, NULL, 1, 1, '2021-06-23 01:41:25', '2021-06-24 17:55:48', NULL),
(8, '032555210624marca.png', '032556210624logo.png', 'Hyundai', 'lancer', '2010', 'asd784as', 1, 1, 2, 55, 2, 2, 14.00, NULL, NULL, 12, 1, 1, 'sdfsf', 2, NULL, NULL, 1, 1, '2021-06-24 15:25:56', '2021-06-24 17:55:51', NULL),
(9, '042537210624marca.png', '042538210624logo.png', 'Chevrolet', 'Camaro', '2020', 'ASD458SDD', 1, 7, 5, 50, 5, 5, 1.00, NULL, NULL, 1, 2, 2, 'Camaro sport', 4, NULL, NULL, 1, 1, '2021-06-24 16:25:38', '2021-06-25 01:40:25', NULL),
(10, '044937210624marca.png', '044937210624logo.png', 'ford', 'Ranger', '2018', 'ASD256DSF', 1, 2, 4, 70, 4, 5, 11.05, NULL, NULL, 25, 1, 1, 'pickut doble cabina', 2, NULL, NULL, 1, 1, '2021-06-24 16:49:37', '2021-06-24 17:55:53', NULL),
(11, '045532210624marca.png', '045533210624logo.png', 'volkswagen', 'Gol', '2020', 'ASD546DAS', 3, 1, 4, 45, 4, 4, 9.33, NULL, NULL, 88, 1, 1, 'Gol familiar', 1, NULL, NULL, 1, 1, '2021-06-24 16:55:33', '2021-06-24 18:04:37', NULL),
(12, '095858210624marca.png', '095858210624logo.png', 'TOYOTA', 'TERIOS', '2018', 'AS4F5D45', 3, 3, 4, 45, 4, 5, 2.00, NULL, NULL, 2, 1, 1, 'Terios sport confortable', 2, NULL, NULL, 1, 1, '2021-06-24 21:58:58', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `car_categorias`
--

CREATE TABLE `car_categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `car_categorias`
--

INSERT INTO `car_categorias` (`id`, `categoria`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Economic', 1, '2021-06-20 22:08:58', NULL, NULL),
(2, 'Economic 1.1', 1, '2021-06-20 22:08:58', NULL, NULL),
(3, '4 x 4 Jeep', 1, '2021-06-20 22:08:58', NULL, NULL),
(4, 'Medium SUV', 1, '2021-06-20 22:08:58', NULL, NULL),
(5, 'C Standard', 1, '2021-06-20 22:08:58', NULL, NULL),
(6, 'D High Standard', 1, '2021-06-20 22:08:58', NULL, NULL),
(7, 'E Premium', 1, '2021-06-20 22:08:58', NULL, NULL),
(8, 'E Premium Plus', 1, '2021-06-20 22:08:58', NULL, NULL),
(9, 'F Luxury Plus', 1, '2021-06-20 22:08:58', NULL, NULL),
(10, 'G Jeep', 1, '2021-06-20 22:08:58', NULL, NULL),
(11, 'H MiniVan', 1, '2021-06-20 22:08:58', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dataClient`
--

CREATE TABLE `dataClient` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `second_name` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `first_surname` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `second_surname` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `carnet_identidad` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `email_recident` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `date_birth` date DEFAULT NULL,
  `name_father` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `name_mother` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `eyes` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `skin` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `hair` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `charact_especial` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `height` decimal(20,2) DEFAULT NULL,
  `sexo` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `pais` varchar(11) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `provincia` int(11) DEFAULT NULL,
  `municipio` int(11) DEFAULT NULL,
  `ciudadania` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `dataClient`
--

INSERT INTO `dataClient` (`id`, `first_name`, `second_name`, `first_surname`, `second_surname`, `carnet_identidad`, `email_recident`, `date_birth`, `name_father`, `name_mother`, `eyes`, `skin`, `hair`, `charact_especial`, `height`, `sexo`, `pais`, `provincia`, `municipio`, `ciudadania`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 'Alfredo', 'Jise', 'Marcano', 'Trujillo', '6152728394', 'alfredomarcan@gmail.com', '2020-07-09', 'Padre', 'Madre', 'Negros', 'Negra', 'Rubio', 'Mulato', 5.70, 'masculino', 'Cuba', 5, 56, 'Cubana', 1, '2021-07-21 11:40:52', NULL, NULL),
(12, 'qwe', 'ewq', 'qwe', 'ewq', '123', 'marcelescobar25@gmail.com', '2020-07-21', '123', '123', 'Claros', 'Amarilla', 'Castaño', 'qweqweqwe', 5.30, 'femenino', 'Cuba', 9, 94, 'Cubana', 1, '2021-07-21 13:32:12', NULL, NULL),
(13, 'Daniel', 'F', 'Cayado', 'Fer', '87120312345', NULL, '1988-12-14', 'Ibrahim', 'Delfina', 'Claros', 'Blanca', 'Negro', '..', 5.00, 'masculino', 'Cuba', 14, 148, 'Cubana', 1, '2021-09-19 09:50:00', NULL, NULL),
(14, 'Jesús', 'Armando', 'Alvarez', 'Mercado', '13721212', 'chucho2k@gmail.com', '1979-09-21', 'Omar', 'María', 'Claros', 'Amarilla', 'Canoso', 'zurdo', NULL, 'masculino', 'Cuba', 15, 158, 'Cubana', 1, '2021-09-25 22:45:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dataMigration`
--

CREATE TABLE `dataMigration` (
  `id` int(11) NOT NULL,
  `id_personal` int(11) NOT NULL,
  `pais` int(11) NOT NULL,
  `estado` int(11) DEFAULT NULL,
  `clasificacion` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `dataMigration`
--

INSERT INTO `dataMigration` (`id`, `id_personal`, `pais`, `estado`, `clasificacion`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 11, 1, 6, 'Asunto Oficial', 1, '2021-07-21 11:40:52', NULL, NULL),
(2, 12, 1, 11, 'Permiso de Emigración', 1, '2021-07-21 13:32:12', NULL, NULL),
(3, 13, 1, 3, 'Permiso de Emigración', 1, '2021-09-19 09:50:00', NULL, NULL),
(4, 14, 1, 14, 'Asunto Oficial', 1, '2021-09-25 22:45:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dataPassport`
--

CREATE TABLE `dataPassport` (
  `id` int(11) NOT NULL,
  `id_personal` int(11) NOT NULL,
  `tipo_tramite` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_solicitud` date DEFAULT NULL,
  `n_passport` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `foto_carnet` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `firma` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `dataPassport`
--

INSERT INTO `dataPassport` (`id`, `id_personal`, `tipo_tramite`, `fecha_solicitud`, `n_passport`, `fecha_vencimiento`, `foto_carnet`, `firma`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 11, 'Renovación', '2021-07-21', '162827492', '2021-07-30', '/tmp/phprPzura', NULL, 1, '2021-07-21 11:40:52', NULL, NULL),
(2, 12, 'Prórroga', '2021-07-21', '123123', '2021-07-06', '/tmp/phpUiar5k', NULL, 1, '2021-07-21 13:32:12', NULL, NULL),
(3, 13, 'Prórroga', '2021-09-19', '234567', '2021-06-24', '/tmp/php28ZnwY', NULL, 1, '2021-09-19 09:50:00', NULL, NULL),
(4, 14, 'Primera Vez', '2021-09-25', '0123456789', '2021-09-01', '/tmp/phpFiNAnu', NULL, 1, '2021-09-25 22:45:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dataRecident`
--

CREATE TABLE `dataRecident` (
  `id` int(11) NOT NULL,
  `id_personal` int(11) NOT NULL,
  `address_recident` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `postal` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `pais_recident` int(11) NOT NULL,
  `estado_recident` int(11) DEFAULT NULL,
  `city_recident` int(11) DEFAULT NULL,
  `phone_recident` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fax_recident` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `dataRecident`
--

INSERT INTO `dataRecident` (`id`, `id_personal`, `address_recident`, `postal`, `pais_recident`, `estado_recident`, `city_recident`, `phone_recident`, `fax_recident`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 11, NULL, NULL, 2, 22, NULL, NULL, NULL, 1, '2021-07-21 11:40:52', NULL, NULL),
(2, 12, NULL, NULL, 2, 29, NULL, '123', NULL, 1, '2021-07-21 13:32:12', NULL, NULL),
(3, 13, NULL, NULL, 2, 48, NULL, NULL, NULL, 1, '2021-09-19 09:50:00', NULL, NULL),
(4, 14, NULL, NULL, 2, 28, NULL, '4140353701', NULL, 1, '2021-09-25 22:45:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dataReference`
--

CREATE TABLE `dataReference` (
  `id` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `name_ref` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `surname_ref` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `address_ref` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `phone_ref` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `relation_ref` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `estado_ref` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `municipio_ref` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `barrio_ref` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `dataReference`
--

INSERT INTO `dataReference` (`id`, `id_client`, `name_ref`, `surname_ref`, `address_ref`, `phone_ref`, `relation_ref`, `estado_ref`, `municipio_ref`, `barrio_ref`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 14, 'Namariz', 'Silva', 'tribu colmillo', '4128901764', 'Esposa', '3', '28', 'Colmillo', 1, '2021-09-25 22:45:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dataWork`
--

CREATE TABLE `dataWork` (
  `id` int(11) NOT NULL,
  `id_personal` int(11) NOT NULL,
  `name_work` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `caract_work` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `profession_work` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `occupation_work` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `address_work` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `postal__work` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `school_work` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `pais_work` int(11) NOT NULL,
  `estado_work` int(11) DEFAULT NULL,
  `city_work` int(11) DEFAULT NULL,
  `phone_work` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fax_work` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `email_work` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `dataWork`
--

INSERT INTO `dataWork` (`id`, `id_personal`, `name_work`, `caract_work`, `profession_work`, `occupation_work`, `address_work`, `postal__work`, `school_work`, `pais_work`, `estado_work`, `city_work`, `phone_work`, `fax_work`, `email_work`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 11, 'Progranador', 'Tecnología', 'Ingeniero', NULL, NULL, NULL, 'Universitario', 2, 20, NULL, NULL, NULL, NULL, NULL, '2021-07-21 11:40:52', NULL, NULL),
(2, 12, '123', 'Salud', 'Enfermera', NULL, NULL, NULL, 'Primario', 2, 27, NULL, NULL, NULL, NULL, NULL, '2021-07-21 13:32:12', NULL, NULL),
(3, 13, 'Uber', 'Otra', 'Otra', NULL, NULL, NULL, 'Pre-universitario', 2, 48, NULL, NULL, NULL, NULL, NULL, '2021-09-19 09:50:00', NULL, NULL),
(4, 14, 'Puntotec International', 'Tecnología', 'Licenciado', NULL, NULL, NULL, 'Universitario', 2, 48, NULL, NULL, NULL, NULL, NULL, '2021-09-25 22:45:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `estados`
--

CREATE TABLE `estados` (
  `id` int(11) NOT NULL,
  `id_pais` int(11) NOT NULL,
  `codigo_pais` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `estados`
--

INSERT INTO `estados` (`id`, `id_pais`, `codigo_pais`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 1, 'CUB', 'Pinar del Río', '2021-07-04 14:53:39', NULL),
(2, 1, 'CUB', 'Artemisa', '2021-07-04 14:57:33', NULL),
(3, 1, 'CUB', 'La Habana', '2021-07-04 15:00:59', NULL),
(4, 1, 'CUB', 'Mayabeque', '2021-07-04 15:19:54', NULL),
(5, 1, 'CUB', 'Matanzas', '2021-07-04 15:23:16', NULL),
(6, 1, 'CUB', 'Cienfuegos', '2021-07-04 15:27:51', NULL),
(7, 1, 'CUB', 'Villa Clara', '2021-07-04 15:29:36', NULL),
(8, 1, 'CUB', 'Sancti Spíritus', '2021-07-04 15:55:22', NULL),
(9, 1, 'CUB', 'Ciego de Ávila', '2021-07-04 16:00:18', NULL),
(10, 1, 'CUB', 'Camagüey', '2021-07-04 16:00:26', NULL),
(11, 1, 'CUB', 'Las Tunas', '2021-07-04 16:04:18', NULL),
(12, 1, 'CUB', 'Holguín', '2021-07-04 16:04:31', NULL),
(13, 1, 'CUB', 'Granma', '2021-07-04 16:11:06', NULL),
(14, 1, 'CUB', 'Santiago de Cuba', '2021-07-04 16:17:20', NULL),
(15, 1, 'CUB', 'Guantánamo', '2021-07-04 16:17:32', NULL),
(16, 1, 'CUB', 'Isla de la Juventud', '2021-07-04 16:18:03', NULL),
(17, 2, 'USA', 'Alabama', '2021-07-04 21:11:13', NULL),
(18, 2, 'USA', 'Alaska', '2021-07-04 21:11:25', NULL),
(19, 2, 'USA', 'Arizona', '2021-07-04 21:11:34', NULL),
(20, 2, 'USA', 'Arkansas', '2021-07-04 21:11:54', NULL),
(21, 2, 'USA', 'California', '2021-07-04 21:12:17', NULL),
(22, 2, 'USA', 'North Carolina', '2021-07-04 21:12:30', '2021-07-05 17:45:50'),
(23, 2, 'USA', 'South Carolina', '2021-07-04 21:12:43', '2021-07-05 17:46:11'),
(24, 2, 'USA', 'Colorado', '2021-07-04 21:12:57', NULL),
(25, 2, 'USA', 'Connecticut', '2021-07-04 21:13:14', NULL),
(26, 2, 'USA', 'North Dakota', '2021-07-04 21:13:31', '2021-07-05 17:55:58'),
(27, 2, 'USA', 'South Dakota', '2021-07-04 21:13:52', '2021-07-05 17:58:37'),
(28, 2, 'USA', 'Delaware', '2021-07-04 21:14:19', NULL),
(29, 2, 'USA', 'Florida', '2021-07-04 21:14:28', NULL),
(30, 2, 'USA', 'Georgia', '2021-07-04 21:14:43', NULL),
(31, 2, 'USA', 'Hawái', '2021-07-04 21:15:00', NULL),
(32, 2, 'USA', 'Idaho', '2021-07-04 21:15:08', NULL),
(33, 2, 'USA', 'Illinois', '2021-07-04 21:15:21', NULL),
(34, 2, 'USA', 'Indiana', '2021-07-04 21:15:30', NULL),
(35, 2, 'USA', 'Iowa', '2021-07-04 21:15:40', NULL),
(36, 2, 'USA', 'Kansas', '2021-07-04 21:15:49', '2021-07-04 21:15:58'),
(37, 2, 'USA', 'Kentucky', '2021-07-04 21:16:27', NULL),
(38, 2, 'USA', 'Louisiana', '2021-07-04 21:16:41', '2021-07-05 15:01:51'),
(39, 2, 'USA', 'Maine', '2021-07-04 21:16:55', NULL),
(40, 2, 'USA', 'Maryland', '2021-07-04 21:17:04', NULL),
(41, 2, 'USA', 'Massachusetts', '2021-07-04 21:17:24', NULL),
(42, 2, 'USA', 'Michigan', '2021-07-04 21:17:59', NULL),
(43, 2, 'USA', 'Minesota', '2021-07-04 21:18:15', NULL),
(44, 2, 'USA', 'Mississippi', '2021-07-04 21:18:40', '2021-07-05 15:48:00'),
(45, 2, 'USA', 'Misouri', '2021-07-04 21:18:51', '2021-07-05 15:48:08'),
(46, 2, 'USA', 'Montana', '2021-07-04 21:18:59', NULL),
(47, 2, 'USA', 'Nebraska', '2021-07-04 21:19:13', NULL),
(48, 2, 'USA', 'Nevada', '2021-07-04 21:19:21', NULL),
(49, 2, 'USA', 'New Jersey', '2021-07-04 21:20:01', NULL),
(50, 2, 'USA', 'New York', '2021-07-04 21:20:24', NULL),
(51, 2, 'USA', 'New Hampshire', '2021-07-04 21:20:45', NULL),
(52, 2, 'USA', 'New Mexico', '2021-07-04 21:20:59', NULL),
(53, 2, 'USA', 'Ohio', '2021-07-04 21:21:12', NULL),
(54, 2, 'USA', 'Oklahoma', '2021-07-04 21:21:23', NULL),
(55, 2, 'USA', 'Oregon', '2021-07-04 21:21:35', '2021-07-05 18:26:47'),
(56, 2, 'USA', 'Pensilvania', '2021-07-04 21:21:48', NULL),
(57, 2, 'USA', 'Rhode Island', '2021-07-04 21:22:24', NULL),
(58, 2, 'USA', 'Tennessee', '2021-07-04 21:22:35', NULL),
(59, 2, 'USA', 'Texas', '2021-07-04 21:22:46', NULL),
(60, 2, 'USA', 'Utah', '2021-07-04 21:22:56', NULL),
(61, 2, 'USA', 'Vermont', '2021-07-04 21:23:07', NULL),
(62, 2, 'USA', 'Virginia', '2021-07-04 21:23:15', NULL),
(63, 2, 'USA', 'West Virginia', '2021-07-04 21:23:31', '2021-07-05 19:14:35'),
(64, 2, 'USA', 'Washington', '2021-07-04 21:23:51', NULL),
(65, 2, 'USA', 'Wisconsin', '2021-07-04 21:24:05', NULL),
(66, 2, 'USA', 'Wyoming', '2021-07-04 21:24:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(11) NOT NULL,
  `telefono1` varchar(255) DEFAULT NULL,
  `direccion1` varchar(255) DEFAULT NULL,
  `telefono2` varchar(255) DEFAULT NULL,
  `direccion2` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 sin publicar, 1 publicar.',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `telefono1`, `direccion1`, `telefono2`, `direccion2`, `correo`, `facebook`, `instagram`, `twitter`, `whatsapp`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '+1 702 512 1453', 'Las Vegas', '+1 305 890 5585', 'Miami', 'booking@believecuba.com', 'www.facebook.com/believecuba', 'www.instagram.com/believecuba', 'www.twitter.com/believecuba', '584243366843', 1, '2021-06-06 15:03:09', '2021-06-06 20:00:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galeria`
--

CREATE TABLE `galeria` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) CHARACTER SET utf8 NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `tipo` tinyint(1) NOT NULL COMMENT '1 padre, 2 hijo',
  `codigo_parental` varchar(255) NOT NULL COMMENT 'codigo de interconexion entre padre e hijos',
  `posicion` tinyint(1) DEFAULT NULL COMMENT 'numero dentro de la secuencia de imagenes en que se va a mostrar.',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 no publicado, 1 publicado',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeria`
--

INSERT INTO `galeria` (`id`, `titulo`, `imagen`, `descripcion`, `tipo`, `codigo_parental`, `posicion`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'New York', 'New_York_0.jpg', 'New York capital del mundo', 1, '25_05_2021_032050_Mi_Amm', NULL, 1, '2021-05-25 03:20:51', '2021-06-21 02:08:06', NULL),
(2, 'New_York_Imagen_1', 'New_York_1.jpg', 'new york 1', 2, '25_05_2021_032050_Mi_Amm', NULL, 1, '2021-05-25 03:20:51', '2021-06-21 02:08:06', NULL),
(3, 'New_York_Imagen_2', 'New_York_2.jpg', 'new york 2', 2, '25_05_2021_032050_Mi_Amm', NULL, 1, '2021-05-25 03:20:51', '2021-06-21 02:08:06', NULL),
(4, 'New_York_Imagen_3', 'New_York_3.jpg', 'new york 3', 2, '25_05_2021_032050_Mi_Amm', NULL, 1, '2021-05-25 03:20:51', '2021-06-21 02:08:06', NULL),
(5, 'New_York_Imagen_4', 'New_York_4.jpg', 'new york 4', 2, '25_05_2021_032050_Mi_Amm', NULL, 1, '2021-05-25 03:20:51', '2021-06-21 02:08:06', NULL),
(6, 'Cancún', 'Cancún_0.jpg', 'Cancún una maravilla del caribe', 1, '16_06_2021_065902_Cancún', NULL, 1, '2021-06-16 18:59:03', NULL, NULL),
(7, 'Cancún_Imagen_1', 'Cancún_1.jpg', 'cancun 1', 2, '16_06_2021_065902_Cancún', NULL, 1, '2021-06-16 18:59:03', NULL, NULL),
(8, 'Cancún_Imagen_2', 'Cancún_2.jpg', 'cancun 2', 2, '16_06_2021_065902_Cancún', NULL, 1, '2021-06-16 18:59:03', NULL, NULL),
(9, 'Cancún_Imagen_3', 'Cancún_3.jpg', 'cancun 3', 2, '16_06_2021_065902_Cancún', NULL, 1, '2021-06-16 18:59:03', NULL, NULL),
(10, 'Cancún_Imagen_4', 'Cancún_4.jpg', 'cancun 4', 2, '16_06_2021_065902_Cancún', NULL, 1, '2021-06-16 18:59:03', NULL, NULL),
(11, 'puerto vallarte', 'puerto_vallarte_0.jpg', 'puerto vallarte', 1, '16_06_2021_070324_puerto_vallarte', NULL, 1, '2021-06-16 19:03:25', NULL, NULL),
(12, 'puerto_vallarte_Imagen_1', 'puerto_vallarte_1.jpg', 'puerto vallarte 1', 2, '16_06_2021_070324_puerto_vallarte', NULL, 1, '2021-06-16 19:03:25', NULL, NULL),
(13, 'puerto_vallarte_Imagen_2', 'puerto_vallarte_2.jpg', 'puerto vallarte 2', 2, '16_06_2021_070324_puerto_vallarte', NULL, 1, '2021-06-16 19:03:25', NULL, NULL),
(14, 'puerto_vallarte_Imagen_3', 'puerto_vallarte_3.jpg', 'puerto vallarte 3', 2, '16_06_2021_070324_puerto_vallarte', NULL, 1, '2021-06-16 19:03:25', NULL, NULL),
(15, 'puerto_vallarte_Imagen_4', 'puerto_vallarte_4.jpg', 'puerto vallarte 4', 2, '16_06_2021_070324_puerto_vallarte', NULL, 1, '2021-06-16 19:03:25', NULL, NULL),
(16, 'Punta cana', 'Punta_cana_0.jpg', 'Conoce esta maravilla', 1, '16_06_2021_070443_Punta_cana', NULL, 1, '2021-06-16 19:04:43', NULL, NULL),
(17, 'Punta_cana_Imagen_1', 'Punta_cana_1.jpg', 'Punta cana 1', 2, '16_06_2021_070443_Punta_cana', NULL, 1, '2021-06-16 19:04:43', NULL, NULL),
(18, 'Punta_cana_Imagen_2', 'Punta_cana_2.jpg', 'Punta cana 2', 2, '16_06_2021_070443_Punta_cana', NULL, 1, '2021-06-16 19:04:43', NULL, NULL),
(19, 'Punta_cana_Imagen_3', 'Punta_cana_3.jpg', 'Punta cana 3', 2, '16_06_2021_070443_Punta_cana', NULL, 1, '2021-06-16 19:04:43', NULL, NULL),
(20, 'Punta_cana_Imagen_4', 'Punta_cana_4.jpg', 'Punta cana 4', 2, '16_06_2021_070443_Punta_cana', NULL, 1, '2021-06-16 19:04:43', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_05_21_300000_create_team_invitations_table', 1),
(9, '2021_02_03_142006_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `municipios`
--

CREATE TABLE `municipios` (
  `id` int(11) NOT NULL,
  `id_pais` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_estado` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `municipios`
--

INSERT INTO `municipios` (`id`, `id_pais`, `id_estado`, `nombre`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'Consolación del Sur', '2021-07-04 14:54:01', NULL),
(2, '1', '1', 'Guane', '2021-07-04 14:54:14', NULL),
(3, '1', '1', 'La Palma', '2021-07-04 14:54:30', NULL),
(4, '1', '1', 'Mantua', '2021-07-04 14:54:40', NULL),
(5, '1', '1', 'Minas de Matahambre', '2021-07-04 14:55:00', NULL),
(6, '1', '1', 'Pinar del Río', '2021-07-04 14:55:17', NULL),
(7, '1', '1', 'San Juan y Martínez', '2021-07-04 14:55:53', NULL),
(8, '1', '1', 'San Luis', '2021-07-04 14:56:04', NULL),
(9, '1', '1', 'Sandino', '2021-07-04 14:56:13', NULL),
(10, '1', '1', 'Viñales', '2021-07-04 14:56:21', NULL),
(11, '1', '2', 'Alquizar', '2021-07-04 14:57:59', NULL),
(12, '1', '2', 'Artemisa', '2021-07-04 14:58:17', NULL),
(13, '1', '2', 'Bahía Honda', '2021-07-04 14:58:30', NULL),
(14, '1', '2', 'Bauta', '2021-07-04 14:58:41', NULL),
(15, '1', '2', 'Caimito', '2021-07-04 14:58:49', NULL),
(16, '1', '2', 'Candelaria', '2021-07-04 14:58:57', NULL),
(17, '1', '2', 'Guanajay', '2021-07-04 14:59:10', NULL),
(18, '1', '2', 'Güira de Melena', '2021-07-04 14:59:46', NULL),
(19, '1', '2', 'Mariel', '2021-07-04 14:59:57', NULL),
(20, '1', '2', 'San Antonio de los Baños', '2021-07-04 15:00:13', NULL),
(21, '1', '2', 'San Cristóbal', '2021-07-04 15:00:28', NULL),
(22, '1', '3', 'Arroyo Naranjo', '2021-07-04 15:01:19', NULL),
(23, '1', '3', 'Boyeros', '2021-07-04 15:15:33', NULL),
(24, '1', '3', 'Centro Habana', '2021-07-04 15:15:46', NULL),
(25, '1', '3', 'Cerro', '2021-07-04 15:15:56', NULL),
(26, '1', '3', 'Cotorro', '2021-07-04 15:16:07', NULL),
(27, '1', '3', 'Diez de Octubre', '2021-07-04 15:16:26', NULL),
(28, '1', '3', 'Guanabacoa', '2021-07-04 15:16:36', NULL),
(29, '1', '3', 'La Habana del Este', '2021-07-04 15:16:50', NULL),
(30, '1', '3', 'La Habana Vieja', '2021-07-04 15:17:17', NULL),
(31, '1', '3', 'La Lisa', '2021-07-04 15:17:43', NULL),
(32, '1', '3', 'Marianao', '2021-07-04 15:17:53', NULL),
(33, '1', '3', 'Playa', '2021-07-04 15:17:59', NULL),
(34, '1', '3', 'Plaza de la Revolución', '2021-07-04 15:18:34', NULL),
(35, '1', '3', 'Regla', '2021-07-04 15:18:51', NULL),
(36, '1', '3', 'San Miguel del Padrón', '2021-07-04 15:19:13', NULL),
(37, '1', '4', 'Batabanó', '2021-07-04 15:20:20', NULL),
(38, '1', '4', 'Bejucal', '2021-07-04 15:20:28', NULL),
(39, '1', '4', 'Güines', '2021-07-04 15:21:02', NULL),
(40, '1', '4', 'Jaruco', '2021-07-04 15:21:12', NULL),
(41, '1', '4', 'Madruga', '2021-07-04 15:21:20', NULL),
(42, '1', '4', 'Melena del Sur', '2021-07-04 15:21:40', NULL),
(43, '1', '4', 'Nueva Paz', '2021-07-04 15:21:50', NULL),
(44, '1', '4', 'Quivicán', '2021-07-04 15:22:06', NULL),
(45, '1', '4', 'San José de las Lajas', '2021-07-04 15:22:23', NULL),
(46, '1', '4', 'San Nicolás', '2021-07-04 15:22:40', NULL),
(47, '1', '4', 'Santa Cruz del Norte', '2021-07-04 15:22:52', NULL),
(48, '1', '5', 'Calimete', '2021-07-04 15:23:40', NULL),
(49, '1', '5', 'Cárdenas', '2021-07-04 15:24:16', NULL),
(50, '1', '5', 'Ciénaga de Zapata', '2021-07-04 15:24:34', NULL),
(51, '1', '5', 'Colón', '2021-07-04 15:24:50', NULL),
(52, '1', '5', 'Jagüey Grande', '2021-07-04 15:25:03', NULL),
(53, '1', '5', 'Jovellanos', '2021-07-04 15:25:28', NULL),
(54, '1', '5', 'Limonar', '2021-07-04 15:25:38', NULL),
(55, '1', '5', 'Los Arabos', '2021-07-04 15:25:46', NULL),
(56, '1', '5', 'Martí', '2021-07-04 15:26:02', NULL),
(57, '1', '5', 'Matanzas', '2021-07-04 15:26:20', NULL),
(58, '1', '5', 'Pedro Betancourt', '2021-07-04 15:26:37', NULL),
(59, '1', '5', 'Perico', '2021-07-04 15:26:46', NULL),
(60, '1', '5', 'Unión de Reyes', '2021-07-04 15:27:21', NULL),
(61, '1', '6', 'Abreus', '2021-07-04 15:28:06', NULL),
(62, '1', '6', 'Aguada de Pasajeros', '2021-07-04 15:28:19', NULL),
(63, '1', '6', 'Cienfuegos', '2021-07-04 15:28:29', NULL),
(64, '1', '6', 'Cruces', '2021-07-04 15:28:39', NULL),
(65, '1', '6', 'Cumanayagua', '2021-07-04 15:28:53', NULL),
(66, '1', '6', 'Lajas', '2021-07-04 15:29:01', NULL),
(67, '1', '6', 'Palmira', '2021-07-04 15:29:08', NULL),
(68, '1', '6', 'Rodas', '2021-07-04 15:29:14', NULL),
(69, '1', '7', 'Caibarién', '2021-07-04 15:29:59', NULL),
(70, '1', '7', 'Camajuaní', '2021-07-04 15:30:13', NULL),
(71, '1', '7', 'Cifuentes', '2021-07-04 15:30:22', NULL),
(72, '1', '7', 'Corralillo', '2021-07-04 15:30:35', NULL),
(73, '1', '7', 'Encrucijada', '2021-07-04 15:30:47', NULL),
(74, '1', '7', 'Manicaragua', '2021-07-04 15:30:56', NULL),
(75, '1', '7', 'Placetas', '2021-07-04 15:31:06', NULL),
(76, '1', '7', 'Quemado de Güines', '2021-07-04 15:31:18', NULL),
(77, '1', '7', 'Ranchuelo', '2021-07-04 15:31:37', NULL),
(78, '1', '7', 'San Juan de los Remedios', '2021-07-04 15:31:48', NULL),
(79, '1', '7', 'Sagua la Grande', '2021-07-04 15:32:00', NULL),
(80, '1', '7', 'Santa Clara', '2021-07-04 15:52:47', NULL),
(81, '1', '7', 'Santo Domingo', '2021-07-04 15:54:50', NULL),
(82, '1', '8', 'Cabaiguán', '2021-07-04 15:54:57', '2021-07-04 15:55:55'),
(83, '1', '8', 'Fomento', '2021-07-04 15:56:10', NULL),
(84, '1', '8', 'Jatibonico', '2021-07-04 15:56:24', NULL),
(85, '1', '8', 'La Sierpe', '2021-07-04 15:56:37', NULL),
(86, '1', '8', 'Sancti Spíritus', '2021-07-04 15:56:51', NULL),
(87, '1', '8', 'Taguasco', '2021-07-04 15:57:04', NULL),
(88, '1', '8', 'Trinidad', '2021-07-04 15:57:11', NULL),
(89, '1', '8', 'Yaguajay', '2021-07-04 15:57:24', NULL),
(90, '1', '9', 'Baraguá', '2021-07-04 15:58:08', NULL),
(91, '1', '9', 'Bolivia', '2021-07-04 15:58:17', NULL),
(92, '1', '9', 'Chambas', '2021-07-04 15:58:24', NULL),
(93, '1', '9', 'Ciego de Ávila', '2021-07-04 15:58:39', NULL),
(94, '1', '9', 'Ciro Redondo', '2021-07-04 15:58:49', NULL),
(95, '1', '9', 'Florencia', '2021-07-04 15:59:06', NULL),
(96, '1', '9', 'Majagua', '2021-07-04 15:59:28', NULL),
(97, '1', '9', 'Morón', '2021-07-04 15:59:37', NULL),
(98, '1', '9', 'Primero de Enero', '2021-07-04 15:59:49', NULL),
(99, '1', '9', 'Venezuela', '2021-07-04 16:00:00', NULL),
(100, '1', '10', 'Camagüey', '2021-07-04 16:00:38', NULL),
(101, '1', '10', 'Carlos M. de Céspedes', '2021-07-04 16:01:11', '2021-07-04 16:01:38'),
(102, '1', '10', 'Esmeralda', '2021-07-04 16:01:54', NULL),
(103, '1', '10', 'Florida', '2021-07-04 16:02:05', NULL),
(104, '1', '10', 'Guáimiro', '2021-07-04 16:02:27', NULL),
(105, '1', '10', 'Jimaguayú', '2021-07-04 16:02:41', NULL),
(106, '1', '10', 'Minas', '2021-07-04 16:02:49', NULL),
(107, '1', '10', 'Najasa', '2021-07-04 16:02:55', NULL),
(108, '1', '10', 'Nuevitas', '2021-07-04 16:03:06', NULL),
(109, '1', '10', 'Santa Cruz del Sur', '2021-07-04 16:03:25', NULL),
(110, '1', '10', 'Sibanicú', '2021-07-04 16:03:35', NULL),
(111, '1', '10', 'Sierra de Cubitas', '2021-07-04 16:03:47', NULL),
(112, '1', '10', 'Vertientes', '2021-07-04 16:03:58', NULL),
(113, '1', '11', 'Amancio', '2021-07-04 16:04:58', NULL),
(114, '1', '11', 'Colombia', '2021-07-04 16:05:06', NULL),
(115, '1', '11', 'Jesús Menéndez', '2021-07-04 16:05:21', NULL),
(116, '1', '11', 'Jobabo', '2021-07-04 16:05:30', NULL),
(117, '1', '11', 'Las Tunas', '2021-07-04 16:05:43', NULL),
(118, '1', '11', 'Majibacoa', '2021-07-04 16:05:58', NULL),
(119, '1', '11', 'Manatí', '2021-07-04 16:06:06', NULL),
(120, '1', '11', 'Puerto Padre', '2021-07-04 16:06:18', NULL),
(121, '1', '12', 'Antilla', '2021-07-04 16:06:33', NULL),
(122, '1', '12', 'Báguanos', '2021-07-04 16:06:44', NULL),
(123, '1', '12', 'Banes', '2021-07-04 16:06:53', NULL),
(124, '1', '12', 'Cacocum', '2021-07-04 16:07:02', NULL),
(125, '1', '12', 'Calixto García', '2021-07-04 16:07:16', NULL),
(126, '1', '12', 'Cueto', '2021-07-04 16:07:27', NULL),
(127, '1', '12', 'Frank País', '2021-07-04 16:07:42', NULL),
(128, '1', '12', 'Gibara', '2021-07-04 16:07:49', NULL),
(129, '1', '12', 'Holguín', '2021-07-04 16:09:22', NULL),
(130, '1', '12', 'Mayarí', '2021-07-04 16:09:30', NULL),
(131, '1', '12', 'Moa', '2021-07-04 16:09:40', NULL),
(132, '1', '12', 'Rafael Freyre', '2021-07-04 16:09:54', NULL),
(133, '1', '12', 'Sagua de Tánamo', '2021-07-04 16:10:07', NULL),
(134, '1', '12', 'Urbano Noris', '2021-07-04 16:10:18', NULL),
(135, '1', '13', 'Bartolomé Masó', '2021-07-04 16:13:34', NULL),
(136, '1', '13', 'Bayamo', '2021-07-04 16:14:28', '2021-07-04 16:14:46'),
(137, '1', '13', 'Buey Arriba', '2021-07-04 16:14:56', NULL),
(138, '1', '13', 'Campechuela', '2021-07-04 16:15:11', NULL),
(139, '1', '13', 'Cauto Cristo', '2021-07-04 16:15:25', NULL),
(140, '1', '13', 'Guisa', '2021-07-04 16:15:32', NULL),
(141, '1', '13', 'Jiguaní', '2021-07-04 16:15:47', NULL),
(142, '1', '13', 'Manzanillo', '2021-07-04 16:16:01', NULL),
(143, '1', '13', 'Media Luna', '2021-07-04 16:16:12', NULL),
(144, '1', '13', 'Niquero', '2021-07-04 16:16:20', NULL),
(145, '1', '13', 'Pilón', '2021-07-04 16:16:33', NULL),
(146, '1', '13', 'Río Cauto', '2021-07-04 16:16:44', NULL),
(147, '1', '13', 'Yara', '2021-07-04 16:18:16', NULL),
(148, '1', '14', 'Contramaestre', '2021-07-04 16:18:27', NULL),
(149, '1', '14', 'Guamá', '2021-07-04 16:18:35', NULL),
(150, '1', '14', 'Mella', '2021-07-04 16:18:44', NULL),
(151, '1', '14', 'Palma Soriano', '2021-07-04 16:18:56', NULL),
(152, '1', '14', 'San Luis', '2021-07-04 16:19:05', NULL),
(153, '1', '14', 'Santiago de Cuba', '2021-07-04 16:19:14', NULL),
(154, '1', '14', 'Segundo Frente', '2021-07-04 16:19:35', NULL),
(155, '1', '14', 'Songo-La Maya', '2021-07-04 16:19:49', NULL),
(156, '1', '14', 'Tercer Frente', '2021-07-04 16:20:45', NULL),
(157, '1', '15', 'Baracoa', '2021-07-04 16:20:55', NULL),
(158, '1', '15', 'Caimanera', '2021-07-04 16:21:05', NULL),
(159, '1', '15', 'El Salvador', '2021-07-04 16:21:29', NULL),
(160, '1', '15', 'Guantánamo', '2021-07-04 16:21:45', NULL),
(161, '1', '15', 'Imías', '2021-07-04 16:22:14', NULL),
(162, '1', '15', 'Maisí', '2021-07-04 16:22:31', NULL),
(163, '1', '15', 'Manuel Tames', '2021-07-04 16:22:43', NULL),
(164, '1', '15', 'Niceto Pérez', '2021-07-04 16:23:04', NULL),
(165, '1', '15', 'San Antonio del Sur', '2021-07-04 16:23:25', NULL),
(166, '1', '15', 'Yateras', '2021-07-04 16:23:34', NULL),
(167, '1', '16', 'Isla de la Juventud', '2021-07-04 16:23:42', '2021-07-04 16:24:25'),
(168, '2', '17', 'Henry', '2021-07-05 00:41:31', '2021-07-05 12:18:30'),
(169, '2', '17', 'Macon', '2021-07-05 00:41:31', '2021-07-05 12:21:05'),
(170, '2', '17', 'Jefferson', '2021-07-05 00:41:31', '2021-07-05 12:21:05'),
(171, '2', '17', 'Marion', '2021-07-05 12:41:28', NULL),
(172, '2', '17', 'Monroe', '2021-07-05 12:41:28', NULL),
(173, '2', '17', 'Mobile', '2021-07-05 12:41:28', NULL),
(174, '2', '17', 'Chilton', '2021-07-05 12:41:28', NULL),
(175, '2', '17', 'Madison', '2021-07-05 12:41:29', NULL),
(176, '2', '17', 'Randolph', '2021-07-05 12:41:29', NULL),
(177, '2', '17', 'Greene', '2021-07-05 12:41:29', NULL),
(178, '2', '17', 'Wilcox', '2021-07-05 12:41:29', NULL),
(179, '2', '17', 'Chambers', '2021-07-05 12:41:29', NULL),
(180, '2', '17', 'Montgomery', '2021-07-05 12:41:29', NULL),
(181, '2', '17', 'Shelby', '2021-07-05 12:41:29', NULL),
(182, '2', '17', 'Baldwin', '2021-07-05 12:41:29', NULL),
(183, '2', '17', 'Tuscaloosa', '2021-07-05 12:41:29', NULL),
(184, '2', '17', 'Cleburne', '2021-07-05 12:41:29', NULL),
(185, '2', '17', 'Bullock', '2021-07-05 12:41:30', NULL),
(186, '2', '17', 'Covington', '2021-07-05 12:41:30', NULL),
(187, '2', '17', 'Lowndes', '2021-07-05 12:41:30', NULL),
(188, '2', '17', 'Lee', '2021-07-05 12:41:30', NULL),
(189, '2', '17', 'Conecuh', '2021-07-05 12:41:30', NULL),
(190, '2', '17', 'Lamar', '2021-07-05 12:41:30', NULL),
(191, '2', '17', 'Franklin', '2021-07-05 12:41:30', NULL),
(192, '2', '17', 'Perry', '2021-07-05 12:41:30', NULL),
(193, '2', '17', 'Hale', '2021-07-05 12:41:30', NULL),
(194, '2', '17', 'Clay', '2021-07-05 12:41:30', NULL),
(195, '2', '17', 'Morgan', '2021-07-05 12:41:31', NULL),
(196, '2', '17', 'Calhoun', '2021-07-05 12:41:31', NULL),
(197, '2', '17', 'Houston', '2021-07-05 12:41:31', NULL),
(198, '2', '17', 'Pike', '2021-07-05 12:41:31', NULL),
(199, '2', '17', 'Etowah', '2021-07-05 12:41:31', NULL),
(200, '2', '17', 'Clarke', '2021-07-05 12:41:31', NULL),
(201, '2', '17', 'Marshall', '2021-07-05 12:41:31', NULL),
(202, '2', '17', 'Limestone', '2021-07-05 12:41:31', NULL),
(203, '2', '17', 'Geneva', '2021-07-05 12:41:31', NULL),
(204, '2', '17', 'Lauderdale', '2021-07-05 12:41:31', NULL),
(205, '2', '17', 'Coosa', '2021-07-05 12:41:32', NULL),
(206, '2', '17', 'Tallapoosa', '2021-07-05 12:41:32', NULL),
(207, '2', '17', 'Choctaw', '2021-07-05 12:41:32', NULL),
(208, '2', '17', 'Winston', '2021-07-05 12:41:32', NULL),
(209, '2', '17', 'St. Clair', '2021-07-05 12:41:32', NULL),
(210, '2', '17', 'Lawrence', '2021-07-05 12:41:32', NULL),
(211, '2', '17', 'Fayette', '2021-07-05 12:41:32', NULL),
(212, '2', '17', 'Sumter', '2021-07-05 12:41:32', NULL),
(213, '2', '17', 'Cullman', '2021-07-05 12:41:32', NULL),
(214, '2', '17', 'Elmore', '2021-07-05 12:41:32', NULL),
(215, '2', '17', 'Washington', '2021-07-05 12:41:32', NULL),
(216, '2', '17', 'Talladega', '2021-07-05 12:41:33', NULL),
(217, '2', '17', 'Cherokee', '2021-07-05 12:41:33', NULL),
(218, '2', '17', 'DeKalb', '2021-07-05 12:41:33', NULL),
(219, '2', '17', 'Escambia', '2021-07-05 12:41:33', NULL),
(220, '2', '17', 'Bibb', '2021-07-05 12:41:33', NULL),
(221, '2', '17', 'Marengo', '2021-07-05 12:41:33', NULL),
(222, '2', '17', 'Crenshaw', '2021-07-05 12:41:33', NULL),
(223, '2', '17', 'Walker', '2021-07-05 12:41:33', NULL),
(224, '2', '17', 'Pickens', '2021-07-05 12:41:33', NULL),
(225, '2', '17', 'Dallas', '2021-07-05 12:41:33', NULL),
(226, '2', '17', 'Russell', '2021-07-05 12:41:33', NULL),
(227, '2', '17', 'Blount', '2021-07-05 12:41:34', NULL),
(228, '2', '17', 'Autauga', '2021-07-05 12:41:34', NULL),
(229, '2', '17', 'Colbert', '2021-07-05 12:41:34', NULL),
(230, '2', '17', 'Barbour', '2021-07-05 12:41:34', NULL),
(231, '2', '17', 'Jackson', '2021-07-05 12:41:34', NULL),
(232, '2', '17', 'Coffee', '2021-07-05 12:41:34', NULL),
(233, '2', '17', 'Butler', '2021-07-05 12:41:34', NULL),
(234, '2', '17', 'Dale', '2021-07-05 12:41:34', NULL),
(235, '2', '18', 'Sitka', '2021-07-05 12:57:56', NULL),
(236, '2', '18', 'Dillingham', '2021-07-05 12:57:56', NULL),
(237, '2', '18', 'Northwest Arctic', '2021-07-05 12:57:56', NULL),
(238, '2', '18', 'Haines', '2021-07-05 12:57:56', NULL),
(239, '2', '18', 'Yakutat', '2021-07-05 12:57:56', NULL),
(240, '2', '18', 'Bethel', '2021-07-05 12:57:57', NULL),
(241, '2', '18', 'Aleutians East', '2021-07-05 12:57:57', NULL),
(242, '2', '18', 'Ketchikan Gateway', '2021-07-05 12:57:57', NULL),
(243, '2', '18', 'Anchorage', '2021-07-05 12:57:57', NULL),
(244, '2', '18', 'Yukon-Koyukuk', '2021-07-05 12:57:57', NULL),
(245, '2', '18', 'Kodiak Island', '2021-07-05 12:57:57', NULL),
(246, '2', '18', 'Southeast Fairbanks', '2021-07-05 12:57:57', NULL),
(247, '2', '18', 'Hoonah-Angoon', '2021-07-05 12:57:57', NULL),
(248, '2', '18', 'Nome', '2021-07-05 12:57:58', NULL),
(249, '2', '18', 'Skagway', '2021-07-05 12:57:58', NULL),
(250, '2', '18', 'Matanuska-Susitna', '2021-07-05 12:57:58', NULL),
(251, '2', '18', 'Fairbanks North Star', '2021-07-05 12:57:58', NULL),
(252, '2', '18', 'Aleutians West', '2021-07-05 12:57:58', NULL),
(253, '2', '18', 'Denali', '2021-07-05 12:57:58', NULL),
(254, '2', '18', 'Petersburg', '2021-07-05 12:57:58', NULL),
(255, '2', '18', 'Juneau', '2021-07-05 12:57:58', NULL),
(256, '2', '18', 'North Slope', '2021-07-05 12:57:59', NULL),
(257, '2', '18', 'Wrangell', '2021-07-05 12:57:59', NULL),
(258, '2', '18', 'Kenai Peninsula', '2021-07-05 12:57:59', NULL),
(259, '2', '18', 'Lake and Peninsula', '2021-07-05 12:57:59', NULL),
(260, '2', '18', 'Bristol Bay', '2021-07-05 12:57:59', NULL),
(261, '2', '18', 'Prince of Wales-Hyder', '2021-07-05 12:57:59', NULL),
(262, '2', '18', 'Valdez-Cordova', '2021-07-05 12:57:59', NULL),
(263, '2', '18', 'Kusilvak', '2021-07-05 12:57:59', NULL),
(264, '2', '19', 'Maricopa', '2021-07-05 13:06:08', NULL),
(265, '2', '19', 'Pima', '2021-07-05 13:06:08', NULL),
(266, '2', '19', 'Pinal', '2021-07-05 13:06:08', NULL),
(267, '2', '19', 'Yavapai', '2021-07-05 13:06:09', NULL),
(268, '2', '19', 'Yuma', '2021-07-05 13:06:09', NULL),
(269, '2', '19', 'Mohave', '2021-07-05 13:06:09', NULL),
(270, '2', '19', 'Coconino', '2021-07-05 13:06:09', NULL),
(271, '2', '19', 'Cochise', '2021-07-05 13:06:09', NULL),
(272, '2', '19', 'Navajo', '2021-07-05 13:06:09', NULL),
(273, '2', '19', 'La Paz', '2021-07-05 13:06:10', NULL),
(274, '2', '19', 'Santa Cruz', '2021-07-05 13:06:10', NULL),
(275, '2', '19', 'Apache', '2021-07-05 13:06:10', NULL),
(276, '2', '19', 'Greenlee', '2021-07-05 13:06:10', NULL),
(277, '2', '19', 'Gila', '2021-07-05 13:06:10', NULL),
(278, '2', '19', 'Graham', '2021-07-05 13:06:10', NULL),
(279, '2', '20', 'Montgomery', '2021-07-05 13:11:21', NULL),
(280, '2', '20', 'Howard', '2021-07-05 13:11:21', NULL),
(281, '2', '20', 'Ouachita', '2021-07-05 13:11:21', NULL),
(282, '2', '20', 'Columbia', '2021-07-05 13:11:21', NULL),
(283, '2', '20', 'Madison', '2021-07-05 13:11:21', NULL),
(284, '2', '20', 'Woodruff', '2021-07-05 13:11:21', NULL),
(285, '2', '20', 'Izard', '2021-07-05 13:11:21', NULL),
(286, '2', '20', 'Van Buren', '2021-07-05 13:11:21', NULL),
(287, '2', '20', 'Lee', '2021-07-05 13:11:21', NULL),
(288, '2', '20', 'Greene', '2021-07-05 13:11:22', NULL),
(289, '2', '20', 'Pulaski', '2021-07-05 13:11:22', NULL),
(290, '2', '20', 'Perry', '2021-07-05 13:11:22', NULL),
(291, '2', '20', 'Searcy', '2021-07-05 13:11:22', NULL),
(292, '2', '20', 'Polk', '2021-07-05 13:11:22', NULL),
(293, '2', '20', 'Benton', '2021-07-05 13:11:22', NULL),
(294, '2', '20', 'Jackson', '2021-07-05 13:11:22', NULL),
(295, '2', '20', 'Washington', '2021-07-05 13:11:22', NULL),
(296, '2', '20', 'Bradley', '2021-07-05 13:11:22', NULL),
(297, '2', '20', 'Poinsett', '2021-07-05 13:11:22', NULL),
(298, '2', '20', 'Pike', '2021-07-05 13:11:23', NULL),
(299, '2', '20', 'Cleveland', '2021-07-05 13:11:23', NULL),
(300, '2', '20', 'Boone', '2021-07-05 13:11:23', NULL),
(301, '2', '20', 'Conway', '2021-07-05 13:11:23', NULL),
(302, '2', '20', 'Chicot', '2021-07-05 13:11:23', NULL),
(303, '2', '20', 'Randolph', '2021-07-05 13:11:23', NULL),
(304, '2', '20', 'Logan', '2021-07-05 13:11:23', NULL),
(305, '2', '20', 'St. Francis', '2021-07-05 13:11:23', NULL),
(306, '2', '20', 'Union', '2021-07-05 13:11:23', NULL),
(307, '2', '20', 'Ashley', '2021-07-05 13:11:24', NULL),
(308, '2', '20', 'Nevada', '2021-07-05 13:11:24', NULL),
(309, '2', '20', 'Lincoln', '2021-07-05 13:11:24', NULL),
(310, '2', '20', 'Miller', '2021-07-05 13:11:24', NULL),
(311, '2', '20', 'Phillips', '2021-07-05 13:11:24', NULL),
(312, '2', '20', 'Desha', '2021-07-05 13:11:24', NULL),
(313, '2', '20', 'Crittenden', '2021-07-05 13:11:24', NULL),
(314, '2', '20', 'Cleburne', '2021-07-05 13:11:24', NULL),
(315, '2', '20', 'Sebastian', '2021-07-05 13:11:24', NULL),
(316, '2', '20', 'Faulkner', '2021-07-05 13:11:24', NULL),
(317, '2', '20', 'Baxter', '2021-07-05 13:11:24', NULL),
(318, '2', '20', 'Newton', '2021-07-05 13:11:25', NULL),
(319, '2', '20', 'Carroll', '2021-07-05 13:11:25', NULL),
(320, '2', '20', 'Sevier', '2021-07-05 13:11:25', NULL),
(321, '2', '20', 'Saline', '2021-07-05 13:11:25', NULL),
(322, '2', '20', 'Yell', '2021-07-05 13:11:25', NULL),
(323, '2', '20', 'Calhoun', '2021-07-05 13:11:25', NULL),
(324, '2', '20', 'Craighead', '2021-07-05 13:11:25', NULL),
(325, '2', '20', 'Independence', '2021-07-05 13:11:25', NULL),
(326, '2', '20', 'Prairie', '2021-07-05 13:11:25', NULL),
(327, '2', '20', 'Cross', '2021-07-05 13:11:25', NULL),
(328, '2', '20', 'Marion', '2021-07-05 13:11:25', NULL),
(329, '2', '20', 'Garland', '2021-07-05 13:11:25', NULL),
(330, '2', '20', 'Franklin', '2021-07-05 13:11:26', NULL),
(331, '2', '20', 'Grant', '2021-07-05 13:11:26', NULL),
(332, '2', '20', 'Monroe', '2021-07-05 13:11:26', NULL),
(333, '2', '20', 'Lawrence', '2021-07-05 13:11:26', NULL),
(334, '2', '20', 'White', '2021-07-05 13:11:26', NULL),
(335, '2', '20', 'Johnson', '2021-07-05 13:11:26', NULL),
(336, '2', '20', 'Clay', '2021-07-05 13:11:26', NULL),
(337, '2', '20', 'Drew', '2021-07-05 13:11:26', NULL),
(338, '2', '20', 'Scott', '2021-07-05 13:11:26', NULL),
(339, '2', '20', 'Lonoke', '2021-07-05 13:11:26', NULL),
(340, '2', '20', 'Jefferson', '2021-07-05 13:11:26', NULL),
(341, '2', '20', 'Sharp', '2021-07-05 13:11:27', NULL),
(342, '2', '20', 'Little River', '2021-07-05 13:11:27', NULL),
(343, '2', '20', 'Pope', '2021-07-05 13:11:27', NULL),
(344, '2', '20', 'Crawford', '2021-07-05 13:11:27', NULL),
(345, '2', '20', 'Clark', '2021-07-05 13:11:27', NULL),
(346, '2', '20', 'Lafayette', '2021-07-05 13:11:27', NULL),
(347, '2', '20', 'Stone', '2021-07-05 13:11:27', NULL),
(348, '2', '20', 'Fulton', '2021-07-05 13:11:27', NULL),
(349, '2', '20', 'Hot Spring', '2021-07-05 13:11:27', NULL),
(350, '2', '20', 'Hempstead', '2021-07-05 13:11:27', NULL),
(351, '2', '20', 'Arkansas', '2021-07-05 13:11:27', NULL),
(352, '2', '20', 'Mississippi', '2021-07-05 13:11:27', NULL),
(353, '2', '20', 'Dallas', '2021-07-05 13:13:02', NULL),
(354, '2', '21', 'Los Angeles', '2021-07-05 13:17:46', NULL),
(355, '2', '21', 'San Diego', '2021-07-05 13:17:46', NULL),
(356, '2', '21', 'Orange', '2021-07-05 13:17:46', NULL),
(357, '2', '21', 'Riverside', '2021-07-05 13:17:46', NULL),
(358, '2', '21', 'Inyo', '2021-07-05 13:17:46', NULL),
(359, '2', '21', 'San Bernardino', '2021-07-05 13:17:46', NULL),
(360, '2', '21', 'Santa Clara', '2021-07-05 13:17:46', NULL),
(361, '2', '21', 'Alameda', '2021-07-05 13:17:46', NULL),
(362, '2', '21', 'Sacramento', '2021-07-05 13:17:47', NULL),
(363, '2', '21', 'Contra Costa', '2021-07-05 13:17:47', NULL),
(364, '2', '21', 'Fresno', '2021-07-05 13:17:47', NULL),
(365, '2', '21', 'Sierra', '2021-07-05 13:17:47', NULL),
(366, '2', '21', 'Kern', '2021-07-05 13:17:47', NULL),
(367, '2', '21', 'San Francisco', '2021-07-05 13:17:47', NULL),
(368, '2', '21', 'Ventura', '2021-07-05 13:17:47', NULL),
(369, '2', '21', 'San Mateo', '2021-07-05 13:17:47', NULL),
(370, '2', '21', 'San Joaquin', '2021-07-05 13:17:48', NULL),
(371, '2', '21', 'Plumas', '2021-07-05 13:17:48', NULL),
(372, '2', '21', 'Modoc', '2021-07-05 13:17:48', NULL),
(373, '2', '21', 'Mariposa', '2021-07-05 13:17:48', NULL),
(374, '2', '21', 'Stanislaus', '2021-07-05 13:17:48', NULL),
(375, '2', '21', 'Sonoma', '2021-07-05 13:17:48', NULL),
(376, '2', '21', 'Tulare', '2021-07-05 13:17:48', NULL),
(377, '2', '21', 'Santa Barbara', '2021-07-05 13:17:48', NULL),
(378, '2', '21', 'Solano', '2021-07-05 13:17:48', NULL),
(379, '2', '21', 'Monterey', '2021-07-05 13:17:48', NULL),
(380, '2', '21', 'Placer', '2021-07-05 13:17:48', NULL),
(381, '2', '21', 'San Luis Obispo', '2021-07-05 13:17:49', NULL),
(382, '2', '21', 'Glenn', '2021-07-05 13:17:49', NULL),
(383, '2', '21', 'Santa Cruz', '2021-07-05 13:17:49', NULL),
(384, '2', '21', 'Merced', '2021-07-05 13:17:49', NULL),
(385, '2', '21', 'Calaveras', '2021-07-05 13:17:49', NULL),
(386, '2', '21', 'Marin', '2021-07-05 13:17:49', NULL),
(387, '2', '21', 'Del Norte', '2021-07-05 13:17:49', NULL),
(388, '2', '21', 'Colusa', '2021-07-05 13:17:49', NULL),
(389, '2', '21', 'Butte', '2021-07-05 13:17:49', NULL),
(390, '2', '21', 'Yolo', '2021-07-05 13:17:49', NULL),
(391, '2', '21', 'Lassen', '2021-07-05 13:17:50', NULL),
(392, '2', '21', 'El Dorado', '2021-07-05 13:17:50', NULL),
(393, '2', '21', 'Imperial', '2021-07-05 13:17:50', NULL),
(394, '2', '21', 'Shasta', '2021-07-05 13:17:50', NULL),
(395, '2', '21', 'Madera', '2021-07-05 13:17:50', NULL),
(396, '2', '21', 'Kings', '2021-07-05 13:17:50', NULL),
(397, '2', '21', 'Napa', '2021-07-05 13:17:50', NULL),
(398, '2', '21', 'Alpine', '2021-07-05 13:17:50', NULL),
(399, '2', '21', 'Humboldt', '2021-07-05 13:17:50', NULL),
(400, '2', '21', 'Amador', '2021-07-05 13:17:50', NULL),
(401, '2', '21', 'Nevada', '2021-07-05 13:17:50', NULL),
(402, '2', '21', 'Sutter', '2021-07-05 13:17:51', NULL),
(403, '2', '21', 'Mendocino', '2021-07-05 13:17:51', NULL),
(404, '2', '21', 'Yuba', '2021-07-05 13:17:51', NULL),
(405, '2', '21', 'Mono', '2021-07-05 13:17:51', NULL),
(406, '2', '21', 'Lake', '2021-07-05 13:17:51', NULL),
(407, '2', '21', 'Tehama', '2021-07-05 13:17:51', NULL),
(408, '2', '21', 'San Benito', '2021-07-05 13:17:51', NULL),
(409, '2', '21', 'Siskiyou', '2021-07-05 13:17:51', NULL),
(410, '2', '21', 'Tuolumne', '2021-07-05 13:17:51', NULL),
(411, '2', '21', 'Trinity', '2021-07-05 13:17:51', NULL),
(412, '2', '24', 'San Miguel', '2021-07-05 13:23:21', NULL),
(413, '2', '24', 'Sedgwick', '2021-07-05 13:23:21', NULL),
(414, '2', '24', 'Lake', '2021-07-05 13:23:21', NULL),
(415, '2', '24', 'Las Animas', '2021-07-05 13:23:21', NULL),
(416, '2', '24', 'Denver', '2021-07-05 13:23:22', NULL),
(417, '2', '24', 'El Paso', '2021-07-05 13:23:22', NULL),
(418, '2', '24', 'Arapahoe', '2021-07-05 13:23:22', NULL),
(419, '2', '24', 'Jefferson', '2021-07-05 13:23:22', NULL),
(420, '2', '24', 'Teller', '2021-07-05 13:23:22', NULL),
(421, '2', '24', 'Adams', '2021-07-05 13:23:22', NULL),
(422, '2', '24', 'Phillips', '2021-07-05 13:23:22', NULL),
(423, '2', '24', 'Washington', '2021-07-05 13:23:22', NULL),
(424, '2', '24', 'Saguache', '2021-07-05 13:23:22', NULL),
(425, '2', '24', 'Larimer', '2021-07-05 13:23:22', NULL),
(426, '2', '24', 'Douglas', '2021-07-05 13:23:22', NULL),
(427, '2', '24', 'Cheyenne', '2021-07-05 13:23:22', NULL),
(428, '2', '24', 'Boulder', '2021-07-05 13:23:23', NULL),
(429, '2', '24', 'Dolores', '2021-07-05 13:23:23', NULL),
(430, '2', '24', 'Weld', '2021-07-05 13:23:23', NULL),
(431, '2', '24', 'Kit Carson', '2021-07-05 13:23:23', NULL),
(432, '2', '24', 'Chaffee', '2021-07-05 13:23:23', NULL),
(433, '2', '24', 'Moffat', '2021-07-05 13:23:23', NULL),
(434, '2', '24', 'Pueblo', '2021-07-05 13:23:23', NULL),
(435, '2', '24', 'Yuma', '2021-07-05 13:23:23', NULL),
(436, '2', '24', 'Jackson', '2021-07-05 13:23:23', NULL),
(437, '2', '24', 'Mesa', '2021-07-05 13:23:23', NULL),
(438, '2', '24', 'Rio Blanco', '2021-07-05 13:23:23', NULL),
(439, '2', '24', 'Mineral', '2021-07-05 13:23:24', NULL),
(440, '2', '24', 'Grand', '2021-07-05 13:23:24', NULL),
(441, '2', '24', 'Crowley', '2021-07-05 13:23:24', NULL),
(442, '2', '24', 'Prowers', '2021-07-05 13:23:24', NULL),
(443, '2', '24', 'Montrose', '2021-07-05 13:23:24', NULL),
(444, '2', '24', 'Park', '2021-07-05 13:23:24', NULL),
(445, '2', '24', 'Lincoln', '2021-07-05 13:23:24', NULL),
(446, '2', '24', 'Costilla', '2021-07-05 13:23:24', NULL),
(447, '2', '24', 'Gunnison', '2021-07-05 13:23:24', NULL),
(448, '2', '24', 'Rio Grande', '2021-07-05 13:23:24', NULL),
(449, '2', '24', 'Archuleta', '2021-07-05 13:23:24', NULL),
(450, '2', '24', 'Bent', '2021-07-05 13:23:24', NULL),
(451, '2', '24', 'Summit', '2021-07-05 13:23:25', NULL),
(452, '2', '24', 'Custer', '2021-07-05 13:23:25', NULL),
(453, '2', '24', 'Ouray', '2021-07-05 13:23:25', NULL),
(454, '2', '24', 'Baca', '2021-07-05 13:23:25', NULL),
(455, '2', '24', 'Delta', '2021-07-05 13:23:25', NULL),
(456, '2', '24', 'Montezuma', '2021-07-05 13:23:25', NULL),
(457, '2', '24', 'Broomfield', '2021-07-05 13:23:25', NULL),
(458, '2', '24', 'Conejos', '2021-07-05 13:23:25', NULL),
(459, '2', '24', 'Morgan', '2021-07-05 13:23:25', NULL),
(460, '2', '24', 'Huerfano', '2021-07-05 13:23:25', NULL),
(461, '2', '24', 'Otero', '2021-07-05 13:23:25', NULL),
(462, '2', '24', 'Elbert', '2021-07-05 13:23:25', NULL),
(463, '2', '24', 'Logan', '2021-07-05 13:23:25', NULL),
(464, '2', '24', 'Routt', '2021-07-05 13:23:26', NULL),
(465, '2', '24', 'Garfield', '2021-07-05 13:23:26', NULL),
(466, '2', '24', 'Clear Creek', '2021-07-05 13:23:26', NULL),
(467, '2', '24', 'La Plata', '2021-07-05 13:23:26', NULL),
(468, '2', '24', 'Eagle', '2021-07-05 13:23:26', NULL),
(469, '2', '24', 'Pitkin', '2021-07-05 13:23:26', NULL),
(470, '2', '24', 'San Juan', '2021-07-05 13:23:26', NULL),
(471, '2', '24', 'Alamosa', '2021-07-05 13:23:26', NULL),
(472, '2', '24', 'Hinsdale', '2021-07-05 13:23:26', NULL),
(473, '2', '24', 'Fremont', '2021-07-05 13:23:26', NULL),
(474, '2', '24', 'Gilpin', '2021-07-05 13:23:27', NULL),
(475, '2', '24', 'Kiowa', '2021-07-05 13:23:27', NULL),
(476, '2', '25', 'Fairfield', '2021-07-05 13:26:13', NULL),
(477, '2', '25', 'Hartford', '2021-07-05 13:26:13', NULL),
(478, '2', '25', 'New Haven', '2021-07-05 13:26:13', NULL),
(479, '2', '25', 'New London', '2021-07-05 13:26:13', NULL),
(480, '2', '25', 'Litchfield', '2021-07-05 13:26:13', NULL),
(481, '2', '25', 'Middlesex', '2021-07-05 13:26:13', NULL),
(482, '2', '25', 'Tolland', '2021-07-05 13:26:14', NULL),
(483, '2', '25', 'Windham', '2021-07-05 13:26:14', NULL),
(484, '2', '28', 'New Castle', '2021-07-05 13:32:15', NULL),
(485, '2', '28', 'Sussex', '2021-07-05 13:32:15', NULL),
(486, '2', '28', 'Kent', '2021-07-05 13:32:15', NULL),
(487, '2', '29', 'Miami-Dade', '2021-07-05 13:51:46', NULL),
(488, '2', '29', 'Broward', '2021-07-05 13:51:46', NULL),
(489, '2', '29', 'Palm Beach', '2021-07-05 13:51:46', NULL),
(490, '2', '29', 'Hillsborough', '2021-07-05 13:51:46', NULL),
(491, '2', '29', 'Orange', '2021-07-05 13:51:46', NULL),
(492, '2', '29', 'Pinellas', '2021-07-05 13:51:46', NULL),
(493, '2', '29', 'Duval', '2021-07-05 13:51:46', NULL),
(494, '2', '29', 'Okeechobee', '2021-07-05 13:51:46', NULL),
(495, '2', '29', 'Lee', '2021-07-05 13:51:46', NULL),
(496, '2', '29', 'Polk', '2021-07-05 13:51:46', NULL),
(497, '2', '29', 'Brevard', '2021-07-05 13:51:47', NULL),
(498, '2', '29', 'Madison', '2021-07-05 13:51:47', NULL),
(499, '2', '29', 'Volusia', '2021-07-05 13:51:47', NULL),
(500, '2', '29', 'Pasco', '2021-07-05 13:51:47', NULL),
(501, '2', '29', 'Dixie', '2021-07-05 13:51:47', NULL),
(502, '2', '29', 'Seminole', '2021-07-05 13:51:47', NULL),
(503, '2', '29', 'Sarasota', '2021-07-05 13:51:47', NULL),
(504, '2', '29', 'Lafayette', '2021-07-05 13:51:47', NULL),
(505, '2', '29', 'Calhoun', '2021-07-05 13:51:47', NULL),
(506, '2', '29', 'Manatee', '2021-07-05 13:51:47', NULL),
(507, '2', '29', 'Collier', '2021-07-05 13:51:48', NULL),
(508, '2', '29', 'Marion', '2021-07-05 13:51:48', NULL),
(509, '2', '29', 'Wakulla', '2021-07-05 13:51:48', NULL),
(510, '2', '29', 'Osceola', '2021-07-05 13:51:48', NULL),
(511, '2', '29', 'Lake', '2021-07-05 13:51:48', NULL),
(512, '2', '29', 'Liberty', '2021-07-05 13:51:48', NULL),
(513, '2', '29', 'Escambia', '2021-07-05 13:51:48', NULL),
(514, '2', '29', 'St. Lucie', '2021-07-05 13:51:48', '2021-07-05 14:00:10'),
(515, '2', '29', 'Leon', '2021-07-05 13:51:48', NULL),
(516, '2', '29', 'Alachua', '2021-07-05 13:51:48', NULL),
(517, '2', '29', 'St. Johns', '2021-07-05 13:51:48', '2021-07-05 14:00:16'),
(518, '2', '29', 'Bradford', '2021-07-05 13:51:49', NULL),
(519, '2', '29', 'Clay', '2021-07-05 13:51:49', NULL),
(520, '2', '29', 'Okaloosa', '2021-07-05 13:51:49', NULL),
(521, '2', '29', 'Jackson', '2021-07-05 13:51:49', NULL),
(522, '2', '29', 'Hernando', '2021-07-05 13:51:49', NULL),
(523, '2', '29', 'Bay', '2021-07-05 13:51:49', NULL),
(524, '2', '29', 'Charlotte', '2021-07-05 13:51:49', NULL),
(525, '2', '29', 'Suwannee', '2021-07-05 13:51:49', NULL),
(526, '2', '29', 'Santa Rosa', '2021-07-05 13:51:49', NULL),
(527, '2', '29', 'Baker', '2021-07-05 13:51:49', NULL),
(528, '2', '29', 'DeSoto', '2021-07-05 13:51:50', NULL),
(529, '2', '29', 'Martin', '2021-07-05 13:51:50', NULL),
(530, '2', '29', 'Indian River', '2021-07-05 13:51:50', NULL),
(531, '2', '29', 'Citrus', '2021-07-05 13:51:50', NULL),
(532, '2', '29', 'Union', '2021-07-05 13:51:50', NULL),
(533, '2', '29', 'Sumter', '2021-07-05 13:51:50', NULL),
(534, '2', '29', 'Washington', '2021-07-05 13:51:50', NULL),
(535, '2', '29', 'Flagler', '2021-07-05 13:51:50', NULL),
(536, '2', '29', 'Highlands', '2021-07-05 13:51:50', NULL),
(537, '2', '29', 'Hardee', '2021-07-05 13:51:50', NULL),
(538, '2', '29', 'Hendry', '2021-07-05 13:51:50', NULL),
(539, '2', '29', 'Gadsden', '2021-07-05 13:51:51', NULL),
(540, '2', '29', 'Levy', '2021-07-05 13:51:51', NULL),
(541, '2', '29', 'Nassau', '2021-07-05 13:51:51', NULL),
(542, '2', '29', 'Hamilton', '2021-07-05 13:51:51', NULL),
(543, '2', '29', 'Monroe', '2021-07-05 13:51:51', NULL),
(544, '2', '29', 'Putnam', '2021-07-05 13:51:51', NULL),
(545, '2', '29', 'Holmes', '2021-07-05 13:51:51', NULL),
(546, '2', '29', 'Columbia', '2021-07-05 13:51:51', NULL),
(547, '2', '29', 'Walton', '2021-07-05 13:51:51', NULL),
(548, '2', '29', 'Jefferson', '2021-07-05 13:51:51', NULL),
(549, '2', '29', 'Gilchrist', '2021-07-05 13:51:51', NULL),
(550, '2', '29', 'Taylor', '2021-07-05 13:51:52', NULL),
(551, '2', '29', 'Gulf', '2021-07-05 13:51:52', NULL),
(552, '2', '29', 'Franklin', '2021-07-05 13:51:52', NULL),
(553, '2', '29', 'Glades', '2021-07-05 13:51:52', NULL),
(554, '2', '30', 'Bleckley', '2021-07-05 13:58:36', NULL),
(555, '2', '30', 'Warren', '2021-07-05 13:58:36', NULL),
(556, '2', '30', 'Toombs', '2021-07-05 13:58:36', NULL),
(557, '2', '30', 'Washington', '2021-07-05 13:58:36', NULL),
(558, '2', '30', 'Baldwin', '2021-07-05 13:58:36', NULL),
(559, '2', '30', 'Fulton', '2021-07-05 13:58:36', NULL),
(560, '2', '30', 'Early', '2021-07-05 13:58:37', NULL),
(561, '2', '30', 'Tattnall', '2021-07-05 13:58:37', NULL),
(562, '2', '30', 'Gwinnett', '2021-07-05 13:58:37', NULL),
(563, '2', '30', 'Peach', '2021-07-05 13:58:37', NULL),
(564, '2', '30', 'Chattahoochee', '2021-07-05 13:58:37', NULL),
(565, '2', '30', 'Wilkinson', '2021-07-05 13:58:37', NULL),
(566, '2', '30', 'Cobb', '2021-07-05 13:58:37', NULL),
(567, '2', '30', 'DeKalb', '2021-07-05 13:58:37', NULL),
(568, '2', '30', 'Wilkes', '2021-07-05 13:58:37', NULL),
(569, '2', '30', 'Harris', '2021-07-05 13:58:37', NULL),
(570, '2', '30', 'Glascock', '2021-07-05 13:58:37', NULL),
(571, '2', '30', 'Seminole', '2021-07-05 13:58:38', NULL),
(572, '2', '30', 'Ware', '2021-07-05 13:58:38', NULL),
(573, '2', '30', 'Towns', '2021-07-05 13:58:38', NULL),
(574, '2', '30', 'Dawson', '2021-07-05 13:58:38', NULL),
(575, '2', '30', 'Brantley', '2021-07-05 13:58:38', NULL),
(576, '2', '30', 'Bacon', '2021-07-05 13:58:38', NULL),
(577, '2', '30', 'Charlton', '2021-07-05 13:58:38', NULL),
(578, '2', '30', 'Webster', '2021-07-05 13:58:38', NULL),
(579, '2', '30', 'Taylor', '2021-07-05 13:58:38', NULL),
(580, '2', '30', 'Screven', '2021-07-05 13:58:39', NULL),
(581, '2', '30', 'Turner', '2021-07-05 13:58:39', NULL),
(582, '2', '30', 'Long', '2021-07-05 13:58:39', NULL),
(583, '2', '30', 'Brooks', '2021-07-05 13:58:39', NULL),
(584, '2', '30', 'Lincoln', '2021-07-05 13:58:39', NULL),
(585, '2', '30', 'Morgan', '2021-07-05 13:58:39', NULL),
(586, '2', '30', 'Chatham', '2021-07-05 13:58:39', NULL),
(587, '2', '30', 'Clayton', '2021-07-05 13:58:39', NULL),
(588, '2', '30', 'Miller', '2021-07-05 13:58:39', NULL),
(589, '2', '30', 'Candler', '2021-07-05 13:58:39', NULL),
(590, '2', '30', 'Jenkins', '2021-07-05 13:58:39', NULL),
(591, '2', '30', 'Cherokee', '2021-07-05 13:58:40', NULL),
(592, '2', '30', 'Macon', '2021-07-05 13:58:40', NULL),
(593, '2', '30', 'Butts', '2021-07-05 13:58:40', NULL),
(594, '2', '30', 'McDuffie', '2021-07-05 13:58:40', NULL),
(595, '2', '30', 'Forsyth', '2021-07-05 13:58:40', NULL),
(596, '2', '30', 'Henry', '2021-07-05 13:58:40', NULL),
(597, '2', '30', 'Rabun', '2021-07-05 13:58:40', NULL),
(598, '2', '30', 'Montgomery', '2021-07-05 13:58:40', NULL),
(599, '2', '30', 'Meriwether', '2021-07-05 13:58:40', NULL),
(600, '2', '30', 'Evans', '2021-07-05 13:58:40', NULL),
(601, '2', '30', 'Richmond', '2021-07-05 13:58:40', NULL),
(602, '2', '30', 'Decatur', '2021-07-05 13:58:40', NULL),
(603, '2', '30', 'Hall', '2021-07-05 13:58:41', NULL),
(604, '2', '30', 'Muscogee', '2021-07-05 13:58:41', NULL),
(605, '2', '30', 'Randolph', '2021-07-05 13:58:41', NULL),
(606, '2', '30', 'Gilmer', '2021-07-05 13:58:41', NULL),
(607, '2', '30', 'Union', '2021-07-05 13:58:41', NULL),
(608, '2', '30', 'Dade', '2021-07-05 13:58:41', NULL),
(609, '2', '30', 'Ben Hill', '2021-07-05 13:58:41', NULL),
(610, '2', '30', 'Hart', '2021-07-05 13:58:41', NULL),
(611, '2', '30', 'Hancock', '2021-07-05 13:58:41', NULL),
(612, '2', '30', 'Lumpkin', '2021-07-05 13:58:42', NULL),
(613, '2', '30', 'Paulding', '2021-07-05 13:58:42', NULL),
(614, '2', '30', 'Marion', '2021-07-05 13:58:42', NULL),
(615, '2', '30', 'Burke', '2021-07-05 13:58:42', NULL),
(616, '2', '30', 'Treutlen', '2021-07-05 13:58:42', NULL),
(617, '2', '30', 'Jasper', '2021-07-05 13:58:42', NULL),
(618, '2', '30', 'Houston', '2021-07-05 13:58:42', NULL),
(619, '2', '30', 'Bibb', '2021-07-05 13:58:42', NULL),
(620, '2', '30', 'Lamar', '2021-07-05 13:58:42', NULL),
(621, '2', '30', 'Columbia', '2021-07-05 13:58:42', NULL),
(622, '2', '30', 'Taliaferro', '2021-07-05 13:58:42', NULL),
(623, '2', '30', 'Douglas', '2021-07-05 13:58:43', NULL),
(624, '2', '30', 'Coweta', '2021-07-05 13:58:43', NULL),
(625, '2', '30', 'Mitchell', '2021-07-05 13:58:43', NULL),
(626, '2', '30', 'Elbert', '2021-07-05 13:58:43', NULL),
(627, '2', '30', 'Johnson', '2021-07-05 13:58:43', NULL),
(628, '2', '30', 'Calhoun', '2021-07-05 13:58:43', NULL),
(629, '2', '30', 'Coffee', '2021-07-05 13:58:43', NULL),
(630, '2', '30', 'Wilcox', '2021-07-05 13:58:43', NULL),
(631, '2', '30', 'Clarke', '2021-07-05 13:58:43', NULL),
(632, '2', '30', 'White', '2021-07-05 13:58:43', NULL),
(633, '2', '30', 'Madison', '2021-07-05 13:58:43', NULL),
(634, '2', '30', 'Carroll', '2021-07-05 13:58:44', NULL),
(635, '2', '30', 'Lowndes', '2021-07-05 13:58:44', NULL),
(636, '2', '30', 'Fayette', '2021-07-05 13:58:44', NULL),
(637, '2', '30', 'Terrell', '2021-07-05 13:58:44', NULL),
(638, '2', '30', 'Pulaski', '2021-07-05 13:58:44', NULL),
(639, '2', '30', 'Newton', '2021-07-05 13:58:44', NULL),
(640, '2', '30', 'Twiggs', '2021-07-05 13:58:44', NULL),
(641, '2', '30', 'Bartow', '2021-07-05 13:58:44', NULL),
(642, '2', '30', 'Whitfield', '2021-07-05 13:58:44', NULL),
(643, '2', '30', 'Monroe', '2021-07-05 13:58:44', NULL),
(644, '2', '30', 'Jeff Davis', '2021-07-05 13:58:44', NULL),
(645, '2', '30', 'Haralson', '2021-07-05 13:58:44', NULL),
(646, '2', '30', 'Polk', '2021-07-05 13:58:44', NULL),
(647, '2', '30', 'Thomas', '2021-07-05 13:58:44', NULL),
(648, '2', '30', 'Floyd', '2021-07-05 13:58:44', NULL),
(649, '2', '30', 'Schley', '2021-07-05 13:58:44', NULL),
(650, '2', '30', 'Habersham', '2021-07-05 13:58:44', NULL),
(651, '2', '30', 'Oglethorpe', '2021-07-05 13:58:45', NULL),
(652, '2', '30', 'Cook', '2021-07-05 13:58:45', NULL),
(653, '2', '30', 'Walton', '2021-07-05 13:58:45', NULL),
(654, '2', '30', 'Appling', '2021-07-05 13:58:45', NULL),
(655, '2', '30', 'Rockdale', '2021-07-05 13:58:45', NULL),
(656, '2', '30', 'Dougherty', '2021-07-05 13:58:45', NULL),
(657, '2', '30', 'Tift', '2021-07-05 13:58:45', NULL),
(658, '2', '30', 'Glynn', '2021-07-05 13:58:45', NULL),
(659, '2', '30', 'Dodge', '2021-07-05 13:58:45', NULL),
(660, '2', '30', 'Echols', '2021-07-05 13:58:45', NULL),
(661, '2', '30', 'Barrow', '2021-07-05 13:58:45', NULL),
(662, '2', '30', 'Lanier', '2021-07-05 13:58:45', NULL),
(663, '2', '30', 'Sumter', '2021-07-05 13:58:45', NULL),
(664, '2', '30', 'Baker', '2021-07-05 13:58:45', NULL),
(665, '2', '30', 'Bulloch', '2021-07-05 13:58:45', NULL),
(666, '2', '30', 'Worth', '2021-07-05 13:58:45', NULL),
(667, '2', '30', 'Upson', '2021-07-05 13:58:45', NULL),
(668, '2', '30', 'Jones', '2021-07-05 13:58:46', NULL),
(669, '2', '30', 'Bryan', '2021-07-05 13:58:46', NULL),
(670, '2', '30', 'Grady', '2021-07-05 13:58:46', NULL),
(671, '2', '30', 'Troup', '2021-07-05 13:58:46', NULL),
(672, '2', '30', 'Walker', '2021-07-05 13:58:46', NULL),
(673, '2', '30', 'Chattooga', '2021-07-05 13:58:46', NULL),
(674, '2', '30', 'Clay', '2021-07-05 13:58:46', NULL),
(675, '2', '30', 'Jackson', '2021-07-05 13:58:46', NULL),
(676, '2', '30', 'Telfair', '2021-07-05 13:58:46', NULL),
(677, '2', '30', 'Murray', '2021-07-05 13:58:46', NULL),
(678, '2', '30', 'Catoosa', '2021-07-05 13:58:46', NULL),
(679, '2', '30', 'Franklin', '2021-07-05 13:58:46', NULL),
(680, '2', '30', 'Crisp', '2021-07-05 13:58:46', NULL),
(681, '2', '30', 'McIntosh', '2021-07-05 13:58:46', NULL),
(682, '2', '30', 'Spalding', '2021-07-05 13:58:46', NULL),
(683, '2', '30', 'Pierce', '2021-07-05 13:58:47', NULL),
(684, '2', '30', 'Laurens', '2021-07-05 13:58:47', NULL),
(685, '2', '30', 'Emanuel', '2021-07-05 13:58:47', NULL),
(686, '2', '30', 'Banks', '2021-07-05 13:58:47', NULL),
(687, '2', '30', 'Heard', '2021-07-05 13:58:47', NULL),
(688, '2', '30', 'Stephens', '2021-07-05 13:58:47', NULL),
(689, '2', '30', 'Liberty', '2021-07-05 13:58:47', NULL),
(690, '2', '30', 'Dooly', '2021-07-05 13:58:47', NULL),
(691, '2', '30', 'Pike', '2021-07-05 13:58:47', NULL),
(692, '2', '30', 'Effingham', '2021-07-05 13:58:47', NULL),
(693, '2', '30', 'Colquitt', '2021-07-05 13:58:47', NULL),
(694, '2', '30', 'Quitman', '2021-07-05 13:58:47', NULL),
(695, '2', '30', 'Wayne', '2021-07-05 13:58:47', NULL),
(696, '2', '30', 'Gordon', '2021-07-05 13:58:48', NULL),
(697, '2', '30', 'Fannin', '2021-07-05 13:58:48', NULL),
(698, '2', '30', 'Crawford', '2021-07-05 13:58:48', NULL),
(699, '2', '30', 'Talbot', '2021-07-05 13:58:48', NULL),
(700, '2', '30', 'Wheeler', '2021-07-05 13:58:48', NULL),
(701, '2', '30', 'Irwin', '2021-07-05 13:58:48', NULL),
(702, '2', '30', 'Stewart', '2021-07-05 13:58:48', NULL),
(703, '2', '30', 'Jefferson', '2021-07-05 13:58:48', NULL),
(704, '2', '30', 'Camden', '2021-07-05 13:58:48', NULL),
(705, '2', '30', 'Pickens', '2021-07-05 13:58:48', NULL),
(706, '2', '30', 'Lee', '2021-07-05 13:58:48', NULL),
(707, '2', '30', 'Putnam', '2021-07-05 13:58:48', NULL),
(708, '2', '30', 'Clinch', '2021-07-05 13:58:48', NULL),
(709, '2', '30', 'Berrien', '2021-07-05 13:58:48', NULL),
(710, '2', '30', 'Atkinson', '2021-07-05 13:58:48', NULL),
(711, '2', '30', 'Oconee', '2021-07-05 13:58:48', NULL),
(712, '2', '30', 'Greene', '2021-07-05 13:58:48', NULL),
(713, '2', '31', 'Honolulu', '2021-07-05 14:03:12', NULL),
(714, '2', '31', 'Hawaii', '2021-07-05 14:03:12', NULL),
(715, '2', '31', 'Maui', '2021-07-05 14:03:12', NULL),
(716, '2', '31', 'Kalawao', '2021-07-05 14:03:12', NULL),
(717, '2', '31', 'Kauai', '2021-07-05 14:03:12', NULL),
(718, '2', '32', 'Teton', '2021-07-05 14:24:15', NULL),
(719, '2', '32', 'Idaho', '2021-07-05 14:24:15', NULL),
(720, '2', '32', 'Owyhee', '2021-07-05 14:24:15', NULL),
(721, '2', '32', 'Fremont', '2021-07-05 14:24:15', NULL),
(722, '2', '32', 'Lincoln', '2021-07-05 14:24:15', NULL),
(723, '2', '32', 'Payette', '2021-07-05 14:24:15', NULL),
(724, '2', '32', 'Ada', '2021-07-05 14:24:15', NULL),
(725, '2', '32', 'Caribou', '2021-07-05 14:24:15', NULL),
(726, '2', '32', 'Bonner', '2021-07-05 14:24:15', NULL),
(727, '2', '32', 'Clark', '2021-07-05 14:24:15', NULL),
(728, '2', '32', 'Franklin', '2021-07-05 14:24:15', NULL),
(729, '2', '32', 'Power', '2021-07-05 14:24:16', NULL),
(730, '2', '32', 'Canyon', '2021-07-05 14:24:16', NULL),
(731, '2', '32', 'Elmore', '2021-07-05 14:24:16', NULL),
(732, '2', '32', 'Cassia', '2021-07-05 14:24:16', NULL),
(733, '2', '32', 'Gooding', '2021-07-05 14:24:16', NULL),
(734, '2', '32', 'Shoshone', '2021-07-05 14:24:16', NULL),
(735, '2', '32', 'Washington', '2021-07-05 14:24:16', NULL),
(736, '2', '32', 'Butte', '2021-07-05 14:24:16', NULL),
(737, '2', '32', 'Kootenai', '2021-07-05 14:24:16', NULL),
(738, '2', '32', 'Boundary', '2021-07-05 14:24:16', NULL),
(739, '2', '32', 'Gem', '2021-07-05 14:24:16', NULL),
(740, '2', '32', 'Bonneville', '2021-07-05 14:24:16', NULL),
(741, '2', '32', 'Benewah', '2021-07-05 14:24:17', NULL),
(742, '2', '32', 'Boise', '2021-07-05 14:24:17', NULL),
(743, '2', '32', 'Bingham', '2021-07-05 14:24:17', NULL),
(744, '2', '32', 'Clearwater', '2021-07-05 14:24:17', NULL),
(745, '2', '32', 'Valley', '2021-07-05 14:24:17', NULL),
(746, '2', '32', 'Bannock', '2021-07-05 14:24:17', NULL),
(747, '2', '32', 'Custer', '2021-07-05 14:24:17', NULL),
(748, '2', '32', 'Twin Falls', '2021-07-05 14:24:17', NULL),
(749, '2', '32', 'Nez Perce', '2021-07-05 14:24:17', NULL),
(750, '2', '32', 'Adams', '2021-07-05 14:24:17', NULL),
(751, '2', '32', 'Jerome', '2021-07-05 14:24:18', NULL),
(752, '2', '32', 'Oneida', '2021-07-05 14:24:18', NULL),
(753, '2', '32', 'Minidoka', '2021-07-05 14:24:18', NULL),
(754, '2', '32', 'Lewis', '2021-07-05 14:24:18', NULL),
(755, '2', '32', 'Jefferson', '2021-07-05 14:24:18', NULL),
(756, '2', '32', 'Latah', '2021-07-05 14:24:18', NULL),
(757, '2', '32', 'Blaine', '2021-07-05 14:24:18', NULL),
(758, '2', '32', 'Camas', '2021-07-05 14:24:18', NULL),
(759, '2', '32', 'Madison', '2021-07-05 14:24:18', NULL),
(760, '2', '32', 'Bear Lake', '2021-07-05 14:24:18', NULL),
(761, '2', '32', 'Lemhi', '2021-07-05 14:24:18', NULL),
(762, '2', '33', 'Cook', '2021-07-05 14:24:19', NULL),
(763, '2', '33', 'Pulaski', '2021-07-05 14:24:19', NULL),
(764, '2', '33', 'Brown', '2021-07-05 14:24:19', NULL),
(765, '2', '33', 'DuPage', '2021-07-05 14:24:19', NULL),
(766, '2', '33', 'Massac', '2021-07-05 14:24:19', NULL),
(767, '2', '33', 'Iroquois', '2021-07-05 14:24:19', NULL),
(768, '2', '33', 'Logan', '2021-07-05 14:24:19', NULL),
(769, '2', '33', 'Lake', '2021-07-05 14:24:19', NULL),
(770, '2', '33', 'Will', '2021-07-05 14:24:19', NULL),
(771, '2', '33', 'De Witt', '2021-07-05 14:24:19', NULL),
(772, '2', '33', 'Kane', '2021-07-05 14:24:19', NULL),
(773, '2', '33', 'Christian', '2021-07-05 14:24:19', NULL),
(774, '2', '33', 'Fulton', '2021-07-05 14:24:20', NULL),
(775, '2', '33', 'Schuyler', '2021-07-05 14:24:20', NULL),
(776, '2', '33', 'Cass', '2021-07-05 14:24:20', NULL),
(777, '2', '33', 'McHenry', '2021-07-05 14:24:20', NULL),
(778, '2', '33', 'Jasper', '2021-07-05 14:24:20', NULL),
(779, '2', '33', 'Morgan', '2021-07-05 14:24:20', NULL),
(780, '2', '33', 'Mercer', '2021-07-05 14:24:20', NULL),
(781, '2', '33', 'Winnebago', '2021-07-05 14:24:20', NULL),
(782, '2', '33', 'Macoupin', '2021-07-05 14:24:20', NULL),
(783, '2', '33', 'Jefferson', '2021-07-05 14:24:20', NULL),
(784, '2', '33', 'Madison', '2021-07-05 14:24:20', NULL),
(785, '2', '33', 'Wabash', '2021-07-05 14:24:20', NULL),
(786, '2', '33', 'St. Clair', '2021-07-05 14:24:21', NULL),
(787, '2', '33', 'Clay', '2021-07-05 14:24:21', NULL),
(788, '2', '33', 'Stephenson', '2021-07-05 14:24:21', NULL),
(789, '2', '33', 'Bond', '2021-07-05 14:24:21', NULL),
(790, '2', '33', 'Champaign', '2021-07-05 14:24:21', NULL),
(791, '2', '33', 'Sangamon', '2021-07-05 14:24:21', NULL),
(792, '2', '33', 'Peoria', '2021-07-05 14:24:21', NULL),
(793, '2', '33', 'Carroll', '2021-07-05 14:24:21', NULL),
(794, '2', '33', 'Hardin', '2021-07-05 14:24:21', NULL),
(795, '2', '33', 'McLean', '2021-07-05 14:24:21', NULL),
(796, '2', '33', 'Effingham', '2021-07-05 14:24:22', NULL),
(797, '2', '33', 'Randolph', '2021-07-05 14:24:22', NULL),
(798, '2', '33', 'Alexander', '2021-07-05 14:24:22', NULL),
(799, '2', '33', 'Rock Island', '2021-07-05 14:24:22', NULL),
(800, '2', '33', 'Edgar', '2021-07-05 14:24:22', NULL),
(801, '2', '33', 'Edwards', '2021-07-05 14:24:22', NULL),
(802, '2', '33', 'Woodford', '2021-07-05 14:24:22', NULL),
(803, '2', '33', 'Tazewell', '2021-07-05 14:24:22', NULL),
(804, '2', '33', 'Shelby', '2021-07-05 14:24:22', NULL),
(805, '2', '33', 'Mason', '2021-07-05 14:24:22', NULL),
(806, '2', '33', 'Union', '2021-07-05 14:24:23', NULL),
(807, '2', '33', 'Kendall', '2021-07-05 14:24:23', NULL),
(808, '2', '33', 'Stark', '2021-07-05 14:24:23', NULL),
(809, '2', '33', 'Scott', '2021-07-05 14:24:23', NULL),
(810, '2', '33', 'Marion', '2021-07-05 14:24:23', NULL),
(811, '2', '33', 'Jo Daviess', '2021-07-05 14:24:23', NULL),
(812, '2', '33', 'Kankakee', '2021-07-05 14:24:23', NULL),
(813, '2', '33', 'LaSalle', '2021-07-05 14:24:23', NULL),
(814, '2', '33', 'Fayette', '2021-07-05 14:24:23', NULL),
(815, '2', '33', 'Gallatin', '2021-07-05 14:24:23', NULL),
(816, '2', '33', 'Perry', '2021-07-05 14:24:23', NULL),
(817, '2', '33', 'Hamilton', '2021-07-05 14:24:24', NULL),
(818, '2', '33', 'Crawford', '2021-07-05 14:24:24', NULL),
(819, '2', '33', 'Clinton', '2021-07-05 14:24:24', NULL),
(820, '2', '33', 'Macon', '2021-07-05 14:24:24', NULL),
(821, '2', '33', 'Douglas', '2021-07-05 14:24:24', NULL),
(822, '2', '33', 'DeKalb', '2021-07-05 14:24:24', NULL),
(823, '2', '33', 'Greene', '2021-07-05 14:24:24', NULL),
(824, '2', '33', 'Pope', '2021-07-05 14:24:24', NULL),
(825, '2', '33', 'Ford', '2021-07-05 14:24:24', NULL),
(826, '2', '33', 'Cumberland', '2021-07-05 14:24:24', NULL),
(827, '2', '33', 'Saline', '2021-07-05 14:24:24', NULL),
(828, '2', '33', 'Calhoun', '2021-07-05 14:24:24', NULL),
(829, '2', '33', 'Bureau', '2021-07-05 14:24:25', NULL),
(830, '2', '33', 'McDonough', '2021-07-05 14:24:25', NULL),
(831, '2', '33', 'Moultrie', '2021-07-05 14:24:25', NULL),
(832, '2', '33', 'Monroe', '2021-07-05 14:24:25', NULL),
(833, '2', '33', 'Montgomery', '2021-07-05 14:24:25', NULL),
(834, '2', '33', 'Piatt', '2021-07-05 14:24:25', NULL),
(835, '2', '33', 'Wayne', '2021-07-05 14:24:25', NULL),
(836, '2', '33', 'Vermilion', '2021-07-05 14:24:25', NULL),
(837, '2', '33', 'Hancock', '2021-07-05 14:24:25', NULL),
(838, '2', '33', 'Williamson', '2021-07-05 14:24:25', NULL),
(839, '2', '33', 'Warren', '2021-07-05 14:24:25', NULL),
(840, '2', '33', 'Putnam', '2021-07-05 14:24:25', NULL),
(841, '2', '33', 'Johnson', '2021-07-05 14:24:26', NULL),
(842, '2', '33', 'Lawrence', '2021-07-05 14:24:26', NULL),
(843, '2', '33', 'Adams', '2021-07-05 14:24:26', NULL),
(844, '2', '33', 'Henderson', '2021-07-05 14:24:26', NULL),
(845, '2', '33', 'Washington', '2021-07-05 14:24:26', NULL),
(846, '2', '33', 'Clark', '2021-07-05 14:24:26', NULL),
(847, '2', '33', 'Menard', '2021-07-05 14:24:26', NULL),
(848, '2', '33', 'Jackson', '2021-07-05 14:24:26', NULL),
(849, '2', '33', 'Pike', '2021-07-05 14:24:26', NULL),
(850, '2', '33', 'Lee', '2021-07-05 14:24:26', NULL),
(851, '2', '33', 'Franklin', '2021-07-05 14:24:27', NULL),
(852, '2', '33', 'Whiteside', '2021-07-05 14:24:27', NULL),
(853, '2', '33', 'White', '2021-07-05 14:24:27', NULL),
(854, '2', '33', 'Richland', '2021-07-05 14:24:27', NULL),
(855, '2', '33', 'Jersey', '2021-07-05 14:24:27', NULL),
(856, '2', '33', 'Boone', '2021-07-05 14:24:27', NULL),
(857, '2', '33', 'Livingston', '2021-07-05 14:24:27', NULL),
(858, '2', '33', 'Marshall', '2021-07-05 14:24:27', NULL),
(859, '2', '33', 'Coles', '2021-07-05 14:24:27', NULL),
(860, '2', '33', 'Ogle', '2021-07-05 14:24:27', NULL),
(861, '2', '33', 'Grundy', '2021-07-05 14:24:27', NULL),
(862, '2', '33', 'Knox', '2021-07-05 14:24:28', NULL),
(863, '2', '33', 'Henry', '2021-07-05 14:24:28', NULL),
(864, '2', '34', 'Tipton', '2021-07-05 14:24:28', NULL),
(865, '2', '34', 'Marion', '2021-07-05 14:24:28', NULL),
(866, '2', '34', 'Carroll', '2021-07-05 14:24:28', NULL),
(867, '2', '34', 'Owen', '2021-07-05 14:24:28', NULL),
(868, '2', '34', 'Wells', '2021-07-05 14:24:28', NULL),
(869, '2', '34', 'Jennings', '2021-07-05 14:24:28', NULL),
(870, '2', '34', 'Perry', '2021-07-05 14:24:28', NULL),
(871, '2', '34', 'Lake', '2021-07-05 14:24:28', NULL),
(872, '2', '34', 'Adams', '2021-07-05 14:24:28', NULL),
(873, '2', '34', 'Scott', '2021-07-05 14:24:28', NULL),
(874, '2', '34', 'Noble', '2021-07-05 14:24:28', NULL),
(875, '2', '34', 'Fountain', '2021-07-05 14:24:29', NULL),
(876, '2', '34', 'Allen', '2021-07-05 14:24:29', NULL),
(877, '2', '34', 'Pulaski', '2021-07-05 14:24:29', NULL),
(878, '2', '34', 'Hamilton', '2021-07-05 14:24:29', NULL),
(879, '2', '34', 'Fulton', '2021-07-05 14:24:29', NULL),
(880, '2', '34', 'St. Joseph', '2021-07-05 14:24:29', NULL),
(881, '2', '34', 'Dubois', '2021-07-05 14:24:29', NULL),
(882, '2', '34', 'Rush', '2021-07-05 14:24:29', NULL),
(883, '2', '34', 'Benton', '2021-07-05 14:24:29', NULL);
INSERT INTO `municipios` (`id`, `id_pais`, `id_estado`, `nombre`, `created_at`, `updated_at`) VALUES
(884, '2', '34', 'Orange', '2021-07-05 14:24:29', NULL),
(885, '2', '34', 'Daviess', '2021-07-05 14:24:29', NULL),
(886, '2', '34', 'Elkhart', '2021-07-05 14:24:30', NULL),
(887, '2', '34', 'Union', '2021-07-05 14:24:30', NULL),
(888, '2', '34', 'Tippecanoe', '2021-07-05 14:24:30', NULL),
(889, '2', '34', 'Starke', '2021-07-05 14:24:30', NULL),
(890, '2', '34', 'Vanderburgh', '2021-07-05 14:24:30', NULL),
(891, '2', '34', 'Clay', '2021-07-05 14:24:30', NULL),
(892, '2', '34', 'Fayette', '2021-07-05 14:24:30', NULL),
(893, '2', '34', 'Porter', '2021-07-05 14:24:30', NULL),
(894, '2', '34', 'Clinton', '2021-07-05 14:24:30', NULL),
(895, '2', '34', 'Newton', '2021-07-05 14:24:30', NULL),
(896, '2', '34', 'Hendricks', '2021-07-05 14:24:30', NULL),
(897, '2', '34', 'Franklin', '2021-07-05 14:24:30', NULL),
(898, '2', '34', 'Steuben', '2021-07-05 14:24:31', NULL),
(899, '2', '34', 'Johnson', '2021-07-05 14:24:31', NULL),
(900, '2', '34', 'Monroe', '2021-07-05 14:24:31', NULL),
(901, '2', '34', 'Blackford', '2021-07-05 14:24:31', NULL),
(902, '2', '34', 'Madison', '2021-07-05 14:24:31', NULL),
(903, '2', '34', 'Ohio', '2021-07-05 14:24:31', NULL),
(904, '2', '34', 'Cass', '2021-07-05 14:24:31', NULL),
(905, '2', '34', 'Warren', '2021-07-05 14:24:31', NULL),
(906, '2', '34', 'Clark', '2021-07-05 14:24:31', NULL),
(907, '2', '34', 'Washington', '2021-07-05 14:24:31', NULL),
(908, '2', '34', 'Delaware', '2021-07-05 14:24:31', NULL),
(909, '2', '34', 'Whitley', '2021-07-05 14:24:32', NULL),
(910, '2', '34', 'Gibson', '2021-07-05 14:24:32', NULL),
(911, '2', '34', 'Brown', '2021-07-05 14:24:32', NULL),
(912, '2', '34', 'LaPorte', '2021-07-05 14:24:32', NULL),
(913, '2', '34', 'Vigo', '2021-07-05 14:24:32', NULL),
(914, '2', '34', 'Randolph', '2021-07-05 14:24:32', NULL),
(915, '2', '34', 'Parke', '2021-07-05 14:24:32', NULL),
(916, '2', '34', 'Jasper', '2021-07-05 14:24:32', NULL),
(917, '2', '34', 'Shelby', '2021-07-05 14:24:32', NULL),
(918, '2', '34', 'Putnam', '2021-07-05 14:24:32', NULL),
(919, '2', '34', 'Henry', '2021-07-05 14:24:32', NULL),
(920, '2', '34', 'Crawford', '2021-07-05 14:24:33', NULL),
(921, '2', '34', 'Decatur', '2021-07-05 14:24:33', NULL),
(922, '2', '34', 'Knox', '2021-07-05 14:24:33', NULL),
(923, '2', '34', 'Jay', '2021-07-05 14:24:33', NULL),
(924, '2', '34', 'Bartholomew', '2021-07-05 14:24:33', NULL),
(925, '2', '34', 'Howard', '2021-07-05 14:24:33', NULL),
(926, '2', '34', 'DeKalb', '2021-07-05 14:24:33', NULL),
(927, '2', '34', 'Kosciusko', '2021-07-05 14:24:33', NULL),
(928, '2', '34', 'Floyd', '2021-07-05 14:24:33', NULL),
(929, '2', '34', 'Sullivan', '2021-07-05 14:24:33', NULL),
(930, '2', '34', 'Hancock', '2021-07-05 14:24:33', NULL),
(931, '2', '34', 'Jackson', '2021-07-05 14:24:33', NULL),
(932, '2', '34', 'Lawrence', '2021-07-05 14:24:34', NULL),
(933, '2', '34', 'Harrison', '2021-07-05 14:24:34', NULL),
(934, '2', '34', 'Switzerland', '2021-07-05 14:24:34', NULL),
(935, '2', '34', 'Spencer', '2021-07-05 14:24:34', NULL),
(936, '2', '34', 'Martin', '2021-07-05 14:24:34', NULL),
(937, '2', '34', 'Morgan', '2021-07-05 14:24:34', NULL),
(938, '2', '34', 'LaGrange', '2021-07-05 14:24:34', NULL),
(939, '2', '34', 'Marshall', '2021-07-05 14:24:34', NULL),
(940, '2', '34', 'Grant', '2021-07-05 14:24:34', NULL),
(941, '2', '34', 'Wayne', '2021-07-05 14:24:34', NULL),
(942, '2', '34', 'Jefferson', '2021-07-05 14:24:34', NULL),
(943, '2', '34', 'Boone', '2021-07-05 14:24:35', NULL),
(944, '2', '34', 'Greene', '2021-07-05 14:24:35', NULL),
(945, '2', '34', 'Pike', '2021-07-05 14:24:35', NULL),
(946, '2', '34', 'Warrick', '2021-07-05 14:24:35', NULL),
(947, '2', '34', 'Vermillion', '2021-07-05 14:24:35', NULL),
(948, '2', '34', 'Posey', '2021-07-05 14:24:35', NULL),
(949, '2', '34', 'Huntington', '2021-07-05 14:24:35', NULL),
(950, '2', '34', 'Ripley', '2021-07-05 14:24:35', NULL),
(951, '2', '34', 'Montgomery', '2021-07-05 14:24:35', NULL),
(952, '2', '34', 'Wabash', '2021-07-05 14:24:35', NULL),
(953, '2', '34', 'White', '2021-07-05 14:24:35', NULL),
(954, '2', '34', 'Dearborn', '2021-07-05 14:24:35', NULL),
(955, '2', '34', 'Miami', '2021-07-05 14:24:36', NULL),
(956, '2', '35', 'Marion', '2021-07-05 14:24:36', NULL),
(957, '2', '35', 'Monroe', '2021-07-05 14:24:36', NULL),
(958, '2', '35', 'Butler', '2021-07-05 14:24:36', NULL),
(959, '2', '35', 'Monona', '2021-07-05 14:24:36', NULL),
(960, '2', '35', 'Howard', '2021-07-05 14:24:36', NULL),
(961, '2', '35', 'Palo Alto', '2021-07-05 14:24:36', NULL),
(962, '2', '35', 'Adams', '2021-07-05 14:24:36', NULL),
(963, '2', '35', 'Greene', '2021-07-05 14:24:36', NULL),
(964, '2', '35', 'Jasper', '2021-07-05 14:24:36', NULL),
(965, '2', '35', 'Lyon', '2021-07-05 14:24:36', NULL),
(966, '2', '35', 'Kossuth', '2021-07-05 14:24:37', NULL),
(967, '2', '35', 'Polk', '2021-07-05 14:24:37', NULL),
(968, '2', '35', 'Hamilton', '2021-07-05 14:24:37', NULL),
(969, '2', '35', 'Van Buren', '2021-07-05 14:24:37', NULL),
(970, '2', '35', 'Wright', '2021-07-05 14:24:37', NULL),
(971, '2', '35', 'Floyd', '2021-07-05 14:24:37', NULL),
(972, '2', '35', 'Buena Vista', '2021-07-05 14:24:37', NULL),
(973, '2', '35', 'Emmet', '2021-07-05 14:24:37', NULL),
(974, '2', '35', 'Iowa', '2021-07-05 14:24:37', NULL),
(975, '2', '35', 'Audubon', '2021-07-05 14:24:37', NULL),
(976, '2', '35', 'Jefferson', '2021-07-05 14:24:37', NULL),
(977, '2', '35', 'Linn', '2021-07-05 14:24:38', NULL),
(978, '2', '35', 'Wapello', '2021-07-05 14:24:38', NULL),
(979, '2', '35', 'Guthrie', '2021-07-05 14:24:38', NULL),
(980, '2', '35', 'Chickasaw', '2021-07-05 14:24:38', NULL),
(981, '2', '35', 'Jones', '2021-07-05 14:24:38', NULL),
(982, '2', '35', 'Scott', '2021-07-05 14:24:38', NULL),
(983, '2', '35', 'Sioux', '2021-07-05 14:24:38', NULL),
(984, '2', '35', 'Muscatine', '2021-07-05 14:24:38', NULL),
(985, '2', '35', 'Davis', '2021-07-05 14:24:39', NULL),
(986, '2', '35', 'Dickinson', '2021-07-05 14:24:39', NULL),
(987, '2', '35', 'Allamakee', '2021-07-05 14:24:39', NULL),
(988, '2', '35', 'Harrison', '2021-07-05 14:24:39', NULL),
(989, '2', '35', 'Johnson', '2021-07-05 14:24:39', NULL),
(990, '2', '35', 'Lee', '2021-07-05 14:24:39', NULL),
(991, '2', '35', 'Taylor', '2021-07-05 14:24:39', NULL),
(992, '2', '35', 'Black Hawk', '2021-07-05 14:24:39', NULL),
(993, '2', '35', 'Osceola', '2021-07-05 14:24:39', NULL),
(994, '2', '35', 'Fayette', '2021-07-05 14:24:39', NULL),
(995, '2', '35', 'Cedar', '2021-07-05 14:24:40', NULL),
(996, '2', '35', 'Cherokee', '2021-07-05 14:24:40', NULL),
(997, '2', '35', 'Clinton', '2021-07-05 14:24:40', NULL),
(998, '2', '35', 'Louisa', '2021-07-05 14:24:40', NULL),
(999, '2', '35', 'Hancock', '2021-07-05 14:24:40', NULL),
(1000, '2', '35', 'Worth', '2021-07-05 14:24:40', NULL),
(1001, '2', '35', 'Woodbury', '2021-07-05 14:24:40', NULL),
(1002, '2', '35', 'Adair', '2021-07-05 14:24:40', NULL),
(1003, '2', '35', 'Dubuque', '2021-07-05 14:24:40', NULL),
(1004, '2', '35', 'Story', '2021-07-05 14:24:40', NULL),
(1005, '2', '35', 'Buchanan', '2021-07-05 14:24:41', NULL),
(1006, '2', '35', 'Pottawattamie', '2021-07-05 14:24:41', NULL),
(1007, '2', '35', 'Ringgold', '2021-07-05 14:24:41', NULL),
(1008, '2', '35', 'Poweshiek', '2021-07-05 14:24:41', NULL),
(1009, '2', '35', 'Bremer', '2021-07-05 14:24:41', NULL),
(1010, '2', '35', 'Dallas', '2021-07-05 14:24:41', NULL),
(1011, '2', '35', 'Mitchell', '2021-07-05 14:24:41', NULL),
(1012, '2', '35', 'Shelby', '2021-07-05 14:24:41', NULL),
(1013, '2', '35', 'Delaware', '2021-07-05 14:24:41', NULL),
(1014, '2', '35', 'Winnebago', '2021-07-05 14:24:41', NULL),
(1015, '2', '35', 'Lucas', '2021-07-05 14:24:42', NULL),
(1016, '2', '35', 'Clay', '2021-07-05 14:24:42', NULL),
(1017, '2', '35', 'Boone', '2021-07-05 14:24:42', NULL),
(1018, '2', '35', 'Crawford', '2021-07-05 14:24:42', NULL),
(1019, '2', '35', 'Marshall', '2021-07-05 14:24:42', NULL),
(1020, '2', '35', 'Tama', '2021-07-05 14:24:42', NULL),
(1021, '2', '35', 'Fremont', '2021-07-05 14:24:42', NULL),
(1022, '2', '35', 'Cass', '2021-07-05 14:24:42', NULL),
(1023, '2', '35', 'Jackson', '2021-07-05 14:24:42', NULL),
(1024, '2', '35', 'Madison', '2021-07-05 14:24:43', NULL),
(1025, '2', '35', 'Keokuk', '2021-07-05 14:24:43', NULL),
(1026, '2', '35', 'Clayton', '2021-07-05 14:24:43', NULL),
(1027, '2', '35', 'Union', '2021-07-05 14:24:43', NULL),
(1028, '2', '35', 'Montgomery', '2021-07-05 14:24:43', NULL),
(1029, '2', '35', 'Franklin', '2021-07-05 14:24:43', NULL),
(1030, '2', '35', 'Appanoose', '2021-07-05 14:24:43', NULL),
(1031, '2', '35', 'Des Moines', '2021-07-05 14:24:43', NULL),
(1032, '2', '35', 'Mills', '2021-07-05 14:24:43', NULL),
(1033, '2', '35', 'Carroll', '2021-07-05 14:24:43', NULL),
(1034, '2', '35', 'Pocahontas', '2021-07-05 14:24:44', NULL),
(1035, '2', '35', 'Winneshiek', '2021-07-05 14:24:44', NULL),
(1036, '2', '35', 'Sac', '2021-07-05 14:24:44', NULL),
(1037, '2', '35', 'Ida', '2021-07-05 14:24:44', NULL),
(1038, '2', '35', 'Cerro Gordo', '2021-07-05 14:24:44', NULL),
(1039, '2', '35', 'Wayne', '2021-07-05 14:24:44', NULL),
(1040, '2', '35', 'Decatur', '2021-07-05 14:24:44', NULL),
(1041, '2', '35', 'Webster', '2021-07-05 14:24:44', NULL),
(1042, '2', '35', 'O\'Brien', '2021-07-05 14:24:44', NULL),
(1043, '2', '35', 'Washington', '2021-07-05 14:24:45', NULL),
(1044, '2', '35', 'Hardin', '2021-07-05 14:24:45', NULL),
(1045, '2', '35', 'Calhoun', '2021-07-05 14:24:45', NULL),
(1046, '2', '35', 'Henry', '2021-07-05 14:24:45', NULL),
(1047, '2', '35', 'Grundy', '2021-07-05 14:24:45', NULL),
(1048, '2', '35', 'Humboldt', '2021-07-05 14:24:45', NULL),
(1049, '2', '35', 'Page', '2021-07-05 14:24:45', NULL),
(1050, '2', '35', 'Mahaska', '2021-07-05 14:24:45', NULL),
(1051, '2', '35', 'Clarke', '2021-07-05 14:24:45', NULL),
(1052, '2', '35', 'Benton', '2021-07-05 14:24:46', NULL),
(1053, '2', '35', 'Warren', '2021-07-05 14:24:46', NULL),
(1054, '2', '35', 'Plymouth', '2021-07-05 14:24:46', NULL),
(1055, '2', '36', 'Morton', '2021-07-05 14:24:46', NULL),
(1056, '2', '36', 'Scott', '2021-07-05 14:24:46', NULL),
(1057, '2', '36', 'Osborne', '2021-07-05 14:24:46', NULL),
(1058, '2', '36', 'Labette', '2021-07-05 14:24:46', NULL),
(1059, '2', '36', 'Coffey', '2021-07-05 14:24:46', NULL),
(1060, '2', '36', 'Dickinson', '2021-07-05 14:24:46', NULL),
(1061, '2', '36', 'Kingman', '2021-07-05 14:24:46', NULL),
(1062, '2', '36', 'Barber', '2021-07-05 14:24:47', NULL),
(1063, '2', '36', 'Johnson', '2021-07-05 14:24:47', NULL),
(1064, '2', '36', 'Ford', '2021-07-05 14:24:47', NULL),
(1065, '2', '36', 'Rooks', '2021-07-05 14:24:47', NULL),
(1066, '2', '36', 'Sedgwick', '2021-07-05 14:24:47', NULL),
(1067, '2', '36', 'Jefferson', '2021-07-05 14:24:47', NULL),
(1068, '2', '36', 'Meade', '2021-07-05 14:24:48', NULL),
(1069, '2', '36', 'Stafford', '2021-07-05 14:24:48', NULL),
(1070, '2', '36', 'Hamilton', '2021-07-05 14:24:48', NULL),
(1071, '2', '36', 'Elk', '2021-07-05 14:24:48', NULL),
(1072, '2', '36', 'Cheyenne', '2021-07-05 14:24:48', NULL),
(1073, '2', '36', 'Montgomery', '2021-07-05 14:24:48', NULL),
(1074, '2', '36', 'Wabaunsee', '2021-07-05 14:24:48', NULL),
(1075, '2', '36', 'Sheridan', '2021-07-05 14:24:48', NULL),
(1076, '2', '36', 'Wichita', '2021-07-05 14:24:48', NULL),
(1077, '2', '36', 'Kiowa', '2021-07-05 14:24:49', NULL),
(1078, '2', '36', 'Allen', '2021-07-05 14:24:49', NULL),
(1079, '2', '36', 'Seward', '2021-07-05 14:24:49', NULL),
(1080, '2', '36', 'Franklin', '2021-07-05 14:24:49', NULL),
(1081, '2', '36', 'Crawford', '2021-07-05 14:24:49', NULL),
(1082, '2', '36', 'Rush', '2021-07-05 14:24:49', NULL),
(1083, '2', '36', 'Ottawa', '2021-07-05 14:24:49', NULL),
(1084, '2', '36', 'Thomas', '2021-07-05 14:24:49', NULL),
(1085, '2', '36', 'Grant', '2021-07-05 14:24:50', NULL),
(1086, '2', '36', 'Stevens', '2021-07-05 14:24:50', NULL),
(1087, '2', '36', 'Miami', '2021-07-05 14:24:50', NULL),
(1088, '2', '36', 'Cowley', '2021-07-05 14:24:50', NULL),
(1089, '2', '36', 'Lincoln', '2021-07-05 14:24:50', NULL),
(1090, '2', '36', 'Neosho', '2021-07-05 14:24:50', NULL),
(1091, '2', '36', 'Haskell', '2021-07-05 14:24:51', NULL),
(1092, '2', '36', 'Kearny', '2021-07-05 14:24:51', NULL),
(1093, '2', '36', 'Shawnee', '2021-07-05 14:24:51', NULL),
(1094, '2', '36', 'Lyon', '2021-07-05 14:24:51', NULL),
(1095, '2', '36', 'Jewell', '2021-07-05 14:24:51', NULL),
(1096, '2', '36', 'Wyandotte', '2021-07-05 14:24:51', NULL),
(1097, '2', '36', 'Gray', '2021-07-05 14:24:51', NULL),
(1098, '2', '36', 'Rice', '2021-07-05 14:24:52', NULL),
(1099, '2', '36', 'Osage', '2021-07-05 14:24:52', NULL),
(1100, '2', '36', 'Comanche', '2021-07-05 14:24:52', NULL),
(1101, '2', '36', 'Mitchell', '2021-07-05 14:24:52', NULL),
(1102, '2', '36', 'Marion', '2021-07-05 14:24:52', NULL),
(1103, '2', '36', 'Brown', '2021-07-05 14:24:52', NULL),
(1104, '2', '36', 'Geary', '2021-07-05 14:24:52', NULL),
(1105, '2', '36', 'Douglas', '2021-07-05 14:24:53', NULL),
(1106, '2', '36', 'Harper', '2021-07-05 14:24:53', NULL),
(1107, '2', '36', 'Doniphan', '2021-07-05 14:24:53', NULL),
(1108, '2', '36', 'Wilson', '2021-07-05 14:24:53', NULL),
(1109, '2', '36', 'Phillips', '2021-07-05 14:24:53', NULL),
(1110, '2', '36', 'Jackson', '2021-07-05 14:24:53', NULL),
(1111, '2', '36', 'Atchison', '2021-07-05 14:24:54', NULL),
(1112, '2', '36', 'Barton', '2021-07-05 14:24:54', NULL),
(1113, '2', '36', 'Norton', '2021-07-05 14:24:54', NULL),
(1114, '2', '36', 'Pottawatomie', '2021-07-05 14:24:54', NULL),
(1115, '2', '36', 'Republic', '2021-07-05 14:24:54', NULL),
(1116, '2', '36', 'Smith', '2021-07-05 14:24:54', NULL),
(1117, '2', '36', 'Bourbon', '2021-07-05 14:24:55', NULL),
(1118, '2', '36', 'Sumner', '2021-07-05 14:24:55', NULL),
(1119, '2', '36', 'Russell', '2021-07-05 14:24:55', NULL),
(1120, '2', '36', 'Edwards', '2021-07-05 14:24:55', NULL),
(1121, '2', '36', 'Leavenworth', '2021-07-05 14:24:55', NULL),
(1122, '2', '36', 'Ellis', '2021-07-05 14:24:56', NULL),
(1123, '2', '36', 'Washington', '2021-07-05 14:24:56', NULL),
(1124, '2', '36', 'Chautauqua', '2021-07-05 14:24:56', NULL),
(1125, '2', '36', 'Riley', '2021-07-05 14:24:56', NULL),
(1126, '2', '36', 'Anderson', '2021-07-05 14:24:56', NULL),
(1127, '2', '36', 'McPherson', '2021-07-05 14:24:56', NULL),
(1128, '2', '36', 'Woodson', '2021-07-05 14:24:57', NULL),
(1129, '2', '36', 'Cloud', '2021-07-05 14:24:57', NULL),
(1130, '2', '36', 'Graham', '2021-07-05 14:24:57', NULL),
(1131, '2', '36', 'Butler', '2021-07-05 14:24:57', NULL),
(1132, '2', '36', 'Nemaha', '2021-07-05 14:24:57', NULL),
(1133, '2', '36', 'Clay', '2021-07-05 14:24:57', NULL),
(1134, '2', '36', 'Ness', '2021-07-05 14:24:57', NULL),
(1135, '2', '36', 'Logan', '2021-07-05 14:24:57', NULL),
(1136, '2', '36', 'Gove', '2021-07-05 14:24:57', NULL),
(1137, '2', '36', 'Harvey', '2021-07-05 14:24:57', NULL),
(1138, '2', '36', 'Chase', '2021-07-05 14:24:57', NULL),
(1139, '2', '36', 'Morris', '2021-07-05 14:24:58', NULL),
(1140, '2', '36', 'Reno', '2021-07-05 14:24:58', NULL),
(1141, '2', '36', 'Finney', '2021-07-05 14:24:58', NULL),
(1142, '2', '36', 'Stanton', '2021-07-05 14:24:58', NULL),
(1143, '2', '36', 'Cherokee', '2021-07-05 14:24:58', NULL),
(1144, '2', '36', 'Wallace', '2021-07-05 14:24:58', NULL),
(1145, '2', '36', 'Pawnee', '2021-07-05 14:24:58', NULL),
(1146, '2', '36', 'Hodgeman', '2021-07-05 14:24:58', NULL),
(1147, '2', '36', 'Clark', '2021-07-05 14:24:58', NULL),
(1148, '2', '36', 'Rawlins', '2021-07-05 14:24:58', NULL),
(1149, '2', '36', 'Pratt', '2021-07-05 14:24:59', NULL),
(1150, '2', '36', 'Linn', '2021-07-05 14:24:59', NULL),
(1151, '2', '36', 'Greenwood', '2021-07-05 14:24:59', NULL),
(1152, '2', '36', 'Saline', '2021-07-05 14:24:59', NULL),
(1153, '2', '36', 'Greeley', '2021-07-05 14:24:59', NULL),
(1154, '2', '36', 'Marshall', '2021-07-05 14:24:59', NULL),
(1155, '2', '36', 'Ellsworth', '2021-07-05 14:24:59', NULL),
(1156, '2', '36', 'Trego', '2021-07-05 14:24:59', NULL),
(1157, '2', '36', 'Decatur', '2021-07-05 14:24:59', NULL),
(1158, '2', '36', 'Sherman', '2021-07-05 14:24:59', NULL),
(1159, '2', '36', 'Lane', '2021-07-05 14:25:00', NULL),
(1160, '2', '37', 'Bourbon', '2021-07-05 14:25:00', NULL),
(1161, '2', '37', 'Adair', '2021-07-05 14:25:00', NULL),
(1162, '2', '37', 'Fulton', '2021-07-05 14:25:00', NULL),
(1163, '2', '37', 'Boone', '2021-07-05 14:25:00', NULL),
(1164, '2', '37', 'Warren', '2021-07-05 14:25:00', NULL),
(1165, '2', '37', 'Knox', '2021-07-05 14:25:00', NULL),
(1166, '2', '37', 'Boyle', '2021-07-05 14:25:00', NULL),
(1167, '2', '37', 'Fayette', '2021-07-05 15:00:47', NULL),
(1168, '2', '37', 'McLean', '2021-07-05 15:00:47', NULL),
(1169, '2', '37', 'Elliott', '2021-07-05 15:00:47', NULL),
(1170, '2', '37', 'Pendleton', '2021-07-05 15:00:47', NULL),
(1171, '2', '37', 'Crittenden', '2021-07-05 15:00:47', NULL),
(1172, '2', '37', 'Kenton', '2021-07-05 15:00:48', NULL),
(1173, '2', '37', 'Cumberland', '2021-07-05 15:00:48', NULL),
(1174, '2', '37', 'Breathitt', '2021-07-05 15:00:48', NULL),
(1175, '2', '37', 'Lyon', '2021-07-05 15:00:48', NULL),
(1176, '2', '37', 'Boone', '2021-07-05 15:00:48', NULL),
(1177, '2', '37', 'Warren', '2021-07-05 15:00:48', NULL),
(1178, '2', '37', 'Hardin', '2021-07-05 15:00:48', NULL),
(1179, '2', '37', 'Edmonson', '2021-07-05 15:00:48', NULL),
(1180, '2', '37', 'Daviess', '2021-07-05 15:00:49', NULL),
(1181, '2', '37', 'Campbell', '2021-07-05 15:00:49', NULL),
(1182, '2', '37', 'Owsley', '2021-07-05 15:00:49', NULL),
(1183, '2', '37', 'Madison', '2021-07-05 15:00:49', NULL),
(1184, '2', '37', 'Bullitt', '2021-07-05 15:00:49', NULL),
(1185, '2', '37', 'Trigg', '2021-07-05 15:00:49', NULL),
(1186, '2', '37', 'Jackson', '2021-07-05 15:00:49', NULL),
(1187, '2', '37', 'Christian', '2021-07-05 15:00:49', NULL),
(1188, '2', '37', 'Monroe', '2021-07-05 15:00:49', NULL),
(1189, '2', '37', 'Oldham', '2021-07-05 15:00:49', NULL),
(1190, '2', '37', 'McCracken', '2021-07-05 15:00:49', NULL),
(1191, '2', '37', 'Pulaski', '2021-07-05 15:00:50', NULL),
(1192, '2', '37', 'Laurel', '2021-07-05 15:00:50', NULL),
(1193, '2', '37', 'Pike', '2021-07-05 15:00:50', NULL),
(1194, '2', '37', 'Powell', '2021-07-05 15:00:50', NULL),
(1195, '2', '37', 'Bracken', '2021-07-05 15:00:50', NULL),
(1196, '2', '37', 'Caldwell', '2021-07-05 15:00:50', NULL),
(1197, '2', '37', 'Scott', '2021-07-05 15:00:50', NULL),
(1198, '2', '37', 'Jessamine', '2021-07-05 15:00:50', NULL),
(1199, '2', '37', 'Magoffin', '2021-07-05 15:00:50', NULL),
(1200, '2', '37', 'Franklin', '2021-07-05 15:00:50', NULL),
(1201, '2', '37', 'Ballard', '2021-07-05 15:00:50', NULL),
(1202, '2', '37', 'Boyd', '2021-07-05 15:00:51', NULL),
(1203, '2', '37', 'Shelby', '2021-07-05 15:00:51', NULL),
(1204, '2', '37', 'Larue', '2021-07-05 15:00:51', NULL),
(1205, '2', '37', 'Livingston', '2021-07-05 15:00:51', NULL),
(1206, '2', '37', 'Henderson', '2021-07-05 15:00:51', NULL),
(1207, '2', '37', 'Nelson', '2021-07-05 15:00:51', NULL),
(1208, '2', '37', 'Hopkins', '2021-07-05 15:00:51', NULL),
(1209, '2', '37', 'Carlisle', '2021-07-05 15:00:51', NULL),
(1210, '2', '37', 'Barren', '2021-07-05 15:00:52', NULL),
(1211, '2', '37', 'Owen', '2021-07-05 15:00:52', NULL),
(1212, '2', '37', 'Union', '2021-07-05 15:00:52', NULL),
(1213, '2', '37', 'Martin', '2021-07-05 15:00:52', NULL),
(1214, '2', '37', 'Menifee', '2021-07-05 15:00:52', NULL),
(1215, '2', '37', 'Knott', '2021-07-05 15:00:52', NULL),
(1216, '2', '37', 'Calloway', '2021-07-05 15:00:52', NULL),
(1217, '2', '37', 'Hickman', '2021-07-05 15:00:52', NULL),
(1218, '2', '37', 'Graves', '2021-07-05 15:00:52', NULL),
(1219, '2', '37', 'Floyd', '2021-07-05 15:00:52', NULL),
(1220, '2', '37', 'Whitley', '2021-07-05 15:00:53', NULL),
(1221, '2', '37', 'Clark', '2021-07-05 15:00:53', NULL),
(1222, '2', '37', 'Greenup', '2021-07-05 15:00:53', NULL),
(1223, '2', '37', 'Casey', '2021-07-05 15:00:53', NULL),
(1224, '2', '37', 'Wolfe', '2021-07-05 15:00:53', NULL),
(1225, '2', '37', 'Knox', '2021-07-05 15:00:53', NULL),
(1226, '2', '37', 'Nicholas', '2021-07-05 15:00:53', NULL),
(1227, '2', '37', 'Marshall', '2021-07-05 15:00:53', NULL),
(1228, '2', '37', 'Muhlenberg', '2021-07-05 15:00:54', NULL),
(1229, '2', '37', 'Henry', '2021-07-05 15:00:54', NULL),
(1230, '2', '37', 'Bath', '2021-07-05 15:00:54', NULL),
(1231, '2', '37', 'Boyle', '2021-07-05 15:00:54', NULL),
(1232, '2', '37', 'Lewis', '2021-07-05 15:00:54', NULL),
(1233, '2', '37', 'Meade', '2021-07-05 15:00:54', NULL),
(1234, '2', '37', 'Gallatin', '2021-07-05 15:00:54', NULL),
(1235, '2', '37', 'Montgomery', '2021-07-05 15:00:55', NULL),
(1236, '2', '37', 'Robertson', '2021-07-05 15:00:55', NULL),
(1237, '2', '37', 'Carter', '2021-07-05 15:00:55', NULL),
(1238, '2', '37', 'Logan', '2021-07-05 15:00:55', NULL),
(1239, '2', '37', 'Hancock', '2021-07-05 15:00:55', NULL),
(1240, '2', '37', 'Bell', '2021-07-05 15:00:55', NULL),
(1241, '2', '37', 'Harlan', '2021-07-05 15:00:55', NULL),
(1242, '2', '37', 'Perry', '2021-07-05 15:00:55', NULL),
(1243, '2', '37', 'Morgan', '2021-07-05 15:00:55', NULL),
(1244, '2', '37', 'Woodford', '2021-07-05 15:00:56', NULL),
(1245, '2', '37', 'Grayson', '2021-07-05 15:00:56', NULL),
(1246, '2', '37', 'Taylor', '2021-07-05 15:00:56', NULL),
(1247, '2', '37', 'Todd', '2021-07-05 15:00:56', NULL),
(1248, '2', '37', 'Grant', '2021-07-05 15:00:56', NULL),
(1249, '2', '37', 'Rowan', '2021-07-05 15:00:56', NULL),
(1250, '2', '37', 'Lincoln', '2021-07-05 15:00:56', NULL),
(1251, '2', '37', 'Ohio', '2021-07-05 15:00:56', NULL),
(1252, '2', '37', 'Trimble', '2021-07-05 15:00:56', NULL),
(1253, '2', '37', 'Leslie', '2021-07-05 15:00:56', NULL),
(1254, '2', '37', 'Johnson', '2021-07-05 15:00:57', NULL),
(1255, '2', '37', 'Anderson', '2021-07-05 15:00:57', NULL),
(1256, '2', '37', 'Letcher', '2021-07-05 15:00:57', NULL),
(1257, '2', '37', 'Washington', '2021-07-05 15:00:57', NULL),
(1258, '2', '37', 'Butler', '2021-07-05 15:00:57', NULL),
(1259, '2', '37', 'Mercer', '2021-07-05 15:00:57', NULL),
(1260, '2', '37', 'Clinton', '2021-07-05 15:00:57', NULL),
(1261, '2', '37', 'Lee', '2021-07-05 15:00:57', NULL),
(1262, '2', '37', 'Allen', '2021-07-05 15:00:57', NULL),
(1263, '2', '37', 'Metcalfe', '2021-07-05 15:00:57', NULL),
(1264, '2', '37', 'Wayne', '2021-07-05 15:00:58', NULL),
(1265, '2', '37', 'Clay', '2021-07-05 15:00:58', NULL),
(1266, '2', '37', 'Lawrence', '2021-07-05 15:00:58', NULL),
(1267, '2', '37', 'Breckinridge', '2021-07-05 15:00:58', NULL),
(1268, '2', '37', 'Bourbon', '2021-07-05 15:00:58', NULL),
(1269, '2', '37', 'Marion', '2021-07-05 15:00:58', NULL),
(1270, '2', '37', 'Adair', '2021-07-05 15:00:58', NULL),
(1271, '2', '37', 'Hart', '2021-07-05 15:00:58', NULL),
(1272, '2', '37', 'Harrison', '2021-07-05 15:00:58', NULL),
(1273, '2', '37', 'Spencer', '2021-07-05 15:00:58', NULL),
(1274, '2', '37', 'Simpson', '2021-07-05 15:00:59', NULL),
(1275, '2', '37', 'Russell', '2021-07-05 15:00:59', NULL),
(1276, '2', '37', 'McCreary', '2021-07-05 15:00:59', NULL),
(1277, '2', '37', 'Garrard', '2021-07-05 15:00:59', NULL),
(1278, '2', '37', 'Mason', '2021-07-05 15:00:59', NULL),
(1279, '2', '37', 'Rockcastle', '2021-07-05 15:00:59', NULL),
(1280, '2', '38', 'Madison', '2021-07-05 15:06:10', NULL),
(1281, '2', '38', 'East Baton Rouge', '2021-07-05 15:06:10', NULL),
(1282, '2', '38', 'Jefferson', '2021-07-05 15:06:10', NULL),
(1283, '2', '38', 'Orleans', '2021-07-05 15:06:10', NULL),
(1284, '2', '38', 'Caldwell', '2021-07-05 15:06:10', NULL),
(1285, '2', '38', 'Jackson', '2021-07-05 15:06:10', NULL),
(1286, '2', '38', 'St. Tammany', '2021-07-05 15:06:10', NULL),
(1287, '2', '38', 'Caddo', '2021-07-05 15:06:10', NULL),
(1288, '2', '38', 'Lafayette', '2021-07-05 15:06:10', NULL),
(1289, '2', '38', 'Calcasieu', '2021-07-05 15:06:10', NULL),
(1290, '2', '38', 'Ouachita', '2021-07-05 15:06:10', NULL),
(1291, '2', '38', 'Catahoula', '2021-07-05 15:06:11', NULL),
(1292, '2', '38', 'Livingston', '2021-07-05 15:06:11', NULL),
(1293, '2', '38', 'Tangipahoa', '2021-07-05 15:06:11', NULL),
(1294, '2', '38', 'Rapides', '2021-07-05 15:06:11', NULL),
(1295, '2', '38', 'Bossier', '2021-07-05 15:06:11', NULL),
(1296, '2', '38', 'Ascension', '2021-07-05 15:06:11', NULL),
(1297, '2', '38', 'Terrebonne', '2021-07-05 15:06:11', NULL),
(1298, '2', '38', 'Lafourche', '2021-07-05 15:06:11', NULL),
(1299, '2', '38', 'St. Landry', '2021-07-05 15:06:11', NULL),
(1300, '2', '38', 'Bienville', '2021-07-05 15:06:11', NULL),
(1301, '2', '38', 'Iberia', '2021-07-05 15:06:11', NULL),
(1302, '2', '38', 'LaSalle', '2021-07-05 15:06:12', NULL),
(1303, '2', '38', 'West Feliciana', '2021-07-05 15:06:12', NULL),
(1304, '2', '38', 'Winn', '2021-07-05 15:06:12', NULL),
(1305, '2', '38', 'Acadia', '2021-07-05 15:06:12', NULL),
(1306, '2', '38', 'Cameron', '2021-07-05 15:06:12', NULL),
(1307, '2', '38', 'Vermilion', '2021-07-05 15:06:12', NULL),
(1308, '2', '38', 'St. Martin', '2021-07-05 15:06:12', NULL),
(1309, '2', '38', 'St. Charles', '2021-07-05 15:06:12', NULL),
(1310, '2', '38', 'St. Mary', '2021-07-05 15:06:12', NULL),
(1311, '2', '38', 'Vernon', '2021-07-05 15:06:13', NULL),
(1312, '2', '38', 'Lincoln', '2021-07-05 15:06:13', NULL),
(1313, '2', '38', 'Washington', '2021-07-05 15:06:13', NULL),
(1314, '2', '38', 'St. Bernard', '2021-07-05 15:06:13', NULL),
(1315, '2', '38', 'St. John the Baptist', '2021-07-05 15:06:13', NULL),
(1316, '2', '38', 'Avoyelles', '2021-07-05 15:06:13', NULL),
(1317, '2', '38', 'Tensas', '2021-07-05 15:06:13', NULL),
(1318, '2', '38', 'Webster', '2021-07-05 15:06:13', NULL),
(1319, '2', '38', 'Natchitoches', '2021-07-05 15:06:14', NULL),
(1320, '2', '38', 'Beauregard', '2021-07-05 15:06:14', NULL),
(1321, '2', '38', 'West Carroll', '2021-07-05 15:06:14', NULL),
(1322, '2', '38', 'Evangeline', '2021-07-05 15:06:14', NULL),
(1323, '2', '38', 'Iberville', '2021-07-05 15:06:14', NULL),
(1324, '2', '38', 'Jefferson Davis', '2021-07-05 15:06:14', NULL),
(1325, '2', '38', 'Claiborne', '2021-07-05 15:06:14', NULL),
(1326, '2', '38', 'East Carroll', '2021-07-05 15:06:14', NULL),
(1327, '2', '38', 'De Soto', '2021-07-05 15:06:14', NULL),
(1328, '2', '38', 'West Baton Rouge', '2021-07-05 15:06:15', NULL),
(1329, '2', '38', 'Allen', '2021-07-05 15:06:15', NULL),
(1330, '2', '38', 'Morehouse', '2021-07-05 15:06:15', NULL),
(1331, '2', '38', 'Red River', '2021-07-05 15:06:15', NULL),
(1332, '2', '38', 'Sabine', '2021-07-05 15:06:15', NULL),
(1333, '2', '38', 'Plaquemines', '2021-07-05 15:06:15', NULL),
(1334, '2', '38', 'Assumption', '2021-07-05 15:06:15', NULL),
(1335, '2', '38', 'St. Helena', '2021-07-05 15:06:15', NULL),
(1336, '2', '38', 'Union', '2021-07-05 15:06:15', NULL),
(1337, '2', '38', 'Grant', '2021-07-05 15:06:16', NULL),
(1338, '2', '38', 'Pointe Coupee', '2021-07-05 15:06:16', NULL),
(1339, '2', '38', 'St. James', '2021-07-05 15:06:16', NULL),
(1340, '2', '38', 'Richland', '2021-07-05 15:06:16', NULL),
(1341, '2', '38', 'Franklin', '2021-07-05 15:06:16', NULL),
(1342, '2', '38', 'Concordia', '2021-07-05 15:06:16', NULL),
(1343, '2', '38', 'East Feliciana', '2021-07-05 15:06:16', NULL),
(1344, '2', '39', 'Cumberland', '2021-07-05 19:27:39', NULL),
(1345, '2', '39', 'York', '2021-07-05 19:27:39', NULL),
(1346, '2', '39', 'Penobscot', '2021-07-05 19:27:39', NULL),
(1347, '2', '39', 'Kennebec', '2021-07-05 19:27:39', NULL),
(1348, '2', '39', 'Androscoggin', '2021-07-05 19:27:39', NULL),
(1349, '2', '39', 'Aroostook', '2021-07-05 19:27:39', NULL),
(1350, '2', '39', 'Oxford', '2021-07-05 19:27:40', NULL),
(1351, '2', '39', 'Hancock', '2021-07-05 19:27:40', NULL),
(1352, '2', '39', 'Somerset', '2021-07-05 19:27:40', NULL),
(1353, '2', '39', 'Knox', '2021-07-05 19:27:40', NULL),
(1354, '2', '39', 'Waldo', '2021-07-05 19:27:40', NULL),
(1355, '2', '39', 'Sagadahoc', '2021-07-05 19:27:40', NULL),
(1356, '2', '39', 'Lincoln', '2021-07-05 19:27:40', NULL),
(1357, '2', '39', 'Washington', '2021-07-05 19:27:40', NULL),
(1358, '2', '39', 'Franklin', '2021-07-05 19:27:40', NULL),
(1359, '2', '39', 'Piscataquis', '2021-07-05 19:27:40', NULL),
(1360, '2', '40', 'Montgomery', '2021-07-05 19:27:41', NULL),
(1361, '2', '40', 'Prince George\'s', '2021-07-05 19:27:41', NULL),
(1362, '2', '40', 'Baltimore', '2021-07-05 19:27:41', NULL),
(1363, '2', '40', 'Baltimore', '2021-07-05 19:27:41', NULL),
(1364, '2', '40', 'Anne Arundel', '2021-07-05 19:27:41', NULL),
(1365, '2', '40', 'Howard', '2021-07-05 19:27:41', NULL),
(1366, '2', '40', 'Harford', '2021-07-05 19:27:41', NULL),
(1367, '2', '40', 'Frederick', '2021-07-05 19:27:41', NULL),
(1368, '2', '40', 'Carroll', '2021-07-05 19:27:41', NULL),
(1369, '2', '40', 'Charles', '2021-07-05 19:27:42', NULL),
(1370, '2', '40', 'Washington', '2021-07-05 19:27:42', NULL),
(1371, '2', '40', 'St. Mary\'s', '2021-07-05 19:27:42', NULL),
(1372, '2', '40', 'Cecil', '2021-07-05 19:27:42', NULL),
(1373, '2', '40', 'Wicomico', '2021-07-05 19:27:42', NULL),
(1374, '2', '40', 'Calvert', '2021-07-05 19:27:42', NULL),
(1375, '2', '40', 'Allegany', '2021-07-05 19:27:42', NULL),
(1376, '2', '40', 'Worcester', '2021-07-05 19:27:42', NULL),
(1377, '2', '40', 'Queen Anne\'s', '2021-07-05 19:27:42', NULL),
(1378, '2', '40', 'Talbot', '2021-07-05 19:27:43', NULL),
(1379, '2', '40', 'Caroline', '2021-07-05 19:27:43', NULL),
(1380, '2', '40', 'Dorchester', '2021-07-05 19:27:43', NULL),
(1381, '2', '40', 'Garrett', '2021-07-05 19:27:43', NULL),
(1382, '2', '40', 'Somerset', '2021-07-05 19:27:43', NULL),
(1383, '2', '40', 'Kent', '2021-07-05 19:27:43', NULL),
(1384, '2', '41', 'Middlesex', '2021-07-05 19:27:43', NULL),
(1385, '2', '41', 'Worcester', '2021-07-05 19:27:43', NULL),
(1386, '2', '41', 'Suffolk', '2021-07-05 19:27:43', NULL),
(1387, '2', '41', 'Essex', '2021-07-05 19:27:44', NULL),
(1388, '2', '41', 'Norfolk', '2021-07-05 19:27:44', NULL),
(1389, '2', '41', 'Bristol', '2021-07-05 19:27:44', NULL),
(1390, '2', '41', 'Plymouth', '2021-07-05 19:27:44', NULL),
(1391, '2', '41', 'Hampden', '2021-07-05 19:27:44', NULL),
(1392, '2', '41', 'Barnstable', '2021-07-05 19:27:44', NULL),
(1393, '2', '41', 'Hampshire', '2021-07-05 19:27:44', NULL),
(1394, '2', '41', 'Berkshire', '2021-07-05 19:27:44', NULL),
(1395, '2', '41', 'Nantucket', '2021-07-05 19:27:44', NULL),
(1396, '2', '41', 'Franklin', '2021-07-05 19:27:44', NULL),
(1397, '2', '41', 'Dukes', '2021-07-05 19:27:45', NULL),
(1398, '2', '42', 'Wayne', '2021-07-05 19:27:45', NULL),
(1399, '2', '42', 'Oakland', '2021-07-05 19:27:45', NULL),
(1400, '2', '42', 'Macomb', '2021-07-05 19:27:45', NULL),
(1401, '2', '42', 'Kent', '2021-07-05 19:27:45', NULL),
(1402, '2', '42', 'Genesee', '2021-07-05 19:27:45', NULL),
(1403, '2', '42', 'Washtenaw', '2021-07-05 19:27:45', NULL),
(1404, '2', '42', 'Ingham', '2021-07-05 19:27:45', NULL),
(1405, '2', '42', 'Ottawa', '2021-07-05 19:27:45', NULL),
(1406, '2', '42', 'Montmorency', '2021-07-05 19:27:45', NULL),
(1407, '2', '42', 'Kalamazoo', '2021-07-05 19:27:46', NULL),
(1408, '2', '42', 'Saginaw', '2021-07-05 19:27:46', NULL),
(1409, '2', '42', 'Livingston', '2021-07-05 19:27:46', NULL),
(1410, '2', '42', 'Arenac', '2021-07-05 19:27:46', NULL),
(1411, '2', '42', 'Muskegon', '2021-07-05 19:27:46', NULL),
(1412, '2', '42', 'Keweenaw', '2021-07-05 19:27:46', NULL),
(1413, '2', '42', 'St. Clair', '2021-07-05 19:27:46', '2021-07-05 19:31:19'),
(1414, '2', '42', 'Jackson', '2021-07-05 19:27:46', NULL),
(1415, '2', '42', 'Berrien', '2021-07-05 19:27:46', NULL),
(1416, '2', '42', 'Monroe', '2021-07-05 19:27:47', NULL),
(1417, '2', '42', 'Calhoun', '2021-07-05 19:27:47', NULL),
(1418, '2', '42', 'Allegan', '2021-07-05 19:27:47', NULL),
(1419, '2', '42', 'Eaton', '2021-07-05 19:27:47', NULL),
(1420, '2', '42', 'Bay', '2021-07-05 19:27:47', NULL),
(1421, '2', '42', 'Lenawee', '2021-07-05 19:27:47', NULL),
(1422, '2', '42', 'Crawford', '2021-07-05 19:27:47', NULL),
(1423, '2', '42', 'Grand Traverse', '2021-07-05 19:27:47', '2021-07-05 19:31:25'),
(1424, '2', '42', 'Lapeer', '2021-07-05 19:27:47', NULL),
(1425, '2', '42', 'Midland', '2021-07-05 19:27:48', NULL),
(1426, '2', '42', 'Clinton', '2021-07-05 19:27:48', NULL),
(1427, '2', '42', 'Van Buren', '2021-07-05 19:27:48', '2021-07-05 19:31:29'),
(1428, '2', '42', 'Baraga', '2021-07-05 19:27:48', NULL),
(1429, '2', '42', 'Isabella', '2021-07-05 19:27:48', NULL),
(1430, '2', '42', 'Shiawassee', '2021-07-05 19:27:48', NULL),
(1431, '2', '42', 'Marquette', '2021-07-05 19:27:48', NULL),
(1432, '2', '42', 'Ontonagon', '2021-07-05 19:27:48', NULL),
(1433, '2', '42', 'Ionia', '2021-07-05 19:27:48', NULL),
(1434, '2', '42', 'Alcona', '2021-07-05 19:27:49', NULL),
(1435, '2', '42', 'Montcalm', '2021-07-05 19:27:49', NULL),
(1436, '2', '42', 'St. Joseph', '2021-07-05 19:27:49', '2021-07-05 19:31:36'),
(1437, '2', '42', 'Barry', '2021-07-05 19:27:49', NULL),
(1438, '2', '42', 'Presque Isle', '2021-07-05 19:27:49', '2021-07-05 19:31:43'),
(1439, '2', '42', 'Tuscola', '2021-07-05 19:27:49', NULL),
(1440, '2', '42', 'Cass', '2021-07-05 19:27:49', NULL),
(1441, '2', '42', 'Newaygo', '2021-07-05 19:27:49', NULL),
(1442, '2', '42', 'Lake', '2021-07-05 19:27:49', NULL),
(1443, '2', '42', 'Hillsdale', '2021-07-05 19:27:49', NULL),
(1444, '2', '42', 'Branch', '2021-07-05 19:27:50', NULL),
(1445, '2', '42', 'Mecosta', '2021-07-05 19:27:50', NULL),
(1446, '2', '42', 'Sanilac', '2021-07-05 19:27:50', NULL),
(1447, '2', '42', 'Gratiot', '2021-07-05 19:27:50', NULL),
(1448, '2', '42', 'Alger', '2021-07-05 19:27:50', NULL),
(1449, '2', '42', 'Luce', '2021-07-05 19:27:50', NULL),
(1450, '2', '42', 'Chippewa', '2021-07-05 19:27:50', NULL),
(1451, '2', '42', 'Houghton', '2021-07-05 19:27:50', NULL),
(1452, '2', '42', 'Delta', '2021-07-05 19:27:50', NULL),
(1453, '2', '42', 'Iron', '2021-07-05 19:27:51', NULL),
(1454, '2', '42', 'Wexford', '2021-07-05 19:27:51', NULL),
(1455, '2', '42', 'Emmet', '2021-07-05 19:27:51', NULL),
(1456, '2', '42', 'Huron', '2021-07-05 19:27:51', NULL),
(1457, '2', '42', 'Mackinac', '2021-07-05 19:27:51', NULL),
(1458, '2', '42', 'Clare', '2021-07-05 19:27:51', NULL),
(1459, '2', '42', 'Gogebic', '2021-07-05 19:27:51', NULL),
(1460, '2', '42', 'Mason', '2021-07-05 19:27:52', NULL),
(1461, '2', '42', 'Alpena', '2021-07-05 19:27:52', NULL),
(1462, '2', '42', 'Missaukee', '2021-07-05 19:27:52', NULL),
(1463, '2', '42', 'Oceana', '2021-07-05 19:27:52', NULL),
(1464, '2', '42', 'Charlevoix', '2021-07-05 19:27:52', NULL),
(1465, '2', '42', 'Dickinson', '2021-07-05 19:27:52', NULL),
(1466, '2', '42', 'Cheboygan', '2021-07-05 19:27:52', NULL),
(1467, '2', '42', 'Gladwin', '2021-07-05 19:27:52', NULL),
(1468, '2', '42', 'Iosco', '2021-07-05 19:27:52', NULL),
(1469, '2', '42', 'Otsego', '2021-07-05 19:27:52', NULL),
(1470, '2', '42', 'Manistee', '2021-07-05 19:27:53', NULL),
(1471, '2', '42', 'Roscommon', '2021-07-05 19:27:53', NULL),
(1472, '2', '42', 'Osceola', '2021-07-05 19:27:53', NULL),
(1473, '2', '42', 'Antrim', '2021-07-05 19:27:53', NULL),
(1474, '2', '42', 'Menominee', '2021-07-05 19:27:53', NULL),
(1475, '2', '42', 'Leelanau', '2021-07-05 19:27:53', NULL),
(1476, '2', '42', 'Ogemaw', '2021-07-05 19:27:53', NULL),
(1477, '2', '42', 'Oscoda', '2021-07-05 19:27:53', NULL),
(1478, '2', '42', 'Benzie', '2021-07-05 19:27:53', NULL),
(1479, '2', '42', 'Kalkaska', '2021-07-05 19:27:53', NULL),
(1480, '2', '42', 'Schoolcraft', '2021-07-05 19:27:54', NULL),
(1481, '2', '43', 'Hennepin', '2021-07-05 19:27:54', NULL),
(1482, '2', '43', 'Pipestone', '2021-07-05 19:27:54', NULL),
(1483, '2', '43', 'Ramsey', '2021-07-05 19:27:54', NULL),
(1484, '2', '43', 'Traverse', '2021-07-05 19:27:54', NULL),
(1485, '2', '43', 'Wilkin', '2021-07-05 19:27:54', NULL),
(1486, '2', '43', 'Dakota', '2021-07-05 19:27:54', NULL),
(1487, '2', '43', 'Cook', '2021-07-05 19:27:54', NULL),
(1488, '2', '43', 'Lake', '2021-07-05 19:27:54', NULL),
(1489, '2', '43', 'Anoka', '2021-07-05 19:27:54', NULL),
(1490, '2', '43', 'Washington', '2021-07-05 19:27:55', NULL),
(1491, '2', '43', 'Pennington', '2021-07-05 19:27:55', NULL),
(1492, '2', '43', 'Mahnomen', '2021-07-05 19:27:55', NULL),
(1493, '2', '43', 'Cottonwood', '2021-07-05 19:27:55', NULL),
(1494, '2', '43', 'St. Louis', '2021-07-05 19:27:55', NULL),
(1495, '2', '43', 'Stearns', '2021-07-05 19:27:55', NULL),
(1496, '2', '43', 'Olmsted', '2021-07-05 19:27:55', NULL),
(1497, '2', '43', 'Scott', '2021-07-05 19:27:55', NULL),
(1498, '2', '43', 'Stevens', '2021-07-05 19:27:56', NULL),
(1499, '2', '43', 'Wright', '2021-07-05 19:27:56', NULL),
(1500, '2', '43', 'Lac qui Parle', '2021-07-05 19:27:56', NULL),
(1501, '2', '43', 'Roseau', '2021-07-05 19:27:56', NULL),
(1502, '2', '43', 'Norman', '2021-07-05 19:27:56', NULL),
(1503, '2', '43', 'Carver', '2021-07-05 19:27:56', NULL),
(1504, '2', '43', 'Sherburne', '2021-07-05 19:27:56', NULL),
(1505, '2', '43', 'Kittson', '2021-07-05 19:27:56', NULL),
(1506, '2', '43', 'Watonwan', '2021-07-05 19:27:56', NULL),
(1507, '2', '43', 'Clearwater', '2021-07-05 19:27:56', NULL),
(1508, '2', '43', 'Faribault', '2021-07-05 19:27:57', NULL),
(1509, '2', '43', 'Kanabec', '2021-07-05 19:27:57', NULL),
(1510, '2', '43', 'Blue Earth', '2021-07-05 19:27:57', NULL),
(1511, '2', '43', 'Rice', '2021-07-05 19:27:57', NULL),
(1512, '2', '43', 'Crow Wing', '2021-07-05 19:27:57', NULL),
(1513, '2', '43', 'Clay', '2021-07-05 19:27:57', NULL),
(1514, '2', '43', 'Otter Tail', '2021-07-05 19:27:57', NULL),
(1515, '2', '43', 'Chisago', '2021-07-05 19:27:57', NULL),
(1516, '2', '43', 'Murray', '2021-07-05 19:27:57', NULL),
(1517, '2', '43', 'Yellow Medicine', '2021-07-05 19:27:58', NULL),
(1518, '2', '43', 'Lincoln', '2021-07-05 19:27:58', NULL),
(1519, '2', '43', 'Chippewa', '2021-07-05 19:27:58', NULL),
(1520, '2', '43', 'Winona', '2021-07-05 19:27:58', NULL),
(1521, '2', '43', 'Marshall', '2021-07-05 19:27:58', NULL),
(1522, '2', '43', 'Rock', '2021-07-05 19:27:58', NULL),
(1523, '2', '43', 'Beltrami', '2021-07-05 19:27:58', NULL),
(1524, '2', '43', 'Goodhue', '2021-07-05 19:27:58', NULL),
(1525, '2', '43', 'Renville', '2021-07-05 19:27:58', NULL),
(1526, '2', '43', 'Itasca', '2021-07-05 19:27:59', NULL),
(1527, '2', '43', 'Kandiyohi', '2021-07-05 19:27:59', NULL),
(1528, '2', '43', 'Redwood', '2021-07-05 19:27:59', NULL),
(1529, '2', '43', 'Benton', '2021-07-05 19:27:59', NULL),
(1530, '2', '43', 'Mower', '2021-07-05 19:27:59', NULL),
(1531, '2', '43', 'Isanti', '2021-07-05 19:27:59', NULL),
(1532, '2', '43', 'Douglas', '2021-07-05 19:27:59', NULL),
(1533, '2', '43', 'Steele', '2021-07-05 19:27:59', NULL),
(1534, '2', '43', 'McLeod', '2021-07-05 19:27:59', NULL),
(1535, '2', '43', 'Carlton', '2021-07-05 19:28:00', NULL),
(1536, '2', '43', 'Pope', '2021-07-05 19:28:00', NULL),
(1537, '2', '43', 'Becker', '2021-07-05 19:28:00', NULL),
(1538, '2', '43', 'Nicollet', '2021-07-05 19:28:00', NULL),
(1539, '2', '43', 'Wadena', '2021-07-05 19:28:00', NULL),
(1540, '2', '43', 'Morrison', '2021-07-05 19:28:00', NULL),
(1541, '2', '43', 'Polk', '2021-07-05 19:28:00', NULL),
(1542, '2', '43', 'Freeborn', '2021-07-05 19:28:00', NULL),
(1543, '2', '43', 'Cass', '2021-07-05 19:28:01', NULL),
(1544, '2', '43', 'Pine', '2021-07-05 19:28:01', NULL),
(1545, '2', '43', 'Le Sueur', '2021-07-05 19:28:01', NULL),
(1546, '2', '43', 'Aitkin', '2021-07-05 19:28:01', NULL),
(1547, '2', '43', 'Mille Lacs', '2021-07-05 19:28:01', NULL),
(1548, '2', '43', 'Lyon', '2021-07-05 19:28:01', NULL),
(1549, '2', '43', 'Brown', '2021-07-05 19:28:01', NULL),
(1550, '2', '43', 'Red Lake', '2021-07-05 19:28:01', NULL),
(1551, '2', '43', 'Grant', '2021-07-05 19:28:01', NULL),
(1552, '2', '43', 'Todd', '2021-07-05 19:28:02', NULL),
(1553, '2', '43', 'Sibley', '2021-07-05 19:28:02', NULL),
(1554, '2', '43', 'Meeker', '2021-07-05 19:28:02', NULL),
(1555, '2', '43', 'Big Stone', '2021-07-05 19:28:02', NULL),
(1556, '2', '43', 'Nobles', '2021-07-05 19:28:02', NULL),
(1557, '2', '43', 'Wabasha', '2021-07-05 19:28:02', NULL),
(1558, '2', '43', 'Hubbard', '2021-07-05 19:28:02', NULL),
(1559, '2', '43', 'Fillmore', '2021-07-05 19:28:02', NULL),
(1560, '2', '43', 'Lake of the Woods', '2021-07-05 19:28:02', NULL),
(1561, '2', '43', 'Dodge', '2021-07-05 19:28:03', NULL),
(1562, '2', '43', 'Jackson', '2021-07-05 19:28:03', NULL),
(1563, '2', '43', 'Martin', '2021-07-05 19:28:03', NULL),
(1564, '2', '43', 'Waseca', '2021-07-05 19:28:03', NULL),
(1565, '2', '43', 'Houston', '2021-07-05 19:28:03', NULL),
(1566, '2', '43', 'Koochiching', '2021-07-05 19:28:03', NULL),
(1567, '2', '43', 'Swift', '2021-07-05 19:28:03', NULL),
(1568, '2', '44', 'Jefferson Davis', '2021-07-05 19:28:04', NULL),
(1569, '2', '44', 'Kemper', '2021-07-05 19:28:04', NULL),
(1570, '2', '44', 'Quitman', '2021-07-05 19:28:04', NULL),
(1571, '2', '44', 'Clarke', '2021-07-05 19:28:04', NULL),
(1572, '2', '44', 'Humphreys', '2021-07-05 19:28:04', NULL),
(1573, '2', '44', 'Tallahatchie', '2021-07-05 19:28:04', NULL),
(1574, '2', '44', 'Hinds', '2021-07-05 19:28:04', NULL),
(1575, '2', '44', 'Claiborne', '2021-07-05 19:28:05', NULL),
(1576, '2', '44', 'Harrison', '2021-07-05 19:28:05', NULL),
(1577, '2', '44', 'Jefferson', '2021-07-05 19:28:05', NULL),
(1578, '2', '44', 'Calhoun', '2021-07-05 19:28:05', NULL),
(1579, '2', '44', 'Wilkinson', '2021-07-05 19:28:05', NULL),
(1580, '2', '44', 'DeSoto', '2021-07-05 19:28:05', NULL),
(1581, '2', '44', 'Rankin', '2021-07-05 19:28:05', NULL),
(1582, '2', '44', 'Jackson', '2021-07-05 19:28:05', NULL),
(1583, '2', '44', 'Madison', '2021-07-05 19:28:06', NULL),
(1584, '2', '44', 'Smith', '2021-07-05 19:28:06', NULL),
(1585, '2', '44', 'Lee', '2021-07-05 19:28:06', NULL),
(1586, '2', '44', 'Walthall', '2021-07-05 19:28:06', NULL),
(1587, '2', '44', 'Sharkey', '2021-07-05 19:28:06', NULL),
(1588, '2', '44', 'Lauderdale', '2021-07-05 19:28:06', NULL),
(1589, '2', '44', 'Forrest', '2021-07-05 19:28:06', NULL),
(1590, '2', '44', 'Noxubee', '2021-07-05 19:28:06', NULL),
(1591, '2', '44', 'Jones', '2021-07-05 19:28:06', NULL),
(1592, '2', '44', 'Lamar', '2021-07-05 19:28:07', NULL),
(1593, '2', '44', 'Lowndes', '2021-07-05 19:28:07', NULL),
(1594, '2', '44', 'Franklin', '2021-07-05 19:28:07', NULL),
(1595, '2', '44', 'Pearl River', '2021-07-05 19:28:07', NULL),
(1596, '2', '44', 'Lawrence', '2021-07-05 19:28:07', NULL),
(1597, '2', '44', 'Lafayette', '2021-07-05 19:28:07', NULL),
(1598, '2', '44', 'Oktibbeha', '2021-07-05 19:28:07', NULL),
(1599, '2', '44', 'Hancock', '2021-07-05 19:28:08', NULL),
(1600, '2', '44', 'Warren', '2021-07-05 19:28:08', NULL),
(1601, '2', '44', 'Washington', '2021-07-05 19:28:08', NULL),
(1602, '2', '44', 'Issaquena', '2021-07-05 19:28:08', NULL),
(1603, '2', '44', 'Pike', '2021-07-05 19:28:08', NULL),
(1604, '2', '44', 'Alcorn', '2021-07-05 19:28:08', NULL),
(1605, '2', '44', 'Yalobusha', '2021-07-05 19:28:08', NULL),
(1606, '2', '44', 'Monroe', '2021-07-05 19:28:08', NULL),
(1607, '2', '44', 'Marshall', '2021-07-05 19:28:08', NULL),
(1608, '2', '44', 'Lincoln', '2021-07-05 19:28:08', NULL),
(1609, '2', '44', 'Panola', '2021-07-05 19:28:09', NULL),
(1610, '2', '44', 'Greene', '2021-07-05 19:28:09', NULL),
(1611, '2', '44', 'Bolivar', '2021-07-05 19:28:09', NULL),
(1612, '2', '44', 'Pontotoc', '2021-07-05 19:28:09', NULL),
(1613, '2', '44', 'Adams', '2021-07-05 19:28:09', NULL),
(1614, '2', '44', 'Neshoba', '2021-07-05 19:28:09', NULL),
(1615, '2', '44', 'Leflore', '2021-07-05 19:28:09', NULL),
(1616, '2', '44', 'Yazoo', '2021-07-05 19:28:09', NULL),
(1617, '2', '44', 'Union', '2021-07-05 19:28:10', NULL),
(1618, '2', '44', 'Copiah', '2021-07-05 19:28:10', NULL),
(1619, '2', '44', 'Tate', '2021-07-05 19:28:10', NULL),
(1620, '2', '44', 'Scott', '2021-07-05 19:28:10', NULL),
(1621, '2', '44', 'Simpson', '2021-07-05 19:28:10', NULL),
(1622, '2', '44', 'Sunflower', '2021-07-05 19:28:10', NULL),
(1623, '2', '44', 'Prentiss', '2021-07-05 19:28:10', NULL),
(1624, '2', '44', 'Marion', '2021-07-05 19:28:11', NULL),
(1625, '2', '44', 'George', '2021-07-05 19:28:11', NULL),
(1626, '2', '44', 'Itawamba', '2021-07-05 19:28:11', NULL),
(1627, '2', '44', 'Coahoma', '2021-07-05 19:28:11', NULL),
(1628, '2', '44', 'Leake', '2021-07-05 19:28:11', NULL),
(1629, '2', '44', 'Tippah', '2021-07-05 19:28:11', NULL),
(1630, '2', '44', 'Newton', '2021-07-05 19:28:11', NULL),
(1631, '2', '44', 'Choctaw', '2021-07-05 19:28:11', NULL),
(1632, '2', '44', 'Carroll', '2021-07-05 19:28:12', NULL),
(1633, '2', '44', 'Grenada', '2021-07-05 19:28:12', NULL),
(1634, '2', '44', 'Montgomery', '2021-07-05 19:28:12', NULL),
(1635, '2', '44', 'Jasper', '2021-07-05 19:28:12', NULL),
(1636, '2', '44', 'Wayne', '2021-07-05 19:28:12', NULL),
(1637, '2', '44', 'Perry', '2021-07-05 19:28:12', NULL),
(1638, '2', '44', 'Tunica', '2021-07-05 19:28:12', NULL),
(1639, '2', '44', 'Clay', '2021-07-05 19:28:13', NULL),
(1640, '2', '44', 'Tishomingo', '2021-07-05 19:28:13', NULL),
(1641, '2', '44', 'Covington', '2021-07-05 19:28:13', NULL),
(1642, '2', '44', 'Webster', '2021-07-05 19:28:13', NULL),
(1643, '2', '44', 'Attala', '2021-07-05 19:28:13', NULL),
(1644, '2', '44', 'Stone', '2021-07-05 19:28:13', NULL),
(1645, '2', '44', 'Winston', '2021-07-05 19:28:13', NULL),
(1646, '2', '44', 'Benton', '2021-07-05 19:28:13', NULL),
(1647, '2', '44', 'Holmes', '2021-07-05 19:28:13', NULL),
(1648, '2', '44', 'Chickasaw', '2021-07-05 19:28:14', NULL),
(1649, '2', '44', 'Amite', '2021-07-05 19:28:14', NULL),
(1650, '2', '45', 'Sullivan', '2021-07-05 19:28:14', NULL),
(1651, '2', '45', 'St. Louis', '2021-07-05 19:28:14', NULL),
(1652, '2', '45', 'Jackson', '2021-07-05 19:28:14', NULL),
(1653, '2', '45', 'Clark', '2021-07-05 19:28:14', NULL),
(1654, '2', '45', 'St. Charles', '2021-07-05 19:28:14', '2021-07-05 19:32:28'),
(1655, '2', '45', 'Shelby', '2021-07-05 19:28:14', NULL),
(1656, '2', '45', 'St. Louis', '2021-07-05 19:28:15', NULL),
(1657, '2', '45', 'Greene', '2021-07-05 19:28:15', NULL),
(1658, '2', '45', 'Madison', '2021-07-05 19:28:15', NULL),
(1659, '2', '45', 'Clay', '2021-07-05 19:28:15', NULL),
(1660, '2', '45', 'Montgomery', '2021-07-05 19:28:15', NULL),
(1661, '2', '45', 'Jefferson', '2021-07-05 19:28:15', NULL),
(1662, '2', '45', 'Boone', '2021-07-05 19:28:15', NULL),
(1663, '2', '45', 'Oregon', '2021-07-05 19:28:16', NULL),
(1664, '2', '45', 'Harrison', '2021-07-05 19:28:16', NULL),
(1665, '2', '45', 'Jasper', '2021-07-05 19:28:16', NULL),
(1666, '2', '45', 'Barton', '2021-07-05 19:28:16', NULL),
(1667, '2', '45', 'Cass', '2021-07-05 19:28:16', NULL),
(1668, '2', '45', 'Franklin', '2021-07-05 19:28:16', NULL),
(1669, '2', '45', 'Platte', '2021-07-05 19:28:16', NULL),
(1670, '2', '45', 'Caldwell', '2021-07-05 19:28:17', NULL),
(1671, '2', '45', 'Buchanan', '2021-07-05 19:28:17', NULL),
(1672, '2', '45', 'Moniteau', '2021-07-05 19:28:17', NULL),
(1673, '2', '45', 'Christian', '2021-07-05 19:28:17', NULL),
(1674, '2', '45', 'Carter', '2021-07-05 19:28:17', NULL),
(1675, '2', '45', 'Osage', '2021-07-05 19:28:17', NULL),
(1676, '2', '45', 'Cape Girardeau', '2021-07-05 19:28:17', NULL),
(1677, '2', '45', 'Atchison', '2021-07-05 19:28:17', NULL),
(1678, '2', '45', 'Cole', '2021-07-05 19:28:18', NULL),
(1679, '2', '45', 'Maries', '2021-07-05 19:28:18', NULL),
(1680, '2', '45', 'Douglas', '2021-07-05 19:28:18', NULL),
(1681, '2', '45', 'St. Francois', '2021-07-05 19:28:18', NULL),
(1682, '2', '45', 'Worth', '2021-07-05 19:28:18', NULL),
(1683, '2', '45', 'Howard', '2021-07-05 19:28:18', NULL),
(1684, '2', '45', 'Newton', '2021-07-05 19:28:18', NULL),
(1685, '2', '45', 'Lincoln', '2021-07-05 19:28:19', NULL),
(1686, '2', '45', 'Taney', '2021-07-05 19:28:19', NULL),
(1687, '2', '45', 'Johnson', '2021-07-05 19:28:19', NULL),
(1688, '2', '45', 'Pulaski', '2021-07-05 19:28:19', NULL),
(1689, '2', '45', 'Dent', '2021-07-05 19:28:19', NULL),
(1690, '2', '45', 'Bollinger', '2021-07-05 19:28:19', NULL),
(1691, '2', '45', 'Dade', '2021-07-05 19:28:19', NULL),
(1692, '2', '45', 'Gentry', '2021-07-05 19:28:19', NULL),
(1693, '2', '45', 'Chariton', '2021-07-05 19:28:20', NULL),
(1694, '2', '45', 'Camden', '2021-07-05 19:28:20', NULL),
(1695, '2', '45', 'Callaway', '2021-07-05 19:28:20', NULL),
(1696, '2', '45', 'Bates', '2021-07-05 19:28:20', NULL),
(1697, '2', '45', 'Phelps', '2021-07-05 19:28:20', NULL),
(1698, '2', '45', 'Putnam', '2021-07-05 19:28:20', NULL),
(1699, '2', '45', 'Ozark', '2021-07-05 19:28:21', NULL),
(1700, '2', '45', 'Butler', '2021-07-05 19:28:21', NULL),
(1701, '2', '45', 'Pettis', '2021-07-05 19:28:21', NULL),
(1702, '2', '45', 'Cedar', '2021-07-05 19:28:21', NULL),
(1703, '2', '45', 'Howell', '2021-07-05 19:28:21', NULL),
(1704, '2', '45', 'Schuyler', '2021-07-05 19:28:21', NULL),
(1705, '2', '45', 'Webster', '2021-07-05 19:28:22', NULL),
(1706, '2', '45', 'Scott', '2021-07-05 19:28:22', NULL),
(1707, '2', '45', 'Lawrence', '2021-07-05 19:28:22', NULL),
(1708, '2', '45', 'Scotland', '2021-07-05 19:28:22', NULL),
(1709, '2', '45', 'Reynolds', '2021-07-05 19:28:22', NULL),
(1710, '2', '45', 'Laclede', '2021-07-05 19:28:22', NULL),
(1711, '2', '45', 'Barry', '2021-07-05 19:28:23', NULL),
(1712, '2', '45', 'Macon', '2021-07-05 19:28:23', NULL),
(1713, '2', '45', 'Holt', '2021-07-05 19:28:23', NULL),
(1714, '2', '45', 'Warren', '2021-07-05 19:28:23', NULL),
(1715, '2', '45', 'Lafayette', '2021-07-05 19:28:23', NULL),
(1716, '2', '45', 'Polk', '2021-07-05 19:28:23', NULL),
(1717, '2', '45', 'Linn', '2021-07-05 19:28:23', NULL),
(1718, '2', '45', 'Stone', '2021-07-05 19:28:24', NULL),
(1719, '2', '45', 'Mississippi', '2021-07-05 19:28:24', NULL),
(1720, '2', '45', 'Livingston', '2021-07-05 19:28:24', NULL),
(1721, '2', '45', 'Ripley', '2021-07-05 19:28:24', NULL),
(1722, '2', '45', 'Dallas', '2021-07-05 19:28:24', NULL),
(1723, '2', '45', 'Dunklin', '2021-07-05 19:28:24', NULL),
(1724, '2', '45', 'Stoddard', '2021-07-05 19:28:24', NULL),
(1725, '2', '45', 'Carroll', '2021-07-05 19:28:25', NULL),
(1726, '2', '45', 'Marion', '2021-07-05 19:28:25', NULL),
(1727, '2', '45', 'Audrain', '2021-07-05 19:28:25', NULL),
(1728, '2', '45', 'Texas', '2021-07-05 19:28:25', NULL),
(1729, '2', '45', 'Monroe', '2021-07-05 19:28:25', NULL),
(1730, '2', '45', 'Adair', '2021-07-05 19:28:25', NULL),
(1731, '2', '45', 'Miller', '2021-07-05 19:28:26', NULL),
(1732, '2', '45', 'Randolph', '2021-07-05 19:28:26', NULL),
(1733, '2', '45', 'Washington', '2021-07-05 19:28:26', NULL),
(1734, '2', '45', 'Wayne', '2021-07-05 19:28:26', NULL),
(1735, '2', '45', 'Crawford', '2021-07-05 19:28:26', NULL),
(1736, '2', '45', 'Mercer', '2021-07-05 19:28:26', NULL),
(1737, '2', '45', 'Knox', '2021-07-05 19:28:26', NULL),
(1738, '2', '45', 'Saline', '2021-07-05 19:28:26', NULL),
(1739, '2', '45', 'Ray', '2021-07-05 19:28:26', NULL),
(1740, '2', '45', 'McDonald', '2021-07-05 19:28:27', NULL),
(1741, '2', '45', 'Ralls', '2021-07-05 19:28:27', NULL),
(1742, '2', '45', 'Nodaway', '2021-07-05 19:28:27', NULL),
(1743, '2', '45', 'Iron', '2021-07-05 19:28:27', NULL),
(1744, '2', '45', 'Henry', '2021-07-05 19:28:27', NULL),
(1745, '2', '45', 'Vernon', '2021-07-05 19:28:27', NULL),
(1746, '2', '45', 'Clinton', '2021-07-05 19:28:27', NULL),
(1747, '2', '45', 'Grundy', '2021-07-05 19:28:27', NULL),
(1748, '2', '45', 'Morgan', '2021-07-05 19:28:27', NULL),
(1749, '2', '45', 'Lewis', '2021-07-05 19:28:28', NULL),
(1750, '2', '45', 'Daviess', '2021-07-05 19:28:28', NULL),
(1751, '2', '45', 'Perry', '2021-07-05 19:28:28', NULL),
(1752, '2', '45', 'Benton', '2021-07-05 19:28:28', NULL),
(1753, '2', '45', 'Pike', '2021-07-05 19:28:28', NULL),
(1754, '2', '45', 'Wright', '2021-07-05 19:28:28', NULL),
(1755, '2', '45', 'DeKalb', '2021-07-05 19:28:28', NULL),
(1756, '2', '45', 'Ste. Genevieve', '2021-07-05 19:28:28', NULL),
(1757, '2', '45', 'Shannon', '2021-07-05 19:28:28', NULL),
(1758, '2', '45', 'Cooper', '2021-07-05 19:28:29', NULL);
INSERT INTO `municipios` (`id`, `id_pais`, `id_estado`, `nombre`, `created_at`, `updated_at`) VALUES
(1759, '2', '45', 'New Madrid', '2021-07-05 19:28:29', NULL),
(1760, '2', '45', 'Andrew', '2021-07-05 19:28:29', NULL),
(1761, '2', '45', 'Hickory', '2021-07-05 19:28:29', NULL),
(1762, '2', '45', 'St. Clair', '2021-07-05 19:28:29', NULL),
(1763, '2', '45', 'Gasconade', '2021-07-05 19:28:29', NULL),
(1764, '2', '45', 'Pemiscot', '2021-07-05 19:28:29', NULL),
(1765, '2', '46', 'Beaverhead', '2021-07-05 19:28:29', NULL),
(1766, '2', '46', 'Rosebud', '2021-07-05 19:28:30', NULL),
(1767, '2', '46', 'Jefferson', '2021-07-05 19:28:30', NULL),
(1768, '2', '46', 'Chouteau', '2021-07-05 19:28:30', NULL),
(1769, '2', '46', 'Valley', '2021-07-05 19:28:30', NULL),
(1770, '2', '46', 'Roosevelt', '2021-07-05 19:28:30', NULL),
(1771, '2', '46', 'Broadwater', '2021-07-05 19:28:30', NULL),
(1772, '2', '46', 'Powell', '2021-07-05 19:28:30', NULL),
(1773, '2', '46', 'Teton', '2021-07-05 19:28:30', NULL),
(1774, '2', '46', 'Pondera', '2021-07-05 19:28:31', NULL),
(1775, '2', '46', 'Yellowstone', '2021-07-05 19:28:31', NULL),
(1776, '2', '46', 'Sweet Grass', '2021-07-05 19:28:31', NULL),
(1777, '2', '46', 'McCone', '2021-07-05 19:28:31', NULL),
(1778, '2', '46', 'Daniels', '2021-07-05 19:28:31', NULL),
(1779, '2', '46', 'Missoula', '2021-07-05 19:28:31', NULL),
(1780, '2', '46', 'Gallatin', '2021-07-05 19:28:31', NULL),
(1781, '2', '46', 'Flathead', '2021-07-05 19:28:31', NULL),
(1782, '2', '46', 'Fergus', '2021-07-05 19:28:32', NULL),
(1783, '2', '46', 'Dawson', '2021-07-05 19:28:32', NULL),
(1784, '2', '46', 'Glacier', '2021-07-05 19:28:32', NULL),
(1785, '2', '46', 'Blaine', '2021-07-05 19:28:32', NULL),
(1786, '2', '46', 'Cascade', '2021-07-05 19:28:32', NULL),
(1787, '2', '46', 'Golden Valley', '2021-07-05 19:28:32', NULL),
(1788, '2', '46', 'Liberty', '2021-07-05 19:28:32', NULL),
(1789, '2', '46', 'Phillips', '2021-07-05 19:28:32', NULL),
(1790, '2', '46', 'Lewis and Clark', '2021-07-05 19:28:32', NULL),
(1791, '2', '46', 'Carbon', '2021-07-05 19:28:33', NULL),
(1792, '2', '46', 'Judith Basin', '2021-07-05 19:28:33', NULL),
(1793, '2', '46', 'Powder River', '2021-07-05 19:28:33', NULL),
(1794, '2', '46', 'Granite', '2021-07-05 19:28:33', NULL),
(1795, '2', '46', 'Toole', '2021-07-05 19:28:33', NULL),
(1796, '2', '46', 'Hill', '2021-07-05 19:28:33', NULL),
(1797, '2', '46', 'Custer', '2021-07-05 19:28:33', NULL),
(1798, '2', '46', 'Prairie', '2021-07-05 19:28:33', NULL),
(1799, '2', '46', 'Park', '2021-07-05 19:28:34', NULL),
(1800, '2', '46', 'Ravalli', '2021-07-05 19:28:34', NULL),
(1801, '2', '46', 'Musselshell', '2021-07-05 19:28:34', NULL),
(1802, '2', '46', 'Sanders', '2021-07-05 19:28:34', NULL),
(1803, '2', '46', 'Fallon', '2021-07-05 19:28:34', NULL),
(1804, '2', '46', 'Carter', '2021-07-05 19:28:34', NULL),
(1805, '2', '46', 'Deer Lodge', '2021-07-05 19:28:34', NULL),
(1806, '2', '46', 'Richland', '2021-07-05 19:28:34', NULL),
(1807, '2', '46', 'Garfield', '2021-07-05 19:28:35', NULL),
(1808, '2', '46', 'Wibaux', '2021-07-05 19:28:35', NULL),
(1809, '2', '46', 'Silver Bow', '2021-07-05 19:28:35', NULL),
(1810, '2', '46', 'Mineral', '2021-07-05 19:28:35', NULL),
(1811, '2', '46', 'Lake', '2021-07-05 19:28:35', NULL),
(1812, '2', '46', 'Big Horn', '2021-07-05 19:28:35', NULL),
(1813, '2', '46', 'Petroleum', '2021-07-05 19:28:35', NULL),
(1814, '2', '46', 'Treasure', '2021-07-05 19:28:35', NULL),
(1815, '2', '46', 'Wheatland', '2021-07-05 19:28:35', NULL),
(1816, '2', '46', 'Meagher', '2021-07-05 19:28:36', NULL),
(1817, '2', '46', 'Madison', '2021-07-05 19:28:36', NULL),
(1818, '2', '46', 'Sheridan', '2021-07-05 19:28:36', NULL),
(1819, '2', '46', 'Lincoln', '2021-07-05 19:28:36', NULL),
(1820, '2', '46', 'Stillwater', '2021-07-05 19:28:36', NULL),
(1821, '2', '47', 'Custer', '2021-07-05 19:28:36', NULL),
(1822, '2', '47', 'Douglas', '2021-07-05 19:28:36', NULL),
(1823, '2', '47', 'Polk', '2021-07-05 19:28:37', NULL),
(1824, '2', '47', 'Banner', '2021-07-05 19:28:37', NULL),
(1825, '2', '47', 'Johnson', '2021-07-05 19:28:37', NULL),
(1826, '2', '47', 'Lancaster', '2021-07-05 19:28:37', NULL),
(1827, '2', '47', 'Cherry', '2021-07-05 19:28:37', NULL),
(1828, '2', '47', 'Burt', '2021-07-05 19:28:37', NULL),
(1829, '2', '47', 'Perkins', '2021-07-05 19:28:37', NULL),
(1830, '2', '47', 'Logan', '2021-07-05 19:28:37', NULL),
(1831, '2', '47', 'Jefferson', '2021-07-05 19:28:38', NULL),
(1832, '2', '47', 'Boone', '2021-07-05 19:28:38', NULL),
(1833, '2', '47', 'Sarpy', '2021-07-05 19:28:38', NULL),
(1834, '2', '47', 'Wheeler', '2021-07-05 19:28:38', NULL),
(1835, '2', '47', 'Grant', '2021-07-05 19:28:38', NULL),
(1836, '2', '47', 'Stanton', '2021-07-05 19:28:38', NULL),
(1837, '2', '47', 'Boyd', '2021-07-05 19:28:38', NULL),
(1838, '2', '47', 'Dixon', '2021-07-05 19:28:38', NULL),
(1839, '2', '47', 'Saline', '2021-07-05 19:28:39', NULL),
(1840, '2', '47', 'Butler', '2021-07-05 19:28:39', NULL),
(1841, '2', '47', 'Hamilton', '2021-07-05 19:28:39', NULL),
(1842, '2', '47', 'Fillmore', '2021-07-05 19:28:39', NULL),
(1843, '2', '47', 'Hitchcock', '2021-07-05 19:28:39', NULL),
(1844, '2', '47', 'Antelope', '2021-07-05 19:28:39', NULL),
(1845, '2', '47', 'Pawnee', '2021-07-05 19:28:39', NULL),
(1846, '2', '47', 'Clay', '2021-07-05 19:28:39', NULL),
(1847, '2', '47', 'Box Butte', '2021-07-05 19:28:40', NULL),
(1848, '2', '47', 'Nuckolls', '2021-07-05 19:28:40', NULL),
(1849, '2', '47', 'Pierce', '2021-07-05 19:28:40', NULL),
(1850, '2', '47', 'Otoe', '2021-07-05 19:28:40', NULL),
(1851, '2', '47', 'Thomas', '2021-07-05 19:28:40', NULL),
(1852, '2', '47', 'Blaine', '2021-07-05 19:28:40', NULL),
(1853, '2', '47', 'McPherson', '2021-07-05 19:28:40', NULL),
(1854, '2', '47', 'Garfield', '2021-07-05 19:28:40', NULL),
(1855, '2', '47', 'Hall', '2021-07-05 19:28:40', NULL),
(1856, '2', '47', 'Kimball', '2021-07-05 19:28:41', NULL),
(1857, '2', '47', 'Dundy', '2021-07-05 19:28:41', NULL),
(1858, '2', '47', 'Loup', '2021-07-05 19:28:41', NULL),
(1859, '2', '47', 'Garden', '2021-07-05 19:28:41', NULL),
(1860, '2', '47', 'Chase', '2021-07-05 19:28:41', NULL),
(1861, '2', '47', 'Keith', '2021-07-05 19:28:41', NULL),
(1862, '2', '47', 'Nance', '2021-07-05 19:28:41', NULL),
(1863, '2', '47', 'Webster', '2021-07-05 19:28:41', NULL),
(1864, '2', '47', 'Harlan', '2021-07-05 19:28:42', NULL),
(1865, '2', '47', 'Buffalo', '2021-07-05 19:28:42', NULL),
(1866, '2', '47', 'Wayne', '2021-07-05 19:28:42', NULL),
(1867, '2', '47', 'Morrill', '2021-07-05 19:28:42', NULL),
(1868, '2', '47', 'Rock', '2021-07-05 19:28:42', NULL),
(1869, '2', '47', 'Kearney', '2021-07-05 19:28:42', NULL),
(1870, '2', '47', 'Sherman', '2021-07-05 19:28:42', NULL),
(1871, '2', '47', 'Brown', '2021-07-05 19:28:42', NULL),
(1872, '2', '47', 'Franklin', '2021-07-05 19:28:43', NULL),
(1873, '2', '47', 'Furnas', '2021-07-05 19:28:43', NULL),
(1874, '2', '47', 'Howard', '2021-07-05 19:28:43', NULL),
(1875, '2', '47', 'Sioux', '2021-07-05 19:28:43', NULL),
(1876, '2', '47', 'Phelps', '2021-07-05 19:28:43', NULL),
(1877, '2', '47', 'Richardson', '2021-07-05 19:28:43', NULL),
(1878, '2', '47', 'Frontier', '2021-07-05 19:28:43', NULL),
(1879, '2', '47', 'Dodge', '2021-07-05 19:28:43', NULL),
(1880, '2', '47', 'Scotts Bluff', '2021-07-05 19:28:44', NULL),
(1881, '2', '47', 'Lincoln', '2021-07-05 19:28:44', NULL),
(1882, '2', '47', 'Madison', '2021-07-05 19:28:44', NULL),
(1883, '2', '47', 'York', '2021-07-05 19:28:44', NULL),
(1884, '2', '47', 'Cuming', '2021-07-05 19:28:44', NULL),
(1885, '2', '47', 'Platte', '2021-07-05 19:28:44', NULL),
(1886, '2', '47', 'Adams', '2021-07-05 19:28:44', NULL),
(1887, '2', '47', 'Thurston', '2021-07-05 19:28:44', NULL),
(1888, '2', '47', 'Sheridan', '2021-07-05 19:28:45', NULL),
(1889, '2', '47', 'Greeley', '2021-07-05 19:28:45', NULL),
(1890, '2', '47', 'Red Willow', '2021-07-05 19:28:45', NULL),
(1891, '2', '47', 'Dawes', '2021-07-05 19:28:45', NULL),
(1892, '2', '47', 'Valley', '2021-07-05 19:28:45', NULL),
(1893, '2', '47', 'Hooker', '2021-07-05 19:28:45', NULL),
(1894, '2', '47', 'Colfax', '2021-07-05 19:28:45', NULL),
(1895, '2', '47', 'Keya Paha', '2021-07-05 19:28:45', NULL),
(1896, '2', '47', 'Hayes', '2021-07-05 19:28:45', NULL),
(1897, '2', '47', 'Nemaha', '2021-07-05 19:28:45', NULL),
(1898, '2', '47', 'Cass', '2021-07-05 19:28:46', NULL),
(1899, '2', '47', 'Dawson', '2021-07-05 19:28:46', NULL),
(1900, '2', '47', 'Arthur', '2021-07-05 19:28:46', NULL),
(1901, '2', '47', 'Thayer', '2021-07-05 19:28:46', NULL),
(1902, '2', '47', 'Cedar', '2021-07-05 19:28:46', NULL),
(1903, '2', '47', 'Gosper', '2021-07-05 19:28:46', NULL),
(1904, '2', '47', 'Knox', '2021-07-05 19:28:46', NULL),
(1905, '2', '47', 'Merrick', '2021-07-05 19:28:46', NULL),
(1906, '2', '47', 'Gage', '2021-07-05 19:28:46', NULL),
(1907, '2', '47', 'Holt', '2021-07-05 19:28:47', NULL),
(1908, '2', '47', 'Saunders', '2021-07-05 19:28:47', NULL),
(1909, '2', '47', 'Washington', '2021-07-05 19:28:47', NULL),
(1910, '2', '47', 'Dakota', '2021-07-05 19:28:47', NULL),
(1911, '2', '47', 'Deuel', '2021-07-05 19:28:47', NULL),
(1912, '2', '47', 'Cheyenne', '2021-07-05 19:28:47', NULL),
(1913, '2', '47', 'Seward', '2021-07-05 19:28:47', NULL),
(1914, '2', '48', 'Clark', '2021-07-05 19:28:47', NULL),
(1915, '2', '48', 'Washoe', '2021-07-05 19:28:48', NULL),
(1916, '2', '48', 'Lander', '2021-07-05 19:28:48', NULL),
(1917, '2', '48', 'Lincoln', '2021-07-05 19:28:48', NULL),
(1918, '2', '48', 'Eureka', '2021-07-05 19:28:48', NULL),
(1919, '2', '48', 'Carson City', '2021-07-05 19:28:48', NULL),
(1920, '2', '48', 'Lyon', '2021-07-05 19:28:48', NULL),
(1921, '2', '48', 'Elko', '2021-07-05 19:28:48', NULL),
(1922, '2', '48', 'White Pine', '2021-07-05 19:28:48', NULL),
(1923, '2', '48', 'Douglas', '2021-07-05 19:28:49', NULL),
(1924, '2', '48', 'Pershing', '2021-07-05 19:28:49', NULL),
(1925, '2', '48', 'Nye', '2021-07-05 19:28:49', NULL),
(1926, '2', '48', 'Mineral', '2021-07-05 19:28:49', NULL),
(1927, '2', '48', 'Esmeralda', '2021-07-05 19:28:49', NULL),
(1928, '2', '48', 'Storey', '2021-07-05 19:28:49', NULL),
(1929, '2', '48', 'Churchill', '2021-07-05 19:28:49', NULL),
(1930, '2', '48', 'Humboldt', '2021-07-05 19:28:49', NULL),
(1931, '2', '49', 'Bergen', '2021-07-05 19:28:50', NULL),
(1932, '2', '49', 'Middlesex', '2021-07-05 19:28:50', NULL),
(1933, '2', '49', 'Essex', '2021-07-05 19:28:50', NULL),
(1934, '2', '49', 'Hudson', '2021-07-05 19:28:50', NULL),
(1935, '2', '49', 'Monmouth', '2021-07-05 19:28:50', NULL),
(1936, '2', '49', 'Ocean', '2021-07-05 19:28:50', NULL),
(1937, '2', '49', 'Union', '2021-07-05 19:28:50', NULL),
(1938, '2', '49', 'Camden', '2021-07-05 19:28:50', NULL),
(1939, '2', '49', 'Passaic', '2021-07-05 19:28:51', NULL),
(1940, '2', '49', 'Morris', '2021-07-05 19:28:51', NULL),
(1941, '2', '49', 'Burlington', '2021-07-05 19:28:51', NULL),
(1942, '2', '49', 'Mercer', '2021-07-05 19:28:51', NULL),
(1943, '2', '49', 'Somerset', '2021-07-05 19:28:51', NULL),
(1944, '2', '49', 'Gloucester', '2021-07-05 19:28:51', NULL),
(1945, '2', '49', 'Atlantic', '2021-07-05 19:28:52', NULL),
(1946, '2', '49', 'Cumberland', '2021-07-05 19:28:52', NULL),
(1947, '2', '49', 'Sussex', '2021-07-05 19:28:52', NULL),
(1948, '2', '49', 'Hunterdon', '2021-07-05 19:28:52', NULL),
(1949, '2', '49', 'Warren', '2021-07-05 19:28:52', NULL),
(1950, '2', '49', 'Cape May', '2021-07-05 19:28:52', NULL),
(1951, '2', '49', 'Salem', '2021-07-05 19:28:52', NULL),
(1952, '2', '50', 'Kings', '2021-07-05 19:28:52', NULL),
(1953, '2', '50', 'Queens', '2021-07-05 19:28:53', NULL),
(1954, '2', '50', 'New York', '2021-07-05 19:28:53', NULL),
(1955, '2', '50', 'Suffolk', '2021-07-05 19:28:53', NULL),
(1956, '2', '50', 'Bronx', '2021-07-05 19:28:53', NULL),
(1957, '2', '50', 'Nassau', '2021-07-05 19:28:53', NULL),
(1958, '2', '50', 'Westchester', '2021-07-05 19:28:53', NULL),
(1959, '2', '50', 'Erie', '2021-07-05 19:28:53', NULL),
(1960, '2', '50', 'Monroe', '2021-07-05 19:28:53', NULL),
(1961, '2', '50', 'Richmond', '2021-07-05 19:28:54', NULL),
(1962, '2', '50', 'Onondaga', '2021-07-05 19:28:54', NULL),
(1963, '2', '50', 'Orange', '2021-07-05 19:28:54', NULL),
(1964, '2', '50', 'Rockland', '2021-07-05 19:28:54', NULL),
(1965, '2', '50', 'Albany', '2021-07-05 19:28:54', NULL),
(1966, '2', '50', 'Dutchess', '2021-07-05 19:28:54', NULL),
(1967, '2', '50', 'Oneida', '2021-07-05 19:28:54', NULL),
(1968, '2', '50', 'Saratoga', '2021-07-05 19:28:55', NULL),
(1969, '2', '50', 'Hamilton', '2021-07-05 19:28:55', NULL),
(1970, '2', '50', 'Niagara', '2021-07-05 19:28:55', NULL),
(1971, '2', '50', 'Broome', '2021-07-05 19:28:55', NULL),
(1972, '2', '50', 'Ulster', '2021-07-05 19:28:55', NULL),
(1973, '2', '50', 'Rensselaer', '2021-07-05 19:28:55', NULL),
(1974, '2', '50', 'Schenectady', '2021-07-05 19:28:55', NULL),
(1975, '2', '50', 'Chautauqua', '2021-07-05 19:28:55', NULL),
(1976, '2', '50', 'Oswego', '2021-07-05 19:28:56', NULL),
(1977, '2', '50', 'Jefferson', '2021-07-05 19:28:56', NULL),
(1978, '2', '50', 'Ontario', '2021-07-05 19:28:56', NULL),
(1979, '2', '50', 'St. Lawrence', '2021-07-05 19:28:56', NULL),
(1980, '2', '50', 'Tompkins', '2021-07-05 19:28:56', NULL),
(1981, '2', '50', 'Putnam', '2021-07-05 19:28:56', NULL),
(1982, '2', '50', 'Steuben', '2021-07-05 19:28:56', NULL),
(1983, '2', '50', 'Wayne', '2021-07-05 19:28:56', NULL),
(1984, '2', '50', 'Chemung', '2021-07-05 19:28:57', NULL),
(1985, '2', '50', 'Clinton', '2021-07-05 19:28:57', NULL),
(1986, '2', '50', 'Cayuga', '2021-07-05 19:28:57', NULL),
(1987, '2', '50', 'Cattaraugus', '2021-07-05 19:28:57', NULL),
(1988, '2', '50', 'Sullivan', '2021-07-05 19:28:57', NULL),
(1989, '2', '50', 'Madison', '2021-07-05 19:28:57', NULL),
(1990, '2', '50', 'Warren', '2021-07-05 19:28:57', NULL),
(1991, '2', '50', 'Livingston', '2021-07-05 19:28:57', NULL),
(1992, '2', '50', 'Herkimer', '2021-07-05 19:28:57', NULL),
(1993, '2', '50', 'Washington', '2021-07-05 19:28:58', NULL),
(1994, '2', '50', 'Columbia', '2021-07-05 19:28:58', NULL),
(1995, '2', '50', 'Otsego', '2021-07-05 19:28:58', NULL),
(1996, '2', '50', 'Genesee', '2021-07-05 19:28:58', NULL),
(1997, '2', '50', 'Fulton', '2021-07-05 19:28:58', NULL),
(1998, '2', '50', 'Franklin', '2021-07-05 19:28:58', NULL),
(1999, '2', '50', 'Montgomery', '2021-07-05 19:28:58', NULL),
(2000, '2', '50', 'Tioga', '2021-07-05 19:28:58', NULL),
(2001, '2', '50', 'Chenango', '2021-07-05 19:28:59', NULL),
(2002, '2', '50', 'Cortland', '2021-07-05 19:28:59', NULL),
(2003, '2', '50', 'Greene', '2021-07-05 19:28:59', NULL),
(2004, '2', '50', 'Allegany', '2021-07-05 19:28:59', NULL),
(2005, '2', '50', 'Delaware', '2021-07-05 19:28:59', NULL),
(2006, '2', '50', 'Orleans', '2021-07-05 19:28:59', NULL),
(2007, '2', '50', 'Wyoming', '2021-07-05 19:29:00', NULL),
(2008, '2', '50', 'Essex', '2021-07-05 19:29:00', NULL),
(2009, '2', '50', 'Seneca', '2021-07-05 19:29:00', NULL),
(2010, '2', '50', 'Schoharie', '2021-07-05 19:29:00', NULL),
(2011, '2', '50', 'Lewis', '2021-07-05 19:29:00', NULL),
(2012, '2', '50', 'Yates', '2021-07-05 19:29:00', NULL),
(2013, '2', '50', 'Schuyler', '2021-07-05 19:29:01', NULL),
(2014, '2', '51', 'Hillsborough', '2021-07-05 19:29:01', NULL),
(2015, '2', '51', 'Rockingham', '2021-07-05 19:29:01', NULL),
(2016, '2', '51', 'Merrimack', '2021-07-05 19:29:01', NULL),
(2017, '2', '51', 'Strafford', '2021-07-05 19:29:01', NULL),
(2018, '2', '51', 'Grafton', '2021-07-05 19:29:01', NULL),
(2019, '2', '51', 'Cheshire', '2021-07-05 19:29:01', NULL),
(2020, '2', '51', 'Belknap', '2021-07-05 19:29:02', NULL),
(2021, '2', '51', 'Carroll', '2021-07-05 19:29:02', NULL),
(2022, '2', '51', 'Sullivan', '2021-07-05 19:29:02', NULL),
(2023, '2', '51', 'Coos', '2021-07-05 19:29:02', NULL),
(2024, '2', '52', 'Colfax', '2021-07-05 19:29:02', NULL),
(2025, '2', '52', 'Quay', '2021-07-05 19:29:02', NULL),
(2026, '2', '52', 'Guadalupe', '2021-07-05 19:29:03', NULL),
(2027, '2', '52', 'Bernalillo', '2021-07-05 19:29:03', NULL),
(2028, '2', '52', 'Dona Ana', '2021-07-05 19:29:03', NULL),
(2029, '2', '52', 'De Baca', '2021-07-05 19:29:03', NULL),
(2030, '2', '52', 'Santa Fe', '2021-07-05 19:29:03', NULL),
(2031, '2', '52', 'Sandoval', '2021-07-05 19:29:03', NULL),
(2032, '2', '52', 'Catron', '2021-07-05 19:29:03', NULL),
(2033, '2', '52', 'San Juan', '2021-07-05 19:29:04', NULL),
(2034, '2', '52', 'Sierra', '2021-07-05 19:29:04', NULL),
(2035, '2', '52', 'Hidalgo', '2021-07-05 19:29:04', NULL),
(2036, '2', '52', 'Valencia', '2021-07-05 19:29:04', NULL),
(2037, '2', '52', 'McKinley', '2021-07-05 19:29:04', NULL),
(2038, '2', '52', 'Union', '2021-07-05 19:29:05', NULL),
(2039, '2', '52', 'Lea', '2021-07-05 19:29:05', NULL),
(2040, '2', '52', 'Otero', '2021-07-05 19:29:05', NULL),
(2041, '2', '52', 'Chaves', '2021-07-05 19:29:05', NULL),
(2042, '2', '52', 'Eddy', '2021-07-05 19:29:05', NULL),
(2043, '2', '52', 'Curry', '2021-07-05 19:29:05', NULL),
(2044, '2', '52', 'Rio Arriba', '2021-07-05 19:29:05', NULL),
(2045, '2', '52', 'Mora', '2021-07-05 19:29:05', NULL),
(2046, '2', '52', 'Taos', '2021-07-05 19:29:05', NULL),
(2047, '2', '52', 'San Miguel', '2021-07-05 19:29:06', NULL),
(2048, '2', '52', 'Grant', '2021-07-05 19:29:06', NULL),
(2049, '2', '52', 'Harding', '2021-07-05 19:29:06', NULL),
(2050, '2', '52', 'Cibola', '2021-07-05 19:29:06', NULL),
(2051, '2', '52', 'Luna', '2021-07-05 19:29:06', NULL),
(2052, '2', '52', 'Torrance', '2021-07-05 19:29:06', NULL),
(2053, '2', '52', 'Lincoln', '2021-07-05 19:29:06', NULL),
(2054, '2', '52', 'Roosevelt', '2021-07-05 19:29:06', NULL),
(2055, '2', '52', 'Los Alamos', '2021-07-05 19:29:06', NULL),
(2056, '2', '52', 'Socorro', '2021-07-05 19:29:07', NULL),
(2057, '2', '22', 'Mecklenburg', '2021-07-05 19:29:07', NULL),
(2058, '2', '22', 'Wake', '2021-07-05 19:29:07', NULL),
(2059, '2', '22', 'Guilford', '2021-07-05 19:29:07', NULL),
(2060, '2', '22', 'Forsyth', '2021-07-05 19:29:07', NULL),
(2061, '2', '22', 'Tyrrell', '2021-07-05 19:29:07', NULL),
(2062, '2', '22', 'Cumberland', '2021-07-05 19:29:08', NULL),
(2063, '2', '22', 'Durham', '2021-07-05 19:29:08', NULL),
(2064, '2', '22', 'Buncombe', '2021-07-05 19:29:08', NULL),
(2065, '2', '22', 'Union', '2021-07-05 19:29:08', NULL),
(2066, '2', '22', 'New Hanover', '2021-07-05 19:29:08', NULL),
(2067, '2', '22', 'Gaston', '2021-07-05 19:29:08', NULL),
(2068, '2', '22', 'Cabarrus', '2021-07-05 19:29:09', NULL),
(2069, '2', '22', 'Johnston', '2021-07-05 19:29:09', NULL),
(2070, '2', '22', 'Onslow', '2021-07-05 19:29:09', NULL),
(2071, '2', '22', 'Pitt', '2021-07-05 19:29:09', NULL),
(2072, '2', '22', 'Iredell', '2021-07-05 19:29:09', NULL),
(2073, '2', '22', 'Graham', '2021-07-05 19:29:09', NULL),
(2074, '2', '22', 'Davidson', '2021-07-05 19:29:10', NULL),
(2075, '2', '22', 'Alamance', '2021-07-05 19:29:10', NULL),
(2076, '2', '22', 'Camden', '2021-07-05 19:29:10', NULL),
(2077, '2', '22', 'Catawba', '2021-07-05 19:29:10', NULL),
(2078, '2', '22', 'Orange', '2021-07-05 19:29:10', NULL),
(2079, '2', '22', 'Randolph', '2021-07-05 19:29:10', NULL),
(2080, '2', '22', 'Rowan', '2021-07-05 19:29:10', NULL),
(2081, '2', '22', 'Robeson', '2021-07-05 19:29:11', NULL),
(2082, '2', '22', 'Harnett', '2021-07-05 19:29:11', NULL),
(2083, '2', '22', 'Brunswick', '2021-07-05 19:29:11', NULL),
(2084, '2', '22', 'Washington', '2021-07-05 19:29:11', NULL),
(2085, '2', '22', 'Wayne', '2021-07-05 19:29:11', NULL),
(2086, '2', '22', 'Henderson', '2021-07-05 19:29:11', NULL),
(2087, '2', '22', 'Chowan', '2021-07-05 19:29:11', NULL),
(2088, '2', '22', 'Craven', '2021-07-05 19:29:11', NULL),
(2089, '2', '22', 'Moore', '2021-07-05 19:29:12', NULL),
(2090, '2', '22', 'Cleveland', '2021-07-05 19:29:12', NULL),
(2091, '2', '22', 'Nash', '2021-07-05 19:29:12', NULL),
(2092, '2', '22', 'Rockingham', '2021-07-05 19:29:12', NULL),
(2093, '2', '22', 'Burke', '2021-07-05 19:29:12', NULL),
(2094, '2', '22', 'Clay', '2021-07-05 19:29:12', NULL),
(2095, '2', '22', 'Lincoln', '2021-07-05 19:29:12', NULL),
(2096, '2', '22', 'Caldwell', '2021-07-05 19:29:12', NULL),
(2097, '2', '22', 'Wilson', '2021-07-05 19:29:13', NULL),
(2098, '2', '22', 'Surry', '2021-07-05 19:29:13', NULL),
(2099, '2', '22', 'Chatham', '2021-07-05 19:29:13', NULL),
(2100, '2', '22', 'Carteret', '2021-07-05 19:29:13', NULL),
(2101, '2', '22', 'Wilkes', '2021-07-05 19:29:13', NULL),
(2102, '2', '22', 'Rutherford', '2021-07-05 19:29:13', NULL),
(2103, '2', '22', 'Franklin', '2021-07-05 19:29:13', NULL),
(2104, '2', '22', 'Sampson', '2021-07-05 19:29:13', NULL),
(2105, '2', '22', 'Stanly', '2021-07-05 19:29:13', NULL),
(2106, '2', '22', 'Haywood', '2021-07-05 19:29:13', NULL),
(2107, '2', '22', 'Lee', '2021-07-05 19:29:14', NULL),
(2108, '2', '22', 'Pender', '2021-07-05 19:29:14', NULL),
(2109, '2', '22', 'Granville', '2021-07-05 19:29:14', NULL),
(2110, '2', '22', 'Duplin', '2021-07-05 19:29:14', NULL),
(2111, '2', '22', 'Lenoir', '2021-07-05 19:29:14', NULL),
(2112, '2', '22', 'Columbus', '2021-07-05 19:29:14', NULL),
(2113, '2', '22', 'Watauga', '2021-07-05 19:29:14', NULL),
(2114, '2', '22', 'Hoke', '2021-07-05 19:29:14', NULL),
(2115, '2', '22', 'Edgecombe', '2021-07-05 19:29:14', NULL),
(2116, '2', '22', 'Jones', '2021-07-05 19:29:15', NULL),
(2117, '2', '22', 'Halifax', '2021-07-05 19:29:15', NULL),
(2118, '2', '22', 'Swain', '2021-07-05 19:29:15', NULL),
(2119, '2', '22', 'Beaufort', '2021-07-05 19:29:15', NULL),
(2120, '2', '22', 'Stokes', '2021-07-05 19:29:15', NULL),
(2121, '2', '22', 'McDowell', '2021-07-05 19:29:15', NULL),
(2122, '2', '22', 'Richmond', '2021-07-05 19:29:15', NULL),
(2123, '2', '22', 'Vance', '2021-07-05 19:29:15', NULL),
(2124, '2', '22', 'Jackson', '2021-07-05 19:29:15', NULL),
(2125, '2', '22', 'Davie', '2021-07-05 19:29:15', NULL),
(2126, '2', '22', 'Gates', '2021-07-05 19:29:16', NULL),
(2127, '2', '22', 'Pasquotank', '2021-07-05 19:29:16', NULL),
(2128, '2', '22', 'Person', '2021-07-05 19:29:16', NULL),
(2129, '2', '22', 'Yadkin', '2021-07-05 19:29:16', NULL),
(2130, '2', '22', 'Alexander', '2021-07-05 19:29:16', NULL),
(2131, '2', '22', 'Dare', '2021-07-05 19:29:16', NULL),
(2132, '2', '22', 'Scotland', '2021-07-05 19:29:16', NULL),
(2133, '2', '22', 'Macon', '2021-07-05 19:29:16', NULL),
(2134, '2', '22', 'Alleghany', '2021-07-05 19:29:16', NULL),
(2135, '2', '22', 'Transylvania', '2021-07-05 19:29:16', NULL),
(2136, '2', '22', 'Bladen', '2021-07-05 19:29:17', NULL),
(2137, '2', '22', 'Perquimans', '2021-07-05 19:29:17', NULL),
(2138, '2', '22', 'Cherokee', '2021-07-05 19:29:17', NULL),
(2139, '2', '22', 'Montgomery', '2021-07-05 19:29:17', NULL),
(2140, '2', '22', 'Ashe', '2021-07-05 19:29:17', NULL),
(2141, '2', '22', 'Mitchell', '2021-07-05 19:29:17', NULL),
(2142, '2', '22', 'Currituck', '2021-07-05 19:29:17', NULL),
(2143, '2', '22', 'Hyde', '2021-07-05 19:29:17', NULL),
(2144, '2', '22', 'Anson', '2021-07-05 19:29:17', NULL),
(2145, '2', '22', 'Hertford', '2021-07-05 19:29:18', NULL),
(2146, '2', '22', 'Martin', '2021-07-05 19:29:18', NULL),
(2147, '2', '22', 'Caswell', '2021-07-05 19:29:18', NULL),
(2148, '2', '22', 'Madison', '2021-07-05 19:29:18', NULL),
(2149, '2', '22', 'Greene', '2021-07-05 19:29:18', NULL),
(2150, '2', '22', 'Polk', '2021-07-05 19:29:18', NULL),
(2151, '2', '22', 'Northampton', '2021-07-05 19:29:18', NULL),
(2152, '2', '22', 'Warren', '2021-07-05 19:29:18', NULL),
(2153, '2', '22', 'Pamlico', '2021-07-05 19:29:18', NULL),
(2154, '2', '22', 'Bertie', '2021-07-05 19:29:18', NULL),
(2155, '2', '22', 'Yancey', '2021-07-05 19:29:19', NULL),
(2156, '2', '22', 'Avery', '2021-07-05 19:29:19', NULL),
(2157, '2', '23', 'Greenville', '2021-07-05 19:29:19', NULL),
(2158, '2', '23', 'Richland', '2021-07-05 19:29:19', NULL),
(2159, '2', '23', 'Charleston', '2021-07-05 19:29:19', NULL),
(2160, '2', '23', 'Horry', '2021-07-05 19:29:19', NULL),
(2161, '2', '23', 'Spartanburg', '2021-07-05 19:29:19', NULL),
(2162, '2', '23', 'Lexington', '2021-07-05 19:29:19', NULL),
(2163, '2', '23', 'York', '2021-07-05 19:29:19', NULL),
(2164, '2', '23', 'Berkeley', '2021-07-05 19:29:20', NULL),
(2165, '2', '23', 'Anderson', '2021-07-05 19:29:20', NULL),
(2166, '2', '23', 'Beaufort', '2021-07-05 19:29:20', NULL),
(2167, '2', '23', 'Aiken', '2021-07-05 19:29:20', NULL),
(2168, '2', '23', 'Dorchester', '2021-07-05 19:29:20', NULL),
(2169, '2', '23', 'Florence', '2021-07-05 19:29:20', NULL),
(2170, '2', '23', 'Pickens', '2021-07-05 19:29:20', NULL),
(2171, '2', '23', 'Sumter', '2021-07-05 19:29:20', NULL),
(2172, '2', '23', 'Lancaster', '2021-07-05 19:29:21', NULL),
(2173, '2', '23', 'Orangeburg', '2021-07-05 19:29:21', NULL),
(2174, '2', '23', 'Oconee', '2021-07-05 19:29:21', NULL),
(2175, '2', '23', 'Greenwood', '2021-07-05 19:29:21', NULL),
(2176, '2', '23', 'Darlington', '2021-07-05 19:29:21', NULL),
(2177, '2', '23', 'Laurens', '2021-07-05 19:29:21', NULL),
(2178, '2', '23', 'Kershaw', '2021-07-05 19:29:21', NULL),
(2179, '2', '23', 'Georgetown', '2021-07-05 19:29:22', NULL),
(2180, '2', '23', 'Cherokee', '2021-07-05 19:29:22', NULL),
(2181, '2', '23', 'Chesterfield', '2021-07-05 19:29:22', NULL),
(2182, '2', '23', 'Newberry', '2021-07-05 19:29:22', NULL),
(2183, '2', '23', 'Colleton', '2021-07-05 19:29:22', NULL),
(2184, '2', '23', 'Clarendon', '2021-07-05 19:29:22', NULL),
(2185, '2', '23', 'Chester', '2021-07-05 19:29:22', NULL),
(2186, '2', '23', 'Williamsburg', '2021-07-05 19:29:22', NULL),
(2187, '2', '23', 'Marion', '2021-07-05 19:29:22', NULL),
(2188, '2', '23', 'Dillon', '2021-07-05 19:29:23', NULL),
(2189, '2', '23', 'Jasper', '2021-07-05 19:29:23', NULL),
(2190, '2', '23', 'Union', '2021-07-05 19:29:23', NULL),
(2191, '2', '23', 'Edgefield', '2021-07-05 19:29:23', NULL),
(2192, '2', '23', 'Marlboro', '2021-07-05 19:29:23', NULL),
(2193, '2', '23', 'Abbeville', '2021-07-05 19:29:23', NULL),
(2194, '2', '23', 'Fairfield', '2021-07-05 19:29:23', NULL),
(2195, '2', '23', 'Barnwell', '2021-07-05 19:29:23', NULL),
(2196, '2', '23', 'Saluda', '2021-07-05 19:29:23', NULL),
(2197, '2', '23', 'Hampton', '2021-07-05 19:29:24', NULL),
(2198, '2', '23', 'Lee', '2021-07-05 19:29:24', NULL),
(2199, '2', '23', 'Calhoun', '2021-07-05 19:29:24', NULL),
(2200, '2', '23', 'Bamberg', '2021-07-05 19:29:24', NULL),
(2201, '2', '23', 'McCormick', '2021-07-05 19:29:24', NULL),
(2202, '2', '23', 'Allendale', '2021-07-05 19:29:24', NULL),
(2203, '2', '26', 'Pembina', '2021-07-05 19:29:24', NULL),
(2204, '2', '26', 'Golden Valley', '2021-07-05 19:29:24', NULL),
(2205, '2', '26', 'Wells', '2021-07-05 19:29:25', NULL),
(2206, '2', '26', 'Mercer', '2021-07-05 19:29:25', NULL),
(2207, '2', '26', 'McLean', '2021-07-05 19:29:25', NULL),
(2208, '2', '26', 'Oliver', '2021-07-05 19:29:25', NULL),
(2209, '2', '26', 'Steele', '2021-07-05 19:29:25', NULL),
(2210, '2', '26', 'Dickey', '2021-07-05 19:29:25', NULL),
(2211, '2', '26', 'Sargent', '2021-07-05 19:29:25', NULL),
(2212, '2', '26', 'Stutsman', '2021-07-05 19:29:26', NULL),
(2213, '2', '26', 'Golden Valley', '2021-07-05 19:29:26', NULL),
(2214, '2', '26', 'Renville', '2021-07-05 19:29:26', NULL),
(2215, '2', '26', 'Steele', '2021-07-05 19:29:26', NULL),
(2216, '2', '26', 'Stutsman', '2021-07-05 19:29:26', NULL),
(2217, '2', '26', 'Eddy', '2021-07-05 19:29:26', NULL),
(2218, '2', '26', 'Kidder', '2021-07-05 19:29:26', NULL),
(2219, '2', '26', 'Sheridan', '2021-07-05 19:29:26', NULL),
(2220, '2', '26', 'Richland', '2021-07-05 19:29:26', NULL),
(2221, '2', '26', 'Towner', '2021-07-05 19:29:27', NULL),
(2222, '2', '26', 'Rolette', '2021-07-05 19:29:27', NULL),
(2223, '2', '26', 'Burke', '2021-07-05 19:29:27', NULL),
(2224, '2', '26', 'McKenzie', '2021-07-05 19:29:27', NULL),
(2225, '2', '26', 'Griggs', '2021-07-05 19:29:27', NULL),
(2226, '2', '26', 'Ramsey', '2021-07-05 19:29:27', NULL),
(2227, '2', '26', 'Walsh', '2021-07-05 19:29:27', NULL),
(2228, '2', '26', 'Barnes', '2021-07-05 19:29:27', NULL),
(2229, '2', '26', 'Mountrail', '2021-07-05 19:29:27', NULL),
(2230, '2', '26', 'Billings', '2021-07-05 19:29:28', NULL),
(2231, '2', '26', 'McLean', '2021-07-05 19:29:28', NULL),
(2232, '2', '26', 'Divide', '2021-07-05 19:29:28', NULL),
(2233, '2', '26', 'Mercer', '2021-07-05 19:29:28', NULL),
(2234, '2', '26', 'Traill', '2021-07-05 19:29:28', NULL),
(2235, '2', '26', 'Slope', '2021-07-05 19:29:28', NULL),
(2236, '2', '26', 'Pembina', '2021-07-05 19:29:28', NULL),
(2237, '2', '26', 'Benson', '2021-07-05 19:29:28', NULL),
(2238, '2', '26', 'Bottineau', '2021-07-05 19:29:28', NULL),
(2239, '2', '26', 'McHenry', '2021-07-05 19:29:29', NULL),
(2240, '2', '26', 'Ransom', '2021-07-05 19:29:29', NULL),
(2241, '2', '26', 'Dickey', '2021-07-05 19:29:29', NULL),
(2242, '2', '26', 'Dunn', '2021-07-05 19:29:29', NULL),
(2243, '2', '26', 'Sioux', '2021-07-05 19:29:29', NULL),
(2244, '2', '26', 'Logan', '2021-07-05 19:29:29', NULL),
(2245, '2', '26', 'Pierce', '2021-07-05 19:29:29', NULL),
(2246, '2', '26', 'LaMoure', '2021-07-05 19:29:29', NULL),
(2247, '2', '26', 'Wells', '2021-07-05 19:29:30', NULL),
(2248, '2', '26', 'Sargent', '2021-07-05 19:29:30', NULL),
(2249, '2', '26', 'Cavalier', '2021-07-05 19:29:30', NULL),
(2250, '2', '26', 'Emmons', '2021-07-05 19:29:30', NULL),
(2251, '2', '26', 'Foster', '2021-07-05 19:29:30', NULL),
(2252, '2', '26', 'Bowman', '2021-07-05 19:29:31', NULL),
(2253, '2', '26', 'Nelson', '2021-07-05 19:29:31', NULL),
(2254, '2', '26', 'McIntosh', '2021-07-05 19:29:31', NULL),
(2255, '2', '26', 'Hettinger', '2021-07-05 19:29:31', NULL),
(2256, '2', '27', 'Minnehaha', '2021-07-05 19:29:31', NULL),
(2257, '2', '27', 'Pennington', '2021-07-05 19:29:31', NULL),
(2258, '2', '27', 'Harding', '2021-07-05 19:29:31', NULL),
(2259, '2', '27', 'Hyde', '2021-07-05 19:29:32', NULL),
(2260, '2', '27', 'Lincoln', '2021-07-05 19:29:32', NULL),
(2261, '2', '27', 'Mellette', '2021-07-05 19:29:32', NULL),
(2262, '2', '27', 'Brown', '2021-07-05 19:29:32', NULL),
(2263, '2', '27', 'Potter', '2021-07-05 19:29:32', NULL),
(2264, '2', '27', 'Buffalo', '2021-07-05 19:29:32', NULL),
(2265, '2', '27', 'Haakon', '2021-07-05 19:29:33', NULL),
(2266, '2', '27', 'Jones', '2021-07-05 19:29:33', NULL),
(2267, '2', '27', 'Brookings', '2021-07-05 19:29:33', NULL),
(2268, '2', '27', 'Codington', '2021-07-05 19:29:33', NULL),
(2269, '2', '27', 'Meade', '2021-07-05 19:29:33', NULL),
(2270, '2', '27', 'Lawrence', '2021-07-05 19:29:33', NULL),
(2271, '2', '27', 'McPherson', '2021-07-05 19:29:34', NULL),
(2272, '2', '27', 'Yankton', '2021-07-05 19:29:34', NULL),
(2273, '2', '27', 'Campbell', '2021-07-05 19:29:34', NULL),
(2274, '2', '27', 'Davison', '2021-07-05 19:29:34', NULL),
(2275, '2', '27', 'Beadle', '2021-07-05 19:29:34', NULL),
(2276, '2', '27', 'Hughes', '2021-07-05 19:29:34', NULL),
(2277, '2', '27', 'Sully', '2021-07-05 19:29:34', NULL),
(2278, '2', '27', 'Union', '2021-07-05 19:29:35', NULL),
(2279, '2', '27', 'Miner', '2021-07-05 19:29:35', NULL),
(2280, '2', '27', 'Oglala Lakota', '2021-07-05 19:29:35', NULL),
(2281, '2', '27', 'Clay', '2021-07-05 19:29:35', NULL),
(2282, '2', '27', 'Sanborn', '2021-07-05 19:29:35', NULL),
(2283, '2', '27', 'Lake', '2021-07-05 19:29:35', NULL),
(2284, '2', '27', 'Roberts', '2021-07-05 19:29:36', NULL),
(2285, '2', '27', 'Butte', '2021-07-05 19:29:36', NULL),
(2286, '2', '27', 'Todd', '2021-07-05 19:29:36', NULL),
(2287, '2', '27', 'Charles Mix', '2021-07-05 19:29:36', NULL),
(2288, '2', '27', 'Jerauld', '2021-07-05 19:29:36', NULL),
(2289, '2', '27', 'Custer', '2021-07-05 19:29:36', NULL),
(2290, '2', '27', 'Turner', '2021-07-05 19:29:36', NULL),
(2291, '2', '27', 'Faulk', '2021-07-05 19:29:37', NULL),
(2292, '2', '27', 'Hutchinson', '2021-07-05 19:29:37', NULL),
(2293, '2', '27', 'Grant', '2021-07-05 19:29:37', NULL),
(2294, '2', '27', 'Bon Homme', '2021-07-05 19:29:37', NULL),
(2295, '2', '27', 'Fall River', '2021-07-05 19:29:37', NULL),
(2296, '2', '27', 'Moody', '2021-07-05 19:29:37', NULL),
(2297, '2', '27', 'Spink', '2021-07-05 19:29:38', NULL),
(2298, '2', '27', 'Hamlin', '2021-07-05 19:29:38', NULL),
(2299, '2', '27', 'Dewey', '2021-07-05 19:29:38', NULL),
(2300, '2', '27', 'McCook', '2021-07-05 19:29:38', NULL),
(2301, '2', '27', 'Day', '2021-07-05 19:29:38', NULL),
(2302, '2', '27', 'Tripp', '2021-07-05 19:29:38', NULL),
(2303, '2', '27', 'Walworth', '2021-07-05 19:29:38', NULL),
(2304, '2', '27', 'Brule', '2021-07-05 19:29:39', NULL),
(2305, '2', '27', 'Kingsbury', '2021-07-05 19:29:39', NULL),
(2306, '2', '27', 'Marshall', '2021-07-05 19:29:39', NULL),
(2307, '2', '27', 'Deuel', '2021-07-05 19:29:39', NULL),
(2308, '2', '27', 'Gregory', '2021-07-05 19:29:39', NULL),
(2309, '2', '27', 'Corson', '2021-07-05 19:29:39', NULL),
(2310, '2', '27', 'Edmunds', '2021-07-05 19:29:40', NULL),
(2311, '2', '27', 'Lyman', '2021-07-05 19:29:40', NULL),
(2312, '2', '27', 'Clark', '2021-07-05 19:29:40', NULL),
(2313, '2', '27', 'Bennett', '2021-07-05 19:29:40', NULL),
(2314, '2', '27', 'Hanson', '2021-07-05 19:29:40', NULL),
(2315, '2', '27', 'Jackson', '2021-07-05 19:29:40', NULL),
(2316, '2', '27', 'Hand', '2021-07-05 19:29:40', NULL),
(2317, '2', '27', 'Stanley', '2021-07-05 19:29:41', NULL),
(2318, '2', '27', 'Douglas', '2021-07-05 19:29:41', NULL),
(2319, '2', '27', 'Perkins', '2021-07-05 19:29:41', NULL),
(2320, '2', '27', 'Ziebach', '2021-07-05 19:29:41', NULL),
(2321, '2', '27', 'Aurora', '2021-07-05 19:29:41', NULL),
(2322, '2', '53', 'Franklin', '2021-07-05 19:29:41', NULL),
(2323, '2', '53', 'Cuyahoga', '2021-07-05 19:29:41', NULL),
(2324, '2', '53', 'Hamilton', '2021-07-05 19:29:42', NULL),
(2325, '2', '53', 'Summit', '2021-07-05 19:29:42', NULL),
(2326, '2', '53', 'Montgomery', '2021-07-05 19:29:42', NULL),
(2327, '2', '53', 'Lucas', '2021-07-05 19:29:42', NULL),
(2328, '2', '53', 'Butler', '2021-07-05 19:29:42', NULL),
(2329, '2', '53', 'Stark', '2021-07-05 19:29:42', NULL),
(2330, '2', '53', 'Lorain', '2021-07-05 19:29:42', NULL),
(2331, '2', '53', 'Mahoning', '2021-07-05 19:29:42', NULL),
(2332, '2', '53', 'Lake', '2021-07-05 19:29:43', NULL),
(2333, '2', '53', 'Warren', '2021-07-05 19:29:43', NULL),
(2334, '2', '53', 'Clermont', '2021-07-05 19:29:43', NULL),
(2335, '2', '53', 'Delaware', '2021-07-05 19:29:43', NULL),
(2336, '2', '53', 'Trumbull', '2021-07-05 19:29:43', NULL),
(2337, '2', '53', 'Medina', '2021-07-05 19:29:43', NULL),
(2338, '2', '53', 'Licking', '2021-07-05 19:29:43', NULL),
(2339, '2', '53', 'Greene', '2021-07-05 19:29:43', NULL),
(2340, '2', '53', 'Portage', '2021-07-05 19:29:43', NULL),
(2341, '2', '53', 'Fairfield', '2021-07-05 19:29:44', NULL),
(2342, '2', '53', 'Clark', '2021-07-05 19:29:44', NULL),
(2343, '2', '53', 'Wood', '2021-07-05 19:29:44', NULL),
(2344, '2', '53', 'Richland', '2021-07-05 19:29:44', NULL),
(2345, '2', '53', 'Wayne', '2021-07-05 19:29:44', NULL),
(2346, '2', '53', 'Miami', '2021-07-05 19:29:44', NULL),
(2347, '2', '53', 'Columbiana', '2021-07-05 19:29:44', NULL),
(2348, '2', '53', 'Allen', '2021-07-05 19:29:45', NULL),
(2349, '2', '53', 'Ashtabula', '2021-07-05 19:29:45', NULL),
(2350, '2', '53', 'Geauga', '2021-07-05 19:29:45', NULL),
(2351, '2', '53', 'Tuscarawas', '2021-07-05 19:29:45', NULL),
(2352, '2', '53', 'Muskingum', '2021-07-05 19:29:45', NULL),
(2353, '2', '53', 'Ross', '2021-07-05 19:29:45', NULL),
(2354, '2', '53', 'Scioto', '2021-07-05 19:29:45', NULL),
(2355, '2', '53', 'Hancock', '2021-07-05 19:29:45', NULL),
(2356, '2', '53', 'Erie', '2021-07-05 19:29:46', NULL),
(2357, '2', '53', 'Belmont', '2021-07-05 19:29:46', NULL),
(2358, '2', '53', 'Jefferson', '2021-07-05 19:29:46', NULL),
(2359, '2', '53', 'Athens', '2021-07-05 19:29:46', NULL),
(2360, '2', '53', 'Marion', '2021-07-05 19:29:46', NULL),
(2361, '2', '53', 'Knox', '2021-07-05 19:29:46', NULL),
(2362, '2', '53', 'Washington', '2021-07-05 19:29:46', NULL),
(2363, '2', '53', 'Lawrence', '2021-07-05 19:29:46', NULL),
(2364, '2', '53', 'Sandusky', '2021-07-05 19:29:46', NULL),
(2365, '2', '53', 'Huron', '2021-07-05 19:29:47', NULL),
(2366, '2', '53', 'Pickaway', '2021-07-05 19:29:47', NULL),
(2367, '2', '53', 'Union', '2021-07-05 19:29:47', NULL),
(2368, '2', '53', 'Seneca', '2021-07-05 19:29:47', NULL),
(2369, '2', '53', 'Ashland', '2021-07-05 19:29:47', NULL),
(2370, '2', '53', 'Darke', '2021-07-05 19:29:47', NULL),
(2371, '2', '53', 'Shelby', '2021-07-05 19:29:47', NULL),
(2372, '2', '53', 'Auglaize', '2021-07-05 19:29:47', NULL),
(2373, '2', '53', 'Logan', '2021-07-05 19:29:47', NULL),
(2374, '2', '53', 'Madison', '2021-07-05 19:29:48', NULL),
(2375, '2', '53', 'Holmes', '2021-07-05 19:29:48', NULL),
(2376, '2', '53', 'Brown', '2021-07-05 19:29:48', NULL),
(2377, '2', '53', 'Highland', '2021-07-05 19:29:48', NULL),
(2378, '2', '53', 'Fulton', '2021-07-05 19:29:48', NULL),
(2379, '2', '53', 'Clinton', '2021-07-05 19:29:48', NULL),
(2380, '2', '53', 'Crawford', '2021-07-05 19:29:48', NULL),
(2381, '2', '53', 'Preble', '2021-07-05 19:29:48', NULL),
(2382, '2', '53', 'Mercer', '2021-07-05 19:29:48', NULL),
(2383, '2', '53', 'Ottawa', '2021-07-05 19:29:49', NULL),
(2384, '2', '53', 'Guernsey', '2021-07-05 19:29:49', NULL),
(2385, '2', '53', 'Champaign', '2021-07-05 19:29:49', NULL),
(2386, '2', '53', 'Defiance', '2021-07-05 19:29:49', NULL),
(2387, '2', '53', 'Williams', '2021-07-05 19:29:49', NULL),
(2388, '2', '53', 'Coshocton', '2021-07-05 19:29:49', NULL),
(2389, '2', '53', 'Perry', '2021-07-05 19:29:49', NULL),
(2390, '2', '53', 'Morrow', '2021-07-05 19:29:49', NULL),
(2391, '2', '53', 'Putnam', '2021-07-05 19:29:49', NULL),
(2392, '2', '53', 'Jackson', '2021-07-05 19:29:50', NULL),
(2393, '2', '53', 'Hardin', '2021-07-05 19:29:50', NULL),
(2394, '2', '53', 'Gallia', '2021-07-05 19:29:50', NULL),
(2395, '2', '53', 'Fayette', '2021-07-05 19:29:50', NULL),
(2396, '2', '53', 'Hocking', '2021-07-05 19:29:50', NULL),
(2397, '2', '53', 'Van Wert', '2021-07-05 19:29:50', NULL),
(2398, '2', '53', 'Pike', '2021-07-05 19:29:50', NULL),
(2399, '2', '53', 'Adams', '2021-07-05 19:29:50', NULL),
(2400, '2', '53', 'Carroll', '2021-07-05 19:29:51', NULL),
(2401, '2', '53', 'Henry', '2021-07-05 19:29:51', NULL),
(2402, '2', '53', 'Meigs', '2021-07-05 19:29:51', NULL),
(2403, '2', '53', 'Wyandot', '2021-07-05 19:29:51', NULL),
(2404, '2', '53', 'Paulding', '2021-07-05 19:29:51', NULL),
(2405, '2', '53', 'Harrison', '2021-07-05 19:29:51', NULL),
(2406, '2', '53', 'Morgan', '2021-07-05 19:29:51', NULL),
(2407, '2', '53', 'Noble', '2021-07-05 19:29:52', NULL),
(2408, '2', '53', 'Monroe', '2021-07-05 19:29:52', NULL),
(2409, '2', '53', 'Vinton', '2021-07-05 19:29:52', NULL),
(2410, '2', '54', 'Oklahoma', '2021-07-05 19:29:52', NULL),
(2411, '2', '54', 'Tulsa', '2021-07-05 19:29:52', NULL),
(2412, '2', '54', 'Cleveland', '2021-07-05 19:29:52', NULL),
(2413, '2', '54', 'Canadian', '2021-07-05 19:29:52', NULL),
(2414, '2', '54', 'Comanche', '2021-07-05 19:29:52', NULL),
(2415, '2', '54', 'Cimarron', '2021-07-05 19:29:53', NULL),
(2416, '2', '54', 'Rogers', '2021-07-05 19:29:53', NULL),
(2417, '2', '54', 'Payne', '2021-07-05 19:29:53', NULL),
(2418, '2', '54', 'Wagoner', '2021-07-05 19:29:53', NULL),
(2419, '2', '54', 'Pottawatomie', '2021-07-05 19:29:53', NULL),
(2420, '2', '54', 'Creek', '2021-07-05 19:29:53', NULL),
(2421, '2', '54', 'Muskogee', '2021-07-05 19:29:53', NULL),
(2422, '2', '54', 'Garfield', '2021-07-05 19:29:53', NULL),
(2423, '2', '54', 'Grady', '2021-07-05 19:29:54', NULL),
(2424, '2', '54', 'Washington', '2021-07-05 19:29:54', NULL),
(2425, '2', '54', 'Le Flore', '2021-07-05 19:29:54', NULL),
(2426, '2', '54', 'Cherokee', '2021-07-05 19:29:54', NULL),
(2427, '2', '54', 'Carter', '2021-07-05 19:29:54', NULL),
(2428, '2', '54', 'Osage', '2021-07-05 19:29:54', NULL),
(2429, '2', '54', 'Logan', '2021-07-05 19:29:54', NULL),
(2430, '2', '54', 'Bryan', '2021-07-05 19:29:55', NULL),
(2431, '2', '54', 'Kay', '2021-07-05 19:29:55', NULL),
(2432, '2', '54', 'Pittsburg', '2021-07-05 19:29:55', NULL),
(2433, '2', '54', 'Stephens', '2021-07-05 19:29:55', NULL),
(2434, '2', '54', 'Delaware', '2021-07-05 19:29:55', NULL),
(2435, '2', '54', 'Sequoyah', '2021-07-05 19:29:56', NULL),
(2436, '2', '54', 'Mayes', '2021-07-05 19:29:56', NULL),
(2437, '2', '54', 'McClain', '2021-07-05 19:29:56', NULL),
(2438, '2', '54', 'Okmulgee', '2021-07-05 19:29:56', NULL),
(2439, '2', '54', 'Pontotoc', '2021-07-05 19:29:56', NULL),
(2440, '2', '54', 'Lincoln', '2021-07-05 19:29:56', NULL),
(2441, '2', '54', 'McCurtain', '2021-07-05 19:29:56', NULL),
(2442, '2', '54', 'Ottawa', '2021-07-05 19:29:57', NULL),
(2443, '2', '54', 'Caddo', '2021-07-05 19:29:57', NULL),
(2444, '2', '54', 'Custer', '2021-07-05 19:29:57', NULL),
(2445, '2', '54', 'Garvin', '2021-07-05 19:29:57', NULL),
(2446, '2', '54', 'Jackson', '2021-07-05 19:29:57', NULL),
(2447, '2', '54', 'Seminole', '2021-07-05 19:29:58', NULL),
(2448, '2', '54', 'Beckham', '2021-07-05 19:29:58', NULL),
(2449, '2', '54', 'Adair', '2021-07-05 19:29:58', NULL),
(2450, '2', '54', 'Texas', '2021-07-05 19:29:58', NULL),
(2451, '2', '54', 'Woodward', '2021-07-05 19:29:58', NULL),
(2452, '2', '54', 'McIntosh', '2021-07-05 19:29:58', NULL),
(2453, '2', '54', 'Marshall', '2021-07-05 19:29:58', NULL),
(2454, '2', '54', 'Pawnee', '2021-07-05 19:29:58', NULL),
(2455, '2', '54', 'Kingfisher', '2021-07-05 19:29:59', NULL),
(2456, '2', '54', 'Choctaw', '2021-07-05 19:29:59', NULL),
(2457, '2', '54', 'Craig', '2021-07-05 19:29:59', NULL),
(2458, '2', '54', 'Murray', '2021-07-05 19:29:59', NULL),
(2459, '2', '54', 'Atoka', '2021-07-05 19:29:59', NULL),
(2460, '2', '54', 'Hughes', '2021-07-05 19:29:59', NULL),
(2461, '2', '54', 'Haskell', '2021-07-05 19:29:59', NULL),
(2462, '2', '54', 'Okfuskee', '2021-07-05 19:29:59', NULL),
(2463, '2', '54', 'Noble', '2021-07-05 19:29:59', NULL),
(2464, '2', '54', 'Washita', '2021-07-05 19:30:00', NULL),
(2465, '2', '54', 'Pushmataha', '2021-07-05 19:30:00', NULL),
(2466, '2', '54', 'Johnston', '2021-07-05 19:30:00', NULL),
(2467, '2', '54', 'Latimer', '2021-07-05 19:30:00', NULL),
(2468, '2', '54', 'Nowata', '2021-07-05 19:30:00', NULL),
(2469, '2', '54', 'Love', '2021-07-05 19:30:00', NULL),
(2470, '2', '54', 'Blaine', '2021-07-05 19:30:00', NULL),
(2471, '2', '54', 'Woods', '2021-07-05 19:30:00', NULL),
(2472, '2', '54', 'Kiowa', '2021-07-05 19:30:00', NULL),
(2473, '2', '54', 'Major', '2021-07-05 19:30:01', NULL),
(2474, '2', '54', 'Tillman', '2021-07-05 19:30:01', NULL),
(2475, '2', '54', 'Jefferson', '2021-07-05 19:30:01', NULL),
(2476, '2', '54', 'Greer', '2021-07-05 19:30:01', NULL),
(2477, '2', '54', 'Cotton', '2021-07-05 19:30:01', NULL),
(2478, '2', '54', 'Alfalfa', '2021-07-05 19:30:01', NULL),
(2479, '2', '54', 'Coal', '2021-07-05 19:30:01', NULL),
(2480, '2', '54', 'Beaver', '2021-07-05 19:30:01', NULL),
(2481, '2', '54', 'Dewey', '2021-07-05 19:30:02', NULL),
(2482, '2', '54', 'Grant', '2021-07-05 19:30:02', NULL),
(2483, '2', '54', 'Ellis', '2021-07-05 19:30:02', NULL),
(2484, '2', '54', 'Harper', '2021-07-05 19:30:02', NULL),
(2485, '2', '54', 'Roger Mills', '2021-07-05 19:30:02', NULL),
(2486, '2', '54', 'Harmon', '2021-07-05 19:30:02', NULL),
(2487, '2', '55', 'Multnomah', '2021-07-05 19:30:02', NULL),
(2488, '2', '55', 'Washington', '2021-07-05 19:30:02', NULL),
(2489, '2', '55', 'Clackamas', '2021-07-05 19:30:03', NULL),
(2490, '2', '55', 'Sherman', '2021-07-05 19:30:03', NULL),
(2491, '2', '55', 'Lane', '2021-07-05 19:30:03', NULL),
(2492, '2', '55', 'Marion', '2021-07-05 19:30:03', NULL),
(2493, '2', '55', 'Jackson', '2021-07-05 19:30:03', NULL),
(2494, '2', '55', 'Deschutes', '2021-07-05 19:30:03', NULL),
(2495, '2', '55', 'Linn', '2021-07-05 19:30:03', NULL),
(2496, '2', '55', 'Douglas', '2021-07-05 19:30:03', NULL),
(2497, '2', '55', 'Yamhill', '2021-07-05 19:30:03', NULL),
(2498, '2', '55', 'Benton', '2021-07-05 19:30:03', NULL),
(2499, '2', '55', 'Gilliam', '2021-07-05 19:30:04', NULL),
(2500, '2', '55', 'Josephine', '2021-07-05 19:30:04', NULL),
(2501, '2', '55', 'Polk', '2021-07-05 19:30:04', NULL),
(2502, '2', '55', 'Umatilla', '2021-07-05 19:30:04', NULL),
(2503, '2', '55', 'Klamath', '2021-07-05 19:30:04', NULL),
(2504, '2', '55', 'Coos', '2021-07-05 19:30:04', NULL),
(2505, '2', '55', 'Columbia', '2021-07-05 19:30:04', NULL),
(2506, '2', '55', 'Wheeler', '2021-07-05 19:30:04', NULL),
(2507, '2', '55', 'Lincoln', '2021-07-05 19:30:05', NULL),
(2508, '2', '55', 'Clatsop', '2021-07-05 19:30:05', NULL),
(2509, '2', '55', 'Malheur', '2021-07-05 19:30:05', NULL),
(2510, '2', '55', 'Tillamook', '2021-07-05 19:30:05', NULL),
(2511, '2', '55', 'Union', '2021-07-05 19:30:05', NULL),
(2512, '2', '55', 'Wasco', '2021-07-05 19:30:05', NULL),
(2513, '2', '55', 'Jefferson', '2021-07-05 19:30:05', NULL),
(2514, '2', '55', 'Hood River', '2021-07-05 19:30:05', NULL),
(2515, '2', '55', 'Crook', '2021-07-05 19:30:06', NULL),
(2516, '2', '55', 'Curry', '2021-07-05 19:30:06', NULL),
(2517, '2', '55', 'Baker', '2021-07-05 19:30:06', NULL),
(2518, '2', '55', 'Morrow', '2021-07-05 19:30:06', NULL),
(2519, '2', '55', 'Lake', '2021-07-05 19:30:06', NULL),
(2520, '2', '55', 'Harney', '2021-07-05 19:30:06', NULL),
(2521, '2', '55', 'Grant', '2021-07-05 19:30:07', NULL),
(2522, '2', '55', 'Wallowa', '2021-07-05 19:30:07', NULL),
(2523, '2', '56', 'Philadelphia', '2021-07-05 19:30:07', NULL),
(2524, '2', '56', 'Allegheny', '2021-07-05 19:30:07', NULL),
(2525, '2', '56', 'Montgomery', '2021-07-05 19:30:07', NULL),
(2526, '2', '56', 'Bucks', '2021-07-05 19:30:07', NULL),
(2527, '2', '56', 'Delaware', '2021-07-05 19:30:07', NULL),
(2528, '2', '56', 'Lancaster', '2021-07-05 19:30:08', NULL),
(2529, '2', '56', 'Chester', '2021-07-05 19:30:08', NULL),
(2530, '2', '56', 'York', '2021-07-05 19:30:08', NULL),
(2531, '2', '56', 'Berks', '2021-07-05 19:30:08', NULL),
(2532, '2', '56', 'Lehigh', '2021-07-05 19:30:08', NULL),
(2533, '2', '56', 'Westmoreland', '2021-07-05 19:30:09', NULL),
(2534, '2', '56', 'Luzerne', '2021-07-05 19:30:09', NULL),
(2535, '2', '56', 'Northampton', '2021-07-05 19:30:09', NULL),
(2536, '2', '56', 'Dauphin', '2021-07-05 19:30:09', NULL),
(2537, '2', '56', 'Erie', '2021-07-05 19:30:09', NULL),
(2538, '2', '56', 'Cumberland', '2021-07-05 19:30:09', NULL),
(2539, '2', '56', 'Lackawanna', '2021-07-05 19:30:10', NULL),
(2540, '2', '56', 'Washington', '2021-07-05 19:30:10', NULL),
(2541, '2', '56', 'Butler', '2021-07-05 19:30:10', NULL),
(2542, '2', '56', 'Monroe', '2021-07-05 19:30:10', NULL),
(2543, '2', '56', 'Beaver', '2021-07-05 19:30:10', NULL),
(2544, '2', '56', 'Centre', '2021-07-05 19:30:11', NULL),
(2545, '2', '56', 'Franklin', '2021-07-05 19:30:11', NULL),
(2546, '2', '56', 'Schuylkill', '2021-07-05 19:30:11', NULL),
(2547, '2', '56', 'Lebanon', '2021-07-05 19:30:11', NULL),
(2548, '2', '56', 'Cambria', '2021-07-05 19:30:11', NULL),
(2549, '2', '56', 'Fayette', '2021-07-05 19:30:11', NULL),
(2550, '2', '56', 'Blair', '2021-07-05 19:30:11', NULL),
(2551, '2', '56', 'Lycoming', '2021-07-05 19:30:11', NULL),
(2552, '2', '56', 'Mercer', '2021-07-05 19:30:11', NULL),
(2553, '2', '56', 'Adams', '2021-07-05 19:30:11', NULL),
(2554, '2', '56', 'Northumberland', '2021-07-05 19:30:12', NULL),
(2555, '2', '56', 'Lawrence', '2021-07-05 19:30:12', NULL),
(2556, '2', '56', 'Crawford', '2021-07-05 19:30:12', NULL),
(2557, '2', '56', 'Indiana', '2021-07-05 19:30:12', NULL),
(2558, '2', '56', 'Clearfield', '2021-07-05 19:30:12', NULL),
(2559, '2', '56', 'Somerset', '2021-07-05 19:30:12', NULL),
(2560, '2', '56', 'Armstrong', '2021-07-05 19:30:12', NULL),
(2561, '2', '56', 'Columbia', '2021-07-05 19:30:12', NULL),
(2562, '2', '56', 'Carbon', '2021-07-05 19:30:12', NULL),
(2563, '2', '56', 'Bradford', '2021-07-05 19:30:13', NULL),
(2564, '2', '56', 'Pike', '2021-07-05 19:30:13', NULL),
(2565, '2', '56', 'Venango', '2021-07-05 19:30:13', NULL),
(2566, '2', '56', 'Wayne', '2021-07-05 19:30:13', NULL),
(2567, '2', '56', 'Bedford', '2021-07-05 19:30:13', NULL),
(2568, '2', '56', 'Mifflin', '2021-07-05 19:30:13', NULL),
(2569, '2', '56', 'Perry', '2021-07-05 19:30:13', NULL),
(2570, '2', '56', 'Huntingdon', '2021-07-05 19:30:13', NULL),
(2571, '2', '56', 'Union', '2021-07-05 19:30:13', NULL),
(2572, '2', '56', 'Jefferson', '2021-07-05 19:30:14', NULL),
(2573, '2', '56', 'McKean', '2021-07-05 19:30:14', NULL),
(2574, '2', '56', 'Susquehanna', '2021-07-05 19:30:14', NULL),
(2575, '2', '56', 'Tioga', '2021-07-05 19:30:14', NULL),
(2576, '2', '56', 'Snyder', '2021-07-05 19:30:14', NULL),
(2577, '2', '56', 'Warren', '2021-07-05 19:30:14', NULL),
(2578, '2', '56', 'Clinton', '2021-07-05 19:30:14', NULL),
(2579, '2', '56', 'Clarion', '2021-07-05 19:30:14', NULL),
(2580, '2', '56', 'Greene', '2021-07-05 19:30:14', NULL),
(2581, '2', '56', 'Elk', '2021-07-05 19:30:15', NULL),
(2582, '2', '56', 'Wyoming', '2021-07-05 19:30:15', NULL),
(2583, '2', '56', 'Juniata', '2021-07-05 19:30:15', NULL),
(2584, '2', '56', 'Montour', '2021-07-05 19:30:15', NULL),
(2585, '2', '56', 'Potter', '2021-07-05 19:30:15', NULL),
(2586, '2', '56', 'Fulton', '2021-07-05 19:30:15', NULL),
(2587, '2', '56', 'Forest', '2021-07-05 19:30:15', NULL),
(2588, '2', '56', 'Sullivan', '2021-07-05 19:30:15', NULL),
(2589, '2', '56', 'Cameron', '2021-07-05 19:30:15', NULL),
(2590, '2', '57', 'Providence', '2021-07-05 19:30:15', NULL),
(2591, '2', '57', 'Kent', '2021-07-05 19:30:16', NULL),
(2592, '2', '57', 'Washington', '2021-07-05 19:30:16', NULL),
(2593, '2', '57', 'Newport', '2021-07-05 19:30:16', NULL),
(2594, '2', '57', 'Bristol', '2021-07-05 19:30:16', NULL),
(2595, '2', '58', 'Shelby', '2021-07-05 19:30:16', NULL),
(2596, '2', '58', 'Davidson', '2021-07-05 19:30:16', NULL),
(2597, '2', '58', 'Knox', '2021-07-05 19:30:16', NULL),
(2598, '2', '58', 'Hamilton', '2021-07-05 19:30:16', NULL),
(2599, '2', '58', 'Rutherford', '2021-07-05 19:30:17', NULL),
(2600, '2', '58', 'Williamson', '2021-07-05 19:30:17', NULL),
(2601, '2', '58', 'Montgomery', '2021-07-05 19:30:17', NULL),
(2602, '2', '58', 'Sumner', '2021-07-05 19:30:17', NULL),
(2603, '2', '58', 'Sullivan', '2021-07-05 19:30:17', NULL),
(2604, '2', '58', 'Wilson', '2021-07-05 19:30:17', NULL),
(2605, '2', '58', 'Blount', '2021-07-05 19:30:17', NULL),
(2606, '2', '58', 'Washington', '2021-07-05 19:30:18', NULL),
(2607, '2', '58', 'Bradley', '2021-07-05 19:30:18', NULL),
(2608, '2', '58', 'Madison', '2021-07-05 19:30:18', NULL),
(2609, '2', '58', 'Sevier', '2021-07-05 19:30:18', NULL),
(2610, '2', '58', 'Maury', '2021-07-05 19:30:18', NULL),
(2611, '2', '58', 'Putnam', '2021-07-05 19:30:18', NULL),
(2612, '2', '58', 'Anderson', '2021-07-05 19:30:18', NULL),
(2613, '2', '58', 'Robertson', '2021-07-05 19:30:18', NULL),
(2614, '2', '58', 'Greene', '2021-07-05 19:30:19', NULL),
(2615, '2', '58', 'Hamblen', '2021-07-05 19:30:19', NULL),
(2616, '2', '58', 'Tipton', '2021-07-05 19:30:19', NULL),
(2617, '2', '58', 'Cumberland', '2021-07-05 19:30:19', NULL),
(2618, '2', '58', 'Hawkins', '2021-07-05 19:30:19', NULL),
(2619, '2', '58', 'Carter', '2021-07-05 19:30:19', NULL),
(2620, '2', '58', 'Coffee', '2021-07-05 19:30:19', NULL),
(2621, '2', '58', 'Jefferson', '2021-07-05 19:30:19', NULL),
(2622, '2', '58', 'Roane', '2021-07-05 19:30:19', NULL),
(2623, '2', '58', 'McMinn', '2021-07-05 19:30:20', NULL),
(2624, '2', '58', 'Dickson', '2021-07-05 19:30:20', NULL),
(2625, '2', '58', 'Loudon', '2021-07-05 19:30:20', NULL),
(2626, '2', '58', 'Gibson', '2021-07-05 19:30:20', NULL),
(2627, '2', '58', 'Bedford', '2021-07-05 19:30:20', NULL),
(2628, '2', '58', 'Monroe', '2021-07-05 19:30:20', NULL),
(2629, '2', '58', 'Lawrence', '2021-07-05 19:30:20', NULL),
(2630, '2', '58', 'Franklin', '2021-07-05 19:30:20', NULL),
(2631, '2', '58', 'Warren', '2021-07-05 19:30:21', NULL),
(2632, '2', '58', 'Cheatham', '2021-07-05 19:30:21', NULL),
(2633, '2', '58', 'Fayette', '2021-07-05 19:30:21', NULL),
(2634, '2', '58', 'Campbell', '2021-07-05 19:30:21', NULL);
INSERT INTO `municipios` (`id`, `id_pais`, `id_estado`, `nombre`, `created_at`, `updated_at`) VALUES
(2635, '2', '58', 'Dyer', '2021-07-05 19:30:21', NULL),
(2636, '2', '58', 'Cocke', '2021-07-05 19:30:21', NULL),
(2637, '2', '58', 'Lincoln', '2021-07-05 19:30:22', NULL),
(2638, '2', '58', 'Weakley', '2021-07-05 19:30:22', NULL),
(2639, '2', '58', 'Marshall', '2021-07-05 19:30:22', NULL),
(2640, '2', '58', 'Rhea', '2021-07-05 19:30:22', NULL),
(2641, '2', '58', 'Henry', '2021-07-05 19:30:22', NULL),
(2642, '2', '58', 'Claiborne', '2021-07-05 19:30:22', NULL),
(2643, '2', '58', 'Obion', '2021-07-05 19:30:23', NULL),
(2644, '2', '58', 'Giles', '2021-07-05 19:30:23', NULL),
(2645, '2', '58', 'Marion', '2021-07-05 19:30:23', NULL),
(2646, '2', '58', 'Henderson', '2021-07-05 19:30:23', NULL),
(2647, '2', '58', 'Carroll', '2021-07-05 19:30:23', NULL),
(2648, '2', '58', 'White', '2021-07-05 19:30:23', NULL),
(2649, '2', '58', 'Lauderdale', '2021-07-05 19:30:23', NULL),
(2650, '2', '58', 'McNairy', '2021-07-05 19:30:23', NULL),
(2651, '2', '58', 'Hardin', '2021-07-05 19:30:24', NULL),
(2652, '2', '58', 'Hardeman', '2021-07-05 19:30:24', NULL),
(2653, '2', '58', 'Hickman', '2021-07-05 19:30:24', NULL),
(2654, '2', '58', 'Macon', '2021-07-05 19:30:24', NULL),
(2655, '2', '58', 'Grainger', '2021-07-05 19:30:24', NULL),
(2656, '2', '58', 'Overton', '2021-07-05 19:30:24', NULL),
(2657, '2', '58', 'Scott', '2021-07-05 19:30:24', NULL),
(2658, '2', '58', 'Morgan', '2021-07-05 19:30:24', NULL),
(2659, '2', '58', 'DeKalb', '2021-07-05 19:30:25', NULL),
(2660, '2', '58', 'Smith', '2021-07-05 19:30:25', NULL),
(2661, '2', '58', 'Union', '2021-07-05 19:30:25', NULL),
(2662, '2', '58', 'Humphreys', '2021-07-05 19:30:25', NULL),
(2663, '2', '58', 'Fentress', '2021-07-05 19:30:25', NULL),
(2664, '2', '58', 'Unicoi', '2021-07-05 19:30:25', NULL),
(2665, '2', '58', 'Johnson', '2021-07-05 19:30:25', NULL),
(2666, '2', '58', 'Haywood', '2021-07-05 19:30:25', NULL),
(2667, '2', '58', 'Chester', '2021-07-05 19:30:25', NULL),
(2668, '2', '58', 'Polk', '2021-07-05 19:30:26', NULL),
(2669, '2', '58', 'Wayne', '2021-07-05 19:30:26', NULL),
(2670, '2', '58', 'Benton', '2021-07-05 19:30:26', NULL),
(2671, '2', '58', 'Bledsoe', '2021-07-05 19:30:26', NULL),
(2672, '2', '58', 'Sequatchie', '2021-07-05 19:30:26', NULL),
(2673, '2', '58', 'Crockett', '2021-07-05 19:30:26', NULL),
(2674, '2', '58', 'Cannon', '2021-07-05 19:30:26', NULL),
(2675, '2', '58', 'Stewart', '2021-07-05 19:30:26', NULL),
(2676, '2', '58', 'Grundy', '2021-07-05 19:30:27', NULL),
(2677, '2', '58', 'Meigs', '2021-07-05 19:30:27', NULL),
(2678, '2', '58', 'Lewis', '2021-07-05 19:30:27', NULL),
(2679, '2', '58', 'Decatur', '2021-07-05 19:30:27', NULL),
(2680, '2', '58', 'Jackson', '2021-07-05 19:30:27', NULL),
(2681, '2', '58', 'Trousdale', '2021-07-05 19:30:27', NULL),
(2682, '2', '58', 'Houston', '2021-07-05 19:30:27', NULL),
(2683, '2', '58', 'Perry', '2021-07-05 19:30:27', NULL),
(2684, '2', '58', 'Clay', '2021-07-05 19:30:28', NULL),
(2685, '2', '58', 'Lake', '2021-07-05 19:30:28', NULL),
(2686, '2', '58', 'Hancock', '2021-07-05 19:30:28', NULL),
(2687, '2', '58', 'Moore', '2021-07-05 19:30:28', NULL),
(2688, '2', '58', 'Van Buren', '2021-07-05 19:30:28', NULL),
(2689, '2', '58', 'Pickett', '2021-07-05 19:30:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ofertas`
--

CREATE TABLE `ofertas` (
  `id` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `posicion` int(2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0: no publicar, 1: publicar',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ofertas`
--

INSERT INTO `ofertas` (`id`, `imagen`, `titulo`, `descripcion`, `posicion`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '014424210616_lasvegas.jpg', 'Las Vegas`', 'Las vegas nevada', NULL, 1, '2021-05-20 02:44:35', '2021-06-16 05:44:25', NULL),
(2, '014704210616_miami.jpg', 'Miami', 'Ciudad de los sueños', NULL, 1, '2021-06-16 01:47:05', NULL, NULL),
(3, '014736210616_rusia.jpg', 'Rusia', 'Su gente es unica', NULL, 1, '2021-06-16 01:47:36', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE `office` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `pais` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`id`, `nombre`, `descripcion`, `pais`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Cayo Santa Maria, Cuba', NULL, '1', 1, '2021-06-20 21:01:30', NULL, NULL),
(2, 'La Habana', NULL, '1', 1, '2021-06-20 21:01:30', NULL, NULL),
(3, 'Varadero, Cuba', NULL, '1', 1, '2021-06-20 21:01:30', NULL, NULL),
(4, 'Pinar del Río', NULL, '1', 1, '2021-06-20 21:01:30', NULL, NULL),
(5, 'Matanzas', NULL, '1', 1, '2021-06-20 21:01:30', NULL, NULL),
(6, 'Mayabeque', NULL, '1', 1, '2021-06-20 21:01:30', NULL, NULL),
(7, 'Artemisa', NULL, '1', 1, '2021-06-20 21:01:30', NULL, NULL),
(8, 'Sancti Spíritus', NULL, '1', 1, '2021-06-20 21:01:30', NULL, NULL),
(9, 'Ciego de Ávila', NULL, '1', 1, '2021-06-20 21:01:30', NULL, NULL),
(10, 'Cienfuegos', NULL, '1', 1, '2021-06-20 21:01:30', NULL, NULL),
(11, 'Camagüey', NULL, '1', 1, '2021-06-20 21:01:30', NULL, NULL),
(12, 'Las Tunas', NULL, '1', 1, '2021-06-20 21:01:30', NULL, NULL),
(13, 'Bayamo, Granma', NULL, '1', 1, '2021-06-20 21:01:30', NULL, NULL),
(14, 'Holguín', NULL, '1', 1, '2021-06-20 21:01:30', NULL, NULL),
(15, 'Santiago de Cuba', NULL, '1', 1, '2021-06-20 21:01:30', NULL, NULL),
(16, 'Guantánamo', NULL, '1', 1, '2021-06-20 21:01:30', NULL, NULL),
(17, 'Villa Clara, Santa Clara', NULL, '1', 1, '2021-06-20 21:01:30', NULL, NULL),
(18, 'Cayo Coco, Cuba', NULL, '1', 1, '2021-06-20 21:01:30', NULL, NULL),
(19, 'Cayo Guillermo, Cuba', NULL, '1', 1, '2021-06-20 21:01:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `paises`
--

CREATE TABLE `paises` (
  `id` int(11) NOT NULL,
  `codigo` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `continente` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `area` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `capital` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `codigo2` varchar(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombremoneda` varchar(16) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ciudadania` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `simbolomoneda` varchar(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `paises`
--

INSERT INTO `paises` (`id`, `codigo`, `nombre`, `continente`, `area`, `capital`, `codigo2`, `nombremoneda`, `ciudadania`, `simbolomoneda`, `created_at`, `updated_at`) VALUES
(1, 'CUB', 'Cuba', 'North America', 'Caribbean', 'La Habana', 'CU', NULL, 'Cubana', NULL, '2021-07-03 21:27:18', '2021-07-04 13:03:47'),
(2, 'USA', 'United States', 'North America', 'North America', 'Washington District of Columbia', 'EEUU', 'Dolar', 'Americano', '$', '2021-07-04 21:09:29', '2021-07-04 21:10:38');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rental_cars`
--

CREATE TABLE `rental_cars` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `mail` varchar(250) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `id_car` int(11) NOT NULL,
  `date_start` date DEFAULT NULL,
  `time_start` varchar(11) DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `time_end` varchar(11) DEFAULT NULL,
  `id_pais` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 solicitado para alquiler, 1 apartado, 2 rentado en uso, 3 deshabilitado temporalmente, 4 deshabilitado permanentemente, 5 alquiler finalizado',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rental_cars`
--

INSERT INTO `rental_cars` (`id`, `name`, `lastname`, `mail`, `phone`, `id_car`, `date_start`, `time_start`, `date_end`, `time_end`, `id_pais`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Darwin', 'Salinas', 'dsalinas@puntotecinternational.com', '4262398711', 9, '2021-10-12', '01:00', '2021-10-28', '12:30', 1, 0, '2021-10-08 22:41:58', '2021-10-08 15:41:58'),
(2, 'Alfredo', 'Marcano', 'alfredomarcan@gmail.com', '4243366843', 3, '2021-11-10', '18:00', '2021-11-19', '18:00', 1, 1, '2021-10-14 04:06:12', '2021-10-13 21:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `servicios`
--

CREATE TABLE `servicios` (
  `id` int(11) NOT NULL,
  `posicion` tinyint(2) DEFAULT NULL,
  `imagen` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `status` tinyint(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicios`
--

INSERT INTO `servicios` (`id`, `posicion`, `imagen`, `titulo`, `descripcion`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'Serv_CarRent.jpg', 'Autos', 'Rental Car', 1, '2021-05-28 05:47:06', '2021-07-21 10:04:19', NULL),
(2, NULL, 'Serv_PqteVac.jpg', 'Vacaciones', 'Planea tus vacaciones', 1, '2021-06-16 20:12:15', '2021-07-21 10:05:15', NULL),
(3, NULL, 'Serv_Vuelos.jpg', 'Vuelos', 'Reservación de Vuelos', 1, '2021-06-16 20:12:40', '2021-07-21 10:05:31', NULL),
(4, NULL, 'Serv_Crucero.jpg', 'Crucero', 'Cruceros por todo el caribe', 1, '2021-06-18 02:02:45', '2021-07-21 10:04:32', NULL),
(5, NULL, 'Serv_ReservHotel.jpg', 'Hoteles', 'Reservación de Hoteles', 1, '2021-06-18 02:03:21', '2021-07-21 10:05:24', NULL),
(6, NULL, 'Serv_Passport.jpg', 'Pasaporte', 'Gestión de pasaporte', 1, '2021-06-18 02:04:07', '2021-07-21 10:06:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9yk477cb3B7hNgx9akOawsrQHh0pCtfVTqkkLyzw', NULL, '98.164.169.90', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/84.0.4147.71 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidFpFSHRKVHRpY1B4cHpzUzZyWlhsazF2R1NjYVg2WG5GWUNCdGFsZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vYmVsaWV2ZXRyYXZlbGdyb3VwLmNvbS9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628835461),
('a6iPtcczMenfivcl3dfmTsZ4MizeJnaey1qWiSaV', NULL, '200.75.102.129', 'Mozilla/5.0 (Linux; Android 8.1.0; Redmi Go) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWRyZFhLcHdCY0txRWFDWWlYdlpxbGxSd1l4TWVNODNmUkpFbUJFUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vYmVsaWV2ZXRyYXZlbGdyb3VwLmNvbS9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1629575440),
('m2HmTp2tUTdgeDn9k9CGNhW6KZyXAmEMvUj49N2l', NULL, '98.164.169.90', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieWZjSHhRWm5HWEZ4eHZha2RMeElBdnA1MUluSEpJblZXZWR3bDRVRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vYmVsaWV2ZXRyYXZlbGdyb3VwLmNvbS9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628702215),
('n3NmCGQSadHxfd3prkydHxkTvGh8szqWTp9Pg2if', NULL, '190.142.145.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDl6SGFscmVyUElUWEZRRElveG1DaDY4WW5heHNrRFh4SzdnWlc0NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vYmVsaWV2ZXRyYXZlbGdyb3VwLmNvbS9ob21lL1NlcnZpY2lvcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628305255),
('zHa6zzyLUD0610S2h2Ygsj3VZgzIZcIh1jaeZLiD', NULL, '98.164.169.90', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/84.0.4147.71 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFcwMjM3Nks3NmlXd3VhbHJzWVBCU3VYcEZjTU9JRndqakJSbXdEWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vYmVsaWV2ZXRyYXZlbGdyb3VwLmNvbS9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1629016461);

-- --------------------------------------------------------

--
-- Table structure for table `somos`
--

CREATE TABLE `somos` (
  `id` int(11) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `codigo_pariente` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 sin publicar, 1 publicar, 2 eliminado',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `somos`
--

INSERT INTO `somos` (`id`, `imagen`, `titulo`, `descripcion`, `tipo`, `codigo_pariente`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '011310210519_Somos.png', '¿Quienes Somos?', 'zomoz', 'padre', '17052021012324', 1, '2021-05-17 01:23:26', '2021-05-19 05:13:26', NULL),
(2, '011310210519_maleta.jpg', 'Nuestra Mision', 'Mizion', 'hijo_primero', '17052021012324', 1, '2021-05-17 01:23:26', '2021-05-19 05:13:26', NULL),
(3, NULL, 'Nuestra Vision', 'Vizion', 'hijo_segundo', '17052021012324', 1, '2021-05-17 01:23:26', '2021-05-19 05:13:26', NULL),
(4, '010751210519_Banner1Web.jpg', 'Zomoz', 'zzz', 'padre', '17052021012603', 0, '2021-05-17 01:26:04', '2021-05-19 05:07:52', NULL),
(5, '010752210519_Banner2Web.jpg', 'Mizion', 'mimimi', 'hijo_primero', '17052021012603', 0, '2021-05-17 01:26:04', '2021-05-19 05:07:52', NULL),
(6, NULL, 'Vizion', 'vivivi', 'hijo_segundo', '17052021012603', 0, '2021-05-17 01:26:04', '2021-05-19 05:07:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonios`
--

CREATE TABLE `testimonios` (
  `id` int(11) NOT NULL,
  `posicion` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `imagen` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `autor` varchar(255) CHARACTER SET utf8 NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 NOT NULL,
  `calificacion` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 no publicar, 1 publicado.',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonios`
--

INSERT INTO `testimonios` (`id`, `posicion`, `imagen`, `autor`, `descripcion`, `calificacion`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, '081434210605_photo5183665904821578042.jpg', 'Katherina de Navarro', 'Que mal servicio', NULL, 1, '2021-06-05 20:14:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Daniel', 'admin@mail.com', '2021-05-15 18:44:58', '$2y$10$xAkDicKBimd6OsA2W8k8Qe2CMvvUPd40JoqWxWV967cmJjxFqs.We', NULL, NULL, NULL, NULL, NULL, '2021-05-15 18:46:09', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_categorias`
--
ALTER TABLE `car_categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dataClient`
--
ALTER TABLE `dataClient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dataMigration`
--
ALTER TABLE `dataMigration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dataPassport`
--
ALTER TABLE `dataPassport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dataRecident`
--
ALTER TABLE `dataRecident`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dataReference`
--
ALTER TABLE `dataReference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dataWork`
--
ALTER TABLE `dataWork`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ofertas`
--
ALTER TABLE `ofertas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rental_cars`
--
ALTER TABLE `rental_cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `somos`
--
ALTER TABLE `somos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indexes for table `testimonios`
--
ALTER TABLE `testimonios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `car_categorias`
--
ALTER TABLE `car_categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dataClient`
--
ALTER TABLE `dataClient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `dataMigration`
--
ALTER TABLE `dataMigration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dataPassport`
--
ALTER TABLE `dataPassport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dataRecident`
--
ALTER TABLE `dataRecident`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dataReference`
--
ALTER TABLE `dataReference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dataWork`
--
ALTER TABLE `dataWork`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `estados`
--
ALTER TABLE `estados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2690;

--
-- AUTO_INCREMENT for table `ofertas`
--
ALTER TABLE `ofertas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `office`
--
ALTER TABLE `office`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rental_cars`
--
ALTER TABLE `rental_cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `somos`
--
ALTER TABLE `somos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonios`
--
ALTER TABLE `testimonios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
