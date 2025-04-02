

-- не менее 3 жанров,
INSERT INTO genere(genere_name) VALUES
('pop'),
('rock'),
('metal');

-- не менее 4 исполнителей(хотя бы 1 чьё имя состоит из одного слова)
INSERT INTO artist(artist_name) VALUES 
('Keksik'),
('Rury Mikury'),
('Hulk'),
('Risha Lin');

-- не менее 3 альбомов
INSERT INTO album(album_name, album_year) VALUES 
('Blue clouds', 2019),
('Faster', 2020),
('Better', 2021),
('My mind', 2021),
('My soul', 2015),
('Friend', 2011);

-- не менее 6 треков (хотя бы 1 не менее 3,5 минут (3.30с))
INSERT INTO track(track_name, duration, album_id) VALUES 
('Cloud', '00:04:20', 1),
('Sherbet', '00:03:05', 2),
('Crimson', '00:05:55', 3),
('My Flat', '00:03:11', 4),
('One at time', '00:03:38', 5),
('Betheren of my song', '00:03:11', 6),
('Quail', '00:03:38', 1),
('Evade me', '00:03:38', 2),
('Telepathy and I', '00:02:38', 3),
('Confuse', '00:03:28', 4),
('Suleny', '00:02:31', 5),
('Confuse ty', '00:03:18', 6);

-- не менее 4 сборников (хотя бы 1  с 2018 по 2020 год включительно)
-- хотя бы 1 содержат слово «мой» или «my»
INSERT INTO collection(collection_name, collection_year) VALUES 
('Globe my', 2019),
('Lapsus', 2023),
('Ignorant', 2024),
('My Creditor', 2021);


INSERT INTO artist_album(artist_id, album_id) VALUES 
(1,1),
(1,2),
(2,3),
(2,4),
(3,5),
(3,6),
(4,1),
(4,2);

INSERT INTO genere_artist(genere_id, artist_id) VALUES 
(1,1),
(2,1),
(1,2),
(2,2),
(3,2),
(2,3),
(3,3),
(1,4);

INSERT INTO track_collection(track_id, collection_id) VALUES 
(5,1),
(11,1),
(6,1),
(12,1),
(1,2),
(2,3),
(3,4),
(4,2),
(7,3),
(8,4),
(9,2),
(10,3);


