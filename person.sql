CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    age INTEGER NOT NULL,
    height INTEGER NOT NULL,
    city VARCHAR(40),
    favorite_color VARCHAR(40)
);

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Ben Salmon', 25, 196, 'Panama City Beach', 'Blue'),
('Thai Tran', 28, 165, 'Dallas', 'Black'),
('John Doe', 30, 170, 'Chicago', 'Red'),
('Jane Doe', 27, 160, 'New York City', 'Orange'),
('Shrek', 35, 200, 'Swamp', 'Green');

SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 OR age > 30;

SELECT * FROM person
WHERE age <> 27;

SELECT * FROM person
WHERE favorite_color != 'Red';

SELECT * FROM person
WHERE favorite_color <> 'Red' AND favorite_color != 'Blue';

SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

SELECT * FROM person
WHERE favorite_color IN ('Yellow', 'Purple');