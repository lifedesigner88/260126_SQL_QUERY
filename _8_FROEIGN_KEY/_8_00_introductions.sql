use movies;

SELECT 
    *
FROM
    movies;

DROP TABLE dogs

CREATE TABLE
dogs (
dog_id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
date_of_birth DATE,
weight DECIMAL(5, 2),
owner_id BIGINT UNSIGNED,
breed_id BIGINT UNSIGNED,

FOREIGN KEY (owner_id) REFERENCES owners (owner_id),
FOREIGN KEY (breed_id) REFERENCES breeds (breed_id)

);

CREATE TABLE
owners (
owner_id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE,
phone VARCHAR(20),
address TINYTEXT
);



INSERT INTO
breeds (name, size_category, typical_lifespan)
VALUES
('Golden Retriever', 'big', 12);

INSERT INTO
owners (name, email, phone, address)
VALUES
(
'Adam Smith',
'adam@smith.com',
'1122334455',
'9010 St. Scotland'
);

INSERT INTO
dogs (name, date_of_birth, weight, breed_id, owner_id)
VALUES
('Budd3y', '2018-03-15', 10.5, 1, 1);


DELETE FROM owners WHERE owner_id = 1