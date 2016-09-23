CREATE TABLE album (id INTEGER PRIMARY KEY AUTO_INCREMENT, artist varchar(100) NOT NULL, title varchar(100) NOT NULL);
INSERT INTO album (artist, title) VALUES ('The Military Wives', 'In My Dreams');
INSERT INTO album (artist, title) VALUES ('Adele', '21');

CREATE TABLE posts (id INTEGER PRIMARY KEY AUTO_INCREMENT, title varchar(100) NOT NULL, text TEXT NOT NULL);
INSERT INTO posts (title, text) VALUES ('Blog #1', 'Welcome to my first blog post');
INSERT INTO posts (title, text) VALUES ('Blog #2', 'Welcome to my second blog post');
INSERT INTO posts (title, text) VALUES ('Blog #3', 'Welcome to my third blog post');
INSERT INTO posts (title, text) VALUES ('Blog #4', 'Welcome to my fourth blog post');
INSERT INTO posts (title, text) VALUES ('Blog #5', 'Welcome to my fifth blog post');

CREATE TABLE albums (id INTEGER PRIMARY KEY AUTO_INCREMENT, artist varchar(100) NOT NULL, title varchar(100) NOT NULL);
INSERT INTO albums (artist, title) VALUES ('The Military Wives', 'In My Dreams');
INSERT INTO albums (artist, title) VALUES ('Adele', '21');
