SELECT -- 3
	*
FROM -- 1
	movies
WHERE -- 2
	title LIKE 'The%'
LIMIT 5 -- 5
OFFSET 2 * 5 -- 4
