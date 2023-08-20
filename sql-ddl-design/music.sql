-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL,
  artists_id INTEGER REFERENCES artists(id),
  album_id INTEGER REFERENCES album(id)
)

CREATE TABLE album
(
  id SERIAL PRIMARY KEY,
  release_date DATE NOT NULL,
  name TEXT NOT NULL,
  artists_id INTEGER REFERENCES artists(id),
  producer_id INTEGER REFERENCES producers(id)
);

CREATE TABLE artists
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE producers
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
)

INSERT INTO songs
  (title, duration_in_seconds, artists_id, album_id)
VALUES
  ('MMMBop', 238, '04-15-1997', 1, 'Middle of Nowhere', '{"Dust Brothers", "Stephen Lironi"}'),
  ('Bohemian Rhapsody', 355, '10-31-1975', 2, 'A Night at the Opera', '{"Roy Thomas Baker"}'),
  ('One Sweet Day', 282, '11-14-1995', 3, 'Daydream', '{"Walter Afanasieff"}'),
  ('Shallow', 216, '09-27-2018', 4, 'A Star Is Born', '{"Benjamin Rice"}'),
  ('How You Remind Me', 223, '08-21-2001', 5, 'Silver Side Up', '{"Rick Parashar"}'),
  ('New York State of Mind', 276, '10-20-2009', 6, 'The Blueprint 3', '{"Al Shux"}'),
  ('Dark Horse', 215, '12-17-2013', 7, 'Prism', '{"Max Martin", "Cirkut"}'),
  ('Moves Like Jagger', 201, '06-21-2011', 8, 'Hands All Over', '{"Shellback", "Benny Blanco"}'),
  ('Complicated', 244, '05-14-2002', 9, 'Let Go', '{"The Matrix"}'),
  ('Say My Name', 240, '11-07-1999', 10, 'The Writing''s on the Wall', '{"Darkchild"}');

INSERT INTO album
  (release_date, name, artist_id, producer_id)
VALUES
  ('04-15-1997', 'Middle of Nowhere', 1, 1),
  ('10-31-1975', 'A Night at the Opera', 2, 2),
  ('11-14-1995', 'Daydream', 3, 3),
  ('09-27-2018', 'A Star Is Born', 4, 4),
  ('08-21-2001', 'Silver Side Up', 5, 5),
  ('10-20-2009', 'The Blueprint 3', 6, 6),
  ('12-17-2013', 'Prism', 7, 7),
  ('06-21-2011', 'Hands All Over', 8, 8),
  ('05-14-2002', 'Let Go', 9, 9),
  ('11-07-1999', 'The Writing''s on the Wall', 10, 10);
INSERT INTO artists
  (name)
VALUES
  ('{"Hanson"}')
  ('{"Queen"}')
  ('{"Mariah Cary", "Boyz II Men"}')
  ('{"Lady Gaga", "Bradley Cooper"}')
  ('{"Nickelback"}')
  ('{"Jay Z", "Alicia Keys"}')
  ('{"Katy Perry", "Juicy J"}')
  ('{"Maroon 5", "Christina Aguilera"}')
  ('{"Avril Lavigne"}')
  ('{"Destiny''s Child"}')

INSERT INTO producers
  (name)
VALUES
  ('{"Dust Brothers", "Stephen Lironi"}'),
  ('{"Roy Thomas Baker"}'),
  ('{"Walter Afanasieff"}'),
  ('{"Benjamin Rice"}'),
  ('{"Rick Parashar"}'),
  ('{"Al Shux"}'),
  ('{"Max Martin", "Cirkut"}'),
  ('{"Shellback", "Benny Blanco"}'),
  ('{"The Matrix"}'),
  ('{"Darkchild"}');