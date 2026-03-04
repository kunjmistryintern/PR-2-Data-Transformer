-- Create Database

CREATE DATABASE DataTransformer;

USE DataTransformer;

-- Create Customers Table

CREATE TABLE Customers (
CustomerID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Email VARCHAR(100),
RegistrationDate DATE
);

-- Create Orders Table

CREATE TABLE Orders (
OrderID INT PRIMARY KEY,
CustomerID INT,
OrderDate DATE,
TotalAmount DECIMAL(10,2),
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Create Employees Table

CREATE TABLE Employees (
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Department VARCHAR(50),
HireDate DATE,
Salary DECIMAL(10,2)
);

-- Insert 25 Sample Data (from ChatGPT)

-- Insert 25 Customers

INSERT INTO Customers VALUES
(1,'John','Doe','john.doe@email.com','2022-01-10'),
(2,'Jane','Smith','jane.smith@email.com','2021-05-12'),
(3,'Robert','Brown','robert.brown@email.com','2020-07-15'),
(4,'Emily','Davis','emily.davis@email.com','2023-03-22'),
(5,'Michael','Wilson','michael.w@email.com','2019-11-01'),
(6,'Sarah','Taylor','sarah.t@email.com','2022-09-14'),
(7,'David','Anderson','david.a@email.com','2021-08-30'),
(8,'Laura','Thomas','laura.t@email.com','2020-12-25'),
(9,'Daniel','Jackson','daniel.j@email.com','2023-01-18'),
(10,'Olivia','White','olivia.w@email.com','2022-04-05'),
(11,'James','Harris','james.h@email.com','2021-02-17'),
(12,'Sophia','Martin','sophia.m@email.com','2023-06-09'),
(13,'William','Thompson','william.t@email.com','2022-07-21'),
(14,'Ava','Garcia','ava.g@email.com','2020-03-14'),
(15,'Alexander','Martinez','alex.m@email.com','2023-09-10'),
(16,'Isabella','Robinson','isabella.r@email.com','2019-10-05'),
(17,'Benjamin','Clark','ben.c@email.com','2021-11-11'),
(18,'Mia','Rodriguez','mia.r@email.com','2022-12-19'),
(19,'Ethan','Lewis','ethan.l@email.com','2023-02-27'),
(20,'Charlotte','Lee','charlotte.l@email.com','2021-06-16'),
(21,'Noah','Walker','noah.w@email.com','2020-08-08'),
(22,'Amelia','Hall','amelia.h@email.com','2022-05-03'),
(23,'Liam','Allen','liam.a@email.com','2023-04-14'),
(24,'Harper','Young','harper.y@email.com','2021-09-29'),
(25,'Elijah','King','elijah.k@email.com','2022-10-12');

select * from Customers 

-- Insert 25 Orders

INSERT INTO Orders VALUES
(101,1,'2023-01-10',500.00),
(102,2,'2023-02-15',1200.00),
(103,3,'2023-03-12',750.00),
(104,4,'2023-04-01',2000.00),
(105,5,'2023-05-18',300.00),
(106,6,'2023-06-25',1500.00),
(107,7,'2023-07-05',900.00),
(108,8,'2023-08-20',2500.00),
(109,9,'2023-09-09',400.00),
(110,10,'2023-10-11',800.00),
(111,11,'2023-11-15',1100.00),
(112,12,'2023-12-22',600.00),
(113,13,'2024-01-10',1700.00),
(114,14,'2024-02-14',450.00),
(115,15,'2024-03-03',2200.00),
(116,16,'2024-04-07',1000.00),
(117,17,'2024-05-19',350.00),
(118,18,'2024-06-30',1800.00),
(119,19,'2024-07-04',750.00),
(120,20,'2024-08-12',1300.00),
(121,21,'2024-09-18',950.00),
(122,22,'2024-10-21',4000.00),
(123,23,'2024-11-11',2750.00),
(124,24,'2024-12-01',500.00),
(125,25,'2025-01-15',1600.00);

select * from orders

-- Insert 25 Employees

INSERT INTO Employees VALUES
(1,'Mark','Johnson','Sales','2020-01-15',50000),
(2,'Susan','Lee','HR','2021-03-20',55000),
(3,'Kevin','Brown','IT','2019-07-11',70000),
(4,'Linda','Taylor','Finance','2018-09-25',80000),
(5,'Chris','Wilson','Sales','2022-02-10',45000),
(6,'Emma','Thomas','IT','2020-05-05',72000),
(7,'Daniel','White','HR','2021-11-18',48000),
(8,'Olivia','Martin','Finance','2019-12-12',85000),
(9,'James','Clark','Sales','2023-01-01',40000),
(10,'Sophia','Hall','IT','2022-06-30',68000),
(11,'David','Allen','Finance','2017-04-21',90000),
(12,'Mia','Young','HR','2020-08-19',52000),
(13,'Robert','King','Sales','2019-10-10',47000),
(14,'Ava','Wright','IT','2021-12-01',71000),
(15,'William','Scott','Finance','2018-03-14',88000),
(16,'Isabella','Green','HR','2023-02-22',46000),
(17,'Ethan','Adams','Sales','2020-07-07',53000),
(18,'Charlotte','Baker','IT','2022-04-04',76000),
(19,'Benjamin','Nelson','Finance','2019-01-30',92000),
(20,'Amelia','Carter','HR','2021-05-16',51000),
(21,'Noah','Mitchell','Sales','2018-08-08',60000),
(22,'Harper','Perez','IT','2020-09-09',73000),
(23,'Liam','Roberts','Finance','2017-11-11',87000),
(24,'Elijah','Turner','HR','2022-10-20',49000),
(25,'Grace','Phillips','Sales','2023-03-03',42000);

select * from Employees

-- 1 INNER JOIN

SELECT o.OrderID, c.FirstName, c.LastName, o.OrderDate, o.TotalAmount
FROM Orders o
INNER JOIN Customers c
ON o.CustomerID = c.CustomerID;

-- 2 LEFT JOIN

SELECT c.CustomerID, c.FirstName, c.LastName, o.OrderID, o.OrderDate, o.TotalAmount
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID;

-- 3 RIGHT JOIN

SELECT o.OrderID, o.OrderDate, o.TotalAmount, c.CustomerID, c.FirstName, c.LastName
FROM Customers c
RIGHT JOIN Orders o
ON c.CustomerID = o.CustomerID;

-- 4 FULL OUTER JOIN

SELECT c.CustomerID, c.FirstName, c.LastName, o.OrderID, o.OrderDate, o.TotalAmount
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID

UNION

SELECT c.CustomerID, c.FirstName, c.LastName, o.OrderID, o.OrderDate, o.TotalAmount
FROM Customers c
RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID;

-- 5 Customers Above Average Order

SELECT * FROM Customers WHERE CustomerID IN (
SELECT CustomerID FROM Orders
GROUP BY CustomerID
HAVING AVG(TotalAmount) > (SELECT AVG(TotalAmount) FROM Orders)
);

-- 6 Employees Above Average Salary

SELECT * FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);

