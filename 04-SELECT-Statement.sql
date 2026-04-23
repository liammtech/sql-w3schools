IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- The SQL Select Statement
-- =======================

-- The SELECT statement is used to select data from a database.

-- Example: return data from the Customer table:

SELECT ContactName, City FROM Customers;

-- =====
-- SELECT Syntax
-- =====

-- SELECT column1, column2, ...
-- FROM table_name;

-- Here, column1, column2, ... are the column names in the table you want to select the data from.

-- The table_name represents the name of the table you want to select data from.

-- =====
-- Select ALL Columns
-- =====

-- To select ALL columns, without specifying every column name, use the SELECT * syntax:

SELECT * FROM Customers;
