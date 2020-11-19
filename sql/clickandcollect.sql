-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 19, 2020 at 04:43 PM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `clickandcollect`
--

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `idUser` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `addresHome` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`idUser`, `role`, `firstname`, `lastname`, `mail`, `mdp`, `addresHome`, `tel`) VALUES
(1, 'Admin', 'Sandrine', 'Akilano', 'sdrne.sio@gmail.com', 'test123', '1 Rue du Panda, Paris, 75016', '0000000000'),
(2, 'Admin', 'Baptiste', 'Dantas', 'baptistedantaspro@gmail.com', 'test123', '1 Rue du Panda, Paris, 75016', '0000000000'),
(3, 'Admin', 'Thierno', 'Balde', 'ibrahimabotore@gmail.com', 'test123', '1 Rue du Panda, Paris, 75016 ', '0000000000'),
(4, 'Admin', 'Ulysse', 'Perret', 'ulysseperret@orange.fr', 'test123', '1 Rue du Panda, Paris, 75016 ', '‭0644307241‬'),
(5, 'Admin', 'root', 'root', 'root@gmail.com', 'test123', '1 Rue du Panda, Paris, 75016 ', '0000000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
