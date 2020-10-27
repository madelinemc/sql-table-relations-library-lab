-- series (id, title, author_id, subgenre_id)
-- subgenres (id, name)
-- authors (id, name)
-- books (id, title, year, series_id)
-- characters (id, name, motto, species, author_id)
-- character_books (id, book_id, character_id)

INSERT INTO series (title, author_id, subgenre_id) VALUES ("Harry Potter", 2, 1);
INSERT INTO series (title, author_id, subgenre_id) VALUES ("LOTR", 1, 2);

INSERT INTO subgenres (name) VALUES ("Magic");
INSERT INTO subgenres (name) VALUES ("Adventure");

INSERT INTO authors (name) VALUES ("J.R.R. Tolkien");
INSERT INTO authors (name) VALUES ("J.K. Rowling");

INSERT INTO books (title, year, series_id) VALUES ("The Hobbit", 1937, 2);
INSERT INTO books (title, year, series_id) VALUES ("The Fellowship of the Ring", 1954, 2);
INSERT INTO books (title, year, series_id) VALUES ("The Two Towers", 1954, 2);
INSERT INTO books (title, year, series_id) VALUES ("Harry Potter and the Sorcerer\s Stone", 1997, 1);
INSERT INTO books (title, year, series_id) VALUES ("Harry Potter and the Chamber of Secrets", 1998, 1);
INSERT INTO books (title, year, series_id) VALUES ("Harry Potter and the Prisoner of Azkaban", 1999, 1);

-- make two characters in all of the books in the series and 2 in just one book of the series
INSERT INTO characters (name, motto, species, author_id) VALUES ("Gollum", "My Precious.", "Stoor", 1);
INSERT INTO characters (name, motto, species, author_id) VALUES ("Aragorn", "Be at peace, son of Gondor.", "Human", 1);
INSERT INTO characters (name, motto, species, author_id) VALUES ("Frodo Baggins", "Victory after all, I suppose!", "Hobbit", 1);
INSERT INTO characters (name, motto, species, author_id) VALUES ("Galadriel", "The Power of The Three Rings has Ended.", "Elf", 1);
INSERT INTO characters (name, motto, species, author_id) VALUES ("Harry Potter", "Trouble usually finds me.", "Half-blood", 2);
INSERT INTO characters (name, motto, species, author_id) VALUES ("Hermoine Granger", "Wingardium Leviosa", "Muggle-born", 2);
INSERT INTO characters (name, motto, species, author_id) VALUES ("Ron Weasley", "Don't let the muggles get you down.", "Pure-blood", 2);
INSERT INTO characters (name, motto, species, author_id) VALUES ("Hagrid", "Yer a wizard Harry.", "Part Human", 2);

INSERT INTO character_books (book_id, character_id) VALUES (1, 1);
INSERT INTO character_books (book_id, character_id) VALUES (2, 1);
INSERT INTO character_books (book_id, character_id) VALUES (3, 1);
INSERT INTO character_books (book_id, character_id) VALUES (1, 2);
INSERT INTO character_books (book_id, character_id) VALUES (2, 2);
INSERT INTO character_books (book_id, character_id) VALUES (3, 2);
INSERT INTO character_books (book_id, character_id) VALUES (1, 3);
INSERT INTO character_books (book_id, character_id) VALUES (4, 5);
INSERT INTO character_books (book_id, character_id) VALUES (5, 5);
INSERT INTO character_books (book_id, character_id) VALUES (6, 5);
INSERT INTO character_books (book_id, character_id) VALUES (4, 6);
INSERT INTO character_books (book_id, character_id) VALUES (5, 6);
INSERT INTO character_books (book_id, character_id) VALUES (6, 6);
INSERT INTO character_books (book_id, character_id) VALUES (7, 1);
INSERT INTO character_books (book_id, character_id) VALUES (8, 1);
INSERT INTO character_books (book_id, character_id) VALUES (9, 1);