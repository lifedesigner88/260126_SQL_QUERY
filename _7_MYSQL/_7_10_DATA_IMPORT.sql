use movies;

create table movies
(
movie_id bigint unsigned auto_increment
primary key,
title varchar(300) not null,
original_title varchar(300) not null,
original_language char(2) not null,
overview text null,
release_date smallint null,
revenue bigint unsigned null,
budget bigint unsigned null,
homepage text null,
runtime int unsigned null,
rating tinyint null,
status enum ('Canceled', 'Cancelled', 'In Production', 'Planned', 'Post Production', 'Released', 'Rumored') null,
country tinytext null,
genres tinytext null,
director tinytext null,
spoken_languages tinytext null,
constraint chk_rating_range
check (`rating` between 0 and 10)
);






