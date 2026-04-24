IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL MIN() Function
-- =======================

-- The MIN() function returns the smallest value of the selected column

-- Works with numeric, string, and date data types

-- Example:

SELECT MIN(UnitPrice) FROM Products;

-- =====
-- MIN() Syntax
-- =====

-- SELECT MIN(column_name)
-- FROM table_name
-- WHERE condition;


-- =====
-- Set Column Name (Alias
-- =====

-- When using MIN(), the returns column will not have a name.

-- Use the AS keyword to give the column a descriptive name:

SELECT MIN(UnitPrice) AS SmallestPrice
FROM Products;


-- =====
-- Use MIN() with Date Column
-- =====

-- The following SQL returns the earliest BirthDate in the BirthDate column, in the Employees table:

SELECT MIN(BirthDate) AS EarliestBirthDate
FROM Employees;


-- =====
-- Use MIN() with GROUP BY
-- =====

-- Here we use the MIN() function and the GROUP BY clause, to return the smallest price for each category in the Products table:

SELECT MIN(UnitPrice) AS SmallestPrice, CategoryID
FROM Products
GROUP BY CategoryID;