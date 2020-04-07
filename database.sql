-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2020 at 09:49 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5
SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET
  AUTOCOMMIT = 0;
START TRANSACTION;
SET
  time_zone = "+00:00";
  /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
  /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
  /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
  /*!40101 SET NAMES utf8mb4 */;
--
  -- Database: `signup`
  --
  -- --------------------------------------------------------
  --
  -- Table structure for table `registration`
  --
  CREATE TABLE `registration` (
    `id` int(11) NOT NULL,
    `username` varchar(255) NOT NULL,
    `email` varchar(255) NOT NULL,
    `mobile` varchar(255) NOT NULL,
    `password` varchar(255) NOT NULL,
    `cpassword` varchar(255) NOT NULL,
    `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
  ) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--
  -- Dumping data for table `registration`
  --
INSERT INTO `registration` (
    `id`,
    `username`,
    `email`,
    `mobile`,
    `password`,
    `cpassword`,
    `created_on`
  )
VALUES
  (
    1,
    'Himal Dahal',
    'pcoc2779@gmail.com',
    '9869040032',
    '$2y$10$jhw..Yam6GrXkA6MQlA6ZeR/8xTDHayEmxm1V.er3ybvcxpXU8ndK',
    '$2y$10$mpSLo3QrV73MEe6Br/TfP./zSKSFWtQn5HewHhK/nSL0B02Dn78SW',
    '2020-04-04 15:46:40'
  ),
  (
    2,
    'Himani Dahal',
    'iamhimal@gmail.com',
    '9869049923',
    '$2y$10$y7vNt8f3ZLmeel5Esudy4./4Nhl4RutTbLEm7HLlU9vuQMeb8UV5K',
    '$2y$10$lBDXI2mIrYGp.Uctax.k7eD9cx/HEWeiTYU7bOmjPcEgWRdVwRdZ2',
    '2020-04-04 17:15:20'
  ),
  (
    3,
    'Himal Dahal',
    'admin@admin.com',
    '9869049923',
    '$2y$10$DCfkucXgh78ZW0.BfZOnMetvDqb9kXWyX0QTFiJRuFWXoVrr5rK5e',
    '$2y$10$JSMLtsOpsHCoscB8eZ/lD.Kh0Qh59OQQYndS9ZFFxpNBYZF4IQGEO',
    '2020-04-04 17:24:34'
  );
--
  -- Indexes for dumped tables
  --
  --
  -- Indexes for table `registration`
  --
ALTER TABLE `registration`
ADD
  PRIMARY KEY (`id`);
--
  -- AUTO_INCREMENT for dumped tables
  --
  --
  -- AUTO_INCREMENT for table `registration`
  --
ALTER TABLE `registration`
MODIFY
  `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 4;
COMMIT;
  /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
  /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
  /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;