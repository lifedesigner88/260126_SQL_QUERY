
SELECT -- 3
	*
FROM -- 1
	movies
WHERE -- 2
	title LIKE 'The%' AND release_date NOT NULL
ORDER BY -- 4
	release_date
LIMIT 5 -- 6
OFFSET 3 * 5 -- 5
