ALTER TABLE users MODIFY COLUMN graduation_year DATE DEFAULT 2022;

ALTER TABLE users ADD COLUMN graduation_year YEAR DEFAULT 2022;

ALTER TABLE users ADD COLUMN graduation_date DATE NOT NULL;

SELECT 
	graduation_year,
	MAKEDATE(graduation_year, 50)
FROM
	users;
	
	
UPDATE users 
	SET graduation_date = MAKEDATE(graduation_year, 1);


ALTER TABLE users DROP COLUMN graduation_year;

ALTER TABLE users MODIFY COLUMN graduation_date DATE NOT NULL;

