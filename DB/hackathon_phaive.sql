-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2019 at 04:12 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackathon_phaive`
--
CREATE DATABASE IF NOT EXISTS `hackathon_phaive` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hackathon_phaive`;

-- --------------------------------------------------------

--
-- Table structure for table `acolhidos`
--

CREATE TABLE `acolhidos` (
  `id_acolhido` int(11) NOT NULL,
  `id_entidade` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `idade` int(11) NOT NULL,
  `id_raca` int(11) NOT NULL,
  `genero` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documento`
--

CREATE TABLE `documento` (
  `id_documento` int(11) NOT NULL,
  `base_documento` longtext DEFAULT NULL,
  `id_entidade` int(11) NOT NULL,
  `id_inspecao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `entidade`
--

CREATE TABLE `entidade` (
  `id_entidade` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cnpj` bigint(20) NOT NULL,
  `n_indentificador` bigint(20) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `municipio` varchar(100) NOT NULL,
  `status_entidade` varchar(45) NOT NULL,
  `total_acolhidos` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entidade`
--

INSERT INTO `entidade` (`id_entidade`, `nome`, `cnpj`, `n_indentificador`, `uf`, `municipio`, `status_entidade`, `total_acolhidos`) VALUES
(1, 'abc', 12345678912, 1524251154256, 'BA', 'Salvador', 'Ativo', 12),
(2, 'asad', 123584457582, 1524465456, 'BA', 'Simaos Filho', 'Ativo', 9),
(3, 'jyrgvb', 123584457582, 1524465456, 'BA', 'Simaos Filho', 'Ativo', 15),
(4, 'jyrgvb', 123584457582, 1524465456, 'BA', 'Salvador', 'Ativo', 14),
(5, 'skdjhij sijdfgb sojpdnfg', 123584457582, 1524465456, 'BA', 'Salvador', 'Ativo', 5);

-- --------------------------------------------------------

--
-- Table structure for table `inspecao`
--

CREATE TABLE `inspecao` (
  `id_inspecao` int(11) NOT NULL,
  `id_promotor` int(11) NOT NULL,
  `id_entidade` int(11) NOT NULL,
  `dt_inspecao` date NOT NULL,
  `prox_inspecao` date DEFAULT NULL,
  `id_documento` longtext DEFAULT NULL,
  `status_inspecao` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inspecao`
--

INSERT INTO `inspecao` (`id_inspecao`, `id_promotor`, `id_entidade`, `dt_inspecao`, `prox_inspecao`, `id_documento`, `status_inspecao`) VALUES
(1, 1, 1, '2019-11-08', '2020-03-08', NULL, '1'),
(2, 2, 2, '2008-03-08', '2008-07-08', NULL, '1'),
(3, 2, 3, '2008-03-08', '2008-07-08', NULL, '1'),
(4, 2, 3, '2010-03-08', '2010-07-08', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `inspecao_entidade`
--

CREATE TABLE `inspecao_entidade` (
  `id_entidade` int(11) NOT NULL,
  `id_inspecao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inspecao_entidade`
--

INSERT INTO `inspecao_entidade` (`id_entidade`, `id_inspecao`) VALUES
(1, 1),
(2, 2),
(3, 2),
(3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `promotor`
--

CREATE TABLE `promotor` (
  `id_promotor` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `cpf` bigint(20) NOT NULL,
  `rg` varchar(45) NOT NULL,
  `dt_nascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `promotor_inspecao`
--

CREATE TABLE `promotor_inspecao` (
  `id_promotor` int(11) NOT NULL,
  `id_inspecao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `raca`
--

CREATE TABLE `raca` (
  `id_raca` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `raca`
--

INSERT INTO `raca` (`id_raca`, `descricao`) VALUES
(1, 'Branco'),
(2, 'Negro'),
(3, 'Pardo');

-- --------------------------------------------------------

--
-- Table structure for table `roteiro`
--

CREATE TABLE `roteiro` (
  `id_roteiro` int(11) NOT NULL,
  `id_entidade` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acolhidos`
--
ALTER TABLE `acolhidos`
  ADD PRIMARY KEY (`id_acolhido`),
  ADD KEY `fk_acolhido_entidade` (`id_entidade`),
  ADD KEY `id_raca` (`id_raca`);

--
-- Indexes for table `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`id_documento`,`id_entidade`,`id_inspecao`);

--
-- Indexes for table `entidade`
--
ALTER TABLE `entidade`
  ADD PRIMARY KEY (`id_entidade`);

--
-- Indexes for table `inspecao`
--
ALTER TABLE `inspecao`
  ADD PRIMARY KEY (`id_inspecao`);

--
-- Indexes for table `inspecao_entidade`
--
ALTER TABLE `inspecao_entidade`
  ADD PRIMARY KEY (`id_entidade`,`id_inspecao`),
  ADD KEY `id_inspecao` (`id_inspecao`);

--
-- Indexes for table `promotor`
--
ALTER TABLE `promotor`
  ADD PRIMARY KEY (`id_promotor`);

--
-- Indexes for table `promotor_inspecao`
--
ALTER TABLE `promotor_inspecao`
  ADD PRIMARY KEY (`id_promotor`,`id_inspecao`),
  ADD KEY `id_inspecao` (`id_inspecao`);

--
-- Indexes for table `raca`
--
ALTER TABLE `raca`
  ADD PRIMARY KEY (`id_raca`);

--
-- Indexes for table `roteiro`
--
ALTER TABLE `roteiro`
  ADD PRIMARY KEY (`id_roteiro`),
  ADD KEY `id_entidade` (`id_entidade`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acolhidos`
--
ALTER TABLE `acolhidos`
  MODIFY `id_acolhido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documento`
--
ALTER TABLE `documento`
  MODIFY `id_documento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entidade`
--
ALTER TABLE `entidade`
  MODIFY `id_entidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inspecao`
--
ALTER TABLE `inspecao`
  MODIFY `id_inspecao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `promotor`
--
ALTER TABLE `promotor`
  MODIFY `id_promotor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roteiro`
--
ALTER TABLE `roteiro`
  MODIFY `id_roteiro` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `acolhidos`
--
ALTER TABLE `acolhidos`
  ADD CONSTRAINT `fk_acolhido_entidade` FOREIGN KEY (`id_entidade`) REFERENCES `entidade` (`id_entidade`);

--
-- Constraints for table `inspecao_entidade`
--
ALTER TABLE `inspecao_entidade`
  ADD CONSTRAINT `inspecao_entidade_ibfk_1` FOREIGN KEY (`id_entidade`) REFERENCES `entidade` (`id_entidade`),
  ADD CONSTRAINT `inspecao_entidade_ibfk_2` FOREIGN KEY (`id_inspecao`) REFERENCES `inspecao` (`id_inspecao`);

--
-- Constraints for table `promotor_inspecao`
--
ALTER TABLE `promotor_inspecao`
  ADD CONSTRAINT `promotor_inspecao_ibfk_1` FOREIGN KEY (`id_promotor`) REFERENCES `promotor` (`id_promotor`),
  ADD CONSTRAINT `promotor_inspecao_ibfk_2` FOREIGN KEY (`id_inspecao`) REFERENCES `inspecao` (`id_inspecao`);

--
-- Constraints for table `roteiro`
--
ALTER TABLE `roteiro`
  ADD CONSTRAINT `roteiro_ibfk_1` FOREIGN KEY (`id_entidade`) REFERENCES `entidade` (`id_entidade`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
