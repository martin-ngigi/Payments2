-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 10, 2023 at 08:02 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_05_29_075759_create_mpesa_s_t_k_s_table', 1),
(6, '2021_06_09_043827_create_paypals_table', 1),
(7, '2021_10_05_103817_create_mpesa_c2_b_s_table', 1),
(8, '2023_01_12_125450_create_mpesa_b2_c_s_table', 1),
(9, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(10, '2023_04_30_051632_add_fcm_token_column_to_users_table', 3),
(11, '2023_04_30_053251_add_fcm_token_column_to_users_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_b2_c_s`
--

CREATE TABLE `mpesa_b2_c_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ResultType` varchar(255) DEFAULT NULL,
  `ResultCode` varchar(255) DEFAULT NULL,
  `ResultDesc` varchar(255) DEFAULT NULL,
  `OriginatorConversationID` varchar(255) DEFAULT NULL,
  `ConversationID` varchar(255) DEFAULT NULL,
  `TransactionID` varchar(255) DEFAULT NULL,
  `TransactionAmount` varchar(255) DEFAULT NULL,
  `RegisteredCustomer` varchar(255) DEFAULT NULL,
  `ReceiverPartyPublicName` varchar(255) DEFAULT NULL,
  `B2CChargesPaidAccountAvailableFunds` varchar(255) DEFAULT NULL,
  `B2CUtilityAccountAvailableFunds` varchar(255) DEFAULT NULL,
  `B2CWorkingAccountAvailableFunds` varchar(255) DEFAULT NULL,
  `TransactionDateTime` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_c2b`
--

CREATE TABLE `mpesa_c2b` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Transaction_type` varchar(255) DEFAULT NULL,
  `Transaction_ID` varchar(255) DEFAULT NULL,
  `Transaction_Time` varchar(255) DEFAULT NULL,
  `Amount` varchar(255) DEFAULT NULL,
  `Business_Shortcode` varchar(255) DEFAULT NULL,
  `Account_Number` varchar(255) DEFAULT NULL,
  `Invoice_no` varchar(255) DEFAULT NULL,
  `Organization_Account_Balance` varchar(255) DEFAULT NULL,
  `ThirdParty_Transaction_ID` varchar(255) DEFAULT NULL,
  `Phonenumber` varchar(255) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_s_t_k_s`
--

CREATE TABLE `mpesa_s_t_k_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `result_desc` varchar(255) DEFAULT NULL,
  `result_code` varchar(255) DEFAULT NULL,
  `merchant_request_id` varchar(255) DEFAULT NULL,
  `checkout_request_id` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `mpesa_receipt_number` varchar(255) DEFAULT NULL,
  `transaction_date` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mpesa_s_t_k_s`
--

INSERT INTO `mpesa_s_t_k_s` (`id`, `result_desc`, `result_code`, `merchant_request_id`, `checkout_request_id`, `amount`, `mpesa_receipt_number`, `transaction_date`, `phonenumber`, `created_at`, `updated_at`) VALUES
(18, NULL, NULL, '24322-12419729-2', 'ws_CO_28042023184638250797292290', NULL, NULL, NULL, NULL, '2023-04-28 12:46:26', '2023-04-28 12:46:26'),
(19, NULL, NULL, '29038-1157689-1', 'ws_CO_09052023125639093797292290', NULL, NULL, NULL, NULL, '2023-05-09 06:55:58', '2023-05-09 06:55:58'),
(20, NULL, NULL, '84248-24215130-1', 'ws_CO_10052023204930446797292290', NULL, NULL, NULL, NULL, '2023-05-10 14:48:50', '2023-05-10 14:48:50');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `paypal`
--

CREATE TABLE `paypal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Transaction_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `payer_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `payer_id` varchar(255) NOT NULL,
  `payer_country_code` varchar(255) NOT NULL,
  `reference_id` varchar(255) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `currency_code` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `paypal_fee` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `fcm_token` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `fcm_token`, `created_at`, `updated_at`) VALUES
(1, 'Martin Wainaina', 'martinwainaina001@gmail.com', NULL, '$2y$10$7dmAvfBFit7r3LMPGsGp8uZpLkeAGzUwS9hIJnPIsTui7xCX5FK2y', NULL, NULL, '2023-04-30 02:52:45', '2023-04-30 02:52:45');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `mpesa_b2_c_s`
--
ALTER TABLE `mpesa_b2_c_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mpesa_c2b`
--
ALTER TABLE `mpesa_c2b`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mpesa_s_t_k_s`
--
ALTER TABLE `mpesa_s_t_k_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `paypal`
--
ALTER TABLE `paypal`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mpesa_b2_c_s`
--
ALTER TABLE `mpesa_b2_c_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mpesa_c2b`
--
ALTER TABLE `mpesa_c2b`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mpesa_s_t_k_s`
--
ALTER TABLE `mpesa_s_t_k_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `paypal`
--
ALTER TABLE `paypal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
