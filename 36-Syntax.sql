IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- HAVING Clause
-- =======================

-- The HAVING clause is used to filter the results of a GROUP BY query based on aggregate functions.

-- Unlike the WHERE clause, which filters individual rows before grouping the HAVING clause filters groups after the aggregation has been performed.


-- =====
-- Syntax
-- =====

-- SELECT column1, aggregate_function(column2), column3, ...
-- FROM table_name
-- WHERE condition
-- GROUP BY column1, column3
-- HAVING condition -- The condition on grouped data
-- ORDER BY column_name;


-- =====
-- Examples
-- =====

-- No. of customers per country, but only countries with more than 5 customers

SELECT Country, COUNT(CustomerID) AS [Number of Customers]
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;

-- No. customers / country, sorted hi -> lo, and only 5 or more

SELECT Country, COUNT(CustomerID) AS [Number of Customers]
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;

-- Employees that have registered more than 5 orders

SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 10;

-- If Davolio or Fuller have absolutely raked it in:

SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE LastName = 'Davolio' OR LastName = 'Fuller'
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 25;