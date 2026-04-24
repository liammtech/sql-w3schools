IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL SUM() Function
-- =======================

-- The SUM() function is used to calculate the total sum of values within a numeric column

-- The SUM() function ignores NULL values in the column.

SELECT SUM(Quantity)
FROM OrderDetails;

-- Syntax:

-- SELECT SUM(column_name)
-- FROM table_name
-- WHERE condition; 

-- With WHERE clause:

SELECT SUM(Quantity)
FROM OrderDetails
WHERE ProductId = 11;

-- Use an Alias

SELECT SUM(Quantity) AS total
FROM OrderDetails;

-- Use SUM() with GROUP BY

-- Here we use the SUM() function and the GROUP BY clause, to return the Quantity for each OrderID in the OrderDetails table:

SELECT OrderID, SUM(Quantity) AS [Total Quantity]
FROM OrderDetails
GROUP BY OrderID;

-- =====
-- SUM() With an Expression
-- =====

-- The parameter inside the SUM() function can also be an expression

-- If we assume that each product in the "OrderDetails" table costs 10 dollars, we can find the total earnings in dollars by multiplying each quantity by 10:

SELECT SUM(Quantity * 10)
FROM OrderDetails;

-- We can also join the "OrderDetails" table with the "Products" table to find the actual price, instead of assuming it is 10 dollars:

SELECT SUM(Products.UnitPrice * Quantity)
FROM OrderDetails
LEFT JOIN Products ON OrderDetails.ProductID = Products.ProductID;