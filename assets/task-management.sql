-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2025 at 06:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task-management`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-tasks_user_1__', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:5:{i:0;O:15:\"App\\Models\\Task\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"tasks\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:1;s:5:\"title\";s:19:\"Review team reports\";s:11:\"description\";s:27:\"Check all submitted reports\";s:6:\"status\";s:7:\"pending\";s:8:\"priority\";s:4:\"high\";s:5:\"order\";i:1;s:7:\"user_id\";i:1;s:10:\"created_at\";s:19:\"2025-08-09 12:19:34\";s:10:\"updated_at\";s:19:\"2025-08-09 12:19:34\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:1;s:5:\"title\";s:19:\"Review team reports\";s:11:\"description\";s:27:\"Check all submitted reports\";s:6:\"status\";s:7:\"pending\";s:8:\"priority\";s:4:\"high\";s:5:\"order\";i:1;s:7:\"user_id\";i:1;s:10:\"created_at\";s:19:\"2025-08-09 12:19:34\";s:10:\"updated_at\";s:19:\"2025-08-09 12:19:34\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:6:\"status\";i:3;s:8:\"priority\";i:4;s:5:\"order\";i:5;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:15:\"App\\Models\\Task\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"tasks\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:2;s:5:\"title\";s:16:\"Schedule meeting\";s:11:\"description\";s:21:\"Set up monthly review\";s:6:\"status\";s:7:\"pending\";s:8:\"priority\";s:6:\"medium\";s:5:\"order\";i:2;s:7:\"user_id\";i:1;s:10:\"created_at\";s:19:\"2025-08-09 12:19:34\";s:10:\"updated_at\";s:19:\"2025-08-09 12:19:34\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:2;s:5:\"title\";s:16:\"Schedule meeting\";s:11:\"description\";s:21:\"Set up monthly review\";s:6:\"status\";s:7:\"pending\";s:8:\"priority\";s:6:\"medium\";s:5:\"order\";i:2;s:7:\"user_id\";i:1;s:10:\"created_at\";s:19:\"2025-08-09 12:19:34\";s:10:\"updated_at\";s:19:\"2025-08-09 12:19:34\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:6:\"status\";i:3;s:8:\"priority\";i:4;s:5:\"order\";i:5;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:15:\"App\\Models\\Task\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"tasks\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:3;s:5:\"title\";s:15:\"Update policies\";s:11:\"description\";s:25:\"Revise company guidelines\";s:6:\"status\";s:9:\"completed\";s:8:\"priority\";s:4:\"high\";s:5:\"order\";i:3;s:7:\"user_id\";i:1;s:10:\"created_at\";s:19:\"2025-08-09 12:19:34\";s:10:\"updated_at\";s:19:\"2025-08-09 12:19:34\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:3;s:5:\"title\";s:15:\"Update policies\";s:11:\"description\";s:25:\"Revise company guidelines\";s:6:\"status\";s:9:\"completed\";s:8:\"priority\";s:4:\"high\";s:5:\"order\";i:3;s:7:\"user_id\";i:1;s:10:\"created_at\";s:19:\"2025-08-09 12:19:34\";s:10:\"updated_at\";s:19:\"2025-08-09 12:19:34\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:6:\"status\";i:3;s:8:\"priority\";i:4;s:5:\"order\";i:5;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:15:\"App\\Models\\Task\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"tasks\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:4;s:5:\"title\";s:14:\"Approve budget\";s:11:\"description\";s:25:\"Review Q3 budget proposal\";s:6:\"status\";s:7:\"pending\";s:8:\"priority\";s:4:\"high\";s:5:\"order\";i:4;s:7:\"user_id\";i:1;s:10:\"created_at\";s:19:\"2025-08-09 12:19:34\";s:10:\"updated_at\";s:19:\"2025-08-09 12:19:34\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:4;s:5:\"title\";s:14:\"Approve budget\";s:11:\"description\";s:25:\"Review Q3 budget proposal\";s:6:\"status\";s:7:\"pending\";s:8:\"priority\";s:4:\"high\";s:5:\"order\";i:4;s:7:\"user_id\";i:1;s:10:\"created_at\";s:19:\"2025-08-09 12:19:34\";s:10:\"updated_at\";s:19:\"2025-08-09 12:19:34\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:6:\"status\";i:3;s:8:\"priority\";i:4;s:5:\"order\";i:5;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:4;O:15:\"App\\Models\\Task\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"tasks\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:5;s:5:\"title\";s:15:\"Send newsletter\";s:11:\"description\";s:27:\"Monthly update to all staff\";s:6:\"status\";s:9:\"completed\";s:8:\"priority\";s:6:\"medium\";s:5:\"order\";i:5;s:7:\"user_id\";i:1;s:10:\"created_at\";s:19:\"2025-08-09 12:19:34\";s:10:\"updated_at\";s:19:\"2025-08-09 12:19:34\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:5;s:5:\"title\";s:15:\"Send newsletter\";s:11:\"description\";s:27:\"Monthly update to all staff\";s:6:\"status\";s:9:\"completed\";s:8:\"priority\";s:6:\"medium\";s:5:\"order\";i:5;s:7:\"user_id\";i:1;s:10:\"created_at\";s:19:\"2025-08-09 12:19:34\";s:10:\"updated_at\";s:19:\"2025-08-09 12:19:34\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:6:\"status\";i:3;s:8:\"priority\";i:4;s:5:\"order\";i:5;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1754713738);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"1308f328-91ca-4be2-81bd-8181c9215f6a\",\"displayName\":\"App\\\\Events\\\\TaskCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\TaskCreated\\\":1:{s:4:\\\"task\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Task\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1754684988,\"delay\":null}', 0, NULL, 1754684988, 1754684988),
(2, 'default', '{\"uuid\":\"9306c295-748d-4160-a4fe-c38fef2b8451\",\"displayName\":\"App\\\\Events\\\\TaskCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\TaskCreated\\\":1:{s:4:\\\"task\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Task\\\";s:2:\\\"id\\\";i:9;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1754706682,\"delay\":null}', 0, NULL, 1754706682, 1754706682),
(3, 'default', '{\"uuid\":\"6a7e733b-a457-4e3d-ad55-54f9cbf233c8\",\"displayName\":\"App\\\\Events\\\\TaskCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\TaskCreated\\\":1:{s:4:\\\"task\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Task\\\";s:2:\\\"id\\\";i:10;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1754706933,\"delay\":null}', 0, NULL, 1754706933, 1754706933),
(4, 'default', '{\"uuid\":\"99c87a89-8966-4f2e-8fc3-3054469ae117\",\"displayName\":\"App\\\\Events\\\\TaskCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\TaskCreated\\\":1:{s:4:\\\"task\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Task\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1754707477,\"delay\":null}', 0, NULL, 1754707477, 1754707477),
(5, 'default', '{\"uuid\":\"4267692f-8850-4ac2-bd6a-3083399bb1f6\",\"displayName\":\"App\\\\Events\\\\TaskCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\TaskCreated\\\":1:{s:4:\\\"task\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Task\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1754707630,\"delay\":null}', 0, NULL, 1754707630, 1754707630),
(6, 'default', '{\"uuid\":\"66b3acc0-5277-4af5-9748-d6c3de8d3974\",\"displayName\":\"App\\\\Events\\\\TaskCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\TaskCreated\\\":1:{s:4:\\\"task\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Task\\\";s:2:\\\"id\\\";i:13;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1754708020,\"delay\":null}', 0, NULL, 1754708020, 1754708020),
(7, 'default', '{\"uuid\":\"91fa718c-d7a9-4dfa-bbea-5b2f3eeb9986\",\"displayName\":\"App\\\\Events\\\\TaskCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\TaskCreated\\\":1:{s:4:\\\"task\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Task\\\";s:2:\\\"id\\\";i:14;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1754708031,\"delay\":null}', 0, NULL, 1754708031, 1754708031),
(8, 'default', '{\"uuid\":\"64123bd3-6308-489a-a66c-0380023406c0\",\"displayName\":\"App\\\\Events\\\\TaskCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\TaskCreated\\\":1:{s:4:\\\"task\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Task\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1754710289,\"delay\":null}', 0, NULL, 1754710289, 1754710289),
(9, 'default', '{\"uuid\":\"ac8ac5cb-cba7-4c21-907f-c2f71e897166\",\"displayName\":\"App\\\\Events\\\\TaskCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\TaskCreated\\\":1:{s:4:\\\"task\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Task\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1754712880,\"delay\":null}', 0, NULL, 1754712880, 1754712880);

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_08_08_113439_create_personal_access_tokens_table', 1),
(6, '2025_08_08_120825_create_tasks_table', 2),
(7, '2025_08_08_172555_add_role_to_users_table', 3);

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
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 7, 'api-token', 'b47a1c694394fcf6eb23bfd96448a0cf3083dcc2d7bec7b878ce8199ea18ab88', '[\"*\"]', '2025-08-08 18:58:46', NULL, '2025-08-08 18:34:37', '2025-08-08 18:58:46'),
(3, 'App\\Models\\User', 1, 'api-token', '0b156b7c2efc09f6c5907255216666ede99c7226255daee5e7c36a73f62aa28f', '[\"*\"]', '2025-08-08 20:22:12', NULL, '2025-08-08 19:01:08', '2025-08-08 20:22:12'),
(4, 'App\\Models\\User', 6, 'api-token', '5406a92619968c4f553446a7163ef8a5606d538d9c52238811df695ba21a5357', '[\"*\"]', NULL, NULL, '2025-08-08 19:15:43', '2025-08-08 19:15:43'),
(5, 'App\\Models\\User', 6, 'api-token', '8d4ca01f2f8fad26bd8990f4dcada0a2e0b546e70a32b77abc985e9a69cc5830', '[\"*\"]', NULL, NULL, '2025-08-08 19:16:01', '2025-08-08 19:16:01'),
(6, 'App\\Models\\User', 6, 'api-token', 'be88311746299367f33f13bd68e2afc34d9c7fa9d09e6eb3d285664a71375991', '[\"*\"]', NULL, NULL, '2025-08-08 19:16:32', '2025-08-08 19:16:32'),
(7, 'App\\Models\\User', 6, 'api-token', '98c228b94811457698bd61ff59a5f5c42cc1624402f74d36e85f788a1f757d74', '[\"*\"]', NULL, NULL, '2025-08-08 19:18:08', '2025-08-08 19:18:08'),
(8, 'App\\Models\\User', 8, 'api-token', '315b7264298d3a419b816292654a031ab9d98dce906f8a037460e49a61347b19', '[\"*\"]', NULL, NULL, '2025-08-08 19:20:55', '2025-08-08 19:20:55'),
(9, 'App\\Models\\User', 8, 'api-token', 'b1e01802f129e39d21855a4086eea1a912ef4d4958742ec2748ba0a0b31a0fa0', '[\"*\"]', NULL, NULL, '2025-08-08 19:25:51', '2025-08-08 19:25:51'),
(10, 'App\\Models\\User', 8, 'api-token', 'ec865915225e8d1d6bc32acca9a08651d93bd900b8adc5baa4c55fa5619f0d43', '[\"*\"]', NULL, NULL, '2025-08-08 19:26:01', '2025-08-08 19:26:01'),
(11, 'App\\Models\\User', 8, 'api-token', '29aef41f03e2a8a0eef315aa90f325e35c174f6f2ee31ca8f0d3988dca2083ad', '[\"*\"]', NULL, NULL, '2025-08-08 19:26:30', '2025-08-08 19:26:30'),
(12, 'App\\Models\\User', 8, 'api-token', 'b1f255376ada61689b948b6fe670204a929f23251bcea57eb0b630edb87e670f', '[\"*\"]', NULL, NULL, '2025-08-08 19:27:29', '2025-08-08 19:27:29'),
(13, 'App\\Models\\User', 8, 'api-token', '53a6f0f3d729da4cdfc69312f06897bc145f69feaaa02f86244c7f8ec0d385c0', '[\"*\"]', NULL, NULL, '2025-08-08 19:28:20', '2025-08-08 19:28:20'),
(14, 'App\\Models\\User', 8, 'api-token', 'a86f1b3b26ffc0263958ac5b541b381ac2a651c4f14f14047ae5c40d8752e587', '[\"*\"]', NULL, NULL, '2025-08-08 19:31:05', '2025-08-08 19:31:05'),
(15, 'App\\Models\\User', 8, 'api-token', '4bef14ab29bee814aeb370077d7b3031b566771671a4dbb58f6783f66a3fa398', '[\"*\"]', NULL, NULL, '2025-08-08 19:35:53', '2025-08-08 19:35:53'),
(16, 'App\\Models\\User', 8, 'api-token', '5d0f9b86461ccbc5f14b280c01c3f86dd96718d349d42e9e49c879d7b020e9fc', '[\"*\"]', NULL, NULL, '2025-08-08 19:43:50', '2025-08-08 19:43:50'),
(17, 'App\\Models\\User', 8, 'api-token', '996e4af4e7aa7ce128ae740e18326355ea94df460ba4d0974b7504b839bca860', '[\"*\"]', NULL, NULL, '2025-08-08 19:47:58', '2025-08-08 19:47:58'),
(18, 'App\\Models\\User', 8, 'api-token', 'c706a0aac054fc4536951b611dfa6312a1f8495be388ec7382f8f472aaaf63ff', '[\"*\"]', NULL, NULL, '2025-08-08 19:48:32', '2025-08-08 19:48:32'),
(19, 'App\\Models\\User', 8, 'api-token', 'afc206c5da0238482b2ff42b426e059c50aa7232aa8722e1601caf9adc0e6c84', '[\"*\"]', NULL, NULL, '2025-08-08 19:51:55', '2025-08-08 19:51:55'),
(20, 'App\\Models\\User', 8, 'api-token', '361a715f5dcb2005b6316be2d0b8152a13096b2507974da90c71423abe9c1fbe', '[\"*\"]', NULL, NULL, '2025-08-08 19:54:36', '2025-08-08 19:54:36'),
(21, 'App\\Models\\User', 8, 'api-token', 'ea596d7922b1399adcce6861f444e5d958b71fc6c88e10cbd92f2309e03c5b64', '[\"*\"]', NULL, NULL, '2025-08-08 19:54:43', '2025-08-08 19:54:43'),
(22, 'App\\Models\\User', 8, 'api-token', '2ba61b5025e056ecc94796839b9e9d2db71b80c7453a4a2a137877a85d7ec5e9', '[\"*\"]', NULL, NULL, '2025-08-08 19:55:42', '2025-08-08 19:55:42'),
(23, 'App\\Models\\User', 8, 'api-token', '15dd1af76b311cf9afdac0cae02d06a5ca101e39af954d162d6e591bd8e69a37', '[\"*\"]', NULL, NULL, '2025-08-08 19:57:42', '2025-08-08 19:57:42'),
(24, 'App\\Models\\User', 8, 'api-token', 'ba9cb928af65e4b81c72bb0c6dfccaf03309c8c674f647f22fcf7b717bd479cb', '[\"*\"]', NULL, NULL, '2025-08-08 19:59:36', '2025-08-08 19:59:36'),
(25, 'App\\Models\\User', 8, 'api-token', 'f33d78669703a5e9d44325b6d3207615ded791aa62fac0ae7dcefa6010679bc0', '[\"*\"]', NULL, NULL, '2025-08-08 20:07:36', '2025-08-08 20:07:36'),
(26, 'App\\Models\\User', 8, 'api-token', 'd1f8c5cc1a1945a75f92f31fda4ee7a6635882141a3f4861f5a280bb3a8b512d', '[\"*\"]', NULL, NULL, '2025-08-08 20:09:01', '2025-08-08 20:09:01'),
(27, 'App\\Models\\User', 8, 'api-token', '4091391ce0f0c19508826b670da806c4215240936746180b6ca3bf58f55512d7', '[\"*\"]', NULL, NULL, '2025-08-08 20:12:02', '2025-08-08 20:12:02'),
(28, 'App\\Models\\User', 8, 'api-token', '73c187527b7039d7cb5d13747240f44dcbe1c4e0dce0995e36892bb0b38d0ad5', '[\"*\"]', NULL, NULL, '2025-08-08 20:13:05', '2025-08-08 20:13:05'),
(29, 'App\\Models\\User', 7, 'api-token', 'eb1db230b8bc8ecad6adf3509b18e2c182248448862f3a33ebe94922d48c7d12', '[\"*\"]', NULL, NULL, '2025-08-08 20:13:41', '2025-08-08 20:13:41');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('pending','completed') NOT NULL DEFAULT 'pending',
  `priority` enum('low','medium','high') NOT NULL DEFAULT 'medium',
  `order` int(11) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `status`, `priority`, `order`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Review team reports', 'Check all submitted reports', 'pending', 'high', 1, 1, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(2, 'Schedule meeting', 'Set up monthly review', 'pending', 'medium', 2, 1, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(3, 'Update policies', 'Revise company guidelines', 'completed', 'high', 3, 1, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(4, 'Approve budget', 'Review Q3 budget proposal', 'pending', 'high', 4, 1, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(5, 'Send newsletter', 'Monthly update to all staff', 'completed', 'medium', 5, 1, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(6, 'Fix plumbing', 'Repair kitchen sink leak', 'pending', 'medium', 1, 2, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(7, 'Paint walls', 'Living room repaint', 'completed', 'low', 2, 2, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(8, 'Install shelves', 'Add storage in garage', 'pending', 'medium', 3, 2, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(9, 'Check wiring', 'Inspect electrical setup', 'pending', 'high', 4, 2, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(10, 'Clean tools', 'Organize toolbox', 'completed', 'low', 5, 2, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(11, 'Fix bug #123', 'Resolve login issue', 'pending', 'high', 1, 3, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(12, 'Write tests', 'Add unit tests for API', 'completed', 'medium', 2, 3, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(13, 'Deploy update', 'Push v1.2 to production', 'pending', 'high', 3, 3, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(14, 'Refactor code', 'Improve readability', 'pending', 'medium', 4, 3, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(15, 'Review PRs', 'Check pending pull requests', 'completed', 'low', 5, 3, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(16, 'Design logo', 'Create new branding', 'pending', 'high', 1, 4, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(17, 'Update UI', 'Revamp dashboard layout', 'completed', 'medium', 2, 4, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(18, 'Create mockups', 'Homepage redesign', 'pending', 'high', 3, 4, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(19, 'Choose fonts', 'Select typography for app', 'pending', 'low', 4, 4, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(20, 'Export assets', 'Prepare files for devs', 'completed', 'medium', 5, 4, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(21, 'Optimize DB', 'Improve query performance', 'pending', 'high', 1, 5, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(22, 'Monitor servers', 'Check uptime and logs', 'completed', 'medium', 2, 5, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(23, 'Update firmware', 'Push latest device update', 'pending', 'high', 3, 5, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(24, 'Document API', 'Write usage guide', 'pending', 'medium', 4, 5, '2025-08-09 04:19:34', '2025-08-09 04:19:34'),
(25, 'Test hardware', 'Run diagnostics', 'completed', 'low', 5, 5, '2025-08-09 04:19:34', '2025-08-09 04:19:34');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Jane Doe', 'jane@example.com', NULL, '$2y$12$XrelLdIMKIzdkHtkSzJzCOWQDXzyOLPvQ9zL8a6d3xTZK6OlIjSTe', NULL, '2025-08-08 04:01:13', '2025-08-08 04:01:13', 'admin'),
(2, 'Jane Doe', 'janedoe@example.com', NULL, '$2y$12$h5QK3q2pN92.5tcYNh1c.uXzbzRpQ974I7mUuG4wcJYJK79myHP7y', NULL, '2025-08-08 04:29:33', '2025-08-08 04:29:33', 'user'),
(3, 'Alice Admin', 'alice.admin@example.com', '2025-08-09 04:18:59', '$2y$10$adminhash', NULL, '2025-08-09 04:18:59', '2025-08-09 04:18:59', 'admin'),
(4, 'Bob Builder', 'bob@example.com', '2025-08-09 04:18:59', '$2y$10$userhash1', NULL, '2025-08-09 04:18:59', '2025-08-09 04:18:59', 'user'),
(5, 'Charlie Coder', 'charlie@example.com', '2025-08-09 04:18:59', '$2y$10$userhash2', NULL, '2025-08-09 04:18:59', '2025-08-09 04:18:59', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
