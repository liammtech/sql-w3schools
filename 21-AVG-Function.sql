IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL AVG() Function
-- =======================

-- The AVG() function returns the average value of a numeric column

-- The AVG() function ignores NULL values in the column.

SELECT AVG(UnitPrice)
FROM Products;


-- Syntax

-- SELECT AVG(column_name)
-- FROM table_name
-- WHERE condition;


-- With WHERE clause

SELECT AVG(UnitPrice)
FROM Products
WHERE CategoryID = 1;


-- Use an Alias

SELECT AVG(UnitPrice) AS [Average Price]
FROM Products;


-- Higher Than Average (use in a sub-query)

SELECT * FROM Products
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products);


-- Use AVG() with GROUP BY

-- Here we use the AVG() function and the GROUP BY clause, to return the average price for each category in the "Products" table:

SELECT AVG(UnitPrice) AS AveragePrice, CategoryID
FROM Products
GROUP BY CategoryID;