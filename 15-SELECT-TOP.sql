IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL SELECT TOP, LIMIT and FETCH FIRST
-- =======================

-- The SELECT TOP clause is used to limit the number of records to return.

-- The SELECT TOP clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.

SELECT TOP 3 * FROM Customers;

-- Note: Not all database systems support the SELECT TOP clause. MySQL supports the LIMIT clause to select a limited number of records, while Oracle uses FETCH FIRST n ROWS ONLY.


-- =====
-- Syntax for SQL Server / MS Access
-- =====

-- SELECT TOP number|percent columns_name(s)
-- FROM table_name
-- WHERE condition;


-- =====
-- Syntax for MySQL
-- =====

-- SELECT column_name(s)
-- FROM table_name
-- WHERE condition
-- LIMIT number;


-- =====
-- Syntax for Oracle 12+
-- =====

-- SELECT column_name(s)
-- FROM table_name
-- ORDER BY column_name(s)
-- FETCH FIRST number ROWS ONLY;


-- =====
-- MySQL - The LIMIT Clause
-- =====

-- SELECT * FROM Customers
-- LIMIT 3;


-- =====
-- Oracle - THE FETCH FIRST Clause
-- =====

-- SELECT * FROM Customers
-- FETCH FIRST 3 ROWS ONLY;


-- =====
-- SQL TOP PERCENT Example
-- =====

-- Here we use the SELECT TOP clause with the percent syntax.

SELECT TOP 50 PERCENT * FROM Customers;


-- =====
-- SELECT TOP with WHERE
-- =====

SELECT TOP 3 * FROM Customers
WHERE Country = 'Germany';


-- =====
-- SELECT TOP and ORDER BY
-- =====

SELECT TOP 3 * FROM Customers
ORDER BY CustomerNo DESC;