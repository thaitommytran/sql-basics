CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER NOT NULL,
    product_name VARCHAR(20) NOT NULL,
    product_price FLOAT NOT NULL,
    quantity INTEGER NOT NULL
);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (1, 'baseball', 5, 10),
(1, 'bat', 49.95, 1),
(1, 'helmet', 19.50, 2),
(2, 'monitor', 100, 3),
(2, 'mouse', 58.75, 1);

SELECT * FROM orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders;

SELECT person_id, SUM(product_price * quantity) FROM orders
GROUP BY person_id;