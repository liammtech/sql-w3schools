IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =====
-- SQL COUNT() Function
-- =====

-- The COUNT() function returns the number of rows that match a specified criterion.


-- =====
-- COUNT() Syntax
-- =====

-- SELECT COUNT([DISTINCT] column_name | *)
-- FROM table_name
-- WHERE condition;

-- The behaviour of COUNT() depends on the argument used within the parentheses:

-- • COUNT(*) - Counts the total number of rows in a table (including NULL values).
-- • COUNT(columnname) - Counts all non-null values in the column.
-- • COUNT(DISTINCT columnname) - Counts only the unique, non-null values in the column


-- =====
-- Using COUNT(*)
-- =====

SELECT COUNT(*) FROM Products;


-- =====
-- Using COUNT(column_name)
-- =====

SELECT COUNT(ProductName) FROM Products;


-- =====
-- Using COUNT(DISTINCT column_name)
-- =====

-- You can ignore duplicates by using the DISTINCT keyword (also ignores NULL)

SELECT COUNT(DISTINCT UnitPrice)
FROM Products;


-- =====
-- Add a WHERE Clause
-- =====

SELECT COUNT(ProductID)
FROM Products
WHERE UnitPrice > 20;


-- =====
-- Use an Alias
-- =====

SELECT COUNT(*) AS [Number of records]
FROM Products;


-- =====
-- Use COUNT() with GROUP BY
-- =====

SELECT COUNT(*) AS [Number of Records], CategoryID FROM Products
GROUP BY CategoryID;