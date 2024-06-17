-- Part 1: SQL
CREATE DATABASE chocolate_factory;

USE chocolate_factory;

CREATE TABLE Item (
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO Item 
(id, name)
VALUES
(1, 'Wonka Bar'),
(2, 'Everlasting Gobstoppers'),
(3, 'Chewing Gum Meal'),
(4, 'Golden Chocolate Eggs'),
(5, 'Whipple-Scrumptious Fudgemallow Delight'),
(6, 'Nutty Crunch Surprise'),
(7, 'Hair Toffee'),
(8, 'Television Chocolate');


CREATE TABLE Transaction (
id INT PRIMARY KEY,
salespersonId INT, 
clientId INT, 
itemId INT,
quantity INT,
timestamp DATETIME
);

INSERT INTO Transaction
(id, salespersonId, clientID, itemId, quantity, timestamp)
VALUES
(1, 1, 1, 1, 2, '2024-06-16 10:00:00'),
(2, 1, 2, 2, 1, '2024-06-16 11:00:00'),
(3, 2, 3, 3, 1, '2024-06-16 12:00:00'),
(4, 3, 4, 4, 1, '2024-06-16 13:00:00'),
(5, 4, 5, 5, 3, '2024-06-16 14:00:00'),
(6, 1, 3, 6, 1, '2024-06-16 15:00:00'),
(7, 2, 2, 7, 2, '2024-06-16 16:00:00'),
(8, 3, 3, 8, 1, '2024-06-16 17:00:00');

CREATE TABLE Salesperson (
id INT PRIMARY KEY,
name VARCHAR(50) 
);

INSERT INTO Salesperson
(id, name)
VALUES
(1, 'Charlie Bucket'),
(2, 'Augustus Gloop'),
(3, 'Veruca Salt'),
(4, 'Violet Beauregarde'),
(5, 'Mike Teavee');


CREATE TABLE Client (
id INT PRIMARY KEY,
name VARCHAR(50) 
);

INSERT INTO Client 
(id, name)
VALUES
(1, 'Grandpa Joe'),
(2, 'Mrs Bucket'),
(3, 'Mr Bucket'),
(4, 'Willy Wonka'),
(5, 'Oompa Loopma');


-- Q1
-- Names of clients that the salesperson "Charlie Bucket" has sold to.
SELECT
	c.name AS clientName
FROM 
	Transaction t
JOIN
	Salesperson s ON t.salespersonID = s.id
JOIN 
	Client c ON t.clientID = c.id
WHERE
	s.name = 'Charlie Bucket';

-- Q2
-- Adding a Price field
ALTER TABLE Item
ADD COLUMN price DECIMAL(10, 2);

-- Updating the Item table so no NULL values in price field
UPDATE Item 
SET price = 
	CASE 
		WHEN id = 1 THEN 0.50
        WHEN id = 2 THEN 0.75
        WHEN id = 3 THEN 1.00
        WHEN id = 4 THEN 1.25
        WHEN id = 5 THEN 1.50
        WHEN id = 6 THEN 1.75
        WHEN id = 7 THEN 2.00
        WHEN id = 8 THEN 2.25
        ELSE 0.00 
	END;

-- Calculate the total monetary value of candy that was sold this year
SELECT 
	SUM(t.quantity * i.price) AS totalMonetaryValue
FROM
	Transaction t 
JOIN 
	Item i on t.itemId = i.id
WHERE
	YEAR(t.timestamp) = YEAR(CURRENT_DATE);


-- Q3
-- Name of the salesperson who has sold the most "Wonka Bars" this year
SELECT
	s.name AS salespersonName,
    SUM(t.quantity) AS totalQuantity
FROM 
	Transaction t
JOIN
	Item i ON t.itemId = i.id
JOIN 
	Salesperson s ON t.salespersonId = s.id
WHERE 
	i.name = "Wonka Bar"
    AND YEAR(t.timestamp) = YEAR(CURRENT_DATE)
GROUP BY
	s.name
ORDER BY 
	totalQuantity DESC
LIMIT 1;
