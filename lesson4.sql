CREATE TABLE IF NOT EXISTS BOOK(
book_id INTEGER PRIMARY KEY,
title TEXTNOT NULL,
genre TEXT NOT NULL,
ratings REAL NOT NULL,
pages INTEGER NOT NULL,
pub_year INTEGER NOT NULL);

INSERT INTO BOOK(
book_id,title,genre,ratings,pages,pub_year)
VALUES(1,"DRAGON QUEST","FANTASY", 9.2,312,2021),
(2,"CODE WIZARDS","SCI-FI",8.5,280,2020),
(3,"OCEAN DEEP","ADVENTURE",708,254,2021),
(4,"STAR RANGERS","SCI-FI",9.7,456,2023),
(5,"FOREST SECRETS", "FANTASY", 7.2,464,2031),
(6,"robot city", "SCI-FI", 6.7,654,2015),
(7,"time jumpers", "ADVENTURE", 6.7,468, 2014),
(8,"MAGIC ACADEMY", "FANTASY",9.9,456,2025);
SELECT * FROM BOOK;
SELECT title ratings FROM book ORDER BY ratings ASC;
SELECT title ratings FROM book ORDER BY ratings DESC;
SELECT title ratings FROM book ORDER BY ratings DESC LIMIT 3;
SELECT title pub_year FROM book ORDER BY pub_year ASC LIMIT 5;
SELECT genre, COUNT(*) AS book_count FROM book GROUP BY genre;
SELECT genre, SUM(pages) AS total_pages, AVG(ratings)AS avg_ratings
FROM BOOK
GROUP BY genre; 
SELECT genre, COUNT(*) AS book_count
FROM BOOK 
GROUP BY genre
HAVING COUNT(*) > 2 ;
SELECT genre, AVG(ratings) AS avg_rating
FROM BOOK 
GROUP BY genre 
HAVING AVG(ratings) >=8.5;

DROP TABLE BOOK;
