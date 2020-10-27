-- series (id, title, author_id, subgenre_id)
-- subgenres (id, name)
-- authors (id, name)
-- books (id, title, year, series_id)
-- characters (id, name, motto, species, author_id)
-- character_books (id, book_id, character_id)

CREATE TABLE series (
id INTEGER PRIMARY KEY,
title TEXT,
author_id INTEGER,
subgenre_id INTEGER
);

CREATE TABLE subgenres (
id INTEGER PRIMARY KEY,
name TEXT
);

CREATE TABLE authors (
id INTEGER PRIMARY KEY,
name TEXT
);

CREATE TABLE books (
id INTEGER PRIMARY KEY,
title TEXT,
year INTEGER,
series_id INTEGER
);

CREATE TABLE characters (
id INTEGER PRIMARY KEY,
name TEXT,
motto TEXT,
species TEXT,
author_id INTEGER
);

CREATE TABLE character_books (
id INTEGER PRIMARY KEY,
book_id INTEGER,
character_id INTEGER
);