-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 06, 2023 at 02:33 PM
-- Server version: 10.11.2-MariaDB
-- PHP Version: 8.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `APP_ARRIENDO`
--

-- --------------------------------------------------------

--
-- Table structure for table `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id_publicacion` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `precio` bigint(100) NOT NULL,
  `fecha_publicacion` timestamp NULL DEFAULT current_timestamp(),
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publicaciones`
--

INSERT INTO `publicaciones` (`id_publicacion`, `titulo`, `descripcion`, `direccion`, `ciudad`, `estado`, `precio`, `fecha_publicacion`, `id_usuario`) VALUES
(28, 'Apartaestudio', 'Con todos los servicios incluidos', 'Conjunto Privado, indigo \"Detrás del centro comercial, Buenavista\"', 'Monteria ', 'Córdoba', 100000, '2023-05-05 14:57:15', 9),
(35, 'Casa', 'Vivienda de 3 habitaciones 400 m² 2 Baños. 1 sala-comedor Piscina olimpica ', 'Petare Caracas Venezuela ', 'Caracas', 'Distrito Capital ', 1, '2023-05-06 02:27:30', 10),
(39, 'Casita', 'Casita bonita con jardn donde Mara regar a las flores y tuviera un bonito paisaje ', 'Mi sueno', 'Cualquier ', 'Imaginaria', 500000000, '2023-05-06 02:51:04', 14),
(40, 'Apartamento 3 cuartos', 'Hermoso apartamento de 3 cuartos, con 2 tocadores, sala, comedor, cocina, patio, garaje y jacuzzi integrado', 'Cl. 38d Sur 72k2 a 72k48, Bogota', 'Bogota', 'Bogota', 750000, '2023-05-06 02:57:48', 15),
(41, 'Casa en venta', 'test', 'censa', 'MONTERIA', 'Cordoba', 1000000, '2023-05-06 13:32:23', 17);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('-Z51SBPAMNydxXPDpTJ1i6t53o4HdXgq', 1683388576, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('-pJ4nsC0ketbVUCZsnJdEqZk3BP1X4Cc', 1683385538, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('0re4mIRufdAxKIItTj-m-aRYHyx6UOtP', 1683385495, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('2CNGY6BY3vpnXIUNtTbIQH07udlxupBP', 1683385538, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('4zSWp7wAqD8iL6AX1bUsOQ9GweET0Oar', 1683465990, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('5Bs3dfEDcxUvfSWMcdyCnDQxnCPW9bI5', 1683462788, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('7mqm4SXyxpmXjhjSvOSPmBDaoEWQu6Rn', 1683385538, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('8Gc_kW2fPlrxZXQkdk6MZJk86zo7Upqr', 1683465107, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('8dei-a05a64N9b0KSPLViR8de__EzbkV', 1683426401, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":9},\"flash\":{}}'),
('9oHfFQNpEOmUr9_1c6E5rdteJIWFPcUq', 1683429533, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":9},\"flash\":{}}'),
('B0VBGyhGyduE2_W3HrL0NOn3ruuCdNbp', 1683385537, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('B1Gdo9bPfKMP77teTvnv-aj-1inp-6CM', 1683465462, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('BDe8wFlI5EVBpFieecYaiKRNHf0ycgDk', 1683466548, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":9},\"flash\":{}}'),
('BN4wyzdfDx2bY4Wzr8-JDfcpbayn1UmQ', 1683426377, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('CPVFz5bJMppqM0dIXDqgoqMeKdmcQv8P', 1683386363, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":10},\"flash\":{}}'),
('DaKzYpnjKseXnVUbxzc-Rkezc7d8kfsL', 1683391907, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('GPV6zYthL9_fwy7r61vb5QPkhMuSmqV2', 1683385727, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('GXGPuylf951LvHwGW2n5NgJYi8VYvczg', 1683426307, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('H6MsgXh5kVs9NMAq7_fRsN2QODvmiHfr', 1683407024, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('MRbIS8OCQEnuL4MgQmkFrE5NKw2t0Jnl', 1683418449, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('Oa6DruYmAEkvKjKIrcJsqMlhl8wNN-w7', 1683426559, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('OcIbOvZwPguSTb3p1-tN_JC0XOQd3QIg', 1683388729, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('P4xb2CaVaVAZr-1T9LY5gRp4iKSdUT9Z', 1683419177, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('QvtHR36UEBmCwfyK92DHA_bOGid9yjvl', 1683429467, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('RJV6UtiZPCOfCHXQmTF-6Z_TbP9gDqpb', 1683385538, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('TQbdYI5CzDvaVVqXtDOwU8ZUPfjmuS9f', 1683428269, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":15},\"flash\":{}}'),
('UVk54-kycoRMQWzNHzx2u3b9El6UiPs_', 1683429217, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":6},\"flash\":{}}'),
('W1FfM3udc_aAbkDyp2g5z3lhoPXfxJaD', 1683385538, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('W7PEI0z-CwNholhw5vnqtiP4unG2QIy_', 1683385538, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('Wo8TFmy_8WBILKH-t5syn_G_gQIVkFDm', 1683385495, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('YRsx2gQX5UokcQvkpom1TYipPUsaa49G', 1683418474, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('YvYprJvwGEc6UO8XSpmvx0TNogBR7CHp', 1683461564, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":9}}'),
('_EGyED_50Zf3_ny8rgJPI8OwyW0M--lj', 1683426253, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('a0woUqqYyus6chue81yf_2kEJrqtpR6L', 1683461638, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":9},\"flash\":{}}'),
('chq7y-91Zj8CB6rdg4yn7jaoPqOXShTO', 1683419623, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":12},\"flash\":{}}'),
('eVOwtXaW39Ud9k0Y6GlUnKzAiauZk_e4', 1683385537, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('fN2MthDMlWSzCh-YCrdNgegBePM5qE2A', 1683427916, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('fPmNm-k_FE2NDR046nu9uF4U0ijtitXc', 1683462449, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('fmHqEEO-oP5WnUfSREOmx0gkeobV9x4J', 1683385496, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('gA5BDdot6Kb_C5-TJBiooodGWdw8O7XG', 1683385537, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('hPJIPHVwAkf6DNzc-GLp8jouAH0tZfSO', 1683425726, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('hTQVTDfKCdJa9WBMKQcW80SlbK0JcDIi', 1683406956, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":9},\"flash\":{}}'),
('hZLkxjC4aDGtrv6Nd8S2FS9jFR6Puz9r', 1683429445, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('hox89HC0awXH0XQg7zw0cpy3-N42pD6z', 1683426743, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('iXhSEhbGWoRFnAD1TWHmjgCdLYXV6ZCK', 1683425727, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('jICdkGAJverkSioERY81gnIibB_4yXqH', 1683427866, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":14},\"flash\":{}}'),
('jq6Jr845ZM5iFOcs4tZ6VC94-hBVWkQV', 1683388763, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('kCrlM6RwsVmTOfQ3quM7ge2NtsS18ukI', 1683385495, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('knj_Tc0B3h8D7UeocqUsgynHzRtgDxUx', 1683426378, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":13},\"flash\":{}}'),
('nH9eRJRMWyIvoPpuSCtvWN6yV2KI8_sR', 1683465468, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('p7u1Zq2-t5gtJufQ7Hf0OQWJEoXSLWtd', 1683426497, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":10},\"flash\":{}}'),
('sdqrWlA7aliI3SASaw_AqsFyw4UFYpVW', 1683386582, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":9},\"flash\":{}}'),
('uZHWzWB0mWN4fmlkXPQfXRtJ-MBzph-A', 1683406980, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('u_Txj18Y6alhLOLZDH63OnChOaSXGO7H', 1683419513, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":9},\"flash\":{}}'),
('wnuL98SKFb8913t1J8rDqEnsmVyEG45z', 1683385538, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('xkuZuqLeAKd0xhPtFDpFBPRNxPU-XzwB', 1683385680, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('xzsdAq10_UqQFd8jq6I7qAjFt2lIUKJg', 1683428363, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":9},\"flash\":{}}');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `password`, `correo`) VALUES
(6, 'usu', 'contra', 'corre'),
(7, 'CON DORIAN', 'QUIEN', 'ALO'),
(8, 'asdajksdj', 'asdkasda', 'ajsdaksjd'),
(9, 'jhon', '3077', 'jairo.com'),
(10, 'Parmao01', '123456.', 'peterarmao9@gmail.com'),
(11, 'alo', '30', 'mondong.com'),
(12, 'Roxana ', 'roxhi1234', 'rpanesso24@gmail.com'),
(13, 'laMarii12', 'mariaagamez1', 'Magamez50@gmail.com '),
(14, 'laMarii12', 'lamarylinda', 'Magamez50@gmail.com '),
(15, 'Rifto', 'Rifto2411', 'luisgb_24@hotmail.com'),
(16, 'jhon', '4077', 'jairo.com'),
(17, 'base ', '3077', 'test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id_publicacion`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id_publicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
