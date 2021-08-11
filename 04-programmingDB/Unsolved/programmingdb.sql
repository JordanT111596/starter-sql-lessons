-- Drops the programming_db if it exists currently --
DROP DATABASE IF EXISTS programming_db;
-- Creates the "programming_db" database --
CREATE DATABASE programming_db;
-- Make it so all of the following code will affect programming_db --
USE programming_db;

CREATE TABLE programming_languages (
id INTEGER NOT NULL AUTO_INCREMENT,
languages VARCHAR(50),
rating INT,
PRIMARY KEY (id)
);

INSERT INTO programming_languages (languages, rating)
VALUES ("HTML", 90);

INSERT INTO programming_languages (languages, rating)
VALUES ("CSS", 95);

INSERT INTO programming_languages (languages, rating)
VALUES ("JS", 100);

UPDATE programming_languages
SET languages = "JavaScript", rating = 97
WHERE id = 3;

ALTER TABLE programming_languages
ADD mastered BOOLEAN DEFAULT true;

SELECT * FROM programming_languages;