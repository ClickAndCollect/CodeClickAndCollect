-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 18, 2020 at 12:59 PM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `clickandcollect`
--

-- --------------------------------------------------------

--
-- Table structure for table `Basket`
--

CREATE TABLE `Basket` (
  `IdBasket` int(11) NOT NULL,
  `IdOrder` int(11) NOT NULL,
  `priceOrder` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Bill`
--

CREATE TABLE `Bill` (
  `idBill` int(11) NOT NULL,
  `idPayment` int(11) NOT NULL,
  `idOrder` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `firsnameUser` varchar(255) NOT NULL,
  `lastnameUser` varchar(255) NOT NULL,
  `dateRecovery` date NOT NULL,
  `nameProduct` varchar(255) NOT NULL,
  `nbProduct` int(11) NOT NULL,
  `priceProduct` double NOT NULL,
  `totalPrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE `Orders` (
  `idOrder` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `nbProducts` int(11) NOT NULL,
  `totalProductPrice` double NOT NULL COMMENT 'le prix total avec totalProductPrice=prixproduit*nbproduit',
  `stateOrder` varchar(255) NOT NULL COMMENT 'L''etat de la commande (disponible/au cour reapprovionnement)',
  `dateOrder` date NOT NULL COMMENT 'la date ou on passe la commande',
  `dateRecovery` date NOT NULL COMMENT 'la date ou on recupere le produit'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Orders`
--

INSERT INTO `Orders` (`idOrder`, `idUser`, `idProduct`, `nbProducts`, `totalProductPrice`, `stateOrder`, `dateOrder`, `dateRecovery`) VALUES
(1, 1, 2, 2, 40.08, 'Disponible', '2020-11-18', '2020-11-19'),
(2, 1, 1, 2, 60, 'Disponible', '2020-11-18', '2020-11-19');

-- --------------------------------------------------------

--
-- Table structure for table `Payment`
--

CREATE TABLE `Payment` (
  `idPayment` int(11) NOT NULL,
  `idBasket` int(11) NOT NULL,
  `typePayement` varchar(255) NOT NULL,
  `totalPrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Pictures`
--

CREATE TABLE `Pictures` (
  `idPicture` int(11) NOT NULL,
  `img_name` varchar(50) NOT NULL,
  `img_lengh` varchar(25) NOT NULL,
  `img_type` varchar(25) NOT NULL,
  `img_desc` varchar(100) NOT NULL,
  `img_blob` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `idProduct` int(11) NOT NULL,
  `idPicture` int(11) NOT NULL,
  `nameProduct` varchar(255) NOT NULL,
  `nbProdShelf` int(11) NOT NULL COMMENT 'nombre du produit en rayon',
  `stock` int(11) NOT NULL COMMENT 'stock en reserve',
  `price` double NOT NULL,
  `categoryproduct` varchar(255) NOT NULL,
  `detailsproduct` text NOT NULL COMMENT 'detaille du produit'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`idProduct`, `idPicture`, `nameProduct`, `nbProdShelf`, `stock`, `price`, `categoryproduct`, `detailsproduct`) VALUES
(1, 1, 'L\'overdose des ailes', 100, 200, 30, 'Parfum pour femme', 'L\'overdose des ailes est un parfum pour femme qui permet de se libérer et sentir l\'air du vent.\r\nIl permet se démarquer d\'un air naturel'),
(2, 2, 'L\'odeur du panda', 10, 100, 20.04, 'Parfum pour homme', 'Pour sentir le bon gout.\r\nOdeur un peu boisée/bambou');

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
(1, 'Admin', 'Sandrine', 'Akilano', 'sdrne.sio@gmail.com', 'test123', '1 rue du Panda', '0000000000'),
(2, 'Admin', 'Baptiste', 'Dantas', 'baptistedantaspro@gmail.com', 'test123', '2 rue du Panda', '0000000000'),
(3, 'Admin', 'Thierno', 'Balde', 'ibrahimabotore@gmail.com', 'test123', '3 rue du Panda', '0000000000'),
(4, 'Admin', 'Ulysse', 'Perret', 'ulysseperret@orange.fr', 'test123', '4 rue du Panda', '‭0644307241‬'),
(5, 'Admin', 'root', 'root', 'root@gmail.com', 'test123', '5 rue du panda', '0000000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Basket`
--
ALTER TABLE `Basket`
  ADD PRIMARY KEY (`IdBasket`),
  ADD KEY `IdOrder` (`IdOrder`);

--
-- Indexes for table `Bill`
--
ALTER TABLE `Bill`
  ADD PRIMARY KEY (`idBill`),
  ADD UNIQUE KEY `idPayment` (`idPayment`),
  ADD UNIQUE KEY `idOrder` (`idOrder`);

--
-- Indexes for table `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`idOrder`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Indexes for table `Payment`
--
ALTER TABLE `Payment`
  ADD PRIMARY KEY (`idPayment`),
  ADD UNIQUE KEY `idOrder` (`idBasket`);

--
-- Indexes for table `Pictures`
--
ALTER TABLE `Pictures`
  ADD PRIMARY KEY (`idPicture`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`idProduct`),
  ADD KEY `idPicture_2` (`idPicture`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Basket`
--
ALTER TABLE `Basket`
  MODIFY `IdBasket` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Bill`
--
ALTER TABLE `Bill`
  MODIFY `idBill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Orders`
--
ALTER TABLE `Orders`
  MODIFY `idOrder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Payment`
--
ALTER TABLE `Payment`
  MODIFY `idPayment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Pictures`
--
ALTER TABLE `Pictures`
  MODIFY `idPicture` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Product`
--
ALTER TABLE `Product`
  MODIFY `idProduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Basket`
--
ALTER TABLE `Basket`
  ADD CONSTRAINT `basket_ibfk_1` FOREIGN KEY (`IdOrder`) REFERENCES `Orders` (`idOrder`);

--
-- Constraints for table `Bill`
--
ALTER TABLE `Bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`idOrder`) REFERENCES `Orders` (`idOrder`) ON UPDATE CASCADE,
  ADD CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`idPayment`) REFERENCES `Payment` (`idPayment`);

--
-- Constraints for table `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `Users` (`idUser`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `Product` (`idProduct`);

--
-- Constraints for table `Payment`
--
ALTER TABLE `Payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`idBasket`) REFERENCES `Basket` (`IdBasket`);

--
-- Constraints for table `Pictures`
--
ALTER TABLE `Pictures`
  ADD CONSTRAINT `pictures_ibfk_1` FOREIGN KEY (`idPicture`) REFERENCES `Product` (`idPicture`);
