-- Жанры
CREATE TABLE genere(
    genere_id SERIAL PRIMARY KEY,
    genere_name VARCHAR(64) NOT NULL
);

-- Артисты
CREATE TABLE artist(
    artist_id SERIAL PRIMARY KEY,
    artist_name VARCHAR(64) NOT NULL
);

-- Связь артистов и жанров (многие ко многим)
CREATE TABLE genere_artist (
    genere_artist_id SERIAL PRIMARY KEY, 
    genere_id INT NOT NULL, 
    artist_id INT NOT NULL, 
    CONSTRAINT fk_genere FOREIGN KEY(genere_id) REFERENCES genere(genere_id) ON DELETE CASCADE, 
    CONSTRAINT fk_artist FOREIGN KEY(artist_id) REFERENCES artist(artist_id) ON DELETE CASCADE
);

-- Альбомы
CREATE TABLE album(
    album_id SERIAL PRIMARY KEY,
    album_name VARCHAR(64) NOT NULL,
    album_year INTEGER NOT NULL
);

-- Связь артистов и альбомов (многие ко многим)
CREATE TABLE artist_album (
    artist_album_id SERIAL PRIMARY KEY, 
    artist_id INT NOT NULL, 
    album_id INT NOT NULL, 
    CONSTRAINT fk_artist FOREIGN KEY(artist_id) REFERENCES artist(artist_id) ON DELETE CASCADE, 
    CONSTRAINT fk_album FOREIGN KEY(album_id) REFERENCES album(album_id) ON DELETE CASCADE
);

-- Треки
CREATE TABLE track(
    track_id SERIAL PRIMARY KEY,
    track_name VARCHAR(64) NOT NULL,
    duration INT NOT NULL, -- длительность в секундах
    album_id INT NOT NULL,
    CONSTRAINT fk_album FOREIGN KEY(album_id) REFERENCES album(album_id) ON DELETE CASCADE
);

-- Коллекции (сборники)
CREATE TABLE collection(
    collection_id SERIAL PRIMARY KEY,
    collection_name VARCHAR(64) NOT NULL,
    collection_year SMALLINT NOT NULL
);

-- Связь треков и коллекций (многие ко многим)
CREATE TABLE track_collection(
    track_collection_id SERIAL PRIMARY KEY,
    track_id INTEGER NOT NULL,
    collection_id INTEGER NOT NULL,
    CONSTRAINT fk_track FOREIGN KEY(track_id) REFERENCES track(track_id) ON DELETE CASCADE,
    CONSTRAINT fk_collection FOREIGN KEY(collection_id) REFERENCES collection(collection_id) ON DELETE CASCADE
);




--DROP TABLE genere, genere_artist, artist, artist_album, album, track, track_collection, collection