-- 7 Extract Year & Month

SELECT OrderID, YEAR(OrderDate) AS Year, MONTH(OrderDate) AS Month FROM Orders;

-- 8 Difference in Days

SELECT OrderID, OrderDate, CURRENT_DATE AS Today, (CURRENT_DATE - OrderDate) AS DaysSinceOrder FROM Orders;

-- 9 Format Date

SELECT OrderID, DATE_FORMAT(OrderDate,'%d-%M-%Y') AS FormattedDate FROM Orders;


-- 10 Full Name

SELECT CustomerID, CONCAT(FirstName,' ',LastName) AS Full_Name ,Email FROM Customers;


-- 11 Replace Name

SELECT CustomerID, REPLACE(FirstName,'John','Jonathan') as Replaced FROM Customers;

-- 12 Convert FirstName to uppercase and LastName to lowercase.

SELECT CustomerID, UPPER(FirstName) AS FirstUpper, LOWER(LastName) AS LastLower FROM Customers;

-- 13 Trim Email

SELECT CustomerID, TRIM(Email) AS TrimmedEmail FROM Customers;

-- 14 Running Total

SELECT OrderID, TotalAmount, SUM(TotalAmount) OVER (ORDER BY OrderID) AS RunningTotal FROM Orders;

-- 15 Rank Orders

SELECT OrderID, TotalAmount, RANK() OVER (ORDER BY TotalAmount DESC) AS Ranking FROM Orders;

-- 16 Discount CASE

SELECT OrderID, TotalAmount,
CASE
WHEN TotalAmount > 1000 THEN '10% Discount'
WHEN TotalAmount > 500 THEN '5% Discount'
ELSE '0'
END AS Discount
FROM Orders;

-- 17 Salary Category

SELECT EmployeeID, FirstName, LastName, Salary,
CASE
WHEN Salary >= 80000 THEN 'High'
WHEN Salary >= 50000 THEN 'Medium'
ELSE 'Low'
END AS SalaryCategory
FROM Employees ;