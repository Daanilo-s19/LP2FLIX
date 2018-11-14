-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 14, 2018 at 07:48 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lp2flix`
--

-- --------------------------------------------------------

--
-- Table structure for table `midia`
--

CREATE TABLE `midia` (
  `indice` int(4) NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `genero` varchar(15) NOT NULL,
  `titulo` varchar(40) NOT NULL,
  `diretor` varchar(30) NOT NULL,
  `elenco` varchar(30) NOT NULL,
  `imagem` varchar(30) NOT NULL,
  `sinopse` varchar(30) NOT NULL,
  `ano` varchar(4) NOT NULL,
  `avaliacao` int(1) NOT NULL,
  `duracao` int(2) NOT NULL,
  `classificacao` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `midia`
--

INSERT INTO `midia` (`indice`, `tipo`, `genero`, `titulo`, `diretor`, `elenco`, `imagem`, `sinopse`, `ano`, `avaliacao`, `duracao`, `classificacao`) VALUES
(1, 'filme', 'drama', 'Nasce uma Estrela', '', '', '', '', '2018', 0, 0, 0),
(2, 'filme', 'romance', 'Como  eu era antes de voce', '', '', '', '', '2016', 0, 0, 0),
(3, 'filme', 'romance', 'A Bela e a Fera', '', '', '', '', '2017', 0, 0, 0),
(4, 'filme', 'terror', 'Venom', '', '', '', '', '2018', 0, 0, 0),
(5, 'filme ', 'terror', 'It: a  coisa', '', '', '', '', '2017', 0, 0, 0),
(6, 'filme', 'terror', 'Anabelle', '', '', '', '', '2010', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `login` varchar(10) NOT NULL,
  `senha` varchar(8) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `datanasc` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`login`, `senha`, `nome`, `datanasc`) VALUES
('Joao', '123456', '', 0),
('Jose', '234567', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `visitados`
--

CREATE TABLE `visitados` (
  `login` varchar(10) NOT NULL,
  `ident` int(4) NOT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitados`
--

INSERT INTO `visitados` (`login`, `ident`, `count`) VALUES
('Jose', 1, NULL),
('Joao', 2, NULL),
('Jose', 3, NULL),
('Jose', 3, NULL),
('Joao', 4, NULL),
('Joao', 5, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `midia`
--
ALTER TABLE `midia`
  ADD PRIMARY KEY (`indice`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`login`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
