SELECT name FROM customers;

SELECT first_name, last_name FROM contacts order by first_name, last_name DESC;

SELECT UPPER('Isaac') FROM dual;

SELECT name, credit_limit FROM customers ORDER BY 2 DESC, 1;

SELECT country_id, city, state FROM locations ORDER BY 3 ASC NULLS FIRST;

SELECT customer_id, name FROM customers ORDER BY UPPER( name );

SELECT order_id, customer_id, status, order_date FROM orders ORDER BY 4 DESC;

SELECT product_name, list_price FROM products WHERE list_price BETWEEN 650 AND 680 ORDER BY list_price;

SELECT product_name, category_id FROM products WHERE category_id IN(1,2,3,4) ORDER BY product_name;

SELECT product_name, list_price FROM products WHERE product_name LIKE 'Asus%';

CREATE TABLE palette_a (
    id INT PRIMARY KEY,
    color VARCHAR2 (100) NOT NULL
);

CREATE TABLE palette_b (
    id INT PRIMARY KEY,
    color VARCHAR2 (100) NOT NULL
);

INSERT INTO palette_a (id, color)
VALUES (1, 'Red');

INSERT INTO palette_a (id, color)
VALUES (2, 'Green');

INSERT INTO palette_a (id, color)
VALUES (3, 'Blue');

INSERT INTO palette_a (id, color)
VALUES (4, 'Purple');

-- insert data for the palette_b
INSERT INTO palette_b (id, color)
VALUES (1, 'Green');

INSERT INTO palette_b (id, color)
VALUES (2, 'Red');

INSERT INTO palette_b (id, color)
VALUES (3, 'Cyan');

INSERT INTO palette_b (id, color)
VALUES (4, 'Brown');

-- Inner Join
SELECT a.id id_a, a.color color_a, b.id id_b, b.color color_b 
FROM palette_A a INNER JOIN palette_B b ON a.color = b.color; 

-- Left Join
SELECT a.id id_a, a.color color_a, b.id id_b, b.color color_b 
FROM palette_A a LEFT JOIN palette_B b ON a.color = b.color; 

-- Left Outer Join
SELECT a.id id_a, a.color color_a, b.id id_b, b.color color_b 
FROM palette_A a INNER JOIN palette_B b ON a.color = b.color WHERE b.id IS NULL;

