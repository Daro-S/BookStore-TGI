-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 07, 2022 at 06:49 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BookStoreTGI`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookstore`
--

CREATE TABLE `bookstore` (
  `id` bigint(20) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_available` varchar(255) DEFAULT NULL,
  `isbn` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookstore`
--

INSERT INTO `bookstore` (`id`, `category`, `description`, `image`, `is_available`, `isbn`, `name`, `price`, `rating`) VALUES
(1, 'Novel', 'Beloved is a 1987 novel by the American writer Toni Morrison. Set after the American Civil War, it tells the story of a family of formerly enslaved people whose Cincinnati home is haunted by a malevolent spirit.', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTK1H3KTFiCBn8RoGMOikUcT71l7SSa7jblH-Ei4ObhGORmhwaA', 'Available', '978-1-56619-909-4', 'Beloved', 10, 5),
(15, 'novel', 'Invisible Man is a novel by Ralph Ellison, published by Random House in 1952. It addresses many of the social and intellectual issues faced by African Americans in the early twentieth century, including ...', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9j3TOyER2ybel6jCMXeKu21IpayG6zssPc9rpmKlmueF4VK7R', 'false', 'B2022', 'Invisible Man', 15, 4),
(111, 'novel', 'To Kill a Mockingbird is a novel by the American author Harper Lee. It was published in 1960 and was instantly successful. In the United States, it is widely read in high schools and middle schools.', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcR4BwYfcsXoaALzCCvGYu9vAH35ni549OMEHUOIFO8BSUsRomdy', 'false', 'B2012', 'MomoNoka Saki', 201, 4),
(1111, 'novel', 'To Kill a Mockingbird is a novel by the American author Harper Lee. It was published in 1960 and was instantly successful. In the United States, it is widely read in high schools and middle schools.', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcR4BwYfcsXoaALzCCvGYu9vAH35ni549OMEHUOIFO8BSUsRomdy', 'false', 'B2012', 'MomoNoka Saki', 201, 4),
(1112, 'novel', 'Jane Eyre is a novel by the English writer Charlotte Brontë. It was published under her pen name \"Currer Bell\" on 19 October 1847 by Smith, Elder & Co. In the United States, it is widely read in high schools and middle schools.', 'https://m.media-amazon.com/images/M/MV5BNWVmMmQzYjgtNGI0ZS00N2E3LWE4MDktYTViMTVkYTU2YzczXkEyXkFqcGdeQXVyNjc3MjQzNTI@._V1_.jpg', 'false', 'B2012', 'MomoNoka Saki', 201, 4),
(122, 'novel', 'Jane Eyre is a novel by the English writer Charlotte Brontë. It was published under her pen name \"Currer Bell\" on 19 October 1847 by Smith, Elder & Co. In the United States, it is widely read in high schools and middle schools.', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSO_E3miG7dDHLytiGJLfqf3GUGg_7k4aC8g40AB_kvbenPHi7V', 'false', 'B2012', 'MomoNoka Saki', 201, 4),
(132, 'novel', 'Jane Eyre is a novel by the English writer Charlotte Brontë. It was published under her pen name \"Currer Bell\" on 19 October 1847 by Smith, Elder & Co. In the United States, it is widely read in high schools and middle schools.', 'https://m.media-amazon.com/images/M/MV5BMTU0NDgxNDg0NV5BMl5BanBnXkFtZTcwMjE4MzkwOA@@._V1_.jpg', 'false', 'B2012', 'MomoNoka Saki', 201, 4),
(1132, 'novel', 'Jane Eyre is a novel by the English writer Charlotte Brontë. It was published under her pen name \"Currer Bell\" on 19 October 1847 by Smith, Elder & Co. In the United States, it is widely read in high schools and middle schools.', 'https://m.media-amazon.com/images/M/MV5BMTU0NDgxNDg0NV5BMl5BanBnXkFtZTcwMjE4MzkwOA@@._V1_.jpg', 'false', 'B2012', 'MomoNoka Saki', 201, 4),
(2, NULL, 'Most popular book in history ', 'https://images-na.ssl-images-amazon.com/images/I/41VnFKC9srL._SX346_BO1,204,203,200_.jpg', '1', '7c3b9ce2-8234-452b-84af-d94082b9d502', 'test', 2, 0),
(3, NULL, 'Most popular book in history ', 'https://images-na.ssl-images-amazon.com/images/I/41VnFKC9srL._SX346_BO1,204,203,200_.jpg', '1', 'ec2fb718-1d59-4bf5-a44b-006a23203a64', 'test', 2, 0),
(4, NULL, 'Most popular book in history ', 'https://images-na.ssl-images-amazon.com/images/I/41VnFKC9srL._SX346_BO1,204,203,200_.jpg', '1', '425cc44f-5112-4894-b408-aeddced5c787', 'test', 2, 0),
(5, NULL, 'Most popular book in history ', 'https://images-na.ssl-images-amazon.com/images/I/41VnFKC9srL._SX346_BO1,204,203,200_.jpg', '1', '30fcdd9e-e0d5-4b4f-a288-50cbed92f70c', 'test', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookstore`
--
ALTER TABLE `bookstore`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
