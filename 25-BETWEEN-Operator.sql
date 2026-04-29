IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL BETWEEN Operator
-- =======================

-- The BETWEEN operator is used in the WHERE clause to select values within a specified range

-- The range is inclusive - the beginning and end values of the range are included in the results

-- The values can be numbers, text, or dates

SELECT * FROM Products
WHERE UnitPrice BETWEEN 10 AND 20;


-- =====
-- Syntax
-- =====

-- SELECT column_name(s)
-- FROM table_name
-- WHERE column_name BETWEEN value1 AND value2;


-- =====
-- NOT BETWEEN
-- =====

-- The NOT BETWEEN operator is used in the WHERE clause to select values outside a specified range

SELECT * FROM Products
WHERE UnitPrice NOT BETWEEN 10 AND 20
ORDER BY UnitPrice;


-- =====
-- BETWEEN with IN
-- =====

SELECT * FROM Products
WHERE UnitPrice BETWEEN 10 AND 20
AND CategoryID IN (1,2,3);


-- =====
-- BETWEEN Text Values
-- =====

SELECT * FROM Products
WHERE ProductName BETWEEN 'Geitost' AND 'Louisiana Hot Spiced Okra'
ORDER BY ProductName;


-- =====
-- NOT BETWEEN Text Values
-- =====

SELECT * FROM Products
WHERE ProductName NOT BETWEEN 'Geitost' AND 'Louisiana Hot Spiced Okra'
ORDER BY ProductName;


-- =====
-- BETWEEN Dates
-- =====

-- The BETWEEN operator is useful for filtering records within a specific date or time period

-- Ensure the date format matches the database (e.g. 'YYYY-MM-DD')

SELECT * FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

