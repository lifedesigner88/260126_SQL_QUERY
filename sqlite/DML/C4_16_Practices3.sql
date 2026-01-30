-- 1. 영화의 최고 평점과 최저 평점 차이가 가장 큰 상위 5개 연도

SELECT
	release_date
FROM 
	movies
WHERE
	release_date IS NOT NULL
	AND rating IS NOT NULL
	AND rating BETWEEN 2 AND 9.5
GROUP BY
	release_date
ORDER BY
	MAX(rating) - MIN(rating) DESC
LIMIT 5;

-- 2. 2시간 미만의 영화를 만들어 본 적이 한 번도 없는 감독

SELECT
	director
FROM
	movies
WHERE
	director IS NOT NULL
	AND runtime IS NOT NULL
GROUP BY
	director
HAVING
	MIN(runtime) >= 120;


-- 3. 전체 영화에서 평점이 8.0 초과인 영화의 비율
SELECT
	COUNT(
	CASE WHEN rating > 8 THEN 
		1 
	END) * 100.0 / COUNT(*)  as percent
FROM
	movies;



-- 4. 평점이 7.0보다 높은 영화가 차지하는 비율이 가장 높은 감독

SELECT
	director,
	COUNT(CASE WHEN rating > 7 THEN 1 END) * 100.0 / COUNT(*) as percentage
FROM movies
WHERE
	director IS NOT NULL
	AND rating IS NOT NULL
GROUP BY
	director
HAVING
	COUNT(*) > 10
ORDER BY
	percentage DESC;


-- 5. 길이별로 영화를 분류하고 그룹화하기

SELECT
	CASE WHEN runtime < 90 THEN
		'Short'
	WHEN runtime BETWEEN 90 AND 120 THEN
		'Normal'
	WHEN runtime > 120 THEN
		'Long'
	END AS runtime_category,
	COUNT(*)
FROM
	movies
WHERE
	runtime IS NOT NULL
GROUP BY
	runtime_category;


-- 6. flop 여부에 따라 영화를 분류 및 그룹화하기
SELECT
	CASE WHEN budget < revenue THEN
		'Flop'
	ELSE
		'good'
	END as is_flop,
	count(*)
FROM
	movies
WHERE
	budget IS NOT NULL
	AND revenue IS NOT NULL
GROUP BY
	is_flop