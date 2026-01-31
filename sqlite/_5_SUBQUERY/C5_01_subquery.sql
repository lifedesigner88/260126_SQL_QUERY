SELECT
  COUNT(*)
FROM
  movies
WHERE
  rating > (
    SELECT
      AVG(rating)
    FROM
      movies
  );

  
WITH 
	avg_revenue_cte AS (
	SELECT
	      AVG(revenue) AS avg_revenue
    FROM
	      movies
),
	avg_rating_cte AS (
	SELECT
		AVG(rating) AS avg_rating
	FROM
		movies
)

SELECT
  title,
  director, 
  revenue,
  ROUND((SELECT * FROM avg_revenue_cte), 2) as avg_revenue,
  ROUND((SELECT * FROM avg_rating_cte), 2) as avg_rating
FROM
  movies
WHERE
  revenue > (SELECT * FROM avg_revenue_cte)
  AND rating > (SELECT * FROM avg_rating_cte);
  
 -- CTE Common Table expression (independent subquery를 재 사용할 수 있게 해준다.)
 
 
 WITH movie_avg_per_year AS(
	SELECT 
		AVG(inner_movies.rating)  
	FROM 
		movies AS inner_movies
	WHERE  
		inner_movies.release_date = main_movies.release_date
)

SELECT
	main_movies.title, 
	main_movies.director,
	main_movies.rating,
	(SELECT * FROM movie_avg_per_year),
	main_movies.release_date
FROM
	movies AS main_movies
WHERE
	main_movies.release_date > 2022
	AND main_movies.rating > (SELECT * FROM movie_avg_per_year);


---

WITH career_revenue AS(
SELECT
	director,
	SUM(revenue) as sum_revenue
FROM
	movies
WHERE
	director IS NOT NULL
	AND revenue IS NOT NULL
GROUP BY
	director
)

SELECT
	director,
	sum_revenue,
	(SELECT AVG(sum_revenue) FROM career_revenue) AS avg_carrer
FROM career_revenue
WHERE
	sum_revenue > avg_carrer;
