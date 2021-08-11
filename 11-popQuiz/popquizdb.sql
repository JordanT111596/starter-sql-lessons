-- If the database exists, remove it --
DROP DATABASE IF EXISTS popquiz_db;

-- Creates the popquiz database --
CREATE DATABASE popquiz_db;

-- Uses the popquiz database --
USE popquiz_db;

-- Creates the Sixers table --
CREATE TABLE sixers (
  id INT PRIMARY KEY AUTO_INCREMENT,
  player VARCHAR(50) NOT NULL
);

INSERT INTO sixers (player)
VALUES ("Joel Embiid"), ("Ben Simmons"), ("Matisse Thybulle");