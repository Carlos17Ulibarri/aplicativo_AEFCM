-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-12-2022 a las 07:48:41
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api_aefcm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addresses`
--

CREATE TABLE `addresses` (
  `addresses_id` int(10) NOT NULL,
  `addresses_no_external` int(10) NOT NULL,
  `addresses_no_internal` int(10) NOT NULL,
  `addresses_colony` varchar(255) NOT NULL,
  `addresses_id_ch` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aefcm_support`
--

CREATE TABLE `aefcm_support` (
  `aefcms_id` int(10) NOT NULL,
  `aefcms_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `city_halls`
--

CREATE TABLE `city_halls` (
  `ch_id` int(10) NOT NULL,
  `ch_name` varchar(250) NOT NULL,
  `ch_no_people` int(10) NOT NULL,
  `ch_age_range_men` int(10) NOT NULL,
  `ch_age_range_women` int(10) NOT NULL,
  `ch_people_age15` int(10) NOT NULL,
  `ch_total_people_inhabited` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `degrees`
--

CREATE TABLE `degrees` (
  `degrees_id` int(10) NOT NULL,
  `degrees_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `general_direction`
--

CREATE TABLE `general_direction` (
  `gd_id` int(10) NOT NULL,
  `gd_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `levels`
--

CREATE TABLE `levels` (
  `levels_id` int(10) NOT NULL,
  `levels_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `no_per_grade`
--

CREATE TABLE `no_per_grade` (
  `npg_id` int(10) NOT NULL,
  `npg_no_famale_std` int(10) NOT NULL,
  `npg_no_male_std` int(10) NOT NULL,
  `npg_no_classrooms` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operational_direction`
--

CREATE TABLE `operational_direction` (
  `od_id` int(10) NOT NULL,
  `od_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programs`
--

CREATE TABLE `programs` (
  `programs_id` int(10) NOT NULL,
  `programs_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regional_service`
--

CREATE TABLE `regional_service` (
  `rs_id` int(10) NOT NULL,
  `rs_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regulatory_agency`
--

CREATE TABLE `regulatory_agency` (
  `ra_id` int(10) NOT NULL,
  `ra_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rols`
--

CREATE TABLE `rols` (
  `rols_id` int(10) NOT NULL,
  `rols_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schools`
--

CREATE TABLE `schools` (
  `schools_id` int(10) NOT NULL,
  `schools_key_code` varchar(50) NOT NULL,
  `schools_name` varchar(255) NOT NULL,
  `schools_no_directors` int(10) NOT NULL,
  `schools_no_support_staff` int(10) NOT NULL,
  `schools_id_adress` int(10) NOT NULL,
  `schools_id_turn` int(10) NOT NULL,
  `schools_id_type` int(10) NOT NULL,
  `schools_id_level` int(10) NOT NULL,
  `schools_id_rs` int(10) NOT NULL,
  `schools_id_od` int(10) NOT NULL,
  `schools_id_ra` int(10) NOT NULL,
  `schools_id_gd` int(10) NOT NULL,
  `schools_id_sf911` int(10) NOT NULL,
  `schools_id_aefcms` int(10) NOT NULL,
  `schools_id_program` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schools_degrees_npg`
--

CREATE TABLE `schools_degrees_npg` (
  `sdn_id` bigint(10) NOT NULL,
  `sdn_id_school` int(10) NOT NULL,
  `sd_id_degree` int(10) NOT NULL,
  `sd_id_npg` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sustaining_f911`
--

CREATE TABLE `sustaining_f911` (
  `sf911_id` int(10) NOT NULL,
  `sf911_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turns`
--

CREATE TABLE `turns` (
  `turns_id` int(10) NOT NULL,
  `turns_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `types`
--

CREATE TABLE `types` (
  `types_id` int(10) NOT NULL,
  `types_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `users_id` int(10) NOT NULL,
  `users_email` varchar(255) NOT NULL,
  `users_name` varchar(50) NOT NULL,
  `users_paternal_lastname` varchar(50) NOT NULL,
  `users_maternal_lastname` varchar(50) NOT NULL,
  `users_password` varchar(20) NOT NULL,
  `users_id_turn` int(10) NOT NULL,
  `users_id_rol` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_schools`
--

CREATE TABLE `users_schools` (
  `us_id` int(10) NOT NULL,
  `us_id_user` int(10) NOT NULL,
  `us_id_school` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`addresses_id`),
  ADD KEY `fk_addresses_id_ch` (`addresses_id_ch`);

--
-- Indices de la tabla `aefcm_support`
--
ALTER TABLE `aefcm_support`
  ADD PRIMARY KEY (`aefcms_id`);

--
-- Indices de la tabla `city_halls`
--
ALTER TABLE `city_halls`
  ADD PRIMARY KEY (`ch_id`);

--
-- Indices de la tabla `degrees`
--
ALTER TABLE `degrees`
  ADD PRIMARY KEY (`degrees_id`);

--
-- Indices de la tabla `general_direction`
--
ALTER TABLE `general_direction`
  ADD PRIMARY KEY (`gd_id`);

--
-- Indices de la tabla `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`levels_id`);

--
-- Indices de la tabla `no_per_grade`
--
ALTER TABLE `no_per_grade`
  ADD PRIMARY KEY (`npg_id`);

--
-- Indices de la tabla `operational_direction`
--
ALTER TABLE `operational_direction`
  ADD PRIMARY KEY (`od_id`);

--
-- Indices de la tabla `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`programs_id`);

--
-- Indices de la tabla `regional_service`
--
ALTER TABLE `regional_service`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indices de la tabla `regulatory_agency`
--
ALTER TABLE `regulatory_agency`
  ADD PRIMARY KEY (`ra_id`);

--
-- Indices de la tabla `rols`
--
ALTER TABLE `rols`
  ADD PRIMARY KEY (`rols_id`);

--
-- Indices de la tabla `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`schools_id`),
  ADD KEY `fk_schools_id_address` (`schools_id_adress`),
  ADD KEY `fk_schools_id_turn` (`schools_id_turn`),
  ADD KEY `fk_schools_id_type` (`schools_id_type`),
  ADD KEY `fk_schools_id_level` (`schools_id_level`),
  ADD KEY `fk_schools_id_rs` (`schools_id_rs`),
  ADD KEY `fk_schools_id_od` (`schools_id_od`),
  ADD KEY `fk_schools_id_ra` (`schools_id_ra`),
  ADD KEY `fk_schools_id_gd` (`schools_id_gd`),
  ADD KEY `fk_schools_id_sf911` (`schools_id_sf911`),
  ADD KEY `fk_schools_id_aefcms` (`schools_id_aefcms`),
  ADD KEY `fk_schools_id_program` (`schools_id_program`);

--
-- Indices de la tabla `schools_degrees_npg`
--
ALTER TABLE `schools_degrees_npg`
  ADD PRIMARY KEY (`sdn_id`),
  ADD KEY `fk_sdn_id_school` (`sdn_id_school`),
  ADD KEY `fk_sdn_id_npg` (`sd_id_npg`),
  ADD KEY `fk_sdn_id_degree` (`sd_id_degree`);

--
-- Indices de la tabla `sustaining_f911`
--
ALTER TABLE `sustaining_f911`
  ADD PRIMARY KEY (`sf911_id`);

--
-- Indices de la tabla `turns`
--
ALTER TABLE `turns`
  ADD PRIMARY KEY (`turns_id`);

--
-- Indices de la tabla `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`types_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`),
  ADD KEY `fk_users_id_turn` (`users_id_turn`),
  ADD KEY `fk_users_id_rol` (`users_id_rol`);

--
-- Indices de la tabla `users_schools`
--
ALTER TABLE `users_schools`
  ADD PRIMARY KEY (`us_id`),
  ADD KEY `fk_us_id_school` (`us_id_school`),
  ADD KEY `fk_us_id_user` (`us_id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `addresses`
--
ALTER TABLE `addresses`
  MODIFY `addresses_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `aefcm_support`
--
ALTER TABLE `aefcm_support`
  MODIFY `aefcms_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `city_halls`
--
ALTER TABLE `city_halls`
  MODIFY `ch_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `degrees`
--
ALTER TABLE `degrees`
  MODIFY `degrees_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `general_direction`
--
ALTER TABLE `general_direction`
  MODIFY `gd_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `levels`
--
ALTER TABLE `levels`
  MODIFY `levels_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `no_per_grade`
--
ALTER TABLE `no_per_grade`
  MODIFY `npg_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `operational_direction`
--
ALTER TABLE `operational_direction`
  MODIFY `od_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `programs`
--
ALTER TABLE `programs`
  MODIFY `programs_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `regional_service`
--
ALTER TABLE `regional_service`
  MODIFY `rs_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `regulatory_agency`
--
ALTER TABLE `regulatory_agency`
  MODIFY `ra_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rols`
--
ALTER TABLE `rols`
  MODIFY `rols_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `schools`
--
ALTER TABLE `schools`
  MODIFY `schools_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `schools_degrees_npg`
--
ALTER TABLE `schools_degrees_npg`
  MODIFY `sdn_id` bigint(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sustaining_f911`
--
ALTER TABLE `sustaining_f911`
  MODIFY `sf911_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `turns`
--
ALTER TABLE `turns`
  MODIFY `turns_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `types`
--
ALTER TABLE `types`
  MODIFY `types_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users_schools`
--
ALTER TABLE `users_schools`
  MODIFY `us_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `fk_addresses_id_ch` FOREIGN KEY (`addresses_id_ch`) REFERENCES `city_halls` (`ch_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `schools`
--
ALTER TABLE `schools`
  ADD CONSTRAINT `fk_schools_id_address` FOREIGN KEY (`schools_id_adress`) REFERENCES `addresses` (`addresses_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_schools_id_aefcms` FOREIGN KEY (`schools_id_aefcms`) REFERENCES `aefcm_support` (`aefcms_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_schools_id_gd` FOREIGN KEY (`schools_id_gd`) REFERENCES `general_direction` (`gd_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_schools_id_level` FOREIGN KEY (`schools_id_level`) REFERENCES `levels` (`levels_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_schools_id_od` FOREIGN KEY (`schools_id_od`) REFERENCES `operational_direction` (`od_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_schools_id_program` FOREIGN KEY (`schools_id_program`) REFERENCES `programs` (`programs_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_schools_id_ra` FOREIGN KEY (`schools_id_ra`) REFERENCES `regulatory_agency` (`ra_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_schools_id_rs` FOREIGN KEY (`schools_id_rs`) REFERENCES `regional_service` (`rs_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_schools_id_sf911` FOREIGN KEY (`schools_id_sf911`) REFERENCES `sustaining_f911` (`sf911_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_schools_id_turn` FOREIGN KEY (`schools_id_turn`) REFERENCES `turns` (`turns_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_schools_id_type` FOREIGN KEY (`schools_id_type`) REFERENCES `types` (`types_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `schools_degrees_npg`
--
ALTER TABLE `schools_degrees_npg`
  ADD CONSTRAINT `fk_sdn_id_degree` FOREIGN KEY (`sd_id_degree`) REFERENCES `degrees` (`degrees_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sdn_id_npg` FOREIGN KEY (`sd_id_npg`) REFERENCES `no_per_grade` (`npg_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sdn_id_school` FOREIGN KEY (`sdn_id_school`) REFERENCES `schools` (`schools_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_id_rol` FOREIGN KEY (`users_id_rol`) REFERENCES `rols` (`rols_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_users_id_turn` FOREIGN KEY (`users_id_turn`) REFERENCES `turns` (`turns_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users_schools`
--
ALTER TABLE `users_schools`
  ADD CONSTRAINT `fk_us_id_school` FOREIGN KEY (`us_id_school`) REFERENCES `schools` (`schools_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_us_id_user` FOREIGN KEY (`us_id_user`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
