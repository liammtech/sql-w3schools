IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL Update Statement
-- =======================

-- The UPDATE statement is used to update or modify one or more records in a table.


-- =====
-- UPDATE Syntax
-- =====

-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;

-- Note: Be careful when updating records in a table! Notice the WHERE clause in the UPDATE statement. The WHERE clause specifies which record(s) that should be updated. If you omit the where clause, all records in the table will be updated!


-- =====
-- UPDATE Table
-- =====

UPDATE Customers
SET ContactName = 'Alfred Schmidt', City = 'Frankfurt'
WHERE CustomerNo = 1;


-- =====
-- UPDATE Multiple Records
-- =====

-- The WHERE clause determines which records that will be updated

UPDATE Customers
SET ContactName = 'Bjorn'
WHERE Country = 'Norway';
