use movies;

CREATE TABLE movies (
  movie_id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(700) NOT NULL,
  original_title VARCHAR(700) NOT NULL,
  original_language CHAR(2) NOT NULL,
  overview TEXT,
  released_date SMALLINT,
  revenue BIGINT,
  budget BIGINT,
  homepage TEXT,
  runtime SMALLINT,
  rating TINYINT CHECK (rating BETWEEN 0 AND 10),
  status ENUM(
    "Released",
    "Rumored",
    "Canceled",
    "In Production",
    "Planned",
    "Post Production"
  ) NOT NULL,
  country TINYTEXT,
  genres TINYTEXT,
  director TINYTEXT,
  usersspoken_languages TINYTEXT
);