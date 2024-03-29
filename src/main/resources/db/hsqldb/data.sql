
-- Our Team Users--
INSERT INTO users(username,password,email,enabled) VALUES 
('admin1','4dm1n','admin1@alum.us.es',TRUE),
('owner1','0wn3r','owner1@alum.us.es',TRUE),
('antbarjim1','123abc','antbarjim1@alum.us.es',TRUE),
('adrgarpor','0wn3r','adrgarpor@alum.us.es',TRUE),
('edurobrus','0wn3r','edurobrus@alum.us.es',TRUE);
-- Authorities --
INSERT INTO authorities(id,username,authority) VALUES 
(1,'admin1','admin'),
(2,'owner1','user'),
(4,'antbarjim1','user'),
(5,'adrgarpor','admin'),
(6,'edurobrus','user');

-- All 55 cards --
INSERT INTO cards(id) VALUES
(1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),
(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),
(49),(50),(51),(52),(53),(54),(55);

-- All 57 symbols --
INSERT INTO symbols(id) VALUES 
(1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),
(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),
(53),(54),(55),(56),(57);

-- symbolsets, at least 'original' must be set --
INSERT INTO symbolsets(id,name,path) VALUES
(1,'original', 'resources/images/symbols/original');

-- symbolvariants for 'original' set --
INSERT INTO symbolvariants(id, name, file_name, symbol_id,symbol_set_id) VALUES 
(1, 'Anchor','anchor.png',1,1),
(2, 'Apple','apple.png',2,1),
(3, 'Baby Bottle','baby-bottle.png',3,1),
(4, 'Bomb','bomb.png',4,1),
(5, 'cactus','cactus.png',5,1),
(6, 'Candle','candle.png',6,1),
(7, 'Taxi','taxi.png',7,1),
(8, 'Carrot','carrot.png',8,1),
(9, 'Chess Knight','chess-knight.png',9,1),
(10, 'Clock','clock.png',10,1),
(11, 'Clown','clown.png',11,1),
(12, 'Daisy flower','daisy-flower.png',12,1),
(13, 'Dinosaur','dinosaur.png',13,1),
(14, 'Dolphin','dolphin.png',14,1),
(15, 'Dragon','dragon.png',15,1),
(16, 'Exclamation Point','exclamation-point.png',16,1),
(17, 'Eye','eye.png',17,1),
(18, 'Fire','fire.png',18,1),
(19, 'Four Leaf Clover','four-leaf-clover.png',19,1),
(20, 'Ghost','ghost.png',20,1),
(21, 'Green Splats','green-splats.png',21,1),
(22, 'Hammer','hammer.png',22,1),
(23, 'Heart','heart.png',23,1),
(24, 'Ice Cube','ice-cube.png',24,1),
(25, 'Igloo','igloo.png',25,1),
(26, 'Key','key.png',26,1),
(27, 'Ladybug','ladybug.png',27,1),
(28, 'Light Bulb','light-bulb.png',28,1),
(29, 'Lightning Bolt','lightning-bolt.png',29,1),
(30, 'Lock','lock.png',30,1),
(31, 'Mapple Leaf','maple-leaf.png',31,1),
(32, 'Moon','moon.png',32,1),
(33, 'No Entry Sign','no-entry-sign.png',33,1),
(34, 'Orange Scarecrow Man','orange-scarecrow-man.png',34,1),
(35, 'Pencil','pencil.png',35,1),
(36, 'Purple Bird','bird.png',36,1),
(37, 'Purple Cat','cat.png',37,1),
(38, 'Purple Dobble Hand','dobble-hand.png',38,1),
(39, 'Red Lips','red-lips.png',39,1),
(40, 'Scissors','scissors.png',40,1),
(41, 'Skull and Crossbones','skull-and-crossbones.png',41,1),
(42, 'Snowflake','snowflake.png',42,1),
(43, 'Snowman','snowman.png',43,1),
(44, 'Spider','spider.png',44,1),
(45, 'Spider Web','spider-web.png',45,1),
(46, '​​Sun','sun.png',46,1),
(47, 'Sunglasses','sunglasses.png',47,1),
(48, 'Target','target.png',48,1),
(49, 'Tortoise','tortoise.png',49,1),
(50, 'Treble Clef','treble-clef.png',50,1),
(51, 'Tree','tree.png',51,1),
(52, 'Water Drip','water-drip.png',52,1),
(53, 'Dog','dog.png',53,1),
(54, 'Yin and Yang','yin-and-yang.png',54,1),
(55, 'Zebra','zebra.png',55,1),
(56, 'Question Mark','question-mark.png',56,1),
(57, 'Cheese','cheese.png',57,1);

