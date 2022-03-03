--Übung 
--Autor Daniel Winter 3CHIT
--Datum: 02.03.2022


--Erstellt Tabelle auto
CREATE DATABASE autos;
USE autos;

--erstellt Tabelle Typ 
CREATE TABLE typ(
    bezeichnung VARCHAR(50) PRIMARY KEY,
    marke VARCHAR(50),
    leistung INT
);

--erstellt Tabelle Auto mit FOREIGN KEY
CREATE TABLE auto(
    kennzeichen VARCHAR(10) PRIMARY KEY,
    baujahr INT,
    bezeichnung VARCHAR(50),
    FOREIGN KEY (bezeichnung) REFERENCES typ(bezeichnung)
);

--Fügt zu Typ eine neue Spalte neupreis hinzu
ALTER TABLE typ
ADD neupreis FLOAT;

--Ändert den Datentyp von neupreis zu INT;
ALTER TABLE typ
MODIFY COLUMN neupreis
INT;

--Löscht Spalte neupreis
ALTER TABLE typ
DROP COLUMN neupreis;

--leert die Tabelle auto
TRUNCATE TABLE auto;

--Löscht Tabelle Typ
DROP TABLE auto;
DROP TABLE typ;

--Löscht die Datenbank
DROP DATABASE autos;