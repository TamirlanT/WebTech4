USE Db;

DROP TABLE IF EXISTS Classmates;
-- create
 CREATE TABLE Classmates (
     id BIGINT UNSIGNED UNIQUE PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(45),
    age INT UNSIGNED NOT NULL,
address VARCHAR(60)
);

-- insert
INSERT INTO Classmates VALUES (1, 'Abraham', 24, 'Moscow');

INSERT INTO Classmates (name, age, address)
VALUES
		('Tom', 24, 'London'),
		('Arthur', 26, 'Berlin'),
		('Lindsy', 31, 'Paris'),
		('Monica', 18, 'Saint-Petersburg'),
		('Mike', 17, 'Melburn'),
		('Megan', 30, 'Moscow'),
		('Lee', 18, 'Moscow'),
		('Greg', 30, 'Moscow');

-- fetch 
SELECT name FROM Classmates
WHERE address = 'Moscow' AND (age >= 18 AND age < 30);

SELECT id, name, age, address FROM Classmates;