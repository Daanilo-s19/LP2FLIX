-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26-Nov-2018 às 23:19
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
-- Estrutura da tabela `destaque`
--

CREATE TABLE `destaque` (
  `filme` varchar(30) NOT NULL,
  `indice` int(11) NOT NULL,
  `exibido` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `destaque`
--

INSERT INTO `destaque` (`filme`, `indice`, `exibido`, `score`) VALUES
(' O Senhor dos Aneis - O Retor', 27, 24, 2312),
('A Bela e a Fera', 5, 37, 1602),
('A era do gelo', 0, 4, 155),
('A Viagem de Chihiro', 9, 1, 125),
('A vida secreta dos Pets', 1, 14, 650),
('AFTER', 54, 7, 3),
('ALIEN, O 8Âº PASSAGEIRO', 45, 2, 56),
('BATMAN - O CAVALEIRO DAS TREVA', 21, 1, 147),
('Breaking Bad', 13, 2, 21),
('CAPITÃƒ MARVEL', 55, 4, 2),
('Como Treinar o seu DragÃ£o 2', 4, 18, 0),
('CONSTANTINE', 46, 1, 121),
('Divertida Mente', 7, 5, 190),
('DRAGON BALL SUPER - O FILME', 51, 3, 1),
('friends', 19, 40, 429),
('Game of Thrones', 12, 2, 26),
('HARRY POTTER E AS RELÃQUIAS D', 30, 6, 323),
('hÃ¡ perigos no aÃ§ai', 28, 2, 62),
('INVASÃƒO ZUMBI', 48, 1, 118),
('INVOCAÃ‡ÃƒO DO MAL', 43, 2, 55),
('Logan', 24, 2, 69),
('Moana', 2, 6, 283),
('O Exterminador do Futuro 2 - O', 25, 3, 135),
('O ILUMINADO', 48, 5, 292),
('O LABIRINTO DO FAUNO', 46, 1, 112),
('O PODEROSO CHEFÃƒO', 38, 6, 388),
('O REI LEÃƒO 2019', 49, 6, 3),
('O rei LeÃ£o', 3, 3, 89),
('O RESGATE DO SOLDADO RYAN', 41, 2, 82),
('OperaÃ§Ã£o Big Hero', 18, 21, 1020),
('Procurando Nemo', 10, 10, 455),
('PSICOSE', 43, 2, 55),
('ROBIN HOOD - A ORIGEM', 50, 3, 114),
('SEMPRE AO SEU LADO', 42, 4, 164),
('Sherlock', 14, 5, 180),
('Star wars - despertar da forÃ§', 26, 1, 135),
('Supernatural', 16, 29, 588),
('Toy Story', 8, 124, 4736),
('VELOZES ', 22, 7, 411),
('VINGADORES: GUERRA INFINITA', 20, 1, 156),
('WIFI RALPH - QUEBRANDO A INTER', 53, 2, 1);

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
(0, 'FILME', 'ANIMACAO', 'A era do gelo', ' Chris Wedge', 'John Leguizamo, Ray Romano, Denis Leary, Chris Wedge, ', 'images/c6.jpg', 'Max é um cãozinho que tem sua vida virada de cabeça para baixo quando seu dono traz para casa um vira-lata desleixado chamado Duke. Mas as desavenças terminam quando um coelho quer se vingar de todos os pets que tem dono.', '2002', 4, 103, 0, 0, 408600000),
(1, 'FILME', 'ANIMACAO', 'A vida secreta dos Pets', 'Chris Renaud, Yarrow Cheney', ' Kevin Hart, Jenny Slate, Louis C.K., Eric Stonestreet, MAIS', 'images/m20.jpg', 'Max Ã© um cÃ£ozinho que tem sua vida virada de cabeÃ§a para baixo quando seu dono traz para casa um vira-lata desleixado chamado Duke. Mas as desavenÃ§as terminam quando um coelho quer se vingar de todos os pets que tem dono.', '2016', 4, 100, 0, 0, 10000000),
(2, 'FILME', 'ANIMACAO', 'Moana', 'Ron Clements, John Musker', ' Aulii Cravalho, Dwayne Johnson, Jemaine Clement, MAIS', 'images/c1.jpg', 'Uma jovem decide velejar atravÃ©s do Oceano PacÃ­fico, com a ajuda de um semi-deus, em uma viagem que pode mudar a vida de todos.', '2017', 3, 113, 0, 0, 643000000),
(3, 'FILME', 'ANIMACAO', 'O rei LeÃ£o', '\r\nRoger Allers, Rob Minkoff', ' Garcia JÃºnior, James Earl Jones', 'images/a1.jpg', 'Mufasa (voz de James Earl Jones), o Rei LeÃ£o, e a rainha Sarabi (voz de Madge Sinclair) apresentam ao reino o herdeiro do trono, Simba (voz de Matthew Broderick). O recÃ©m-nascido recebe a bÃªnÃ§Ã£o do sÃ¡bio babuÃ­no Rafiki (voz de Robert Guillaume), mas ao crescer Ã© envolvido nas artimanhas de seu tio Scar (voz de Jeremy Irons), o invejoso e maquiavÃ©lico irmÃ£o de Mufasa, que planeja livrar-se do sobrinho e herdar o trono', '1994', 4, 89, 0, 0, 968000000),
(4, 'FILME', 'ANIMACAO', 'Como Treinar o seu DragÃ£o 2', 'Dean DeBlois', 'Rodrigo Lombardi, Jay Baruchel, Cate Blanchett mais', 'images/a2.jpg', 'Cinco anos apÃ³s convencer os habitantes de seu vilarejo que os dragÃµes nÃ£o devem ser combatidos, SoluÃ§o (voz de Jay Baruchel) convive com seu dragÃ£o FÃºria da Noite, e estes animais integraram pacificamente a rotina dos moradores da ilha de Berk. ', '2014', 5, 0, 0, 0, 621000000),
(5, 'FILME', 'ANIMACAO', 'A Bela e a Fera', 'Gary Trousdale, Kirk Wise', 'Paige OHara, Robby Benson, Jerry Orbach mais', 'images/a3.jpg', 'Em uma pequena aldeia da FranÃ§a vive Belle, uma jovem inteligente que Ã© considerada estranha pelo moradores da localidade, e seu pai, Maurice, um inventor que Ã© visto como um louco.', '2010', 5, 89, 6, 0, 1000000000),
(6, 'FILME', 'ANIMACAO', 'Viva - A vida Ã© um festa', 'Lee Unkrich', 'Anthony Gonzalez (VIII), Benjamin Bratt, Gael GarcÃ­a Bernal', 'images/a4.jpg', 'Miguel Ã© um menino de 12 anos que quer muito ser um mÃºsico famoso, mas ele precisa lidar com sua famÃ­lia que desaprova seu sonho. Determinado a virar o jogo, ele acaba desencadeando uma sÃ©rie de eventos ligados a um mistÃ©rio de 100 anos. A aventura, com inspiraÃ§Ã£o no feriado mexicano do Dia dos Mortos, acaba gerando uma extraordinÃ¡ria reuniÃ£o familiar.', '2018', 5, 105, 0, 0, 807000000),
(7, 'FILME', 'ANIMACAO', 'Divertida Mente', ' Pete Docter', '\r\nMiÃ¡ Mello, Otaviano Costa', 'images/a5.jpg', 'Riley Ã© uma garota divertida de 11 anos de idade, que deve enfrentar mudanÃ§as importantes em sua vida quando seus pais decidem deixar a sua cidade natal, no estado de Minnesota, para viver em San Francisco. Dentro do cÃ©rebro de Riley, convivem vÃ¡rias emoÃ§Ãµes diferentes, como a Alegria, o Medo, a Raiva, o Nojinho e a Tristeza.', '2015', 5, 95, 6, 0, 857000000),
(8, 'FILME', 'ANIMACAO', 'Toy Story', 'John Lasseter', '\r\nTim Allen, Don Rickles', 'images/a6.jpg', 'O aniversÃ¡rio de Andy estÃ¡ chegando e os brinquedos estÃ£o nervosos. Afinal de contas, eles temem que um novo brinquedo possa substituÃ­-los. Liderados por Woody, um caubÃ³i que Ã© tambÃ©m o brinquedo predileto de Andy, eles montam uma escuta que lhes permite saber dos presentes ganhos.', '1995', 4, 77, 0, 0, 373000000),
(9, 'FILME', 'ANIMACAO', 'A Viagem de Chihiro', 'Hayao Miyazaki', 'Rumi Hiiragi, Miyu Irino, Mari Natsuki mais', 'images/a7.jpg', 'Chihiro Ã© uma garota de 10 anos que acredita que todo o universo deve atender aos seus caprichos. Ao descobrir que vai se mudar, ela fica furiosa. Na viagem, Chihiro percebe que seu pai se perdeu no caminho para a nova cidade, indo parar defronte um tÃºnel aparentemente sem fim, guardado por uma estranha estÃ¡tua. ', '2003', 4, 125, 0, 0, 229000000),
(10, 'FILME', 'ANIMACAO', 'Procurando Nemo', 'Andrew Stanton, Lee Unkrich', 'Albert Brooks, Ellen DeGeneres, Alexander Gould mais', 'images/a8.jpg', 'O passado reserva tristes memÃ³rias para Marlin nos recifes de coral, onde perdeu sua esposa e toda a ninhada. Agora, ele cria seu Ãºnico filho Nemo com todo o cuidado do mundo, mas o pequeno e simpÃ¡tico peixe-palhaÃ§o acaba exagerando durante uma simples discussÃ£o e acaba sendo capturado por um mergulhador. ', '2012', 3, 101, 3, 0, 940000000),
(11, 'FILME', 'ANIMACAO', 'MEU MALVADO FAVORITO 2', 'Chris Renaud, Pierre Coffin', 'Leandro Hassum, Maria Clara Gueiros, Luiz Carlos Persy mais', 'images/a9.jpg', 'Gru (voz de Steve Carell/Leandro Hassum) mudou radicalmente sua vida e agora seu negÃ³cio Ã© se dedicar Ã s filhotas Agnes (Elsie Fisher), Edith (Dana Gaier) e Margo (Miranda Cosgrove), deixando de lado os tempos de vilÃ£o.', '2013', 4, 98, 3, 0, 1000000000),
(12, 'SERIE', 'FANTASIA', 'Game of Thrones', 'David Benioff, D.B. Weiss', 'Peter Dinklage, Emilia Clarke, Kit Harington', 'images/a12.jpg', 'HÃ¡ muito tempo, em um tempo esquecido, uma forÃ§a destruiu o equilÃ­brio das estaÃ§Ãµes. Em uma terra onde os verÃµes podem durar vÃ¡rios anos e o inverno toda uma vida, as reivindicaÃ§Ãµes e as forÃ§as sobrenaturais correm as portas do Reino dos Sete Reinos.', '2011', 5, 52, 18, 8, 0),
(13, 'SERIE', 'DRAMA', 'Breaking Bad', 'Vince Gilligan', 'Bryan Cranston, Anna Gunn, Aaron Paul', 'images/a13.jpg', 'Walter White (Bryan Cranston) Ã© um professor de quÃ­mica na casa dos 50 anos que trabalha em uma escola secundÃ¡ria no Novo MÃ©xico. Para atender Ã s necessidades de Skyler (Anna Gunn), sua esposa grÃ¡vida, e Walt Junior (RJ Mitte), seu filho deficiente fÃ­sico, ele tem que trabalhar duplamente.', '2008', 5, 42, 16, 5, 0),
(14, 'SERIE', 'AVENTURA', 'Sherlock', ' Steven Moffat, Steven Moffat,', 'Benedict Cumberbatch, Martin Freeman, Amanda Abbington', 'images/a15.jpg', 'O dr. John Watson precisa de um lugar para morar em Londres. Ele Ã© apresentado ao detetive Sherlock Holmes e os dois acabam desenvolvendo uma parceria intrigante, na qual a dupla vagarÃ¡ pela capital inglesa solucionando assassinatos e outros crimes brutais. Tudo isso em pleno sÃ©culo XXI.', '2010', 4, 90, 16, 4, 0),
(15, 'SERIE', 'FANTASIA', 'STRANGER THINGS', 'Matt Duffer, Ross Duffer', 'Winona Ryder, David Harbour, Finn Wolfhard', 'images/a16.jpg', 'Long Island, 1983. Um garoto de 12 anos desaparece misteriosamente. A famÃ­lia e a polÃ­cia procuram respostas, mas acabam se deparando com um experimento secreto do governo. Enquanto isso, os amigos do menino iniciam suas prÃ³prias investigaÃ§Ãµes, o que os levam a um extraordinÃ¡rio mistÃ©rio envolvendo forÃ§as sobrenaturais e uma garotinha muito, muito estranha.', '2016', 3, 55, 16, 3, 0),
(16, 'SERIE', 'TERROR', 'Supernatural', 'Eric Kripke, McG, Sera Gamble', 'Jared Padalecki, Jensen Ackles, Misha Collins', 'images/a17.jpg', 'Desde que era pequeno, Sam Winchester (Jared Padalecki) tentava escapar do prÃ³prio passsado. ApÃ³s a misteriosa morte de Mary (Samantha Smith), o pai de Sam passou a procurar vinganÃ§a contra as forÃ§as do mal que mataram a esposa, destruindo qualquer ser maligno que cruze o seu caminho.', '2005', 5, 42, 10, 14, 0),
(17, 'SERIE', 'DRAMA', 'Greys Anatomy', 'Shonda Rhimes, Shonda Rhimes, ', 'Ellen Pompeo, Justin Chambers', 'images/a18.jpg', 'Os mÃ©dicos do Grey Sloan Memorial Hospital lidam diariamente com casos e consequÃªncias de vida ou morte. Ã? um no outro que eles encontram apoio, conforto, amizade e, Ã s vezes, atÃ© mais que amizade... Juntos, eles descobrem o quanto a vida profissional e a pessoal podem ser complicadas e se misturarem no meio do caminho.', '2005', 2, 42, 10, 15, 0),
(18, 'FILME', 'ANIMACAO', 'OperaÃ§Ã£o Big Hero', ' Don Hall, Chris Williams (II)', '\r\nRyan Potter, Scott Adsit', 'images/a19.jpg', 'Cidade de San Fransokyo, Estados Unidos. Hiro Hamada (voz de Ryan Potter) Ã© um garoto prodÃ­gio que, aos 13 anos, criou um poderoso robÃ´ para participar de lutas clandestinas, onde tenta ganhar um bom dinheiro. ', '2014', 3, 102, 0, 0, 657000000),
(19, 'SERIE', 'COMEDIA', 'friends', ' David Crane, Marta Kauffman', 'Jennifer Aniston, Courteney Cox, Lisa Kudrow', 'images/a20.jpg', 'Seis jovens sÃ£o unidos por laÃ§os familiares, romÃ¢nticos e, principalmente, de amizade, enquanto tentam vingar em Nova York. Rachel Ã© a garota mimada que deixa o noivo no altar para viver com a amiga dos tempos de escola Monica, sistemÃ¡tica e apaixonada pela culinÃ¡ria.', '1994', 5, 22, 10, 10, 0),
(20, 'FILME', 'ACAO', 'VINGADORES: GUERRA INFINITA', 'Joe Russo, Anthony Russo', 'Robert Downey Jr., Chris Hemsworth, Mark Ruffalo mais', 'images/a21.jpg', 'Thanos (Josh Brolin) enfim chega Ã  Terra, disposto a reunir as Joias do Infinito. Para enfrentÃ¡-lo, os Vingadores precisam unir forÃ§as com os GuardiÃµes da GalÃ¡xia, ao mesmo tempo em que lidam com desavenÃ§as entre alguns de seus integrantes.', '2018', 4, 156, 12, 0, 2000000000),
(21, 'FILME', 'ACAO', 'BATMAN - O CAVALEIRO DAS TREVA', 'Christopher Nolan', 'Isaac Bardavid, Christian Bale, Heath Ledger mais', 'images/a22.jpg', 'ApÃ³s dois anos desde o surgimento do Batman (Christian Bale), os criminosos de Gotham City tÃªm muito o que temer. Com a ajuda do tenente James Gordon (Gary Oldman) e do promotor pÃºblico Harvey Dent (Aaron Eckhart), Batman luta contra o crime organizado. Acuados com o combate, os chefes do crime aceitam a proposta feita pelo Coringa (Heath Ledger) e o contratam para combater o Homem-Morcego.', '2008', 4, 147, 16, 0, 1000000000),
(22, 'FILME', 'ACAO', 'VELOZES & FURIOSOS 7', 'James Wan', 'Vin Diesel, Paul Walker, Jason Statham mais', 'images/a23.jpg', 'ApÃ³s os acontecimentos em Londres, Dom (Vin Diesel), Brian (Paul Walker), Letty (Michelle Rodriguez) e o resto da equipe tiveram a chance de voltar para os Estados Unidos e recomeÃ§arem suas vidas. Mas a tranquilidade do grupo Ã© destruÃ­da quando Deckard Shaw (Jason Statham), um assassino profissional, quer vinganÃ§a pela morte de seu irmÃ£o', '2015', 3, 137, 14, 0, 1517000000),
(23, 'FILME', 'ACAO', ' Matrix', 'Lana Wachowski, Lilly Wachowsk', ' Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss mais', 'images/a24.jpg', 'Em um futuro prÃ³ximo, Thomas Anderson (Keanu Reeves), um jovem programador de computador que mora em um cubÃ­culo escuro, Ã© atormentado por estranhos pesadelos nos quais encontra-se conectado por cabos e contra sua vontade, em um imenso sistema de computadores do futuro. Em todas essas ocasiÃµes, acorda gritando no exato momento em que os eletrodos estÃ£o para penetrar em seu cÃ©rebro.', '1999', 5, 135, 16, 0, 463000000),
(24, 'FILME', 'ACAO', 'Logan', 'James Mangold', 'Hugh Jackman, Patrick Stewart, Dafne Keen mais', 'images/a25.jpg', 'Em 2029, Logan (Hugh Jackman) ganha a vida como chofer de limousine para cuidar do nonagenÃ¡rio Charles Xavier (Patrick Stewart). Debilitado fisicamente e esgotado emocionalmente, ele Ã© procurado por Gabriela (Elizabeth Rodriguez), uma mexicana que precisa da ajuda do ex-X-Men para defender a pequena Laura Kinney / X-23 (Dafne Keen). Ao mesmo tempo em que se recusa a voltar Ã  ativa, Logan Ã© perseguido pelo mercenÃ¡rio Donald Pierce (Boyd Holbrook), interessado na menina.', '2017', 5, 137, 16, 0, 619000000),
(25, 'FILME', 'ACAO', 'O Exterminador do Futuro 2 - O', ' James Cameron', 'Arnold Schwarzenegger, Linda Hamilton, Edward Furlong mais', 'images/a26.jpg', 'Uma crianÃ§a destinada a ser lÃ­der (Edward Furlong) jÃ¡ nasceu, mas infeliz por viver com pais adotivos, pois foi privado da companhia da mÃ£e (Linda Hamilton), que foi considerada louca quando falou de um exterminador vindo do futuro. Neste contexto, um andrÃ³ide (Arnold Schwarzenegger) vem do futuro, mais exatamente um modelo T-800 igual ao filme original, para proteger o garoto, mas existe um problema: o mais avanÃ§ado andrÃ³ide existente no futuro, um modelo T-1000 (Robert Patrick), que feito de \"metal lÃ­quido\", nÃ£o pode ter nenhum dano permanente e pode assumir a forma que desejar, tambÃ©m veio para o passado com a missÃ£o de matar o menino.', '1991', 4, 135, 16, 0, 440000000),
(26, 'FILME', 'ACAO', 'Star wars - despertar da forÃ§', ' j. j. Abrams', 'Daisy Ridley, John Boyega, Adam Driver mais', 'images/a27.jpg', 'DÃ?Â©cadas apÃ?Â³s a queda de Darth Vader e do ImpÃ?Â©rio, surge uma nova ameaÃ?Â§a: a Primeira Ordem, uma organizaÃ?Â§Ã?Â£o sombria que busca minar o poder da RepÃ?Âºblica e que tem Kylo Ren (Adam Driver), o General Hux (Domhnall Gleeson) e o LÃ?Â­der Supremo Snoke (Andy Serkis) como principais expoentes.', '2015', 3, 135, 12, 0, 2000000000),
(27, 'FILME', 'AVENTURA', ' O Senhor dos Aneis - O Retor', ' Peter Jackson', 'Sean Astin, Elijah Wood, Viggo Mortensen mais', 'images/A28.jpg', 'Sauron planeja um grande ataque a Minas Tirith, capital de Gondor, o que faz com que Gandalf (Ian McKellen) e Pippin (Billy Boyd) partam para o local na intenÃ?Â§Ã?Â£o de ajudar a resistÃ?Âªncia. Um exÃ?Â©rcito Ã?Â© reunido por Theoden (Bernard Hill) em Rohan, em mais uma tentativa de deter as forÃ?Â§as de Sauron. Enquanto isso Frodo (Elijah Wood), Sam (Sean Astin) e Gollum (Andy Serkins) seguem sua viagem rumo Ã?Â  Montanha da PerdiÃ?Â§Ã?Â£o, para destruir o Um Anel.', '2003', 5, 201, 12, 0, 5000000),
(28, 'FILME', 'AVENTURA', 'Star Wars: Episode V - The Emp', ' Irvin Kershner', 'Isaac Bardavid, Mark Hamill, Harrison Ford mais', 'images/A29.jpg', 'As forÃ§as imperais comandadas por Darth Vader (David Prowse) lanÃ§am um ataque contra os membros da resistÃªncia, que sÃ£o obrigados a fugir. Enquanto isso Luke Skywalker (Mark Hamill) tenta encontrar o Mestre Yoda, que poderÃ¡ ensinÃ¡-lo a dominar a \"ForÃ§a\" e tornÃ¡-lo um cavaleiro jedi. No entanto, Darth Vader planeja levÃ¡-lo para o lado negro da \"ForÃ§a\".', '1980', 4, 124, 12, 0, 30000000),
(29, 'FILME', 'AVENTURA', 'De Volta para o Futuro', ' Robert Zemeckis', 'Michael J. Fox, Christopher Lloyd, Lea Thompson mais', 'images/A30.jpg', 'Um jovem (Michael J. Fox) aciona acidentalmente uma mÃ¡quina do tempo construÃ­da por um cientista (Christopher Lloyd) em um Delorean, retornando aos anos 50. LÃ¡ conhece sua mÃ£e (Lea Thompson), antes ainda do casamento com seu pai, que fica apaixonada por ele. Tal paixÃ£o pÃµe em risco sua prÃ³pria existÃªncia, pois alteraria todo o futuro, forÃ§ando-o a servir de cupido entre seus pais', '1985', 4, 116, 10, 0, 19000000),
(30, 'FILME', 'AVENTURA', 'HARRY POTTER E AS RELÃQUIAS D', ' David Yates', 'Will Dunn, Rohan Gotobed, Alfie McIlwain mais', 'images/A31.jpg', 'Harry Potter (Daniel Radcliffe) e seus amigos Rony Weasley (Rupert Grint) e Hermione Granger (Emma Watson) seguem Ã  procura das horcruxes. O objetivo do trio Ã© encontrÃ¡-las e, em seguida, destruÃ­-las, de forma a eliminar lorde Voldemort (Ralph Fiennes) de uma vez por todas. Com a ajuda do duende Grampo (Warwick Davis), eles entram no banco Gringotes de forma a invadir o cofre de Bellatrix Lestrange (Helena Bonham Carter).', '2011', 4, 129, 16, 0, 125000000),
(31, 'FILME', 'AVENTURA', 'O Senhor dos AnÃ©is - A Socied', ' Peter Jackson', 'Elijah Wood, Sean Astin, Ian McKellen mais', 'images/A32.jpg', 'Numa terra fantÃ¡stica e Ãºnica, chamada Terra-MÃ©dia, um hobbit (seres de estatura entre 80 cm e 1,20 m, com pÃ©s peludos e bochechas um pouco avermelhadas) recebe de presente de seu tio o Um Anel, um anel mÃ¡gico e maligno que precisa ser destruÃ­do antes que caia nas mÃ£os do mal. Para isso o hobbit Frodo (Elijah Woods) terÃ¡ um caminho Ã¡rduo pela frente, onde encontrarÃ¡ perigo, medo e personagens bizarros. Ao seu lado para o cumprimento desta jornada aos poucos ele poderÃ¡ contar com outros hobbits, um elfo, um anÃ£o, dois humanos e um mago, totalizando 9 pessoas que formarÃ£o a Sociedade do Anel.', '2001', 5, 178, 16, 0, 90000000),
(32, 'FILME', 'AVENTURA', 'GLADIADOR', ' Ridley Scott', 'Russell Crowe, Joaquin Phoenix, Connie Nielsen mais', 'images/A34.jpg', 'Nos dias finais do reinado de Marcus Aurelius (Richard Harris), o imperador desperta a ira de seu filho Commodus (Joaquin Phoenix) ao tornar pÃºblica sua predileÃ§Ã£o em deixar o trono para Maximus (Russell Crowe), o comandante do exÃ©rcito romano. Sedento pelo poder, Commodus mata seu pai, assume a coroa e ordena a morte de Maximus, que consegue fugir antes de ser pego e passa a se esconder sob a identidade de um escravo e gladiador do ImpÃ©rio Romano.', '2000', 5, 155, 15, 0, 103000000),
(33, 'FILME', 'AVENTURA', 'O AUTO DA COMPADECIDA', '  Guel Arraes', 'Matheus Nachtergaele, Selton Mello, Denise Fraga mais', 'images/A33.jpg', 'As aventuras dos nordestinos JoÃ£o Grilo (Matheus Natchergaele), um sertanejo pobre e mentiroso, e ChicÃ³ (Selton Mello), o mais covarde dos homens. Ambos lutam pelo pÃ£o de cada dia e atravessam por vÃ¡rios episÃ³dios enganando a todos do pequeno vilarejo de TaperoÃ¡, no sertÃ£o da ParaÃ­ba. A salvaÃ§Ã£o da dupla acontece com a apariÃ§Ã£o da Nossa Senhora (Fernanda Montenegro). AdaptaÃ§Ã£o da obra de Ariano Suassuna.', '2000', 5, 95, 0, 0, 100000),
(34, 'FILME', 'DRAMA', 'O PODEROSO CHEFÃƒO', '  Francis Ford Coppola', 'Marlon Brando, Al Pacino, James Caan mais', 'images/A35.jpg', 'Don Vito Corleone (Marlon Brando) Ã© o chefe de uma \"famÃ­lia\" de Nova York que estÃ¡ feliz, pois Connie (Talia Shire), sua filha, se casou com Carlo (Gianni Russo). PorÃ©m, durante a festa, Bonasera (Salvatore Corsitto) Ã© visto no escritÃ³rio de Don Corleone pedindo \"justiÃ§a\", vinganÃ§a na verdade contra membros de uma quadrilha, que espancaram barbaramente sua filha por ela ter se recusado a fazer sexo para preservar a honra. Vito discute, mas os argumentos de Bonasera o sensibilizam e ele promete que os homens, que maltrataram a filha de Bonasera nÃ£o serÃ£o mortos, pois ela tambÃ©m nÃ£o foi, mas serÃ£o severamente castigados.', '1972', 5, 155, 16, 0, 6000001),
(35, 'FILME', 'DRAMA', 'UM SONHO DE LIBERDADE', '  Frank Darabont', 'Tim Robbins, Morgan Freeman, Bob Gunton mais', 'images/A36.jpg', 'Em 1946, Andy Dufresne (Tim Robbins), um jovem e bem sucedido banqueiro, tem a sua vida radicalmente modificada ao ser condenado por um crime que nunca cometeu, o homicÃ­dio de sua esposa e do amante dela. Ele Ã© mandado para uma prisÃ£o que Ã© o pesadelo de qualquer detento, a PenitenciÃ¡ria Estadual de Shawshank, no Maine. ', '1994', 5, 140, 12, 0, 25000000),
(36, 'FILME', 'DRAMA', 'A VIDA Ã‰ BELA', '  Roberto Benigni', 'Roberto Benigni, Horst Buchholz, Marisa Paredes mais', 'images/A37.jpg', 'Durante a Segunda Guerra Mundial na ItÃ¡lia, o judeu Guido (Roberto Benigni) e seu filho GiosuÃ© sÃ£o levados para um campo de concentraÃ§Ã£o nazista. Afastado da mulher, ele tem que usar sua imaginaÃ§Ã£o para fazer o menino acreditar que estÃ£o participando de uma grande brincadeira, com o intuito de protegÃª-lo do terror e da violÃªncia que os cercam.', '1998', 5, 157, 0, 0, 1000000),
(37, 'FILME', 'DRAMA', 'HISTÃ“RIAS CRUZADAS', ' Tate Taylor', 'Emma Stone, Jessica Chastain, Viola Davis mais', 'images/A38.jpg', 'Jackson, pequena cidade no estado do Mississipi, anos 60. Skeeter (Emma Stone) Ã© uma garota da sociedade que retorna determinada a se tornar escritora. Ela comeÃ§a a entrevistar as mulheres negras da cidade, que deixaram suas vidas para trabalhar na criaÃ§Ã£o dos filhos da elite branca, da qual a prÃ³pria Skeeter faz parte. Aibileen Clark (Viola Davis), a emprega da melhor amiga de Skeeter, Ã© a primeira a conceder uma entrevista, o que desagrada a sociedade como um todo. Apesar das crÃ­ticas, Skeeter e Aibileen continuam trabalhando juntas e, aos poucos, conseguem novas adesÃµes.', '2011', 3, 146, 10, 0, 25000000),
(38, 'FILME', 'DRAMA', 'SEMPRE AO SEU LADO', '  Lasse HallstrÃ¶m', 'Richard Gere, Joan Allen, Sarah Roemer mais', 'images/A39.jpg', '-- NOTAR : VOU VER ESCREVER MINHA CRÃTICA SINOPSE E DETALHES Parker Wilson (Richard Gere) Ã© um professor universitÃ¡rio que, ao retornar do trabalho, encontra na estaÃ§Ã£o de trem um filhote de cachorro da raÃ§a akita, conhecido por sua lealdade. Sem ter como deixÃ¡-lo na estaÃ§Ã£o, Parker o leva para casa mesmo sabendo que Cate (Joan Allen), sua esposa, Ã© contra a presenÃ§a de um cachorro. Aos poucos Parker se afeiÃ§oa ao filhote, que tem o nome Hachi escrito na coleira, em japonÃªs. Cate cede e aceita sua permanÃªncia. Hachi cresce e passa a acompanhar Parker atÃ© a estaÃ§Ã£o de trem, retornando ao local no horÃ¡rio em que o professor estÃ¡ de volta. AtÃ© que um acontecimento inesperado altera sua vida.', '2009', 5, 93, 0, 0, 16000000),
(39, 'FILME', 'DRAMA', 'HOMENS DE HONRA', ' George Tillman Jr.', 'Robert De Niro, Cuba Gooding Jr., Charlize Theron mais', 'images/A40.jpg', 'Carl Brashear (Cuba Gooding Jr.) veio de uma humilde famÃ­lia negra, que vivia em uma Ã¡rea rural em Sonora, Kentucky. Ainda garoto, no inÃ­cio dos anos 40, jÃ¡ adorava mergulhar, sendo que quando jovem se alistou na Marinha esperando se tornar um mergulhador. Inicialmente Carl trabalha como cozinheiro que era uma das poucas tarefas permitidas a um negro na Ã©poca. ', '2000', 5, 128, 10, 0, 32000000),
(40, 'FILME', 'DRAMA', 'ATÃ‰ O ÃšLTIMO HOMEM', ' Mel Gibson', 'Andrew Garfield, Vince Vaughn, Teresa Palmer mais', 'images/A41.jpg', 'Durante a Segunda Guerra Mundial, o mÃ©dico do exÃ©rcito Desmond T. Doss (Andrew Garfield) se recusa a pegar em uma arma e matar pessoas, porÃ©m, durante a Batalha de Okinawa ele trabalha na ala mÃ©dica e salva mais de 75 homens, sendo condecorado. O que faz de Doss o primeiro Opositor Consciente da histÃ³ria norte-americana a receber a Medalha de Honra do Congresso', '2016', 5, 140, 12, 0, 40000000),
(41, 'FILME', 'DRAMA', 'O RESGATE DO SOLDADO RYAN', ' Steven Spielberg', 'Tom Hanks, Tom Sizemore, Edward Burns mais', 'images/A42.jpg', 'Ao desembarcar na Normandia, no dia 6 de junho de 1944, capitÃ£o Miller (Tom Hanks) recebe a missÃ£o de comandar um grupo do segundo batalhÃ£o para o resgate do soldado James Ryan, caÃ§ula de quatro irmÃ£os, dentre os quais trÃªs morreram em combate. Por ordens do chefe George C. Marshall, eles precisam procurar o soldado e garantir o seu retorno, com vida, para casa.', '1998', 5, 163, 12, 0, 70000000),
(42, 'FILME', 'TERROR', 'PSICOSE', '  Alfred Hitchcock', 'Anthony Perkins, Janet Leigh, John Gavin mais', 'images/a43.jpg', 'Marion Crane Ã© uma secretÃ¡ria (Janet Leigh) que rouba 40 mil dÃ³lares da imobiliÃ¡ria onde trabalha para se casar e comeÃ§ar uma nova vida. Durante a fuga Ã  carro, ela enfrenta uma forte tempestade, erra o caminho e chega em um velho hotel. O estabelecimento Ã© administrado por um sujeito atencioso chamado Norman Bates (Anthony Perkins), que nutre um forte respeito e temor por sua mÃ£e. Marion decide passar a noite no local, sem saber o perigo que a cerca.', '1960', 5, 109, 16, 0, 800000),
(43, 'FILME', 'TERROR', 'INVOCAÃ‡ÃƒO DO MAL', ' James Wan', 'Vera Farmiga, Patrick Wilson, Ron Livingston mais', 'images/a44.jpg', 'Harrisville, Estados Unidos. Um casal (Ron Livinston e Lili Taylor) muda para uma casa nova ao lado de suas cinco filhas. Inexplicavelmente, estranhos acontecimentos comeÃ§am a assustar as crianÃ§as, o pai e, principalmente, a mÃ£e. ', '2013', 3, 110, 12, 0, 13000000),
(44, 'FILME', 'TERROR', 'ALIEN, O 8Âº PASSAGEIRO', ' Ridley Scott', 'Sigourney Weaver, Tom Skerritt, Veronica Cartwright mais', 'images/A45.jpg', 'Uma nave espacial, ao retornar para Terra, recebe estranhos sinais vindos de um asterÃ³ide. Ao investigarem o local, um dos tripulantes Ã© atacado por um estranho ser. O que parecia ser um ataque isolado se transforma em um terror constante, pois o tripulante atacado levou para dentro da nave o embriÃ£o de um alienÃ­gena, que nÃ£o para de crescer e tem como meta matar toda a tripulaÃ§Ã£o.', '1979', 3, 163, 16, 0, 11000000),
(45, 'FILME', 'TERROR', 'O LABIRINTO DO FAUNO', ' Guillermo del Toro', 'Ivana Baquero, Sergi LÃ³pez, Doug Jones mais', 'images/A46.jpg', 'Espanha, 1944. Oficialmente a Guerra Civil jÃ¡ terminou, mas um grupo de rebeldes ainda luta nas montanhas ao norte de Navarra. Ofelia (Ivana Baquero), de 10 anos, muda-se para a regiÃ£o com sua mÃ£e, Carmen (Ariadna Gil). LÃ¡ as espera seu novo padrasto, um oficial fascista que luta para exterminar os guerrilheiros da localidade. SolitÃ¡ria, a menina logo descobre a amizade de Mercedes (Maribel VerdÃº), jovem cozinheira da casa, que serve de contato secreto dos rebeldes. AlÃ©m disso, em seus passeios pelo jardim da imensa mansÃ£o em que moram, Ofelia descobre um labirinto que faz com que todo um mundo de fantasias se abra, trazendo consequÃªncias para todos Ã  sua volta.', '2006', 5, 112, 16, 0, 19000000),
(46, 'FILME', 'TERROR', 'CONSTANTINE', '  Francis Lawrence', 'Keanu Reeves, Rachel Weisz, Shia LaBeouf mais', 'images/A47.jpg', 'ohn Constantine (Keanu Reeves) Ã© um experiente ocultista e exorcista, que literalmente chegou ao inferno. Juntamente com Angela Dodson (Rachel Weisz), uma policial cÃ©tica, ele investiga o misterioso assassinato da irmÃ£ gÃªmea dela, Isabel. As investigaÃ§Ãµes levam a dupla a um mundo sombrio, em que precisam lidar com demÃ´nios e anjos malvados', '2005', 5, 121, 12, 0, 100000000),
(47, 'FILME', 'TERROR', 'O ILUMINADO', ' Stanley Kubrick', 'Jack Nicholson, Shelley Duvall, Danny Lloyd mais', 'images/A48.jpg', 'Durante o inverno, um homem (Jack Nicholson) Ã© contratado para ficar como vigia em um hotel no Colorado e vai para lÃ¡ com a mulher (Shelley Duvall) e seu filho (Danny Lloyd). PorÃ©m, o contÃ­nuo isolamento comeÃ§a a lhe causar problemas mentais sÃ©rios e ele vai se tornado cada vez mais agressivo e perigoso, ao mesmo tempo que seu filho passa a ter visÃµes de acontecimentos ocorridos no passado, que tambÃ©m foram causados pelo isolamento excessivo.', '1980', 5, 146, 16, 0, 19000000),
(48, 'FILME', 'TERROR', 'INVASÃƒO ZUMBI', ' Sang-Ho Yeon', 'Gong Yoo, Yumi Jung, Dong-seok Ma mais', 'images/A49.jpg', 'm um trem de alta velocidade com destino Ã  cidade de Busan, na CorÃ©ia do Sul, um vÃ­rus misterioso que transforma as pessoas em zumbis acaba se espalhando de maneira devastadora. A cidade de destino da locomotiva conseguiu com sucesso se defender da epidemia, mas atÃ© chegar lÃ¡ eles deverÃ£o lutar pelas suas sobrevivÃªncias.', '2016', 4, 118, 16, 0, 10000),
(49, 'FILME', 'AVENTURA', 'O REI LEÃƒO 2019', ' Jon Favreau', 'Donald Glover, BeyoncÃ© Knowles, Chiwetel Ejiofor mais', 'images/A50.jpg', 'Simba (Donald Glover) Ã© um jovem leÃ£o cujo destino Ã© se tornar o rei da selva. Tudo corre bem, atÃ© que uma grande tragÃ©dia atinge sua vida mudando sua trajetÃ³ria para sempre. A sinopse oficial ainda nÃ£o foi divulgada.', '2019', 0, 1, 0, 0, 1),
(50, 'FILME', 'ACAO', 'ROBIN HOOD - A ORIGEM', ' Otto Bathurst', 'Taron Egerton, Jamie Foxx, Jamie Dornan mais', 'images/A56.jpg', 'A origem da famosa lenda sobre o ladrÃ£o que rouba dos ricos para dar aos pobres. Robin Hood (Taron Egerton) volta das Cruzadas e surpreende-se ao encontrar a Floresta Sherwood infestada de criminosos, no mais completo caos. Ele nÃ£o deixarÃ¡ que as coisas permaneÃ§am desse jeito.', '2019', 1, 114, 0, 0, 0),
(51, 'FILME', 'ANIMACAO', 'DRAGON BALL SUPER - O FILME', ' Tatsuya Nagamine', 'Masako Nozawa, RyÃ´ Horikawa, KÃ´ichi Yamadera mais', 'images/A51.jpg', 'Apesar da Terra estar em um perÃ­odo de calmaria, Goku se recusa a parar de treinar constantemente - ele quer estar pronto para quando uma nova ameaÃ§a surgir. O que ele nÃ£o imaginava era que seu novo inimigo seria Broly, um poderoso super saiyajin sedento por vinganÃ§a, que deseja destruir todos que encontrar pela frente.', '2019', 1, 1, 0, 0, 0),
(52, 'FILME', 'AVENTURA', 'AQUAMAN', ' James Wan', 'Jason Momoa, Amber Heard, Willem Dafoe mais', 'images/A52.jpg', 'Arthur Curry (Jason Momoa), mais conhecido como Aquaman, ainda Ã© um homem solitÃ¡rio, mas quando ele comeÃ§a uma jornada com Mera (Amber Heard), em busca de um algo muito importante para o futuro de Atlantis, ele aprende que nÃ£o pode fazer tudo sozinho.', '2019', 1, 1, 0, 0, 0),
(53, 'FILME', 'ANIMACAO', 'WIFI RALPH - QUEBRANDO A INTER', ' Rich Moore, Phil Johnston', 'Flora Paulita, John C. Reilly, Sarah Silverman mais', 'images/A54.jpg', 'Ralph, o mais famoso vilÃ£o dos videogames, e Vanellope, sua companheira atrapalhada, iniciam mais uma arriscada aventura. ApÃ³s a gloriosa vitÃ³ria no Fliperama Litwak, a dupla viaja para a world wide web, no universo expansivo e desconhecido da internet. Dessa vez, a missÃ£o Ã© achar uma peÃ§a reserva para salvar o videogame Corrida Doce, de Vanellope. Para isso, eles contam com a ajuda dos \"cidadÃ£os da Internet\" e de Yess, a alma por trÃ¡s do \"Buzzztube\", um famoso website que dita tendÃªncias.', '2019', 1, 1, 0, 0, 0),
(54, 'FILME', 'DRAMA', 'AFTER', ' Jenny Gage', 'Josephine Langford, Hero Fiennes-Tiffin, Selma Blair mais', 'images/A55.jpg', 'Baseado no romance de Anna Todd, o filme retrata a jornada de Tessa Young (Josephine Langford), uma jovem de 18 anos com uma vida simples: Ã³timas notas na escola, muitos amigos e um namorado doce. Todos os prÃ³ximos passos de sua vida jÃ¡ estÃ£o planejados, mas as coisas desandam quando ela conhece um homem rebelde e rude com segredos sombrios que mudam sua vida.', '2019', 1, 1, 1, 0, 1),
(55, 'FILME', 'AVENTURA', 'CAPITÃƒ MARVEL', '  Anna Boden, Ryan Fleck', 'Brie Larson, Jude Law, Samuel L. Jackson', 'images/A53.jpg', 'Aventura sobre Carol Danvers, uma agente da CIA que tem contato com uma raÃ§a alienÃ­gena e ganha poderes sobre-humanos. Entre os seus poderes estÃ£o uma forÃ§a fora do comum e a habilidade de voar.', '2019', 1, 1, 1, 0, 1);

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
('a', '0cc175b9c0f1b6a831c399e269772661', 'a@hotmail.com', 1900),
('admin', '21232f297a57a5a743894a0e4a801fc3', '0', 0),
('Danilo', 'e10adc3949ba59abbe56e057f20f883e', 'dan.snascimento@hotmail.com', 1998),
('opa', 'aadb97a59c56040772603c597490d729', 'opa@hotmail.com', 1900),
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
('a-0', 'a', 0, 1, 103),
('a-12', 'a', 12, 1, 52),
('a-19', 'a', 19, 3, 22),
('a-2', 'a', 2, 1, 113),
('a-42', 'a', 42, 1, 109),
('a-43', 'a', 43, 2, 55),
('a-45', 'a', 45, 2, 56),
('a-46', 'a', 46, 1, 121),
('a-48', 'a', 48, 1, 118),
('Admin-1', 'Admin', 1, 1, 100),
('Admin-12', 'Admin', 12, 1, 52),
('Admin-18', 'Admin', 18, 19, 918),
('Admin-19', 'Admin', 19, 1, 22),
('Admin-2', 'Admin', 2, 1, 113),
('Admin-24', 'Admin', 24, 1, 137),
('Admin-26', 'Admin', 26, 1, 135),
('Admin-28', 'Admin', 28, 3, 124),
('Admin-32', 'Admin', 32, 1, 124),
('Admin-34', 'Admin', 34, 1, 129),
('Admin-38', 'Admin', 38, 1, 155),
('Admin-4', 'Admin', 4, 2, 0),
('Admin-41', 'Admin', 41, 6, 408),
('Admin-47', 'Admin', 47, 1, 146),
('Admin-49', 'Admin', 49, 6, 3),
('Admin-5', 'Admin', 5, 13, 534),
('Admin-50', 'Admin', 50, 3, 114),
('Admin-51', 'Admin', 51, 3, 1),
('Admin-53', 'Admin', 53, 2, 1),
('Admin-54', 'Admin', 54, 7, 3),
('Admin-55', 'Admin', 55, 4, 2),
('Admin-7', 'Admin', 7, 1, 95),
('Danilo-0', 'Danilo', 0, 9, 412),
('Danilo-1', 'Danilo', 1, 12, 550),
('Danilo-10', 'Danilo', 10, 10, 455),
('Danilo-13', 'Danilo', 13, 2, 21),
('Danilo-14', 'Danilo', 14, 1, 90),
('Danilo-16', 'Danilo', 16, 29, 588),
('danilo-18', 'danilo', 18, 3, 102),
('Danilo-19', 'Danilo', 19, 36, 385),
('Danilo-2', 'Danilo', 2, 4, 170),
('Danilo-20', 'Danilo', 20, 1, 156),
('Danilo-21', 'Danilo', 21, 1, 147),
('Danilo-22', 'Danilo', 22, 7, 411),
('Danilo-24', 'Danilo', 24, 1, 137),
('Danilo-25', 'Danilo', 25, 2, 68),
('Danilo-27', 'Danilo', 27, 24, 2312),
('Danilo-3', 'Danilo', 3, 3, 89),
('Danilo-30', 'Danilo', 30, 1, 116),
('Danilo-32', 'Danilo', 32, 2, 78),
('Danilo-34', 'Danilo', 34, 1, 95),
('danilo-38', 'danilo', 38, 6, 388),
('Danilo-4', 'Danilo', 4, 2, 0),
('Danilo-41', 'Danilo', 41, 29, 1960),
('Danilo-42', 'Danilo', 42, 1, 93),
('Danilo-43', 'Danilo', 43, 3, 109),
('Danilo-45', 'Danilo', 45, 1, 163),
('Danilo-46', 'Danilo', 46, 1, 112),
('Danilo-48', 'Danilo', 48, 5, 292),
('Danilo-5', 'Danilo', 5, 6, 223),
('Danilo-7', 'Danilo', 7, 3, 95),
('Danilo-8', 'Danilo', 8, 38, 1425),
('Danilo-9', 'Danilo', 9, 1, 125),
('opa-0', 'opa', 0, 2, 52),
('opa-1', 'opa', 1, 1, 100),
('opa-14', 'opa', 14, 4, 135),
('opa-18', 'opa', 18, 1, 102),
('opa-25', 'opa', 25, 1, 135),
('opa-30', 'opa', 30, 6, 323),
('opa-4', 'opa', 4, 14, 0),
('opa-5', 'opa', 5, 18, 757),
('opa-7', 'opa', 7, 1, 95),
('opa-8', 'opa', 8, 87, 3311);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `destaque`
--
ALTER TABLE `destaque`
  ADD PRIMARY KEY (`filme`);

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
