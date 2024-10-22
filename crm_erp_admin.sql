-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2024 a las 12:09:12
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
-- Base de datos: `crm_erp_admin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_14_151645_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'register_role', 'api', '2024-10-15 07:32:42', '2024-10-15 07:32:42'),
(2, 'edit_role', 'api', '2024-10-15 07:32:42', '2024-10-15 07:32:42'),
(3, 'delete_role', 'api', '2024-10-15 07:32:42', '2024-10-15 07:32:42'),
(4, 'register_user', 'api', '2024-10-15 07:32:42', '2024-10-15 07:32:42'),
(5, 'edit_user', 'api', '2024-10-15 07:32:42', '2024-10-15 07:32:42'),
(6, 'delete_user', 'api', '2024-10-15 07:32:42', '2024-10-15 07:32:42'),
(7, 'register_product', 'api', '2024-10-15 07:32:42', '2024-10-15 07:32:42'),
(8, 'edit_product', 'api', '2024-10-15 07:32:43', '2024-10-15 07:32:43'),
(9, 'delete_product', 'api', '2024-10-15 07:32:43', '2024-10-15 07:32:43'),
(10, 'show_wallet_price_product', 'api', '2024-10-15 07:32:43', '2024-10-15 07:32:43'),
(11, 'register_wallet_price_product', 'api', '2024-10-15 07:32:43', '2024-10-15 07:32:43'),
(12, 'edit_wallet_price_product', 'api', '2024-10-15 07:32:43', '2024-10-15 07:32:43'),
(13, 'delete_wallet_price_product', 'api', '2024-10-15 07:32:43', '2024-10-15 07:32:43'),
(14, 'register_clientes', 'api', '2024-10-15 07:32:43', '2024-10-15 07:32:43'),
(15, 'edit_clientes', 'api', '2024-10-15 07:32:43', '2024-10-15 07:32:43'),
(16, 'delete_clientes', 'api', '2024-10-15 07:32:43', '2024-10-15 07:32:43'),
(17, 'valid_payments', 'api', '2024-10-15 07:32:43', '2024-10-15 07:32:43'),
(18, 'reports_caja', 'api', '2024-10-15 07:32:43', '2024-10-15 07:32:43'),
(19, 'record_contract_process', 'api', '2024-10-15 07:32:43', '2024-10-15 07:32:43'),
(20, 'egreso', 'api', '2024-10-15 07:32:43', '2024-10-15 07:32:43'),
(21, 'ingreso', 'api', '2024-10-15 07:32:43', '2024-10-15 07:32:43'),
(22, 'close_caja', 'api', '2024-10-15 07:32:43', '2024-10-15 07:32:43'),
(23, 'register_proforma', 'api', '2024-10-15 07:32:43', '2024-10-15 07:32:43'),
(24, 'edit_proforma', 'api', '2024-10-15 07:32:43', '2024-10-15 07:32:43'),
(25, 'delete_proforma', 'api', '2024-10-15 07:32:43', '2024-10-15 07:32:43'),
(26, 'cronograma', 'api', '2024-10-15 07:32:44', '2024-10-15 07:32:44'),
(27, 'comisiones', 'api', '2024-10-15 07:32:44', '2024-10-15 07:32:44'),
(28, 'register_compra', 'api', '2024-10-15 07:32:44', '2024-10-15 07:32:44'),
(29, 'edit_compra', 'api', '2024-10-15 07:32:44', '2024-10-15 07:32:44'),
(30, 'delete_compra', 'api', '2024-10-15 07:32:44', '2024-10-15 07:32:44'),
(31, 'register_transporte', 'api', '2024-10-15 07:32:44', '2024-10-15 07:32:44'),
(32, 'edit_transporte', 'api', '2024-10-15 07:32:44', '2024-10-15 07:32:44'),
(33, 'delete_transporte', 'api', '2024-10-15 07:32:44', '2024-10-15 07:32:44'),
(34, 'despacho', 'api', '2024-10-15 07:32:44', '2024-10-15 07:32:44'),
(35, 'movimientos', 'api', '2024-10-15 07:32:44', '2024-10-15 07:32:44'),
(36, 'kardex', 'api', '2024-10-15 07:32:44', '2024-10-15 07:32:44'),
(37, 'list_product', 'api', '2024-10-18 08:34:27', '2024-10-18 08:34:27'),
(40, 'list_proforma', 'api', NULL, NULL),
(41, 'list_compra', 'api', NULL, NULL),
(42, 'list_transporte', 'api', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super-Admin', 'api', '2024-10-15 07:32:44', '2024-10-15 07:32:44'),
(2, 'ASESOR COMERCIAL', 'api', '2024-10-15 08:32:12', '2024-10-15 08:32:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(14, 2),
(15, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(250) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `sucursal_id` bigint(20) UNSIGNED NOT NULL DEFAULT 4,
  `n_document` varchar(25) DEFAULT NULL,
  `type_document` varchar(35) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `avatar` varchar(250) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `phone`, `role_id`, `sucursal_id`, `n_document`, `type_document`, `address`, `gender`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Admin', NULL, NULL, 1, 4, '', NULL, NULL, NULL, NULL, 'super_admin_crm@gmail.com', '2024-10-15 07:32:47', '$2y$12$G1YEvvj4bTfQqvIpwLYy.OC6/kUa1rKoOEw5/hd.YmjFktcvAxua.', 'YeQQ7Z9Pd3', '2024-10-15 07:32:47', '2024-10-15 07:32:47', NULL),
(2, 'AAAss', 'BBB', '123456789', 2, 4, NULL, 'DNI', NULL, NULL, 'users/akrOENIqhPDZ92yGXjYX5sCSOOeQ9zdcQdWRfeKX.png', 'antonio@gmail.com', NULL, '$2y$12$M4GcJQiAze5cjEBfdo9n5urx.cH0noaavKjx1QTnQIqAsdWJr9WLK', NULL, '2024-10-16 08:46:58', '2024-10-18 05:39:42', '2024-10-18 05:39:42'),
(5, 'Usuario', 'de prueba', '121345678', 2, 4, NULL, 'DNI', 'mi oficina', NULL, 'users/MHqJqX5HCzWvsTWbUDC7PFZjJqSZ424csrwp8xoR.png', 'prueba@gmail.com', NULL, '$2y$12$puN1CDCl7h8P8PTiJj6Qve4QIb0KLVPw2/JKr2pXNaxRSRxWlJxmi', NULL, '2024-10-18 05:04:20', '2024-10-18 05:49:04', NULL),
(6, '121323', '1223', '1223345', 2, 4, '123', 'DNI', 'mi oficina', NULL, 'users/YGYxJtH3VbMbExZG185pLHlJ08bjvYVBYq6nbFrh.png', 'sss@gmail.com', NULL, '$2y$12$m1mgLMw4Sraosvxb2/wFBOugg5bzaup6dls58LZbwqrJ4AXiiZQjy', NULL, '2024-10-18 05:24:11', '2024-10-18 05:24:11', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
