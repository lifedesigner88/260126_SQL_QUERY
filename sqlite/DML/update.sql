-- INSERT INTO VALUES

INSERT INTO movies
	(title, rating, released, overview, for_kids)
VALUES 			
	('The Lord of Thed Rings', 4.22, 100, 'Rings and hobiitsRinddddddgiits', 0),
	('Dune: Part One', 8, 100, 'Sand', 1);


-- UPDATE
UPDATE movies 
	SET rating = rating + 5 
	WHERE title = 'The Lord of Thed Rings';

UPDATE movies
	SET director = 'Unknown'
	WHERE director IS NULL;

-- DELETE

DELETE FROM movies 
	WHERE movie_id = 2;

-- SELECT

SELECT * FROM movies;

SELECT 
	REPLACE(title, ': Part One', ' I') AS title, 
	rating * 2 AS double_rating,
	UPPER(overview) AS overview
FROM 
	movies;

--

SELECT 
	*
FROM
	movies
WHERE
	-- conditions Or predicates
	release_date BETWEEN 2020 AND 2024
	genres IN ('Documentary', 'Comedy')
	original_language NOT IN ('en', 'es', 'de')
	title LIKE '%Love%'
    genres NOT LIKE '%Drama%'
    title LIKE '___ing'
    title LIKE 'The___'
    title LIKE 'The ___ %';



--

SELECT 
	title,
	CASE 
		WHEN rating >= 8 THEN 
			'👍'
		WHEN rating <= 6 THEN 
			'👎👎'
		ELSE
			'👁️👁️👁️'
	END AS good_or_not
FROM
	movies;

--


SELECT -- 3
	*
FROM -- 1
	movies
WHERE -- 2
	director LIKE 'Darren%'
	AND REVENUE NOT NULL
ORDER BY -- 4
	release_date DESC,
	revenue DESC