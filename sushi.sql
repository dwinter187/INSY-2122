CREATE DATABASE IF NOT EXISTS sushi;
USE kino;
CREATE TABLE gast(
    gastnr INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    strasse VARCHAR(50),
    plz INT,
    ort VARCHAR(50)
);

DESCRIBE gast;
INSERT INTO gast (gastnr, name, strasse, plz, ort) VALUES(1,"Meier", "Wexstraße 187", "1160", "Wien");