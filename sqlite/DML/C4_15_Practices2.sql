-- 1. 각 년도에 개봉된 영화의 수

SELECT
	release_date,
	COUNT(*) AS C
FROM movies
WHERE
	release_date IS NOT NULL
GROUP BY
	release_date
ORDER BY
	C DESC;

-- 2. 평균 영화 상영 시간이 가장 높은 최신 10년
SELECT
	release_date,
	AVG(runtime) as avg_runtime
FROM
	movies
WHERE
	release_date IS NOT NULL
	AND runtime IS NOT NULL
GROUP BY
	release_date
ORDER BY
	avg_runtime DESC
LIMIT
	10;

-- 3. 21세기에 개봉한 영화의 평균 평점
SELECT
	AVG(rating)
FROM 
	movies
WHERE
	release_date >= 2000
	AND rating IS NOT NULL;

-- 4. 평균 영화 상영 시간이 가장 긴 감독

SELECT
	director,
	AVG(runtime) / 60 as avg_runtime,
	count(*)
FROM
	movies
WHERE
	director IS NOT NULL
	AND runtime IS NOT NULL
GROUP BY
	director
HAVING
	COUNT(*) > 2
ORDER BY
	AVG(runtime) DESC
LIMIT 1;


-- 5. 가장 많은 영화를 작업한 다작 감독 상위 5명

SELECT
	director
FROM 
	movies
WHERE
	director IS NOT NULL
GROUP BY
	director
ORDER BY
	COUNT(*) DESC
LIMIT 5;


-- 6. 각 감독의 최고 평점과 최저 평점
SELECT
	director,
	MAX(rating),
	MIN(rating)
FROM 
	movies
WHERE
	director IS NOT NULL
	AND rating IS NOT NULL
GROUP BY
	director
HAVING
	count(*) > 5;


-- 7. 돈을 가장 많이 번 감독 (수익에서 예산을 뺀 금액 계산)
SELECT
	director
FROM
	movies
WHERE
	director IS NOT NULL
GROUP BY
	director
ORDER BY
	SUM(revenue - budget) DESC
LIMIT 1;


-- 8. 2시간 이상인 영화들의 평균 평점
SELECT
	AVG(rating)
FROM
	movies
WHERE
	runtime >= 120
	AND rating IS NOT NULL;


-- 9. 가장 많은 영화가 개봉된 년도
SELECT
	release_date
FROM
	movies
WHERE
	release_date IS NOT NULL
GROUP BY
	release_date
ORDER BY
	COUNT(*) DESC
LIMIT 1;

-- 10. 각 10년동안 평균 영화 상영 시간 (ex: 1800, 1810, 1920, 2000)
SELECT
	(release_date / 10) * 10 as decade,
	AVG(runtime),
	count(*)
FROM
	movies
WHERE
	runtime IS NOT NULL
	AND release_date IS NOT NULL
GROUP BY
	(release_date / 10) * 10;




