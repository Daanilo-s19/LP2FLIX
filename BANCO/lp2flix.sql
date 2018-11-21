-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Nov-2018 às 01:55
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
  `tipo` varchar(15) CHARACTER SET latin1 NOT NULL,
  `genero` varchar(15) CHARACTER SET latin1 NOT NULL,
  `titulo` varchar(30) CHARACTER SET latin1 NOT NULL,
  `diretor` varchar(30) CHARACTER SET latin1 NOT NULL,
  `elenco` text CHARACTER SET latin1 NOT NULL,
  `imagem` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sinopse` text CHARACTER SET latin1 NOT NULL,
  `ano` varchar(4) CHARACTER SET latin1 NOT NULL,
  `avaliacao` int(1) NOT NULL,
  `duracao` int(2) NOT NULL,
  `classificacao` int(2) NOT NULL,
  `temporada` int(2) NOT NULL COMMENT 'SeÃ©rie',
  `bilheteria` int(2) NOT NULL COMMENT 'Filmee'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `midia`
--

INSERT INTO `midia` (`indice`, `tipo`, `genero`, `titulo`, `diretor`, `elenco`, `imagem`, `sinopse`, `ano`, `avaliacao`, `duracao`, `classificacao`, `temporada`, `bilheteria`) VALUES
(0, 'FILME', 'ANIMACAO', 'A era do gelo', ' Chris Wedge', 'John Leguizamo, Ray Romano, Denis Leary, Chris Wedge, ', 'images/c6.jpg', 'Max é um cãozinho que tem sua vida virada de cabeça para baixo quando seu dono traz para casa um vira-lata desleixado chamado Duke. Mas as desavenças terminam quando um coelho quer se vingar de todos os pets que tem dono.', '2002', 0, 103, 0, 0, 0),
(1, 'FILME', 'ANIMACAO', 'A vida secreta dos Pets', 'Chris Renaud, Yarrow Cheney', ' Kevin Hart, Jenny Slate, Louis C.K., Eric Stonestreet, MAIS', 'images/m20.jpg', 'Max Ã© um cÃ£ozinho que tem sua vida virada de cabeÃ§a para baixo quando seu dono traz para casa um vira-lata desleixado chamado Duke. Mas as desavenÃ§as terminam quando um coelho quer se vingar de todos os pets que tem dono.', '2016', 8, 100, 0, 0, 10000000),
(2, 'FILME', 'ANIMACAO', 'Moana', 'Ron Clements, John Musker', ' Aulii Cravalho, Dwayne Johnson, Jemaine Clement, MAIS', 'images/c1.jpg', 'Uma jovem decide velejar atravÃ©s do Oceano PacÃ­fico, com a ajuda de um semi-deus, em uma viagem que pode mudar a vida de todos.', '2017', 9, 113, 0, 0, 0),
(3, 'FILME', 'ANIMACAO', 'O rei LeÃ£o', '\r\nRoger Allers, Rob Minkoff', ' Garcia JÃºnior, James Earl Jones', 'images/a1.jpg', 'Mufasa (voz de James Earl Jones), o Rei LeÃ£o, e a rainha Sarabi (voz de Madge Sinclair) apresentam ao reino o herdeiro do trono, Simba (voz de Matthew Broderick). O recÃ©m-nascido recebe a bÃªnÃ§Ã£o do sÃ¡bio babuÃ­no Rafiki (voz de Robert Guillaume), mas ao crescer Ã© envolvido nas artimanhas de seu tio Scar (voz de Jeremy Irons), o invejoso e maquiavÃ©lico irmÃ£o de Mufasa, que planeja livrar-se do sobrinho e herdar o trono', '1994', 10, 89, 0, 0, 0),
(4, 'FILME', 'ANIMACAO', 'Como Treinar o seu DragÃ£o 2', 'Dean DeBlois', 'Rodrigo Lombardi, Jay Baruchel, Cate Blanchett mais', 'images/a2.jpg', 'Cinco anos apÃ³s convencer os habitantes de seu vilarejo que os dragÃµes nÃ£o devem ser combatidos, SoluÃ§o (voz de Jay Baruchel) convive com seu dragÃ£o FÃºria da Noite, e estes animais integraram pacificamente a rotina dos moradores da ilha de Berk. ', '2014', 10, 0, 0, 0, 0),
(5, 'FILME', 'ANIMACAO', 'A Bela e a Fera', 'Gary Trousdale, Kirk Wise', 'Paige OHara, Robby Benson, Jerry Orbach mais', 'images/a3.jpg', 'Em uma pequena aldeia da FranÃ§a vive Belle, uma jovem inteligente que Ã© considerada estranha pelo moradores da localidade, e seu pai, Maurice, um inventor que Ã© visto como um louco.', '2010', 5, 89, 6, 0, 0),
(6, 'FILME', 'ANIMACAO', 'Viva - A vida Ã© um festa', 'Lee Unkrich', 'Anthony Gonzalez (VIII), Benjamin Bratt, Gael GarcÃ­a Bernal', 'images/a4.jpg', 'Miguel Ã© um menino de 12 anos que quer muito ser um mÃºsico famoso, mas ele precisa lidar com sua famÃ­lia que desaprova seu sonho. Determinado a virar o jogo, ele acaba desencadeando uma sÃ©rie de eventos ligados a um mistÃ©rio de 100 anos. A aventura, com inspiraÃ§Ã£o no feriado mexicano do Dia dos Mortos, acaba gerando uma extraordinÃ¡ria reuniÃ£o familiar.', '2018', 10, 105, 0, 0, 0),
(7, 'FILME', 'ANIMACAO', 'Divertida Mente', ' Pete Docter', '\r\nMiÃ¡ Mello, Otaviano Costa', 'images/a5.jpg', 'Riley Ã© uma garota divertida de 11 anos de idade, que deve enfrentar mudanÃ§as importantes em sua vida quando seus pais decidem deixar a sua cidade natal, no estado de Minnesota, para viver em San Francisco. Dentro do cÃ©rebro de Riley, convivem vÃ¡rias emoÃ§Ãµes diferentes, como a Alegria, o Medo, a Raiva, o Nojinho e a Tristeza.', '2015', 10, 95, 6, 0, 0),
(8, 'FILME', 'ANIMACAO', 'Toy Story', 'John Lasseter', '\r\nTim Allen, Don Rickles', 'images/a6.jpg', 'O aniversÃ¡rio de Andy estÃ¡ chegando e os brinquedos estÃ£o nervosos. Afinal de contas, eles temem que um novo brinquedo possa substituÃ­-los. Liderados por Woody, um caubÃ³i que Ã© tambÃ©m o brinquedo predileto de Andy, eles montam uma escuta que lhes permite saber dos presentes ganhos.', '1995', 8, 77, 0, 0, 0),
(9, 'FILME', 'ANIMACAO', 'A Viagem de Chihiro', 'Hayao Miyazaki', 'Rumi Hiiragi, Miyu Irino, Mari Natsuki mais', 'images/a7.jpg', 'Chihiro Ã© uma garota de 10 anos que acredita que todo o universo deve atender aos seus caprichos. Ao descobrir que vai se mudar, ela fica furiosa. Na viagem, Chihiro percebe que seu pai se perdeu no caminho para a nova cidade, indo parar defronte um tÃºnel aparentemente sem fim, guardado por uma estranha estÃ¡tua. ', '2003', 10, 125, 0, 0, 0),
(10, 'FILME', 'ANIMACAO', 'Procurando Nemo', 'Andrew Stanton, Lee Unkrich', 'Albert Brooks, Ellen DeGeneres, Alexander Gould mais', 'images/a8.jpg', 'O passado reserva tristes memÃ³rias para Marlin nos recifes de coral, onde perdeu sua esposa e toda a ninhada. Agora, ele cria seu Ãºnico filho Nemo com todo o cuidado do mundo, mas o pequeno e simpÃ¡tico peixe-palhaÃ§o acaba exagerando durante uma simples discussÃ£o e acaba sendo capturado por um mergulhador. ', '2012', 7, 101, 3, 0, 0),
(11, 'FILME', 'ANIMACAO', 'MEU MALVADO FAVORITO 2', 'Chris Renaud, Pierre Coffin', 'Leandro Hassum, Maria Clara Gueiros, Luiz Carlos Persy mais', 'images/a9.jpg', 'Gru (voz de Steve Carell/Leandro Hassum) mudou radicalmente sua vida e agora seu negÃ³cio Ã© se dedicar Ã s filhotas Agnes (Elsie Fisher), Edith (Dana Gaier) e Margo (Miranda Cosgrove), deixando de lado os tempos de vilÃ£o.', '2013', 10, 98, 3, 0, 0),
(12, 'SERIE', 'FANTASIA', 'Game of Thrones', 'David Benioff, D.B. Weiss', 'Peter Dinklage, Emilia Clarke, Kit Harington', 'images/a12.jpg', 'HÃ¡ muito tempo, em um tempo esquecido, uma forÃ§a destruiu o equilÃ­brio das estaÃ§Ãµes. Em uma terra onde os verÃµes podem durar vÃ¡rios anos e o inverno toda uma vida, as reivindicaÃ§Ãµes e as forÃ§as sobrenaturais correm as portas do Reino dos Sete Reinos.', '2011', 10, 52, 18, 8, 0),
(13, 'SERIE', 'DRAMA', 'Breaking Bad', 'Vince Gilligan', 'Bryan Cranston, Anna Gunn, Aaron Paul', 'images/a13.jpg', 'Walter White (Bryan Cranston) Ã© um professor de quÃ­mica na casa dos 50 anos que trabalha em uma escola secundÃ¡ria no Novo MÃ©xico. Para atender Ã s necessidades de Skyler (Anna Gunn), sua esposa grÃ¡vida, e Walt Junior (RJ Mitte), seu filho deficiente fÃ­sico, ele tem que trabalhar duplamente.', '2008', 10, 42, 16, 5, 0),
(14, 'SERIE', 'AVENTURA', 'Sherlock', ' Steven Moffat, Steven Moffat,', 'Benedict Cumberbatch, Martin Freeman, Amanda Abbington', 'images/a15.jpg', 'O dr. John Watson precisa de um lugar para morar em Londres. Ele Ã© apresentado ao detetive Sherlock Holmes e os dois acabam desenvolvendo uma parceria intrigante, na qual a dupla vagarÃ¡ pela capital inglesa solucionando assassinatos e outros crimes brutais. Tudo isso em pleno sÃ©culo XXI.', '2010', 7, 90, 16, 4, 0),
(15, 'SERIE', 'FANTASIA', 'STRANGER THINGS', 'Matt Duffer, Ross Duffer', 'Winona Ryder, David Harbour, Finn Wolfhard', 'images/a16.jpg', 'Long Island, 1983. Um garoto de 12 anos desaparece misteriosamente. A famÃ­lia e a polÃ­cia procuram respostas, mas acabam se deparando com um experimento secreto do governo. Enquanto isso, os amigos do menino iniciam suas prÃ³prias investigaÃ§Ãµes, o que os levam a um extraordinÃ¡rio mistÃ©rio envolvendo forÃ§as sobrenaturais e uma garotinha muito, muito estranha.', '2016', 7, 55, 16, 3, 0),
(16, 'SERIE', 'TERROR', 'Supernatural', 'Eric Kripke, McG, Sera Gamble', 'Jared Padalecki, Jensen Ackles, Misha Collins', 'images/a17.jpg', 'Desde que era pequeno, Sam Winchester (Jared Padalecki) tentava escapar do prÃ³prio passsado. ApÃ³s a misteriosa morte de Mary (Samantha Smith), o pai de Sam passou a procurar vinganÃ§a contra as forÃ§as do mal que mataram a esposa, destruindo qualquer ser maligno que cruze o seu caminho.', '2005', 5, 42, 10, 14, 0),
(17, 'SERIE', 'DRAMA', 'Greys Anatomy', 'Shonda Rhimes, Shonda Rhimes, ', 'Ellen Pompeo, Justin Chambers', 'images/a18.jpg', 'Os mÃ©dicos do Grey Sloan Memorial Hospital lidam diariamente com casos e consequÃªncias de vida ou morte. Ã? um no outro que eles encontram apoio, conforto, amizade e, Ã s vezes, atÃ© mais que amizade... Juntos, eles descobrem o quanto a vida profissional e a pessoal podem ser complicadas e se misturarem no meio do caminho.', '2005', 8, 42, 10, 15, 0),
(18, 'FILME', 'ANIMACAO', 'OperaÃ§Ã£o Big Hero', ' Don Hall, Chris Williams (II)', '\r\nRyan Potter, Scott Adsit', 'images/a19.jpg', 'Cidade de San Fransokyo, Estados Unidos. Hiro Hamada (voz de Ryan Potter) Ã© um garoto prodÃ­gio que, aos 13 anos, criou um poderoso robÃ´ para participar de lutas clandestinas, onde tenta ganhar um bom dinheiro. ', '2014', 7, 102, 0, 0, 9),
(19, 'SERIE', 'COMEDIA', 'friends', ' David Crane, Marta Kauffman', 'Jennifer Aniston, Courteney Cox, Lisa Kudrow', 'images/a20.jpg', 'Seis jovens sÃ£o unidos por laÃ§os familiares, romÃ¢nticos e, principalmente, de amizade, enquanto tentam vingar em Nova York. Rachel Ã© a garota mimada que deixa o noivo no altar para viver com a amiga dos tempos de escola Monica, sistemÃ¡tica e apaixonada pela culinÃ¡ria.', '1994', 5, 22, 10, 10, 0),
(20, 'FILME', 'ACAO', 'VINGADORES: GUERRA INFINITA', 'Joe Russo, Anthony Russo', 'Robert Downey Jr., Chris Hemsworth, Mark Ruffalo mais', 'images/a21.jpg', 'Thanos (Josh Brolin) enfim chega Ã  Terra, disposto a reunir as Joias do Infinito. Para enfrentÃ¡-lo, os Vingadores precisam unir forÃ§as com os GuardiÃµes da GalÃ¡xia, ao mesmo tempo em que lidam com desavenÃ§as entre alguns de seus integrantes.', '2018', 10, 156, 12, 0, 0),
(21, 'FILME', 'ACAO', 'BATMAN - O CAVALEIRO DAS TREVA', 'Christopher Nolan', 'Isaac Bardavid, Christian Bale, Heath Ledger mais', 'images/a22.jpg', 'ApÃ³s dois anos desde o surgimento do Batman (Christian Bale), os criminosos de Gotham City tÃªm muito o que temer. Com a ajuda do tenente James Gordon (Gary Oldman) e do promotor pÃºblico Harvey Dent (Aaron Eckhart), Batman luta contra o crime organizado. Acuados com o combate, os chefes do crime aceitam a proposta feita pelo Coringa (Heath Ledger) e o contratam para combater o Homem-Morcego.', '2008', 10, 147, 16, 0, 0),
(22, 'FILME', 'ACAO', 'VELOZES & FURIOSOS 7', 'James Wan', 'Vin Diesel, Paul Walker, Jason Statham mais', 'images/a23.jpg', 'ApÃ³s os acontecimentos em Londres, Dom (Vin Diesel), Brian (Paul Walker), Letty (Michelle Rodriguez) e o resto da equipe tiveram a chance de voltar para os Estados Unidos e recomeÃ§arem suas vidas. Mas a tranquilidade do grupo Ã© destruÃ­da quando Deckard Shaw (Jason Statham), um assassino profissional, quer vinganÃ§a pela morte de seu irmÃ£o', '2015', 3, 137, 14, 0, 0),
(23, 'FILME', 'ACAO', ' Matrix', 'Lana Wachowski, Lilly Wachowsk', ' Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss mais', 'images/a24.jpg', 'Em um futuro prÃ³ximo, Thomas Anderson (Keanu Reeves), um jovem programador de computador que mora em um cubÃ­culo escuro, Ã© atormentado por estranhos pesadelos nos quais encontra-se conectado por cabos e contra sua vontade, em um imenso sistema de computadores do futuro. Em todas essas ocasiÃµes, acorda gritando no exato momento em que os eletrodos estÃ£o para penetrar em seu cÃ©rebro.', '1999', 10, 135, 16, 0, 0),
(24, 'FILME', 'ACAO', 'Logan', 'James Mangold', 'Hugh Jackman, Patrick Stewart, Dafne Keen mais', 'images/a25.jpg', 'Em 2029, Logan (Hugh Jackman) ganha a vida como chofer de limousine para cuidar do nonagenÃ¡rio Charles Xavier (Patrick Stewart). Debilitado fisicamente e esgotado emocionalmente, ele Ã© procurado por Gabriela (Elizabeth Rodriguez), uma mexicana que precisa da ajuda do ex-X-Men para defender a pequena Laura Kinney / X-23 (Dafne Keen). Ao mesmo tempo em que se recusa a voltar Ã  ativa, Logan Ã© perseguido pelo mercenÃ¡rio Donald Pierce (Boyd Holbrook), interessado na menina.', '2017', 10, 137, 16, 0, 0),
(25, 'FILME', 'ACAO', 'O Exterminador do Futuro 2 - O', ' James Cameron', 'Arnold Schwarzenegger, Linda Hamilton, Edward Furlong mais', 'images/a26.jpg', 'Uma crianÃ§a destinada a ser lÃ­der (Edward Furlong) jÃ¡ nasceu, mas infeliz por viver com pais adotivos, pois foi privado da companhia da mÃ£e (Linda Hamilton), que foi considerada louca quando falou de um exterminador vindo do futuro. Neste contexto, um andrÃ³ide (Arnold Schwarzenegger) vem do futuro, mais exatamente um modelo T-800 igual ao filme original, para proteger o garoto, mas existe um problema: o mais avanÃ§ado andrÃ³ide existente no futuro, um modelo T-1000 (Robert Patrick), que feito de \"metal lÃ­quido\", nÃ£o pode ter nenhum dano permanente e pode assumir a forma que desejar, tambÃ©m veio para o passado com a missÃ£o de matar o menino.', '1991', 4, 135, 16, 0, 0),
(26, 'FILME', 'ACAO', 'Star wars - despertar da forÃ§', ' j. j. Abrams', 'Daisy Ridley, John Boyega, Adam Driver mais', 'images/a27.jpg', 'DÃ?Â©cadas apÃ?Â³s a queda de Darth Vader e do ImpÃ?Â©rio, surge uma nova ameaÃ?Â§a: a Primeira Ordem, uma organizaÃ?Â§Ã?Â£o sombria que busca minar o poder da RepÃ?Âºblica e que tem Kylo Ren (Adam Driver), o General Hux (Domhnall Gleeson) e o LÃ?Â­der Supremo Snoke (Andy Serkis) como principais expoentes.', '2015', 0, 135, 12, 0, 0),
(27, 'FILME', 'AVENTURA', ' O Senhor dos Aneis - O Retor', ' Peter Jackson', 'Sean Astin, Elijah Wood, Viggo Mortensen mais', 'images/A28.jpg', 'Sauron planeja um grande ataque a Minas Tirith, capital de Gondor, o que faz com que Gandalf (Ian McKellen) e Pippin (Billy Boyd) partam para o local na intenÃ?Â§Ã?Â£o de ajudar a resistÃ?Âªncia. Um exÃ?Â©rcito Ã?Â© reunido por Theoden (Bernard Hill) em Rohan, em mais uma tentativa de deter as forÃ?Â§as de Sauron. Enquanto isso Frodo (Elijah Wood), Sam (Sean Astin) e Gollum (Andy Serkins) seguem sua viagem rumo Ã?Â  Montanha da PerdiÃ?Â§Ã?Â£o, para destruir o Um Anel.', '2003', 0, 201, 12, 0, 5000000),
(28, '8', '8', '8', ' 8', '8', '8', '8', '8', 8, 8, 88, 0, 8),
(29, 'FILME', '8', '8', ' 8', '8', '8', '8', '8', 8, 8, 8, 0, 8),
(30, 'FILME', 'ANIMACAO', '7', ' 7', '7', '7', '7', '7', 7, 7, 7, 0, 7);

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
('Danilo', 'e10adc3949ba59abbe56e057f20f883e', 'dan.snascimento@hotmail.com', 1998),
('sandy', 'd686a53fb86a6c31fa6faa1d9333267e', 'san-dy@hotmail.com', 1900),
('teste', 'e10adc3949ba59abbe56e057f20f883e', 'teste@hotmail.com', 1900);

-- --------------------------------------------------------

--
-- Estrutura da tabela `visitados`
--

CREATE TABLE `visitados` (
  `acesso` varchar(30) NOT NULL,
  `login` varchar(11) NOT NULL,
  `indice` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `visitados`
--

INSERT INTO `visitados` (`acesso`, `login`, `indice`, `count`, `score`) VALUES
('-', '', 0, 1, 1),
('Danilo-1', 'Danilo', 1, 15, 721),
('Danilo-10', 'Danilo', 10, 7, 375),
('Danilo-11', 'Danilo', 11, 2, 51),
('Danilo-14', 'Danilo', 14, 8, 74),
('Danilo-15', 'Danilo', 15, 2, 23),
('Danilo-16', 'Danilo', 16, 6, 69),
('Danilo-2', 'Danilo', 2, 3, 100),
('Danilo-20', 'Danilo', 20, 10, 50),
('Danilo-22', 'Danilo', 22, 5, 294),
('Danilo-25', 'Danilo', 25, 51, 3425),
('Danilo-29', 'Danilo', 29, 4, 14),
('Danilo-3', 'Danilo', 3, 7, 339),
('Danilo-31', 'Danilo', 31, 4, 302),
('Danilo-4', 'Danilo', 4, 1, 1),
('Danilo-6', 'Danilo', 6, 10, 401),
('Danilo-7', 'Danilo', 7, 6, 263),
('Danilo-8', 'Danilo', 8, 5, 190),
('Danilo-9', 'Danilo', 9, 4, 116),
('opa-2', 'opa', 2, 1, 113),
('teste-20', 'teste', 20, 4, 17),
('teste-24', 'teste', 24, 1, 1),
('teste-4', 'teste', 4, 5, 178),
('teste-8', 'teste', 8, 1, 1);

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

--
-- Indexes for table `visitados`
--
ALTER TABLE `visitados`
  ADD PRIMARY KEY (`acesso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