-- Symbols into cards --
INSERT INTO cardsymbols(card_id, symbol_id) VALUES 
(1,3),(1,15),(1,2),(1,33),(1,12),(1,54),(1,22),(1,19),
(2,11),(2,52),(2,57),(2,28),(2,26),(2,34),(2,2),(2,55),
(3,6),(3,49),(3,46),(3,26),(3,43),(3,32),(3,54),(3,8),
(4,9),(4,27),(4,18),(4,32),(4,12),(4,35),(4,38),(4,11),
(5,17),(5,11),(5,5),(5,50),(5,42),(5,3),(5,49),(5,45),
(6,25),(6,32),(6,31),(6,40),(6,44),(6,16),(6,2),(6,42),
(7,53),(7,20),(7,39),(7,54),(7,44),(7,57),(7,5),(7,38),
(8,7),(8,36),(8,53),(8,46),(8,31),(8,37),(8,11),(8,19),
(9,35),(9,46),(9,50),(9,44),(9,4),(9,14),(9,22),(9,34),
(10,57),(10,16),(10,35),(10,48),(10,51),(10,24),(10,19),(10,49),
(11,44),(11,43),(11,11),(11,48),(11,47),(11,33),(11,1),(11,29),
(12,46),(12,30),(12,27),(12,57),(12,42),(12,56),(12,23),(12,33),
(13,7),(13,47),(13,55),(13,49),(13,22),(13,40),(13,56),(13,38),
(14,41),(14,52),(14,39),(14,4),(14,49),(14,18),(14,31),(14,33),
(15,49),(15,44),(15,37),(15,21),(15,23),(15,10),(15,12),(15,28),
(16,40),(16,12),(16,17),(16,36),(16,6),(16,4),(16,57),(16,29),
(17,9),(17,50),(17,19),(17,40),(17,43),(17,23),(17,52),(17,20),
(18,39),(18,42),(18,43),(18,10),(18,35),(18,36),(18,55),(18,15),
(19,53),(19,30),(19,25),(19,15),(19,49),(19,29),(19,34),(19,9),
(20,38),(20,36),(20,33),(20,50),(20,28),(20,25),(20,24),(20,8),
(21,23),(21,7),(21,5),(21,2),(21,29),(21,35),(21,8),(21,41),
(22,9),(22,45),(22,10),(22,1),(22,31),(22,22),(22,57),(22,8),
(23,52),(23,46),(23,10),(23,13),(23,3),(23,29),(23,16),(23,38),
(24,23),(24,53),(24,55),(24,3),(24,4),(24,24),(24,1),(24,32),
(25,48),(25,42),(25,13),(25,4),(25,54),(25,28),(25,7),(25,9),
(26,55),(26,30),(26,13),(26,8),(26,44),(26,18),(26,19),(26,17),
(27,15),(27,8),(27,21),(27,56),(27,16),(27,11),(27,20),(27,4),
(28,9),(28,26),(28,3),(28,44),(28,41),(28,56),(28,36),(28,51),
(29,22),(29,11),(29,51),(29,23),(29,6),(29,13),(29,25),(29,39),
(30,41),(30,21),(30,38),(30,42),(30,1),(30,6),(30,19),(30,34),
(31,28),(31,15),(31,18),(31,40),(31,5),(31,51),(31,46),(31,1),
(32,1),(32,49),(32,14),(32,36),(32,2),(32,20),(32,13),(32,27),
(33,36),(33,5),(33,52),(33,30),(33,22),(33,32),(33,21),(33,48),
(34,48),(34,38),(34,23),(34,26),(34,15),(34,31),(34,14),(34,17),
(35,39),(35,28),(35,19),(35,32),(35,14),(35,56),(35,29),(35,45),
(36,56),(36,35),(36,52),(36,54),(36,1),(36,25),(36,37),(36,17),
(37,9),(37,5),(37,6),(37,55),(37,37),(37,33),(37,14),(37,16),
(38,21),(38,35),(38,33),(38,53),(38,26),(38,45),(38,13),(38,40),
(39,32),(39,41),(39,57),(39,37),(39,47),(39,50),(39,13),(39,15),
(40,18),(40,14),(40,21),(40,57),(40,43),(40,7),(40,3),(40,25),
(41,10),(41,18),(41,56),(41,48),(41,53),(41,2),(41,50),(41,6),
(42,12),(42,48),(42,25),(42,20),(42,45),(42,46),(42,55),(42,41),
(43,24),(43,27),(43,15),(43,44),(43,7),(43,52),(43,45),(43,6),
(44,34),(44,16),(44,47),(44,36),(44,45),(44,23),(44,18),(44,54),
(45,29),(45,18),(45,37),(45,22),(45,20),(45,26),(45,42),(45,24),
(46,4),(46,37),(46,43),(46,38),(46,45),(46,2),(46,30),(46,51),
(47,27),(47,8),(47,40),(47,34),(47,37),(47,48),(47,39),(47,3),
(48,52),(48,51),(48,42),(48,8),(48,14),(48,47),(48,12),(48,53),
(49,47),(49,4),(49,26),(49,5),(49,10),(49,25),(49,27),(49,19),
(50,40),(50,11),(50,30),(50,10),(50,54),(50,24),(50,14),(50,41),
(51,21),(51,51),(51,55),(51,29),(51,50),(51,27),(51,31),(51,54),
(52,34),(52,17),(52,20),(52,7),(52,51),(52,10),(52,33),(52,32),
(53,17),(53,47),(53,9),(53,2),(53,46),(53,39),(53,24),(53,21),
(54,30),(54,26),(54,39),(54,1),(54,50),(54,12),(54,16),(54,7),
(55,6),(55,28),(55,31),(55,30),(55,47),(55,20),(55,3),(55,35);

