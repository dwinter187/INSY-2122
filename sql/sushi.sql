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




