
SELECT -- 3
	*
FROM -- 1
	movies
WHERE -- 2
	title LIKE 'The%' AND release_date NOT NULL
ORDER BY -- 4
	release_date
LIMIT 5 -- 6
OFFSET 3 * 5; -- 5



SELECT title, director
FROM movies
WHERE director IS NOT NULL
ORDER BY director;


--


SELECT -- 4
	director,
	SUM(revenue) AS total_revenue
FROM -- 1
	movies 
WHERE -- 2
	director IS NOT NULL 
	AND revenue IS NOT NULL
GROUP BY -- 3
	director
ORDER BY -- 5
	total_revenue DESC;


---

SELECT -- 4
	release_date,
	ROUND(AVG(rating), 2) AS avg_rating
FROM -- 1
	movies 
WHERE -- 2
	rating IS NOT NULL
	AND release_date IS NOT NULL
GROUP BY -- 3
	release_date
ORDER BY -- 5
	avg_rating DESC;


---

SELECT -- 5
	release_date,
	ROUND(AVG(rating), 2) AS avg_rating
FROM -- 1
	movies 
WHERE -- 2
	rating IS NOT NULL
	AND release_date IS NOT NULL
GROUP BY -- 3
	release_date
HAVING -- 4
	AVG(rating) > 6
ORDER BY -- 6
	avg_rating DESC