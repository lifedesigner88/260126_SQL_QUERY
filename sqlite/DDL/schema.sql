-- Data Definition Language (DDL)
DROP TABLE movies;

CREATE TABLE movies (
	movie_id	INTEGER PRIMARY KEY AUTOINCREMENT,
	title 		TEXT 	NOT NULL UNIQUE ,
	released	INTEGER NOT NULL CHECK (released > 0), -- 1, 2, 3 ....
	overview 	TEXT 	NOT NULL CHECK (LENGTH(overview) <= 100), 
	rating 		REAL 	NOT NULL CHECK (rating BETWEEN 0 AND 10),	-- 1.2 9.7
	director 	TEXT,
	for_kids 	INTEGER NOT NULL CHECK (for_kids BETWEEN 0 AND 1) DEFAULT 0 -- 0 or 1
	-- poster BLOB
) STRICT;

SELECT * FROM movies;