CREATE TABLE users_v2 (

	user_id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(100),
	full_name VARCHAR(101) GENERATED ALWAYS AS (CONCAT(first_name, ' ', last_name)) STORED

);
-- STORED 는 해당 컬럼 업데이트 될 때만

INSERT INTO users_v2 (
	first_name, 
	last_name, 
	email 
) VALUES (
	'nico',
	'nomad',
	'nico@nomad.com'
);


SELECT
	*
FROM users_v2;

ALTER TABLE 
	users_v2 
ADD COLUMN email_domain VARCHAR(50) GENERATED ALWAYS 
		AS (SUBSTRING_INDEX(email, '@', -1)) VIRTUAL;


-- VIRTUAL 용량은 차지 하지 않고 

DROP TABLE users_v2;