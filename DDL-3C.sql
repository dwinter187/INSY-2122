-- Datenbank anlegen
CREATE DATABASE kino;

CREATE TABLE kino.film;
USE kino;

CREATE TABLE film (
    titel VARCHAR(100),
    jahr INT,
    untertitel VARCHAR(250),
    land CHAR(2),
    PRIMARY KEY(titel,jahr)
);

SHOW WARNINGS;
DROP TABLE film;
SHOW TABLES;
