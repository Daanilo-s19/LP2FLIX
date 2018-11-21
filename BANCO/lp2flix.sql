-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Nov-2018 às 17:29
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
(30, 'FILME', 'ANIMACAO', '7', ' 7', '7', '7', '7', '7', 7, 7, 7, 0, 7),
(31, 'FILME', 'ANIMACAO', 'hÃ¡ perigos no aÃ§ai', ' tiÃ£o sem mÃ£o', '8', '8', '8', '8', 8, 8, 8, 0, 8),
(32, 'FILME', 'AVENTURA', 'Star Wars: Episode V - The Emp', ' Irvin Kershner', 'Isaac Bardavid, Mark Hamill, Harrison Ford mais', 'images/A29.jpg', 'As forÃ§as imperais comandadas por Darth Vader (David Prowse) lanÃ§am um ataque contra os membros da resistÃªncia, que sÃ£o obrigados a fugir. Enquanto isso Luke Skywalker (Mark Hamill) tenta encontrar o Mestre Yoda, que poderÃ¡ ensinÃ¡-lo a dominar a \"ForÃ§a\" e tornÃ¡-lo um cavaleiro jedi. No entanto, Darth Vader planeja levÃ¡-lo para o lado negro da \"ForÃ§a\".', '1980', 4, 124, 12, 0, 30000000),
(33, 'FILME', 'AVENTURA', 'De Volta para o Futuro', ' Robert Zemeckis', 'Michael J. Fox, Christopher Lloyd, Lea Thompson mais', 'images/A30.jpg', 'Um jovem (Michael J. Fox) aciona acidentalmente uma mÃ¡quina do tempo construÃ­da por um cientista (Christopher Lloyd) em um Delorean, retornando aos anos 50. LÃ¡ conhece sua mÃ£e (Lea Thompson), antes ainda do casamento com seu pai, que fica apaixonada por ele. Tal paixÃ£o pÃµe em risco sua prÃ³pria existÃªncia, pois alteraria todo o futuro, forÃ§ando-o a servir de cupido entre seus pais', '1985', 4, 116, 10, 0, 19000000),
(34, 'FILME', 'AVENTURA', 'HARRY POTTER E AS RELÃQUIAS D', ' David Yates', 'Will Dunn, Rohan Gotobed, Alfie McIlwain mais', 'images/A31.jpg', 'Harry Potter (Daniel Radcliffe) e seus amigos Rony Weasley (Rupert Grint) e Hermione Granger (Emma Watson) seguem Ã  procura das horcruxes. O objetivo do trio Ã© encontrÃ¡-las e, em seguida, destruÃ­-las, de forma a eliminar lorde Voldemort (Ralph Fiennes) de uma vez por todas. Com a ajuda do duende Grampo (Warwick Davis), eles entram no banco Gringotes de forma a invadir o cofre de Bellatrix Lestrange (Helena Bonham Carter).', '2011', 4, 129, 16, 0, 125000000),
(35, 'FILME', 'AVENTURA', 'O Senhor dos AnÃ©is - A Socied', ' Peter Jackson', 'Elijah Wood, Sean Astin, Ian McKellen mais', 'images/A32.jpg', 'Numa terra fantÃ¡stica e Ãºnica, chamada Terra-MÃ©dia, um hobbit (seres de estatura entre 80 cm e 1,20 m, com pÃ©s peludos e bochechas um pouco avermelhadas) recebe de presente de seu tio o Um Anel, um anel mÃ¡gico e maligno que precisa ser destruÃ­do antes que caia nas mÃ£os do mal. Para isso o hobbit Frodo (Elijah Woods) terÃ¡ um caminho Ã¡rduo pela frente, onde encontrarÃ¡ perigo, medo e personagens bizarros. Ao seu lado para o cumprimento desta jornada aos poucos ele poderÃ¡ contar com outros hobbits, um elfo, um anÃ£o, dois humanos e um mago, totalizando 9 pessoas que formarÃ£o a Sociedade do Anel.', '2001', 5, 178, 16, 0, 90000000),
(36, 'FILME', 'AVENTURA', 'GLADIADOR', ' Ridley Scott', 'Russell Crowe, Joaquin Phoenix, Connie Nielsen mais', 'images/A34.jpg', 'Nos dias finais do reinado de Marcus Aurelius (Richard Harris), o imperador desperta a ira de seu filho Commodus (Joaquin Phoenix) ao tornar pÃºblica sua predileÃ§Ã£o em deixar o trono para Maximus (Russell Crowe), o comandante do exÃ©rcito romano. Sedento pelo poder, Commodus mata seu pai, assume a coroa e ordena a morte de Maximus, que consegue fugir antes de ser pego e passa a se esconder sob a identidade de um escravo e gladiador do ImpÃ©rio Romano.', '2000', 5, 155, 15, 0, 103000000),
(37, 'FILME', 'AVENTURA', 'O AUTO DA COMPADECIDA', '  Guel Arraes', 'Matheus Nachtergaele, Selton Mello, Denise Fraga mais', 'images/A33.jpg', 'As aventuras dos nordestinos JoÃ£o Grilo (Matheus Natchergaele), um sertanejo pobre e mentiroso, e ChicÃ³ (Selton Mello), o mais covarde dos homens. Ambos lutam pelo pÃ£o de cada dia e atravessam por vÃ¡rios episÃ³dios enganando a todos do pequeno vilarejo de TaperoÃ¡, no sertÃ£o da ParaÃ­ba. A salvaÃ§Ã£o da dupla acontece com a apariÃ§Ã£o da Nossa Senhora (Fernanda Montenegro). AdaptaÃ§Ã£o da obra de Ariano Suassuna.', '2000', 5, 95, 0, 0, 100000),
(38, 'FILME', 'DRAMA', 'O PODEROSO CHEFÃƒO', '  Francis Ford Coppola', 'Marlon Brando, Al Pacino, James Caan mais', 'images/A35.jpg', 'Don Vito Corleone (Marlon Brando) Ã© o chefe de uma \"famÃ­lia\" de Nova York que estÃ¡ feliz, pois Connie (Talia Shire), sua filha, se casou com Carlo (Gianni Russo). PorÃ©m, durante a festa, Bonasera (Salvatore Corsitto) Ã© visto no escritÃ³rio de Don Corleone pedindo \"justiÃ§a\", vinganÃ§a na verdade contra membros de uma quadrilha, que espancaram barbaramente sua filha por ela ter se recusado a fazer sexo para preservar a honra. Vito discute, mas os argumentos de Bonasera o sensibilizam e ele promete que os homens, que maltrataram a filha de Bonasera nÃ£o serÃ£o mortos, pois ela tambÃ©m nÃ£o foi, mas serÃ£o severamente castigados.', '1972', 5, 155, 16, 0, 6000001),
(39, 'FILME', 'DRAMA', 'UM SONHO DE LIBERDADE', '  Frank Darabont', 'Tim Robbins, Morgan Freeman, Bob Gunton mais', 'images/A36.jpg', 'Em 1946, Andy Dufresne (Tim Robbins), um jovem e bem sucedido banqueiro, tem a sua vida radicalmente modificada ao ser condenado por um crime que nunca cometeu, o homicÃ­dio de sua esposa e do amante dela. Ele Ã© mandado para uma prisÃ£o que Ã© o pesadelo de qualquer detento, a PenitenciÃ¡ria Estadual de Shawshank, no Maine. ', '1994', 5, 140, 12, 0, 25000000),
(40, 'FILME', 'DRAMA', 'A VIDA Ã‰ BELA', '  Roberto Benigni', 'Roberto Benigni, Horst Buchholz, Marisa Paredes mais', 'images/A37.jpg', 'Durante a Segunda Guerra Mundial na ItÃ¡lia, o judeu Guido (Roberto Benigni) e seu filho GiosuÃ© sÃ£o levados para um campo de concentraÃ§Ã£o nazista. Afastado da mulher, ele tem que usar sua imaginaÃ§Ã£o para fazer o menino acreditar que estÃ£o participando de uma grande brincadeira, com o intuito de protegÃª-lo do terror e da violÃªncia que os cercam.', '1998', 5, 157, 0, 0, 1000000),
(41, 'FILME', 'DRAMA', 'HISTÃ“RIAS CRUZADAS', ' Tate Taylor', 'Emma Stone, Jessica Chastain, Viola Davis mais', 'images/A38.jpg', 'Jackson, pequena cidade no estado do Mississipi, anos 60. Skeeter (Emma Stone) Ã© uma garota da sociedade que retorna determinada a se tornar escritora. Ela comeÃ§a a entrevistar as mulheres negras da cidade, que deixaram suas vidas para trabalhar na criaÃ§Ã£o dos filhos da elite branca, da qual a prÃ³pria Skeeter faz parte. Aibileen Clark (Viola Davis), a emprega da melhor amiga de Skeeter, Ã© a primeira a conceder uma entrevista, o que desagrada a sociedade como um todo. Apesar das crÃ­ticas, Skeeter e Aibileen continuam trabalhando juntas e, aos poucos, conseguem novas adesÃµes.', '2011', 3, 146, 10, 0, 25000000);

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
('Admin-32', 'Admin', 32, 1, 124),
('Admin-34', 'Admin', 34, 1, 129),
('Admin-38', 'Admin', 38, 1, 155),
('Admin-4', 'Admin', 4, 2, 0),
('Admin-5', 'Admin', 5, 13, 534),
('Danilo--1', 'Danilo', -1, 2, 5),
('Danilo-0', 'Danilo', 0, 4, 155),
('Danilo-10', 'Danilo', 10, 10, 455),
('Danilo-16', 'Danilo', 16, 29, 588),
('Danilo-2', 'Danilo', 2, 1, 113),
('Danilo-22', 'Danilo', 22, 6, 343),
('Danilo-7', 'Danilo', 7, 1, 95),
('Danilo-SEARCH', 'Danilo', 0, 16, 75),
('Danilo-X', 'Danilo', 0, 4, 15);

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
('', 0, 7, 30),
('A Bela e a Fera', 5, 13, 534),
('A era do gelo', 0, 7, 30),
('Como Treinar o seu DragÃ£o 2', 4, 2, 0),
('Divertida Mente', 7, 1, 95),
('HARRY POTTER E AS RELÃQUIAS D', 34, 1, 129),
('Moana', 2, 1, 113),
('O PODEROSO CHEFÃƒO', 38, 1, 155),
('Procurando Nemo', 10, 10, 455),
('procurar', -1, 2, 5),
('Star Wars: Episode V - The Emp', 32, 1, 124),
('Supernatural', 16, 29, 588),
('VELOZES ', 22, 6, 343);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `destaque`
--
ALTER TABLE `destaque`
  ADD PRIMARY KEY (`filme`);
COMMIT;
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
