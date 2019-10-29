CREATE TABLE customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name  VARCHAR(100),
    last_name   VARCHAR(100),
    email       VARCHAR(100)
);

CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(id)
);

INSERT INTO customers (first_name, last_name, email)
VALUES  ('Boy', 'George', '@gmail.com'),
        ('George', 'Michael', '@gmail.com'),
        ('David', 'Bowie', '@gmail.com'),
        ('Blue', 'Steele', '@gmail.com'),
        ('Bette', 'Davis', '@gmail.com');

INSERT INTO orders (order_date, amount, customer_id)
VALUES  ('2016/02/10', 99.99, 1),
        ('2017/11/11', 35.50, 1),
        ('2014/12/12', 800.67, 2),
        ('2015/01/03', 12.50, 2),
        ('1999/04/11', 420.25, 5);




-- CROSS JOIN

SELECT * FROM orders WHERE customer_id=
    (
        SELECT id FROM customers 
        WHERE last_name="George"
    );

-- But we can do it much simplier:
SELECT * FROM customers, orders; -- not this one

-- IMPLICIT INNER JOIN
SELECT * FROM customers, orders WHERE customers.id = orders.customer_id; --and not this

SELECT first_name, last_name, order_date, amount
FROM customers, orders
    WHERE customers.id = orders.customer_id;

-- EXPLICIT INNER JOIN
SELECT * FROM customers
JOIN orders 
    ON customers.id = orders.customer_id;


-- LEFT JOIN
SELECT first_name, last_name, order_date, amount
FROM customers
JOIN orders
    ON customers.id = orders.customer_id
ORDER BY order_date;

SELECT 
    first_name,
    last_name,
    order_date,
    SUM(amount) AS total_spent
FROM customers
JOIN orders
    ON customers.id = orders.customer_id
GROUP BY orders.customer_id;

-- BETTER WAY:
SELECT * FROM customers
LEFT JOIN orders    
    ON customers.id = orders.customer_id;

SELECT CONCAT(first_name, ' ', last_name) AS name, order_date, amount
FROM customers
LEFT JOIN orders    
    ON customers.id = orders.customer_id;

SELECT CONCAT(first_name, ' ', last_name) AS name, order_date, amount
FROM customers
LEFT JOIN orders    
    ON customers.id = orders.customer_id;

SELECT 
    first_name, 
    last_name,
    IFNULL(SUM(amount), 0) AS total_spent
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent;

-- RIGHT JOIN
SELECT * FROM customers
RIGHT JOIN orders
    ON customers.id = orders.customer_id;

-- IN THIS CASE IS THE SAME AS 

SELECT * FROM customers
INNER JOIN orders
    ON customers.id = orders.customer_id;

-- WORKING WITH ON DELETE CASCADE

CREATE TABLE customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);
 
CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) 
        REFERENCES customers(id)
        ON DELETE CASCADE
);