SELECT 
	director, 
	ROUND(AVG(rating), 2) AS avg_Rating
FROM
	movies
WHERE
	rating IS NOT NULL
	AND director IS NOT NULL
GROUP BY
	director
HAVING
	COUNT(*) > 5
ORDER BY
	avg_Rating DESC;

--

SELECT
	genres,
	COUNT(*) as Totals
FROM
	movies
WHERE
	genres IS NOT NULL
GROUP BY 
	genres
ORDER BY 
	Totals DESC;