-- Initial users, not needed but useful for testing --

INSERT INTO USERS(username, password, email, enabled) VALUES 
('User0','p4ssw0rd','User0@alum.us.es',TRUE),
('User1','p4ssw0rd','User1@alum.us.es',TRUE),
('User2','p4ssw0rd','User2@alum.us.es',TRUE),
('User3','p4ssw0rd','User3@alum.us.es',TRUE),
('User4','p4ssw0rd','User4@alum.us.es',TRUE),
('User5','p4ssw0rd','User5@alum.us.es',TRUE),
('User6','p4ssw0rd','User6@alum.us.es',TRUE),
('User7','p4ssw0rd','User7@alum.us.es',TRUE),
('User8','p4ssw0rd','User8@alum.us.es',TRUE),
('User9','p4ssw0rd','User9@alum.us.es',TRUE),
('User10','p4ssw0rd','User10@alum.us.es',TRUE),
('User11','p4ssw0rd','User11@alum.us.es',TRUE),
('User12','p4ssw0rd','User12@alum.us.es',TRUE),
('User13','p4ssw0rd','User13@alum.us.es',TRUE),
('User14','p4ssw0rd','User14@alum.us.es',TRUE),
('User15','p4ssw0rd','User15@alum.us.es',TRUE),
('User16','p4ssw0rd','User16@alum.us.es',TRUE),
('User17','p4ssw0rd','User17@alum.us.es',TRUE);

-- Authorities --
INSERT INTO authorities(id,username,authority) VALUES 

(7,'User0','user'),
(8,'User1','user'),
(9,'User2','user'),
(10,'User3','user'),
(11,'User4','user'),
(12,'User5','user'),
(13,'User6','user'),
(14,'User7','user'),
(15,'User8','user'),
(16,'User9','user'),
(17,'User10','user'),
(18,'User11','user'),
(19,'User12','user'),
(20,'User13','user'),
(21,'User14','user'),
(22,'User15','user'),
(23,'User16','user'),
(24,'User17','user');

-- Initial games, not needed but useful for testing --

INSERT INTO games(id, access_code, max_players, state, gamemode, owner_Id, winner_Id) VALUES 
(1, null, 4, 'LOBBY', 'THE_TOWER', 'User17', null),
(2, null, 6, 'LOBBY', 'THE_WELL', 'User16', null), -- the owner of the game must be changed
(3, 1234, 2, 'LOBBY', 'THE_WELL', 'User15', null),
(4, null, 6, 'LOBBY', 'THE_POISONED_GIFT', 'User14', null),
(5, null, 6, 'LOBBY', 'THE_POISONED_GIFT', 'User13', null),
(6, null, 3, 'LOBBY', 'THE_TOWER', 'User12', null),
(7, 1234, 4, 'LOBBY', 'THE_TOWER', 'User9', null),
(8, null, 6, 'LOBBY', 'THE_WELL', 'User11', null),
(9, 1234, 6, 'LOBBY', 'THE_WELL', 'User10', null),
(10, 1234, 2, 'LOBBY', 'THE_TOWER', 'User8', 'adrgarpor');


-- Initial users into games --
INSERT INTO gameusers(game_id, user_id) VALUES 
(1,'User17'),
(1,'User7'),
(1,'User6'),
(1,'User5'),
(2,'User16'),
(2,'User3'),
(2,'User4'),
(3,'User15'),
(4,'User14'),
(5,'User13'),
(6,'User12'),
(7,'User11'),
(8,'User10'),
(8,'User2'),
(9,'User9'),
(9,'User1'),
(10,'User8'),
(10,'User0');


