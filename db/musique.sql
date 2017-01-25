DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS artists;

CREATE TABLE artists (
id SERIAL4 primary key,
name VARCHAR(225)
);

CREATE TABLE albums (
  id SERIAL4 primary key,
  title VARCHAR(225),
  genre VARCHAR(225),
  artist_id INT4 REFERENCES artists(id)
);

-- CREATE TABLE tracks
-- id SERIAL4 primary key,



);