IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL Tutorial
-- =======================

-- =====
-- Learn SQL
-- =====

-- SQL is a standard language for storing, manipulating and retrieving data in databases.

-- Our SQL tutorial will teach you how to use SQL in: MySQL, SQL Server, MS Access, Oracle, PostgreSQL, and other database systems

-- Example

SELECT * FROM Customers ORDER BY CustomerID;


-- =====
-- UPDATE Warning!
-- =====

-- Be careful when you omit the WHERE clause, ALL records will be updated!

-- UPDATE Customers
-- SET ContactName = 'Bjorn'

