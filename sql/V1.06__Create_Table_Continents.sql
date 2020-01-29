CREATE DATABASE IF NOT EXISTS metadata;
USE metadata;
CREATE TABLE IF NOT EXISTS continents (
    continent_id SMALLINT(1) AUTO_INCREMENT PRIMARY KEY,
    continent_name VARCHAR(13) NOT NULL,
    continent_abbreviation CHAR(2) NOT NULL,
    geoname_id MEDIUMINT(7) NOT NULL,
    last_updated DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT continents_continent_abbreviation_uindex UNIQUE (continent_abbreviation),
    CONSTRAINT continents_continent_name_uindex UNIQUE (continent_name),
    CONSTRAINT continents_geoname_id_uindex UNIQUE (geoname_id)
);