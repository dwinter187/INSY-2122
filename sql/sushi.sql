CREATE DATABASE IF NOT EXISTS sushi;
USE sushi;
CREATE TABLE gast(
    gastnr INT AUTO_INCREMENT,
    name VARCHAR(50),
    strasse VARCHAR(50),
    plz INT,
    ort VARCHAR(50),
    PRIMARY KEY(gastnr)
);

DESCRIBE gast;
INSERT INTO gast (gastnr, name, strasse, plz, ort) VALUES(1,"Meier", "Wexstrasse 187", 1160, "Wien");
INSERT INTO gast (gastnr, name, strasse, plz, ort) VALUES(DEFAULT, "Huber", "Wexstrasse 69", 1160, "Wien"); 

-- Erstellt die Tabelle mit den benötigten Spalten
CREATE TABLE speiseart (
    code INT PRIMARY KEY,
    speiseart VARCHAR(50)
);

-- Erstellt die Tabelle mit den benötigten Spalten
CREATE TABLE speise (
    speisenr INT AUTO_INCREMENT PRIMARY KEY,
    bezeichnung VARCHAR(50),
    speisecode INT REFERENCES speiseart(code),
    preis FLOAT,
    FOREIGN KEY (speisecode) REFERENCES speiseart(code)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

INSERT INTO speiseart VALUES (1, "Vorspeise");
INSERT INTO speise VALUES (DEFAULT, "California Rolls 8 Stk.", 1, 8.99);