INSERT INTO tournaments(id, access_code, max_players, state,  owner_Id, winner_Id) VALUES 
(1, null, 4, 'LOBBY', 'User17', null)
,(2, null, 6, 'LOBBY', 'edurobrus', null)
,(3, null, 2, 'LOBBY',  'User15', null)
,(4, null, 6, 'LOBBY', 'User14', null)
,(5, null, 6, 'LOBBY', 'User13', null)
,(6, null, 3, 'LOBBY', 'User12', null)
,(7, null, 4, 'LOBBY', 'User9', null)
,(8, null, 6, 'LOBBY', 'User11', null)
,(9, null, 6, 'LOBBY', 'admin1', null)
,(10, null, 2, 'LOBBY', 'User8', null);

INSERT INTO TOURNAMENT_GAMEMODES(tournament_id, gamemode) VALUES 
(1,'THE_TOWER'), 
(1,'THE_WELL'), 
(2,'THE_TOWER'), 
(2,'THE_WELL'), 
(2,'THE_POISONED_GIFT'), 
(3,'THE_WELL'),
(3,'THE_POISONED_GIFT'),
(4,'THE_TOWER'), 
(5,'THE_TOWER'), 
(5,'THE_WELL'),
(5,'THE_POISONED_GIFT'),
(6,'THE_TOWER'), 
(7,'THE_TOWER'), 
(7,'THE_POISONED_GIFT'),
(8,'THE_TOWER'), 
(8,'THE_POISONED_GIFT'),
(9,'THE_WELL'),
(9,'THE_POISONED_GIFT'), 
(10,'THE_WELL'),
(10,'THE_POISONED_GIFT');

INSERT INTO usertournaments(user_id,tournament_id) VALUES 
('User17',1)
,('User16',2)
,('User15',3)
,('User14',4)
,('User13',5)
,('User12',6)
,('User11',7)
,('User10',8)
,('User9',9)
,('User8',10)
,('User7',1)
,('User6',1)
,('User5',1)
,('User4',2)
,('User3',2)
,('User2',8)
,('User1',9)
,('User0',10);

INSERT INTO achievement (id, name, description, badge_image, threshold, metric) VALUES 
(1, 'First time', 'First time you play Dobble', '/resources/images/achievement/badge1.png', 50, 'POINTS'),
(2, 'Catch the same symbol', 'Catch the same symbol more than three times in a game', '/resources/images/achievement/badge2.png', 1000, 'POINTS'),
(3, 'Play more', 'Play more than 1000 cards', '/resources/images/achievement/badge3.png', 1000, 'POINTS'),
(4, 'You have won 10', 'You have won 10 games', '/resources/images/achievement/badge4.png', 10, 'GAMES_WON'),
(5, 'You have won 100', 'You have won 100 games', '/resources/images/achievement/badge5.png', 100, 'GAMES_WON'),
(6, 'You have won 1000', 'You have won 1000 games', '/resources/images/achievement/badge6.png', 1000, 'GAMES_WON'),
(7, 'You have scored 100', 'You have scored 100 points', '/resources/images/achievement/badge7.png', 100, 'POINTS'),
(8, 'You have scored 1000', 'You have scored 1000 points', '/resources/images/achievement/badge8.png', 1000, 'POINTS'),
(9, 'You have scored 10000', 'You have scored 10000 points', '/resources/images/achievement/badge9.png', 10000, 'POINTS');

INSERT INTO user_achievement (username, achievement_id) VALUES 
('admin1', 1),
('owner1', 1);

INSERT INTO forum(id,name,creation_date) VALUES
(1,'GENERAL','2023-01-01 01:01:01')
,(2,'FRIENDS','2023-02-01 01:01:01');

INSERT INTO comment(id,text,date,forum_id,user_id) VALUES 
(1,'Hola que tal?','2023-01-01 01:01:02',1,'edurobrus')
,(2,'Muy bien aqui jugando dobble','2023-01-01 01:01:03',1,'User17')
,(3,'Me encanta el juego es divertido','2023-01-01 01:01:09',1,'edurobrus')
,(4,'Hay que jugar mas veces','2023-01-01 01:01:11',1,'User16')
,(5,'Funciona muy bien','2023-04-01 01:01:02',2,'User16')
,(6,'Vamos a echar una partida','2023-04-01 01:01:02',2,'User15')
,(7,'Venga vamos que tengo ganas','2023-04-01 01:01:02',2,'User15');
