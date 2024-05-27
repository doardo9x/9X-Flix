CREATE DATABASE IF NOT EXISTS NineFlix;

USE NineFlix;

CREATE TABLE IF NOT EXISTS Genre (
    Id      TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name    VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Movie (
    Id              INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    OriginalTitle   VARCHAR(100) NOT NULL,
    Title  			VARCHAR(100) NOT NULL,
    Synopsis        TEXT,
    MovieYear       YEAR,
    Duration        SMALLINT(3) UNSIGNED,
    AgeRating       TINYINT UNSIGNED,
    Image           VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS MovieGenre (
    MovieId INT     UNSIGNED NOT NULL,
    GenreId TINYINT UNSIGNED NOT NULL,
    PRIMARY KEY (MovieId, GenreId),
    CONSTRAINT FK_MovieGenre_Movie FOREIGN KEY (MovieId) REFERENCES Movie(Id),
    CONSTRAINT FK_MovieGenre_Genre FOREIGN KEY (GenreId) REFERENCES Genre(Id)
);


INSERT INTO Genre(Id, Name) VALUES
(1, 'Ação'),
(2, 'Animação'),
(3, 'Aventura'),
(4, 'Biografia'),
(5, 'Comédia'),
(6, 'Comédia romântica'),
(7, 'Comédia dramática'),
(8, 'Comédia de ação'),
(9, 'Cult'),
(10,'Dança'),
(11,'Documentário'),
(12,'Drama'),
(13,'Espionagem'),
(14,'Fantasia'),
(15,'Faroeste'),
(16,'Ficção científica'),
(17,'Ficção histórica'),
(18,'Guerra'),
(19,'História'),
(20,'Mistério'),
(21,'Musical'),
(22,'Noir'),
(23,'Policial'),
(24,'Pornográfico'),
(25,'Romance'),
(26,'Suspense'),
(27,'Terror'),
(28,'Trash'),
(29,'Épico'),
(30,'Familia');




INSERT INTO Movie VALUES
( 1, 'The Shawshank Redemption', 'Um Sonho de Liberdade', 'Dois homens presos se reúnem ao longo de vários anos, encontrando consolo e eventual redenção através de atos de decência comum.', 1994, 142, 16, '\\img\\movies\\1.jpg'),
( 2, 'The Godfather', 'O Poderoso Chefão', 'O patriarca idoso de uma dinastia do crime organizado transfere o controle de seu império clandestino para seu filho relutante.', 1972, 175, 14, '\\img\\movies\\2.jpg'),
( 3, 'The Dark Knight', 'Batman: O Cavaleiro das Trevas', 'Quando a ameaça conhecida como O Coringa surge de seu passado, causa estragos e caos nas pessoas de Gotham. O Cavaleiro das Trevas deve aceitar um dos maiores testes para combater a injustiça.', 2008, 152, 12, '\\img\\movies\\3.jpg'),
( 4, 'The Godfather Part II', 'O Poderoso Chefão II', 'Em 1950, Michael Corleone, agora à frente da família, tenta expandir o negócio do crime a Las Vegas, Los Angeles e Cuba. Paralelamente, é revelada a história de Vito Corleone, e de como saiu da Sicília e chegou a Nova Iorque.', 1974, 202, 14, '\\img\\movies\\4.jpg'),
( 5, '12 Angry Men', '12 Homens e uma Sentença', 'Um jurado que se aposenta tenta evitar um erro judicial forçando seus colegas a reconsiderarem as evidências.', 1957, 96, 0, '\\img\\movies\\5.jpg'),
( 6, 'Schindler''s List', 'A Lista de Schindler', 'Depois de testemunhar a perseguição dos judaicos na Polônia ocupada pelos alemães durante a Segunda Guerra Mundial, o industrial Oskar Schindler se começa a preocupar com sua força de trabalho judaica.', 1993, 195, 14, '\\img\\movies\\6.jpg'),
( 7, 'The Lord of the Rings: The Return of the King', 'O Senhor dos Anéis: O Retorno do Rei', 'Gandalf e Aragorn lideram o Mundo dos Homens contra o exército de Sauron para desviar o olhar de Frodo e Sam quando eles se aproximam á Montanha da Perdição com o Um Anel.', 2003, 201, 14, '\\img\\movies\\7.jpg'),
( 8, 'Pulp Fiction', 'Pulp Fiction: Tempo de Violência', 'As vidas de dois assassinos da máfia, um boxeador, um gângster e sua esposa, e um par de bandidos se entrelaçam em quatro histórias de violência e redenção.', 1994, 154, 18, '\\img\\movies\\8.jpg'),
( 9, 'The Lord of the Rings: The Fellowship of the Ring', 'O Senhor dos Anéis: A Sociedade do Anel', 'Um manso hobbit do Condado e oito companheiros partem em uma jornada para destruir o poderoso Um Anel e salvar a Terra-média das Trevas.', 2001, 178, 12, '\\img\\movies\\9.jpg'),
(10, 'Il buono, il brutto, il cattivo', 'Três Homens em Conflito', 'Um impostor se junta com dois homens para encontrar fortuna num remoto cemitério.', 1966, 161, 14, '\\img\\movies\\10.jpg'),
(11, 'Forrest Gump', 'Forrest Gump: O Contador de Histórias', 'As presidências de Kennedy e Johnson, os eventos do Vietnã, Watergate e outra história são desenvolvidos através da perspectiva de um homem do Alabama com um alto quociente Intelectual.', 1994, 142, 14, '\\img\\movies\\11.jpg'),
(12, 'Fight Club', 'Clube da Luta', 'Um trabalhador de escritório e um fabricante de sabonetes que cuidam do diabo formam um clube de luta clandestino que evolui para algo muito maior.', 1999, 139, 18, '\\img\\movies\\12.jpg'),
(13, 'Inception', 'A Origem', 'Um ladrão que rouba segredos corporativos através do uso de tecnologia é dado a tarefa inversa de plantar uma idéia na mente de um C.E.O.', 2010, 148, 14, '\\img\\movies\\13.jpg'),
(14, 'The Lord of the Rings: The Two Towers', 'O Senhor dos Anéis: As Duas Torres', 'Enquanto Frodo e Sam estão perto de Mordor com a ajuda de Gollum, a divida comunhão luta contra Saruman e os Isengards.', 2002, 179, 12, '\\img\\movies\\14.jpg'),
(15, 'The Empire Strikes Back', 'O Império Contra-Ataca', 'Os rebeldes derrotaram o Império no planeta congelado Hoth. Luke Skywalker começa a treinar como um Jedi com Yoda, enquanto seus amigos são perseguidos por Darth Vader.', 1980, 124, 0, '\\img\\movies\\15.jpg'),
(16, 'Matrix', 'The Matrix', 'Um hacker aprende com os misteriosos rebeldes sobre a verdadeira natureza de sua realidade e seu papel na guerra contra seus controladores.', 1999, 136, 14, '\\img\\movies\\16.jpg'),
(17, 'Goodfellas', 'Os Bons Companheiros', 'A historia do Henry Hill e sua vida na máfia, sua relação com sua esposa Karen Hill e seus colegas da máfia Jimmy Conway e Tommy DeVito no sindicato italo-americano do crime.', 1990, 145, 14, '\\img\\movies\\17.jpg'),
(18, 'One Flew Over the Cuckoo''s Nest', 'Um Estranho no Ninho', 'Um criminal apela por insanidade e quando está dentro da institução mental se rebela contra as enfermeiras e junto com os outros pacientes se manifestam.', 1975, 133, 16, '\\img\\movies\\18.jpg'),
(19, 'Se7en', 'Seven: Os Sete Crimes Capitais', 'Dois detetives, um novato e um veterano, perseguem um assassino em série que usa os sete pecados capitais como motivos.', 1995, 127, 14, '\\img\\movies\\19.jpg'),
(20, 'Shichinin no samurai', 'Os Sete Samurais', 'Uma aldeia pobre sob a ameaça de bandidos recruta sete samurais para ajudá-los a se defenderem.', 1954, 207, 10, '\\img\\movies\\20.jpg'),
(21, 'It''s a Wonderful Life', 'A Felicidade Não se Compra', 'Um anjo é enviado dos céus para ajudar um homem de negócios desesperado em sua frustração, e mostra a ele como seria a vida se nunca tivesse existido.', 1946, 130, 0, '\\img\\movies\\21.jpg'),
(22, 'The Silence of the Lambs', 'O Silêncio dos Inocentes', 'Uma jovem deve receber a ajuda de um assassino canibal manipulador e preso para ajudar a capturar outro assassino em série, um louco que ataca suas vítimas.', 1991, 118, 14, '\\img\\movies\\22.jpg'),
(23, 'Cidade de Deus', 'Cidade de Deus', 'Os caminhos de duas crianças divergem nas favelas do Rio, enquanto um se esforça para se tornar um fotógrafo e o outro um capo.', 2002, 130, 18, '\\img\\movies\\23.jpg'),
(24, 'Saving Private Ryan', 'O Resgate do Soldado Ryan', 'Depois de chegar a Normandía, um grupo de soldados precisam encontrar ao unico irmão vivo de tres que morreram na guerra.', 1998, 169, 14, '\\img\\movies\\24.jpg'),
(25, 'La vita è bella', 'A Vida é Bela', 'Quando um bibliotecário judeu e seu filho se tornarem vítimas do Holocausto, ele usará uma mistura perfeita de vontade, humor e imaginação para proteger seu filho dos perigos do campo de concentração.', 1997, 146, 0, '\\img\\movies\\25.jpg'),
(26, 'Interstellar', 'Interestelar', 'Uma equipe de exploradores viaja através de um buraco de minhoca no espaço, na tentativa de garantir a sobrevivência da humanidade.', 2014, 169, 10, '\\img\\movies\\26.jpg'),
(27, 'The Green Mile', 'À Espera de um Milagre', 'As vidas dos guardas de corredor da morte são afetadas por um dos detidos: um homem afro-americano acusado pelo assassinato e estupro de uma criança, mas com um presente misterioso.', 1999, 189, 14, '\\img\\movies\\27.jpg'),
(28, 'Star Wars', 'Guerra nas Estrelas', 'Luke Skywalker une forças com um cabaleiro Jedi, um arrogante piloto é dois dróides para salvar a galaxia enquanto tentam salvar a princesa Leia do misterioso Darth Vader.', 1977, 121, 0, '\\img\\movies\\28.jpg'),
(29, 'Terminator 2: Judgment Day', 'O Exterminador do Futuro 2 - O Julgamento Final', 'Um cyborg, idêntico àquele que não conseguiu matar Sarah Connor, deve agora proteger seu filho adolescente, John Connor, de um cyborg mais avançado e poderoso.', 1991, 137, 14, '\\img\\movies\\29.jpg'),
(30, 'Back to the Future', 'De Volta para o Futuro', 'Marty McFly é um estudiante de dezessete anos que é accidentalmente enviado trinta anos no pasado num carro inventado pelo seu amigo o cientista Doc Brown.', 1985, 116, 0, '\\img\\movies\\30.jpg'),
(31, 'Sen to Chihiro no kamikakushi', 'A Viagem de Chihiro', 'Durante a mudança de casa, uma menina de dez anos se maravilha num mundo de dioses, bruxas e espíritus e onde os humanos são transformados em bestas.', 2001, 125, 0, '\\img\\movies\\31.jpg'),
(32, 'Psycho', 'Psicose', 'Uma secretária de Phoenix se rouba quarenta e três milhões de dolares dum cliente da sua empresa e se fuga.', 1960, 109, 14, '\\img\\movies\\32.jpg'),
(33, 'The Pianist', 'O Pianista', 'Um musico judeu luta para sobreviver a destruição de Varsóvia durante a segunda guerra mundial.', 2002, 150, 14, '\\img\\movies\\33.jpg'),
(34, 'Gisaengchung', 'Parasita', 'Desempregados, a família de Ki-taek (Song Kang-ho) nutre um interesse peculiar pela família Park até que eles se veem presos em um inesperado incidente.', 2019, 132, 16, '\\img\\movies\\34.jpg'),
(35, 'Léon', 'O Profissional', 'Mathilda, uma menina de 12 anos é levada por Léon, um assassino profissional, depois que sua família é assassinada. Léon e Mathilda formam uma relação incomum, desde que ela se torna sua protegida.', 1994, 110, 14, '\\img\\movies\\35.jpg'),
(36, 'The Lion King', 'O Rei Leão', 'Um pequeno leão é obrigado por seu tio a fugir de casa e anos depois se da conta da sua identidade e suas responsabilidades.', 1994, 88, 0, '\\img\\movies\\36.jpg'),
(37, 'Gladiator', 'Gladiador', 'Um general romano planeja a melhor vingança contra o emprador corrupto que matou sua familia e o deixou escravo.', 2000, 155, 14, '\\img\\movies\\37.jpg'),
(38, 'American History X', 'A Outra História Americana', 'Um neonazista tenta evitar que seu irmão mais novo tome o mesmo caminho errado que ele.', 1998, 119, 14, '\\img\\movies\\38.jpg'),
(39, 'The Departed', 'Os Infiltrados', 'Um policial disfarçado e um espião estão tentando se identificar enquanto se infiltram em uma gangue irlandesa no sul de Boston.', 2006, 151, 18, '\\img\\movies\\39.jpg'),
(40, 'The Usual Suspects', 'Os Suspeitos', 'O único sobrevivente conta os torcidos eventos duma luta com pistolas num bote, quanfo cinco criminais eram levados pela polícia.', 1995, 106, 14, '\\img\\movies\\40.jpg'),
(41, 'The Prestige', 'O Grande Truque', 'Depois de um trágico acidente, dois magos do palco se engajam em uma batalha para criar a ilusão final enquanto sacrificam tudo o que têm para enganar um ao outro.', 2006, 130, 14, '\\img\\movies\\41.jpg'),
(42, 'Whiplash', 'Whiplash: Em Busca da Perfeição', 'Um jovem e promissor baterista se matricula em um conservatório de música onde seus sonhos são guiados por um instrutor que não pára por nada para perceber o potencial de um aluno.', 2014, 106, 12, '\\img\\movies\\42.jpg'),
(43, 'Casablanca', 'Casablanca', 'O proprietário cético de uma boate protege um antigo amor e seu marido dos nazistas no Marrocos.', 1942, 102, 0, '\\img\\movies\\43.jpg'),
(44, 'Intouchables', 'Intocáveis', 'Depois de ficar tetraplégico num accidente, um aristócrata contrata a un jovem sem dinheiro para cuidar dele.', 2011, 112, 14, '\\img\\movies\\44.jpg'),
(45, 'Seppuku', 'Harakiri', 'Um velho samurai ronin chega à casa de um senhor feudal e pede um lugar honroso para cometer suicídio. Mas quando o ronin pede um samurai mais jovem que chegou antes, os eventos seguem um curso inesperado.', 1962, 133, 16, '\\img\\movies\\45.jpg'),
(46, 'Hotaru no haka', 'Túmulo dos Vagalumes', 'Um menino e sua irmã tentam sobreviver no Japão durante a Segunda Guerra Mundial.', 1988, 89, 12, '\\img\\movies\\46.jpg'),
(47, 'Modern Times', 'Tempos Modernos', 'Um vagabundo luta para viver na sociedade industrial moderna com a ajuda de uma jovem.', 1936, 87, 0, '\\img\\movies\\47.jpg'),
(48, 'C''era una volta il West', 'Era uma Vez no Oeste', 'Um misterioso estranhoe se junta com um bandido para proteger a uma viúva.', 1968, 205, 14, '\\img\\movies\\48.jpg'),
(49, 'Rear Window', 'Janela Indiscreta', 'Um fotógrafo em uma cadeira de rodas espiona seus vizinhos pela janela de seu apartamento e está convencido de que um deles cometeu um assassinato.', 1954, 112, 12, '\\img\\movies\\49.jpg'),
(50, 'City Lights', 'Luzes da Cidade', 'Com a ajuda de um homem rico, bêbado e imprevisível, um vagabundo ingênuo que se apaixonou por uma florista cega tenta conseguir dinheiro para fornecer ajuda médica.', 1931, 87, 0, '\\img\\movies\\50.jpg'),
(51, 'Alien', 'Alien - O 8º Passageiro', 'Depois que um navio mercante do espaço percebe uma transmissão desconhecida como uma chamada de socorro, encontra um dos tripulantes atacado por um misterioso modo de vida, e logo percebem que seu ciclo de vida simplesmente começou.', 1979, 117, 14, '\\img\\movies\\51.jpg'),
(52, 'Nuovo Cinema Paradiso', 'Cinema Paradiso', 'Um diretor de cinema lembra como, em sua infância, ele se apaixonou pelo cinema de sua cidade e iniciou uma profunda amizade com o projecionista.', 1988, 155, 10, '\\img\\movies\\52.jpg'),
(53, 'Apocalypse Now', 'Apocalypse Now', 'Um oficial do exército dos Estados Unidos no Vietnam é encarregado de assassinar a um coronel que acreditaser un dios.', 1976, 147, 16, '\\img\\movies\\53.jpg'),
(54, 'Memento', 'Amnésia', 'Um homem com perda da memória de curto prazo tenta investigar o homicídio da sua esposa.', 2000, 113, 16, '\\img\\movies\\54.jpg'),
(55, 'Raiders of the Lost Ark', 'Os Caçadores da Arca Perdida', 'Em 1936 o archeologista e aventurero Indiana Jones é contratado pelo governo dos Estados Unidos para procurar pelo Pacto da Arca, antes que os nazis o tenham primeiro.', 1981, 115, 0, '\\img\\movies\\55.jpg'),
(56, 'Django Unchained', 'Django Livre', 'Com a ajuda de um caçador de recompensas alemão, um escravo libertado sai para resgatar sua esposa de um brutal dono de uma plantação no Mississipi.', 2012, 165, 16, '\\img\\movies\\56.jpg'),
(57, 'WALL·E', 'WALL·E', 'Num futuro distante, um pequeno robô faz uma viagem que decidirá o destino da humanidade.', 2008, 98, 0, '\\img\\movies\\57.jpg'),
(58, 'Das Leben der Anderen', 'A Vida dos Outros', 'Em 1984, Berlim Oriental, um agente da polícia secreta, que cuida de um escritor e seu amante, encontra-se cada vez mais absorvido em suas vidas.', 2006, 137, 12, '\\img\\movies\\58.jpg'),
(59, 'Sunset Blvd.', 'Crepúsculo dos Deuses', 'Um roteirista estabelece uma relação com uma fracasada estrela de cinema que quer voltar aos filmes.', 1950, 110, 0, '\\img\\movies\\59.jpg'),
(60, 'Paths of Glory', 'Glória Feita de Sangue', 'Depois de se recusar a atacar uma posição inimiga, um general acusa os soldados da covardia e seu comandante deve defendê-los.', 1957, 88, 14, '\\img\\movies\\60.jpg'),
(61, 'The Shining', 'O Iluminado', 'Uma família se dirige a um hotel isolado para o inverno, onde uma presença sinistra influencia a violência do pai, enquanto seu filho psíquico vê presságios horríveis do passado e do futuro.', 1980, 146, 16, '\\img\\movies\\61.jpg'),
(62, 'The Great Dictator', 'O Grande Ditador', 'O ditador Hynkel tenta expandir seu império enquanto um pobre barbeiro judeu tenta evitar a perseguição do regime de Hynkel.', 1940, 125, 0, '\\img\\movies\\62.jpg'),
(63, 'Witness for the Prosecution', 'Testemunha de Acusação', 'Um veterano advogado britânico deve defender seu cliente em um julgamento de assassinato que tem surpresa após surpresa.', 1957, 116, 12, '\\img\\movies\\63.jpg'),
(64, 'Avengers: Infinity War', 'Vingadores: Guerra Infinita', 'Os Vingadores e seus aliados deverão sacrificar tudo em uma tentativa de derrotar o poderoso Thanos antes que sua explosão de devastação ponha fim ao universo.', 2018, 149, 12, '\\img\\movies\\64.jpg'),
(65, 'Aliens', 'Aliens, O Resgate', 'Ellen Ripley é salva depois de estar dormida por 57 anos. A luna que o Nostromo visitou foi colonizada mas o contado se perdeu.', 1986, 147, 14, '\\img\\movies\\65.jpg'),
(66, 'American Beauty', 'Beleza Americana', 'Um pai sexualmente frustrado tem uma crisis existencial depois de conhecer a melhor amiga da sua filha.', 1999, 122, 14, '\\img\\movies\\66.jpg'),
(67, 'Spider-Man: Into the Spider-Verse', 'Homem-Aranha no Aranhaverso', 'Um jovem se torna o Homem Aranha de sua realidade, cruzando seu caminho com cinco colegas de outras dimensões para impedir uma ameaça a todas as realidades.', 2018, 117, 12, '\\img\\movies\\67.jpg'),
(68, 'Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb', 'Dr. Fantástico', 'Um general alienado provoca um potencial holocausto nuclear que uma sala de guerra cheia de políticos e generais tenta freneticamente parar.', 1964, 95, 10, '\\img\\movies\\68.jpg'),
(69, 'The Dark Knight Rises', 'Batman: O Cavaleiro das Trevas Ressurge', 'Oito anos depois da anarquia do Coringa, Batman com ajuda da Mulher Gato, tentam salvar Gotham do terrorista Bane.', 2012, 164, 12, '\\img\\movies\\69.jpg'),
(70, 'Oldeuboi', 'Oldboy', 'Depois de ser raptado e preso por quince anos, o Oh Dae-Su é dao en libertade e procurara a seu sequestrador em cinco dias.', 2003, 120, 16, '\\img\\movies\\70.jpg');


INSERT INTO MovieGenre VALUES
( 1, 12),
( 2, 23), ( 2, 12),
( 3,  1), ( 3, 23), ( 3, 12),
( 4, 23), ( 4, 12),
( 5, 23), ( 5, 12),
( 6,  4), ( 6, 12), ( 6, 19),
( 7,  1), ( 7,  3), ( 7, 12),
( 8, 23), ( 8, 12),
( 9,  1), ( 9,  3), ( 9, 12),
(10,  3), (10, 15),
(11, 12), (11, 25),
(12, 12),
(13,  1), (13,  3), (13, 16),
(14,  1), (14,  3), (14, 12),
(15,  1), (15,  3), (15, 14),
(16,  1), (16, 16),
(17,  4), (17, 23), (17, 12),
(18, 12),
(19, 23), (19, 12), (19, 20),
(20,  1), (20, 12),
(21, 12), (21, 30), (21, 14),
(22, 23), (22, 12), (22, 26),
(23, 23), (23, 12),
(24, 12), (24, 18),
(25,  5), (25, 12), (25, 25),
(26,  3), (26, 12), (26, 16),
(27, 23), (27, 12), (27, 14),
(28,  1), (28,  3), (28, 14),
(29,  1), (29, 16),
(30,  3), (30,  5), (30, 16),
(31,  2), (31,  3), (31, 30),
(32, 27), (32, 20), (32, 26),
(33,  4), (33, 12), (33, 21),
(34, 12), (34, 26),
(35,  1), (35, 23), (35, 12),
(36,  2), (36,  3), (36, 12),
(37,  1), (37,  3), (37, 12),
(38, 23), (38, 12),
(39, 23), (39, 12), (39, 26),
(40, 23), (40, 12), (40, 20),
(41, 12), (41, 20), (41, 16),
(42, 12), (42, 21),
(43, 12), (43, 25), (43, 18),
(44,  4), (44,  5), (44, 12),
(45,  1), (45, 12), (45, 20),
(46,  2), (46, 12), (46, 18),
(47,  5), (47, 12), (47, 25),
(48, 15),
(49, 20), (49, 26),
(50,  5), (50, 12), (50, 25),
(51, 27), (51, 16),
(52, 12), (52, 25),
(53, 12), (53, 20), (53, 18),
(54, 20), (54, 26),
(55,  1), (55,  3),
(56, 12), (56, 15),
(57,  2), (57,  3), (57, 30),
(58, 12), (58, 20), (58, 26),
(59, 12), (59, 22),
(60, 12), (60, 18),
(61, 12), (61, 27),
(62,  5), (62, 12), (62, 18),
(63, 23), (63, 12), (63, 20),
(64,  1), (64,  3), (64, 16),
(65,  1), (65,  3), (65, 16),
(66, 12),
(67,  2), (67,  1), (67,  3),
(68,  5), (68, 18),
(69,  1), (69, 12),
(70,  1), (70, 12), (70, 20);