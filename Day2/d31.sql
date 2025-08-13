 CREATE TABLE Customers (
 customer_id INT PRIMARY KEY,
 name VARCHAR(50),
 city VARCHAR(50)
 );
 CREATE TABLE Orders (
 order_id INT PRIMARY KEY,
 customer_id INT,
 product VARCHAR(50),
 FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
 );-- Insert minimal data
 INSERT INTO Customers (customer_id, name, city) VALUES
 (1, 'Alice', 'New York'),
 (2, 'Bob', 'Los Angeles'),
 (3, 'Charlie', 'Chicago');
 INSERT INTO Orders (order_id, customer_id, product) VALUES
 (101, 1, 'Laptop'),
 (102, 1, 'Mouse'),
 (103, 2, 'Keyboard');

select * from orders;
select * from Customers;
 
SELECT c.name, o.product
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id;

SELECT c.name, o.product
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;

SELECT c.name, o.product
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;

SELECT c.name, o.product
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
UNION
SELECT c.name, o.product
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;