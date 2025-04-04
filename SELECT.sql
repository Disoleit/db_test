--2
--Название и продолжительность самого длительного трека.
SELECT track_name, duration  FROM track 
WHERE duration = (SELECT max(duration) FROM track);

--Название треков, продолжительность которых не менее 3,5 минут. (доработано)
SELECT track_name  FROM track WHERE duration >= '00:03:30';

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT collection_name  FROM collection
WHERE collection_year >= 2018 
AND collection_year <= 2020;

--Исполнители, чьё имя состоит из одного слова.
SELECT artist_name FROM artist
WHERE artist_name NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my». (доработано)

SELECT DISTINCT track_name FROM track
WHERE track_name ~* '\m(мой|my)\M';


--3

--Количество исполнителей в каждом жанре.
SELECT genere_name, count(ga.artist_id) FROM genere g
JOIN genere_artist ga ON g.genere_id = ga.genere_id
GROUP BY g.genere_name;

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT count(track_name) FROM album a
JOIN track t ON a.album_id  = t.album_id
WHERE album_year > 2018 AND album_year < 2021;

--Средняя продолжительность треков по каждому альбому.
SELECT album_name,  AVG(t.duration) FROM album a 
JOIN track t ON a.album_id = t.album_id
GROUP BY album_name;

--Все исполнители, которые не выпустили альбомы в 2020 году. (доработано)

SELECT DISTINCT artist_name FROM artist a
WHERE a.artist_id NOT IN(
SELECT aa.artist_id  FROM artist_album aa
JOIN album al ON aa.album_id = al.album_id
WHERE al.album_year = '2020'
);

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).

SELECT DISTINCT collection_name, artist.artist_name  FROM collection c
JOIN track_collection tc  ON c.collection_id = tc.collection_id
JOIN track t ON tc.track_id = t.track_id
JOIN album a ON t.album_id = a.album_id
JOIN artist_album aa ON a.album_id  = aa.album_id 
JOIN artist ON  aa.artist_id = artist.artist_id
WHERE artist.artist_name = 'Keksik';

