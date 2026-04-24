IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
--  SQL MAX() Function
-- =======================

-- The MAX() function returns the largest value of the selected column.

-- Works with numeric, string, and date data types.

SELECT MAX(UnitPrice) FROM Products;


-- =====
-- MAX() Syntax
-- =====

-- SELECT MAX(column_name)
-- FROM table_name
-- WHERE condition;


-- =====
-- Set Column Name (Alias)
-- =====

-- When you use MAX(), the returned column will not have a name.

-- Use the AS keyword, to give the column a descriptive name:

SELECT MAX(UnitPrice) AS HighestPrice
FROM Products;

-- =====
-- Use MAX() with Date Column
-- =====

SELECT MAX(BirthDate) AS LatestBirthDate
FROM Employees;


-- =====
-- Use MAX() with GROUP BY
-- =====

SELECT MAX(UnitPrice) AS HighestPrice, CategoryID
FROM Products
GROUP BY CategoryID;