-- Datenbank anlegen für Testskripte 
DROP DATABASE IF EXISTS kino;
CREATE DATABASE kino;

--für Produktivsysteme 
CREATE DATABASE IF NOT EXISTS kino;

CREATE TABLE kino.film;
USE kino;

CREATE TABLE film (
    titel VARCHAR(100),
    jahr INT,
    untertitel VARCHAR(250),
    land CHAR(2),
    PRIMARY KEY(titel,jahr)
);
CREATE TABLE person(
    id INT PRIMARY KEY,
    künstlername VARCHAR(250),
    nachname VARCHAR(250),
    herkuftsland CHAR(2),
    kundennr INT,
    geburtsdatum INT
);
CREATE TABLE land(
    code CHAR(2) PRIMARY KEY,
    name VARCHAR(250)
);

SHOW WARNINGS;
DROP TABLE film;
SHOW TABLES;
