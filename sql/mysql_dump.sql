ET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP DATABASE IF EXISTS `assignment`;
CREATE DATABASE `assignment` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `assignment`;

DROP TABLE IF EXISTS `SequelizeMeta`;
CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20240309164533-create-students.js');

DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `college_id` int NOT NULL,
  `salutaion` varchar(5) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `emergency_contact` varchar(12) NOT NULL,
  `profile_picture` text NOT NULL,
  `signature` text NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `students` (`id`, `college_id`, `salutaion`, `first_name`, `middle_name`, `last_name`, `email`, `mobile`, `gender`, `dob`, `emergency_contact`, `profile_picture`, `signature`, `blood_group`, `createdAt`, `updatedAt`) VALUES
(1,	1,	'Mr.',	'A',	'A',	'Doe',	'example1@example.com',	'1111111111',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(2,	1,	'Mr.',	'B',	'A',	'Doe',	'example2@example.com',	'1111111112',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(3,	1,	'Mr.',	'C',	'A',	'Doe',	'example3@example.com',	'1111111113',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(4,	1,	'Mr.',	'D',	'A',	'Doe',	'example4@example.com',	'1111111114',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(5,	1,	'Mr.',	'E',	'A',	'Doe',	'example5@example.com',	'1111111115',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(6,	1,	'Mr.',	'F',	'A',	'Doe',	'example6@example.com',	'1111111116',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(7,	1,	'Mr.',	'G',	'A',	'Doe',	'example7@example.com',	'1111111117',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(8,	1,	'Mr.',	'H',	'A',	'Doe',	'example8@example.com',	'1111111118',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(9,	1,	'Mr.',	'I',	'A',	'Doe',	'example9@example.com',	'1111111119',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(10,	1,	'Mr.',	'J',	'A',	'Doe',	'example10@example.com',	'1111111110',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(11,	1,	'Mr.',	'K',	'A',	'Doe',	'example11@example.com',	'1111111011',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(12,	1,	'Mr.',	'L',	'A',	'Doe',	'example12@example.com',	'1111111012',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(13,	1,	'Mr.',	'M',	'A',	'Doe',	'example13@example.com',	'1111111013',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(14,	1,	'Mr.',	'N',	'A',	'Doe',	'example14@example.com',	'1111111014',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(15,	1,	'Mr.',	'O',	'A',	'Doe',	'example15@example.com',	'1111111015',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(16,	1,	'Mr.',	'P',	'A',	'Doe',	'example16@example.com',	'1111111016',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(17,	1,	'Mr.',	'Q',	'A',	'Doe',	'example17@example.com',	'1111111017',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(18,	1,	'Mr.',	'R',	'A',	'Doe',	'example18@example.com',	'1111111018',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(19,	1,	'Mr.',	'S',	'A',	'Doe',	'example19@example.com',	'1111111019',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(20,	1,	'Mr.',	'T',	'A',	'Doe',	'example20@example.com',	'1111111020',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(21,	1,	'Mr.',	'U',	'A',	'Doe',	'example21@example.com',	'1111111021',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(22,	1,	'Mr.',	'W',	'A',	'Doe',	'example22@example.com',	'1111111022',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(23,	1,	'Mr.',	'X',	'A',	'Doe',	'example23@example.com',	'1111111023',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(24,	1,	'Mr.',	'Y',	'A',	'Doe',	'example24@example.com',	'1111111024',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(25,	1,	'Mr.',	'Z',	'A',	'Doe',	'example25@example.com',	'1111111025',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(26,	1,	'Mr.',	'AA',	'A',	'Doe',	'example26@example.com',	'1111111026',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(27,	1,	'Mr.',	'AB',	'A',	'Doe',	'example27@example.com',	'1111111027',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(28,	1,	'Mr.',	'AC',	'A',	'Doe',	'example28@example.com',	'1111111028',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(29,	1,	'Mr.',	'AD',	'A',	'Doe',	'example29@example.com',	'1111111029',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(30,	1,	'Mr.',	'AE',	'A',	'Doe',	'example30@example.com',	'1111111030',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(31,	1,	'Mr.',	'AF',	'A',	'Doe',	'example31@example.com',	'1111111031',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(32,	1,	'Mr.',	'AG',	'A',	'Doe',	'example32@example.com',	'1111111032',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(33,	1,	'Mr.',	'AH',	'A',	'Doe',	'example33@example.com',	'1111111033',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(34,	1,	'Mr.',	'AI',	'A',	'Doe',	'example34@example.com',	'1111111034',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(35,	1,	'Mr.',	'AJ',	'A',	'Doe',	'example35@example.com',	'1111111035',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(36,	1,	'Mr.',	'AK',	'A',	'Doe',	'example36@example.com',	'1111111036',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(37,	1,	'Mr.',	'AL',	'A',	'Doe',	'example37@example.com',	'1111111037',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(38,	1,	'Mr.',	'AM',	'A',	'Doe',	'example38@example.com',	'1111111038',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(39,	1,	'Mr.',	'AN',	'A',	'Doe',	'example39@example.com',	'1111111039',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(40,	1,	'Mr.',	'AO',	'A',	'Doe',	'example40@example.com',	'1111111040',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(41,	1,	'Mr.',	'AP',	'A',	'Doe',	'example41@example.com',	'1111111041',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(42,	1,	'Mr.',	'AQ',	'A',	'Doe',	'example42@example.com',	'1111111042',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(43,	1,	'Mr.',	'AR',	'A',	'Doe',	'example43@example.com',	'1111111043',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(44,	1,	'Mr.',	'AS',	'A',	'Doe',	'example44@example.com',	'1111111044',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(45,	1,	'Mr.',	'AT',	'A',	'Doe',	'example45@example.com',	'1111111045',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(46,	1,	'Mr.',	'AU',	'A',	'Doe',	'example46@example.com',	'1111111046',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(47,	1,	'Mr.',	'AV',	'A',	'Doe',	'example47@example.com',	'1111111047',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(48,	1,	'Mr.',	'AW',	'A',	'Doe',	'example48@example.com',	'1111111048',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(49,	1,	'Mr.',	'AX',	'A',	'Doe',	'example49@example.com',	'1111111049',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(50,	1,	'Mr.',	'AY',	'A',	'Doe',	'example50@example.com',	'1111111050',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(51,	1,	'Mr.',	'AZ',	'A',	'Doe',	'example51@example.com',	'1111111051',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(52,	1,	'Mr.',	'BA',	'A',	'Doe',	'example52@example.com',	'1111111052',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(53,	1,	'Mr.',	'BB',	'A',	'Doe',	'example53@example.com',	'1111111053',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(54,	1,	'Mr.',	'BC',	'A',	'Doe',	'example54@example.com',	'1111111054',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(55,	1,	'Mr.',	'BD',	'A',	'Doe',	'example55@example.com',	'1111111055',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(56,	1,	'Mr.',	'BE',	'A',	'Doe',	'example56@example.com',	'1111111056',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(57,	1,	'Mr.',	'BF',	'A',	'Doe',	'example57@example.com',	'1111111057',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(58,	1,	'Mr.',	'BG',	'A',	'Doe',	'example58@example.com',	'1111111058',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(59,	1,	'Mr.',	'BH',	'A',	'Doe',	'example59@example.com',	'1111111059',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(60,	1,	'Mr.',	'BI',	'A',	'Doe',	'example60@example.com',	'1111111060',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(61,	1,	'Mr.',	'BJ',	'A',	'Doe',	'example61@example.com',	'1111111061',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(62,	1,	'Mr.',	'BK',	'A',	'Doe',	'example62@example.com',	'1111111062',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(63,	1,	'Mr.',	'BL',	'A',	'Doe',	'example63@example.com',	'1111111063',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(64,	1,	'Mr.',	'BM',	'A',	'Doe',	'example64@example.com',	'1111111064',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(65,	1,	'Mr.',	'BN',	'A',	'Doe',	'example65@example.com',	'1111111065',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(66,	1,	'Mr.',	'BO',	'A',	'Doe',	'example66@example.com',	'1111111066',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(67,	1,	'Mr.',	'BP',	'A',	'Doe',	'example67@example.com',	'1111111067',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(68,	1,	'Mr.',	'BQ',	'A',	'Doe',	'example68@example.com',	'1111111068',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(69,	1,	'Mr.',	'BR',	'A',	'Doe',	'example69@example.com',	'1111111069',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21'),
(70,	1,	'Mr.',	'BS',	'A',	'Doe',	'example70@example.com',	'1111111070',	'male',	'01-01-2000',	'1231231231',	'pictures/profile/1.jpg',	'pictures/signature/1.jpg',	'O+ve',	'2024-03-09 18:22:21',	'2024-03-09 18:22:21');