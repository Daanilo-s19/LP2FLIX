-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15-Nov-2018 às 03:25
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
  `elenco` text NOT NULL,
  `imagem` varchar(30) NOT NULL,
  `sinopse` text NOT NULL,
  `ano` varchar(4) NOT NULL,
  `avaliacao` int(1) NOT NULL,
  `duracao` int(2) NOT NULL,
  `classificacao` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `midia`
--

INSERT INTO `midia` (`indice`, `tipo`, `genero`, `titulo`, `diretor`, `elenco`, `imagem`, `sinopse`, `ano`, `avaliacao`, `duracao`, `classificacao`) VALUES
(1, 'filme', 'Animação', 'A era do gelo', 'Chris Wedge', 'John Leguizamo, Ray Romano, Denis Leary, Chris Wedge, ', '\"images/c6.jpg\"', 'Vinte mil anos atrás, num mundo coberto de gelo, o mamute Manfred e a preguiça Sid resgatam um bebê humano órfão. Agora, os dois vão enfrentar muitas aventuras até devolver o filhote de gente à sua tribo, que migrou para um novo acampamento.', '2002', 10, 103, 0),
(2, 'filme', 'Animação', 'A vida secreta dos Pets', 'Chris Renaud, Yarrow Cheney', ' Kevin Hart, Jenny Slate, Louis C.K., Eric Stonestreet, MAIS', '\"images/m20.jpg\"', 'Max é um cãozinho que tem sua vida virada de cabeça para baixo quando seu dono traz para casa um vira-lata desleixado chamado Duke. Mas as desavenças terminam quando um coelho quer se vingar de todos os pets que tem dono.', '2016', 8, 100, 0),
(3, 'filme', 'Animação', 'Moana', 'Ron Clements, John Musker', ' Auli\'i Cravalho, Dwayne Johnson, Jemaine Clement, MAIS', '\"images/c1.jpg\"', 'Uma jovem decide velejar através do Oceano Pacífico, com a ajuda de um semi-deus, em uma viagem que pode mudar a vida de todos.', '2017', 9, 113, 0),
(4, 'filme', 'Animação', 'O rei Leão', '\r\nRoger Allers, Rob Minkoff', ' Garcia Júnior, James Earl Jones', '\"images/a1.jpg\"', 'Mufasa (voz de James Earl Jones), o Rei Leão, e a rainha Sarabi (voz de Madge Sinclair) apresentam ao reino o herdeiro do trono, Simba (voz de Matthew Broderick). O recém-nascido recebe a bênção do sábio babuíno Rafiki (voz de Robert Guillaume), mas ao crescer é envolvido nas artimanhas de seu tio Scar (voz de Jeremy Irons), o invejoso e maquiavélico irmão de Mufasa, que planeja livrar-se do sobrinho e herdar o trono', '1994', 10, 89, 0),
(5, 'filme ', 'Animação', 'Como Treinar o seu Dragão 2', 'Dean DeBlois', 'Rodrigo Lombardi, Jay Baruchel, Cate Blanchett mais', '\"images/a2.jpg\"', 'Cinco anos após convencer os habitantes de seu vilarejo que os dragões não devem ser combatidos, Soluço (voz de Jay Baruchel) convive com seu dragão Fúria da Noite, e estes animais integraram pacificamente a rotina dos moradores da ilha de Berk. ', '2014', 10, 0, 0),
(6, 'filme', 'Animação', 'A Bela e a Fera', 'Gary Trousdale, Kirk Wise', 'Paige O\'Hara, Robby Benson, Jerry Orbach mais', '\"images/a3.jpg\"', 'Em uma pequena aldeia da França vive Belle, uma jovem inteligente que é considerada estranha pelo moradores da localidade, e seu pai, Maurice, um inventor que é visto como um louco.', '2010', 5, 89, 6),
(7, 'filme', 'Animacação', 'Viva - A vida é um festa', 'Lee Unkrich', 'Anthony Gonzalez (VIII), Benjamin Bratt, Gael García Bernal', '\"images/a4.jpg\"', 'Miguel é um menino de 12 anos que quer muito ser um músico famoso, mas ele precisa lidar com sua família que desaprova seu sonho. Determinado a virar o jogo, ele acaba desencadeando uma série de eventos ligados a um mistério de 100 anos. A aventura, com inspiração no feriado mexicano do Dia dos Mortos, acaba gerando uma extraordinária reunião familiar.', '2018', 10, 105, 0),
(8, 'filme', 'Animacação', 'Divertida Mente', ' Pete Docter', '\r\nMiá Mello, Otaviano Costa', '\"images/a5.jpg\"', 'Riley é uma garota divertida de 11 anos de idade, que deve enfrentar mudanças importantes em sua vida quando seus pais decidem deixar a sua cidade natal, no estado de Minnesota, para viver em San Francisco. Dentro do cérebro de Riley, convivem várias emoções diferentes, como a Alegria, o Medo, a Raiva, o Nojinho e a Tristeza.', '2015', 10, 95, 6),
(9, 'filme', 'Animacação', 'Toy Story - Um Mundo de Aventuras', 'John Lasseter', '\r\nTim Allen, Don Rickles', '\"images/a6.jpg\"', 'O aniversário de Andy está chegando e os brinquedos estão nervosos. Afinal de contas, eles temem que um novo brinquedo possa substituí-los. Liderados por Woody, um caubói que é também o brinquedo predileto de Andy, eles montam uma escuta que lhes permite saber dos presentes ganhos.', '1995', 8, 77, 0),
(10, 'filme', 'Animacação', 'A Viagem de Chihiro', 'Hayao Miyazaki', 'Rumi Hiiragi, Miyu Irino, Mari Natsuki mais', '\"images/a7.jpg\"', 'Chihiro é uma garota de 10 anos que acredita que todo o universo deve atender aos seus caprichos. Ao descobrir que vai se mudar, ela fica furiosa. Na viagem, Chihiro percebe que seu pai se perdeu no caminho para a nova cidade, indo parar defronte um túnel aparentemente sem fim, guardado por uma estranha estátua. ', '2003', 10, 125, 0),
(11, 'filme', 'Animacação', 'Procurando Nemo', 'Andrew Stanton, Lee Unkrich', 'Albert Brooks, Ellen DeGeneres, Alexander Gould mais', '\"images/a8.jpg\"', 'O passado reserva tristes memórias para Marlin nos recifes de coral, onde perdeu sua esposa e toda a ninhada. Agora, ele cria seu único filho Nemo com todo o cuidado do mundo, mas o pequeno e simpático peixe-palhaço acaba exagerando durante uma simples discussão e acaba sendo capturado por um mergulhador. ', '2012', 7, 101, 3),
(12, 'filme', 'Animacação', 'MEU MALVADO FAVORITO 2', 'Chris Renaud, Pierre Coffin', 'Leandro Hassum, Maria Clara Gueiros, Luiz Carlos Persy mais', '\"images/a9.jpg\"', 'Gru (voz de Steve Carell/Leandro Hassum) mudou radicalmente sua vida e agora seu negócio é se dedicar às filhotas Agnes (Elsie Fisher), Edith (Dana Gaier) e Margo (Miranda Cosgrove), deixando de lado os tempos de vilão.', '2013', 10, 98, 3);

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `visitados`
--

CREATE TABLE `visitados` (
  `login` varchar(10) NOT NULL,
  `ident` int(4) NOT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `visitados`
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
