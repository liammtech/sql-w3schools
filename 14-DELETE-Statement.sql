IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL DELETE Statement
-- =======================

-- The DELETE statement is used to delete existing records in a table.

-- Personal note: keeping this one all commented out, for hopefully obvious reasons


-- =====
-- DELETE SYNTAX
-- =====

-- DELETE FROM table_name WHERE condition;

-- Note: Be careful when deleting records in a table! Notice the WHERE clause in the DELETE statement. The WHERE clause specifies which record(s) should be deleted. If you omit the WHERE clause, all records in the table will be deleted!


-- =====
-- Delete All Records
-- =====

-- It is possible to delete all records in a table, without deleting the table. This means that the table structure, attributes, and indexes will be intact.

-- Syntax:

-- DELETE FROM table_name;

-- Example:

-- DELETE FROM Customers;


-- =====
-- Delete a Table
-- =====

-- To delete the table completely, use the DROP TABLE statement:

-- Syntax:

-- DROP TABLE table_name;

-- Example:

-- DROP TABLE Customers;