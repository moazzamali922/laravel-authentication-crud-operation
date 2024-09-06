-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2024 at 12:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-10-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `user_id`, `name`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(10, 13, 'jsadasdas', '+923474323586', 'moaziii922@gmail.com', '2024-09-06 05:57:35', '2024-09-06 05:57:35'),
(11, 9, 'akdgasgydghas', '+923474323586', 'moaziii922@gmail.com', '2024-09-06 05:58:53', '2024-09-06 05:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_08_19_113214_create_contacts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Soft Court', 'admin@gmail.com', NULL, '$2y$12$70hCfFiRqQEPzxwm4HLA0uCoyL9rNusQrZNBo0kiIrkS9VYsWWTyy', NULL, NULL, '2024-08-19 10:01:40', '2024-08-19 10:01:40'),
(2, 'moazzam', 'moazzamali@gmail.com', NULL, '$2y$12$RoGga9VkIV35n7ZvdclLKOm/o5bEJqHcELt2YdsUmAMyMY8W4QtEu', NULL, NULL, '2024-08-19 10:12:54', '2024-08-19 10:12:54'),
(3, 'moazzam', 'moazzam@mail.com', NULL, '$2y$12$jO.wSrIpAt98Tn8DMGvDt.SK7.hdkG0yGHQfV4mTO96rtmW.OPlJq', NULL, NULL, '2024-08-19 10:17:14', '2024-08-19 10:17:14'),
(4, 'daniyal', 'daniyal@gmail.com', NULL, '$2y$12$XxFdjPjqG0.ZFY.18Eyw9OJG96dqPYKskEdc9KT2LzbAUBZSCnGxq', NULL, NULL, '2024-08-20 04:48:29', '2024-08-20 04:48:29'),
(5, 'hamza', 'hamza@gmail.com', NULL, '$2y$12$XxJjh.zxtaoRdjmQOAbONuK8GpzMBsvl7YKIuH/3eo4e7CemBoRAy', NULL, NULL, '2024-08-20 05:08:40', '2024-08-20 05:08:40'),
(6, 'anas', 'anas@gmail.com', NULL, '$2y$12$QJzf1cu9casCbM59znqOvOvuTA9lm/TNC86Uq0QkclWepcioQjs1m', NULL, NULL, '2024-08-20 05:09:22', '2024-08-20 05:09:22'),
(7, 'Zubair', 'zubair@gmail.com', NULL, '$2y$12$EwacHdPGclcP8NYg7gBCs.gwjSs4EGrufvWHk.7cmyL1tNAf6SVVm', NULL, NULL, '2024-08-21 06:05:04', '2024-08-21 06:05:04'),
(8, 'Moazzam Ali', 'ali1@gmail.com', NULL, '$2y$12$ceU5KbhrPEnw/Eh7GBr5E.E0ELwssR8JUIQCZ1nOoMXHKCQaRgVF.', NULL, NULL, '2024-09-05 07:14:58', '2024-09-05 07:14:58'),
(9, 'Mazzai', 'ahsan@gmail.com', NULL, '$2y$12$WQ0mHj6j5fV8iDzXLlXs3OTwQ/t9W1J65yF816jf10ng8e63xPAcC', NULL, NULL, '2024-09-06 05:11:34', '2024-09-06 05:11:34'),
(10, 'sameeer', 'sameer@gmail.com', NULL, '$2y$12$q8A/EwqItiin0HXBnWKuKeyKkfzJqJrdd6dkg6KCvlPiweJvCI3Hm', NULL, NULL, '2024-09-06 05:25:14', '2024-09-06 05:25:14'),
(11, 'Aurelle Eternity Ring', 'noman@gmail.com', NULL, '$2y$12$r2tDrzYSeBTo8gDKeyahVekU.HKEkrtNQuQ3IZtWDIcDmgtZXwGzS', NULL, NULL, '2024-09-06 05:38:19', '2024-09-06 05:38:19'),
(12, 'usman', 'usman@gmail.com', NULL, '$2y$12$THjhDsvJJURGBAdrWkkB5udsDe9NjbW1xBcMikROqrw2ocowirzly', NULL, NULL, '2024-09-06 05:45:14', '2024-09-06 05:45:14'),
(13, 'Waleed', 'waleed@gmail.com', NULL, '$2y$12$ghb9fDhcUvmgPVjVJ/fRUec8D.g3m8edOoWsNO42s7lGClPf9A2YG', NULL, NULL, '2024-09-06 05:49:35', '2024-09-06 05:49:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
