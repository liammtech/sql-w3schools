IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- GROUP BY Statement
-- =======================

-- The GROUP BY statement is used to group rows that have the same values into summary rows, like "Find the number of customers in each country".

-- The GROUP BY statement is almost always used in conjunction with aggregate functions (COUNT(), MIN() etc.) to perform calculations on each group


-- =====
-- Syntax
-- =====

-- SELECT column1, aggregate_function(column2), column3, ...
-- FROM table_name
-- WHERE condition
-- GROUP BY column1, column3
-- ORDER BY column_name;


-- =====
-- Examples
-- =====

-- Number of customers in each country, sorted high to low:

SELECT Country, COUNT(CustomerID) AS [Number of Customers]
FROM Customers
GROUP BY Country
ORDER BY [Number of Customers] DESC; -- For a function-column, you can use either the alias or the original e.g. ORDER BY COUNT(CustomerID)


-- =====
-- GROUP BY With JOIN Example
-- =====

-- Number of orders by each shipper

SELECT Shippers.CompanyName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
LEFT JOIN Shippers
ON Orders.ShipVia = Shippers.ShipperID
GROUP BY CompanyName;