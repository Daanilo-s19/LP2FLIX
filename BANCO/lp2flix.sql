-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 14-Nov-2018 às 20:42
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 7.2.11

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
-- Estrutura da tabela `midia`
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
-- Extraindo dados da tabela `midia`
--

INSERT INTO `midia` (`indice`, `tipo`, `genero`, `titulo`, `diretor`, `elenco`, `imagem`, `sinopse`, `ano`, `avaliacao`, `duracao`, `classificacao`) VALUES
(1, 'filme', 'drama', 'Nasce uma Estrela', '', '', '', '', '2018', 0, 0, 0),
(2, 'filme', 'romance', 'Como  eu era antes de voce', '', '', '', '', '2016', 0, 0, 0),
(3, 'filme', 'romance', 'A Bela e a Fera', '', '', '', '', '2017', 0, 0, 0),
(4, 'filme', 'terror', 'Venom', '', '', '', '', '2018', 0, 0, 0),
(5, 'filme ', 'terror', 'It: a  coisa', '', '', '', '', '2017', 0, 0, 0),
(6, 'filme', 'terror', 'Anabelle', '', '', '', '', '2010', 0, 0, 0);

--
-- Indexes for dumped tables
--
-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `login` varchar(10) NOT NULL,
  `senha` varchar(8) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `datanasc` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`login`, `senha`, `nome`, `datanasc`) VALUES
('Joao', '123456', '', 0),
('Jose', '234567', '', 0);

--
-- Indexes for dumped tables
CREATE TABLE `visitados` (
  `login` varchar(10) NOT NULL,
  `ident` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `visitados`
--

INSERT INTO `visitados` (`login`, `ident`) VALUES
('Jose', 1),
('Joao', 2),
('Jose', 3),
('Jose', 3),
('Joao', 4),
('Joao', 5);

--
-- Indexes for dumped tables
--
--

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`login`);
COMMIT;

-- Indexes for table `midia`
--
ALTER TABLE `midia`
  ADD PRIMARY KEY (`indice`);
COMMIT;
