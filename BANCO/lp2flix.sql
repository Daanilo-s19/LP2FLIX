-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13-Nov-2018 às 12:35
-- Versão do servidor: 10.1.32-MariaDB
-- PHP Version: 7.2.5

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
  `ident` int(4) NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `categoria` varchar(15) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `diretor` varchar(30) NOT NULL,
  `ator1` varchar(30) NOT NULL,
  `ator2` varchar(30) NOT NULL,
  `ator3` varchar(30) NOT NULL,
  `ano` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `midia`
--

INSERT INTO `midia` (`ident`, `tipo`, `categoria`, `nome`, `diretor`, `ator1`, `ator2`, `ator3`, `ano`) VALUES
(1, 'filme', 'drama', 'Nasce uma Estrela', '', '', '', '', '2018'),
(2, 'filme', 'romance', 'Como  eu era antes de voce', '', '', '', '', '2016'),
(3, 'filme', 'romance', 'A Bela e a Fera', '', '', '', '', '2017'),
(4, 'filme', 'terror', 'Venom', '', '', '', '', '2018'),
(5, 'filme ', 'terror', 'It: a  coisa', '', '', '', '', '2017'),
(6, 'filme', 'terror', 'Anabelle', '', '', '', '', '2010');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `login` varchar(10) NOT NULL,
  `senha` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`login`, `senha`) VALUES
('Joao', '123456'),
('Jose', '234567');

-- --------------------------------------------------------

--
-- Estrutura da tabela `visitados`
--

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
-- Indexes for table `midia`
--
ALTER TABLE `midia`
  ADD PRIMARY KEY (`ident`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`login`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
