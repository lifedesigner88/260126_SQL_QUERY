-- drop column

ALTER TABLE users DROP COLUMN profile_picture;

-- rename column
ALTER TABLE users CHANGE COLUMN bio about_me TINYTEXT;

-- change the column type
ALTER TABLE users MODIFY COLUMN about_me TINYTEXT;

-- rename databasse
ALTER TABLE users RENAME TO customers;
ALTER TABLE customers RENAME TO users;

-- drop constraints
ALTER TABLE users 
	DROP CONSTRAINT username,
	DROP CONSTRAINT uq_email;

-- add constraints
ALTER TABLE users
	ADD CONSTRAINT uq_email UNIQUE (email),
	ADD CONSTRAINT uq_username UNIQUE (username);

ALTER TABLE users
	ADD CONSTRAINT chk_age CHECK (age < 100);

-- chagne Nullable
ALTER TABLE users MODIFY COLUMN bed_time TIME NULL;

-- 
SHOW CREATE TABLE users;


