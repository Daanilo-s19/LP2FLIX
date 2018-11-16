-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16-Nov-2018 às 22:48
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
  `classificacao` int(2) NOT NULL,
  `temporada` int(2) NOT NULL COMMENT 'Seérie',
  `bilheteria` int(2) NOT NULL COMMENT 'Filmee'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `midia`
--

INSERT INTO `midia` (`indice`, `tipo`, `genero`, `titulo`, `diretor`, `elenco`, `imagem`, `sinopse`, `ano`, `avaliacao`, `duracao`, `classificacao`, `temporada`, `bilheteria`) VALUES
(1, 'filme', 'Animacao', 'A era do gelo', 'Chris Wedge', 'John Leguizamo, Ray Romano, Denis Leary, Chris Wedge, ', 'images/c6.jpg', 'Vinte mil anos atrás, num mundo coberto de gelo, o mamute Manfred e a preguiça Sid resgatam um bebê humano órfão. Agora, os dois vão enfrentar muitas aventuras até devolver o filhote de gente à sua tribo, que migrou para um novo acampamento.', '2002', 10, 103, 0, 0, 0),
(2, 'filme', 'Animacao', 'A vida secreta dos Pets', 'Chris Renaud, Yarrow Cheney', ' Kevin Hart, Jenny Slate, Louis C.K., Eric Stonestreet, MAIS', 'images/m20.jpg', 'Max é um cãozinho que tem sua vida virada de cabeça para baixo quando seu dono traz para casa um vira-lata desleixado chamado Duke. Mas as desavenças terminam quando um coelho quer se vingar de todos os pets que tem dono.', '2016', 8, 100, 0, 0, 0),
(3, 'filme', 'Animacao', 'Moana', 'Ron Clements, John Musker', ' Auli\'i Cravalho, Dwayne Johnson, Jemaine Clement, MAIS', 'images/c1.jpg', 'Uma jovem decide velejar através do Oceano Pacífico, com a ajuda de um semi-deus, em uma viagem que pode mudar a vida de todos.', '2017', 9, 113, 0, 0, 0),
(4, 'filme', 'Animacao', 'O rei Leão', '\r\nRoger Allers, Rob Minkoff', ' Garcia Júnior, James Earl Jones', 'images/a1.jpg', 'Mufasa (voz de James Earl Jones), o Rei Leão, e a rainha Sarabi (voz de Madge Sinclair) apresentam ao reino o herdeiro do trono, Simba (voz de Matthew Broderick). O recém-nascido recebe a bênção do sábio babuíno Rafiki (voz de Robert Guillaume), mas ao crescer é envolvido nas artimanhas de seu tio Scar (voz de Jeremy Irons), o invejoso e maquiavélico irmão de Mufasa, que planeja livrar-se do sobrinho e herdar o trono', '1994', 10, 89, 0, 0, 0),
(5, 'filme', 'Animacao', 'Como Treinar o seu Dragão 2', 'Dean DeBlois', 'Rodrigo Lombardi, Jay Baruchel, Cate Blanchett mais', 'images/a2.jpg', 'Cinco anos após convencer os habitantes de seu vilarejo que os dragões não devem ser combatidos, Soluço (voz de Jay Baruchel) convive com seu dragão Fúria da Noite, e estes animais integraram pacificamente a rotina dos moradores da ilha de Berk. ', '2014', 10, 0, 0, 0, 0),
(6, 'filme', 'Animacao', 'A Bela e a Fera', 'Gary Trousdale, Kirk Wise', 'Paige O\'Hara, Robby Benson, Jerry Orbach mais', 'images/a3.jpg', 'Em uma pequena aldeia da França vive Belle, uma jovem inteligente que é considerada estranha pelo moradores da localidade, e seu pai, Maurice, um inventor que é visto como um louco.', '2010', 5, 89, 6, 0, 0),
(7, 'filme', 'Animacao', 'Viva - A vida é um festa', 'Lee Unkrich', 'Anthony Gonzalez (VIII), Benjamin Bratt, Gael García Bernal', 'images/a4.jpg', 'Miguel é um menino de 12 anos que quer muito ser um músico famoso, mas ele precisa lidar com sua família que desaprova seu sonho. Determinado a virar o jogo, ele acaba desencadeando uma série de eventos ligados a um mistério de 100 anos. A aventura, com inspiração no feriado mexicano do Dia dos Mortos, acaba gerando uma extraordinária reunião familiar.', '2018', 10, 105, 0, 0, 0),
(8, 'filme', 'Animacao', 'Divertida Mente', ' Pete Docter', '\r\nMiá Mello, Otaviano Costa', 'images/a5.jpg', 'Riley é uma garota divertida de 11 anos de idade, que deve enfrentar mudanças importantes em sua vida quando seus pais decidem deixar a sua cidade natal, no estado de Minnesota, para viver em San Francisco. Dentro do cérebro de Riley, convivem várias emoções diferentes, como a Alegria, o Medo, a Raiva, o Nojinho e a Tristeza.', '2015', 10, 95, 6, 0, 0),
(9, 'filme', 'Animacao', 'Toy Story - Um Mundo de Aventuras', 'John Lasseter', '\r\nTim Allen, Don Rickles', 'images/a6.jpg', 'O aniversário de Andy está chegando e os brinquedos estão nervosos. Afinal de contas, eles temem que um novo brinquedo possa substituí-los. Liderados por Woody, um caubói que é também o brinquedo predileto de Andy, eles montam uma escuta que lhes permite saber dos presentes ganhos.', '1995', 8, 77, 0, 0, 0),
(10, 'filme', 'Animacao', 'A Viagem de Chihiro', 'Hayao Miyazaki', 'Rumi Hiiragi, Miyu Irino, Mari Natsuki mais', 'images/a7.jpg', 'Chihiro é uma garota de 10 anos que acredita que todo o universo deve atender aos seus caprichos. Ao descobrir que vai se mudar, ela fica furiosa. Na viagem, Chihiro percebe que seu pai se perdeu no caminho para a nova cidade, indo parar defronte um túnel aparentemente sem fim, guardado por uma estranha estátua. ', '2003', 10, 125, 0, 0, 0),
(11, 'filme', 'Animacao', 'Procurando Nemo', 'Andrew Stanton, Lee Unkrich', 'Albert Brooks, Ellen DeGeneres, Alexander Gould mais', 'images/a8.jpg', 'O passado reserva tristes memórias para Marlin nos recifes de coral, onde perdeu sua esposa e toda a ninhada. Agora, ele cria seu único filho Nemo com todo o cuidado do mundo, mas o pequeno e simpático peixe-palhaço acaba exagerando durante uma simples discussão e acaba sendo capturado por um mergulhador. ', '2012', 7, 101, 3, 0, 0),
(12, 'filme', 'Animacao', 'MEU MALVADO FAVORITO 2', 'Chris Renaud, Pierre Coffin', 'Leandro Hassum, Maria Clara Gueiros, Luiz Carlos Persy mais', 'images/a9.jpg', 'Gru (voz de Steve Carell/Leandro Hassum) mudou radicalmente sua vida e agora seu negócio é se dedicar às filhotas Agnes (Elsie Fisher), Edith (Dana Gaier) e Margo (Miranda Cosgrove), deixando de lado os tempos de vilão.', '2013', 10, 98, 3, 0, 0),
(13, 'serie', 'Fantasia', 'Game of Thrones', 'David Benioff, D.B. Weiss', 'Peter Dinklage, Emilia Clarke, Kit Harington', 'images/a12.jpg', 'Há muito tempo, em um tempo esquecido, uma força destruiu o equilíbrio das estações. Em uma terra onde os verões podem durar vários anos e o inverno toda uma vida, as reivindicações e as forças sobrenaturais correm as portas do Reino dos Sete Reinos.', '2011', 10, 52, 18, 8, 0),
(14, 'serie', 'drama', 'Breaking Bad', 'Vince Gilligan', 'Bryan Cranston, Anna Gunn, Aaron Paul', 'images/a13.jpg', 'Walter White (Bryan Cranston) é um professor de química na casa dos 50 anos que trabalha em uma escola secundária no Novo México. Para atender às necessidades de Skyler (Anna Gunn), sua esposa grávida, e Walt Junior (RJ Mitte), seu filho deficiente físico, ele tem que trabalhar duplamente.', '2008', 10, 42, 16, 5, 0),
(15, 'serie', 'Aventura', 'Sherlock', ' Steven Moffat, Steven Moffat,', 'Benedict Cumberbatch, Martin Freeman, Amanda Abbington', 'images/a15.jpg', 'O dr. John Watson precisa de um lugar para morar em Londres. Ele é apresentado ao detetive Sherlock Holmes e os dois acabam desenvolvendo uma parceria intrigante, na qual a dupla vagará pela capital inglesa solucionando assassinatos e outros crimes brutais. Tudo isso em pleno século XXI.', '2010', 7, 90, 16, 4, 0),
(16, 'serie', 'fantasia', 'STRANGER THINGS', 'Matt Duffer, Ross Duffer', 'Winona Ryder, David Harbour, Finn Wolfhard', 'images/a16.jpg', 'Long Island, 1983. Um garoto de 12 anos desaparece misteriosamente. A família e a polícia procuram respostas, mas acabam se deparando com um experimento secreto do governo. Enquanto isso, os amigos do menino iniciam suas próprias investigações, o que os levam a um extraordinário mistério envolvendo forças sobrenaturais e uma garotinha muito, muito estranha.', '2016', 7, 55, 16, 3, 0),
(17, 'serie', 'terror', 'Supernatural', 'Eric Kripke, McG, Sera Gamble', 'Jared Padalecki, Jensen Ackles, Misha Collins', 'images/a17.jpg', 'Desde que era pequeno, Sam Winchester (Jared Padalecki) tentava escapar do próprio passsado. Após a misteriosa morte de Mary (Samantha Smith), o pai de Sam passou a procurar vingança contra as forças do mal que mataram a esposa, destruindo qualquer ser maligno que cruze o seu caminho.', '2005', 5, 42, 10, 14, 0),
(18, 'serie', 'drama', 'Grey\'s Anatomy', 'Shonda Rhimes, Shonda Rhimes, ', 'Ellen Pompeo, Justin Chambers', 'images/a18.jpg', 'Os médicos do Grey Sloan Memorial Hospital lidam diariamente com casos e consequências de vida ou morte. É um no outro que eles encontram apoio, conforto, amizade e, às vezes, até mais que amizade... Juntos, eles descobrem o quanto a vida profissional e a pessoal podem ser complicadas e se misturarem no meio do caminho.', '2005', 8, 42, 10, 15, 0),
(19, 'filme', 'Animacao', 'Operação Big Hero', ' Don Hall, Chris Williams (II)', '\r\nRyan Potter, Scott Adsit', 'images/a19.jpg', 'Cidade de San Fransokyo, Estados Unidos. Hiro Hamada (voz de Ryan Potter) é um garoto prodígio que, aos 13 anos, criou um poderoso robô para participar de lutas clandestinas, onde tenta ganhar um bom dinheiro. ', '2014', 7, 102, 0, 0, 9),
(20, 'serie', 'comedia', 'friends', ' David Crane, Marta Kauffman', 'Jennifer Aniston, Courteney Cox, Lisa Kudrow', 'images/a20.jpg', 'Seis jovens são unidos por laços familiares, românticos e, principalmente, de amizade, enquanto tentam vingar em Nova York. Rachel é a garota mimada que deixa o noivo no altar para viver com a amiga dos tempos de escola Monica, sistemática e apaixonada pela culinária.', '1994', 5, 22, 10, 10, 0),
(21, 'filme', 'acao', 'VINGADORES: GUERRA INFINITA', 'Joe Russo, Anthony Russo', 'Robert Downey Jr., Chris Hemsworth, Mark Ruffalo mais', 'images/a21.jpg', 'Thanos (Josh Brolin) enfim chega à Terra, disposto a reunir as Joias do Infinito. Para enfrentá-lo, os Vingadores precisam unir forças com os Guardiões da Galáxia, ao mesmo tempo em que lidam com desavenças entre alguns de seus integrantes.', '2018', 10, 156, 12, 0, 0),
(22, 'filme', 'acao', 'BATMAN - O CAVALEIRO DAS TREVAS', 'Christopher Nolan', 'Isaac Bardavid, Christian Bale, Heath Ledger mais', 'images/a22.jpg', 'Após dois anos desde o surgimento do Batman (Christian Bale), os criminosos de Gotham City têm muito o que temer. Com a ajuda do tenente James Gordon (Gary Oldman) e do promotor público Harvey Dent (Aaron Eckhart), Batman luta contra o crime organizado. Acuados com o combate, os chefes do crime aceitam a proposta feita pelo Coringa (Heath Ledger) e o contratam para combater o Homem-Morcego.', '2008', 10, 147, 16, 0, 0),
(23, 'filme', 'acao', 'VELOZES & FURIOSOS 7', 'James Wan', 'Vin Diesel, Paul Walker, Jason Statham mais', 'images/a23.jpg', 'Após os acontecimentos em Londres, Dom (Vin Diesel), Brian (Paul Walker), Letty (Michelle Rodriguez) e o resto da equipe tiveram a chance de voltar para os Estados Unidos e recomeçarem suas vidas. Mas a tranquilidade do grupo é destruída quando Deckard Shaw (Jason Statham), um assassino profissional, quer vingança pela morte de seu irmão', '2015', 3, 137, 14, 0, 0),
(24, 'filme', 'acao', ' Matrix', 'Lana Wachowski, Lilly Wachowsk', ' Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss mais', 'images/a24.jpg', 'Em um futuro próximo, Thomas Anderson (Keanu Reeves), um jovem programador de computador que mora em um cubículo escuro, é atormentado por estranhos pesadelos nos quais encontra-se conectado por cabos e contra sua vontade, em um imenso sistema de computadores do futuro. Em todas essas ocasiões, acorda gritando no exato momento em que os eletrodos estão para penetrar em seu cérebro.', '1999', 10, 135, 16, 0, 0),
(25, 'filme', 'acao', 'Logan', 'James Mangold', 'Hugh Jackman, Patrick Stewart, Dafne Keen mais', 'images/a25.jpg', 'Em 2029, Logan (Hugh Jackman) ganha a vida como chofer de limousine para cuidar do nonagenário Charles Xavier (Patrick Stewart). Debilitado fisicamente e esgotado emocionalmente, ele é procurado por Gabriela (Elizabeth Rodriguez), uma mexicana que precisa da ajuda do ex-X-Men para defender a pequena Laura Kinney / X-23 (Dafne Keen). Ao mesmo tempo em que se recusa a voltar à ativa, Logan é perseguido pelo mercenário Donald Pierce (Boyd Holbrook), interessado na menina.', '2017', 10, 137, 16, 0, 0),
(26, 'filme', 'acao', 'O Exterminador do Futuro 2 - O Julgament', ' James Cameron', 'Arnold Schwarzenegger, Linda Hamilton, Edward Furlong mais', 'images/a26.jpg', 'Uma criança destinada a ser líder (Edward Furlong) já nasceu, mas infeliz por viver com pais adotivos, pois foi privado da companhia da mãe (Linda Hamilton), que foi considerada louca quando falou de um exterminador vindo do futuro. Neste contexto, um andróide (Arnold Schwarzenegger) vem do futuro, mais exatamente um modelo T-800 igual ao filme original, para proteger o garoto, mas existe um problema: o mais avançado andróide existente no futuro, um modelo T-1000 (Robert Patrick), que feito de \"metal líquido\", não pode ter nenhum dano permanente e pode assumir a forma que desejar, também veio para o passado com a missão de matar o menino.', '1991', 4, 135, 16, 0, 0),
(27, 'filme', 'acao', 'Ver o trailer  Sessões Star Wars - O Des', 'J.J. Abrams', 'Daisy Ridley, John Boyega, Adam Driver mais', 'images/a27.jpg', 'Décadas após a queda de Darth Vader e do Império, surge uma nova ameaça: a Primeira Ordem, uma organização sombria que busca minar o poder da República e que tem Kylo Ren (Adam Driver), o General Hux (Domhnall Gleeson) e o Líder Supremo Snoke (Andy Serkis) como principais expoentes.', '2015', 9, 135, 12, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `login` varchar(10) NOT NULL,
  `senha` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `datanasc` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`login`, `senha`, `email`, `datanasc`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', '0', 0),
('Danilo', 'e10adc3949ba59abbe56e057f20f883e', 'dan.snascimento@hotmail.com', 1998);

-- --------------------------------------------------------

--
-- Estrutura da tabela `visitados`
--

CREATE TABLE `visitados` (
  `login` varchar(10) NOT NULL,
  `indice` int(4) NOT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `visitados`
--

INSERT INTO `visitados` (`login`, `indice`, `count`) VALUES
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
