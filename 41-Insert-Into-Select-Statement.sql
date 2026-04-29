IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- INSERT INTO SELECT Statement
-- =======================

-- The INSERT INTO SELECT statement is used to copy data from an existing table and insert it into another existing table

-- The INSERT INTO SELECT statement requires that the data types in source and target tables match.

-- Note: The existing records in the target table are unaffected


-- =====
-- Syntax
-- =====

-- Copy all columns from one table into another table:

-- INSERT INTO target_table
-- SELECT * FROM source_table
-- WHERE condition;

-- Note: If you omit the column names, the number and order of columns in both the source and target tables must be exactly the same

-- Copy only some columns from one table to another:

-- INSERT INTO target_table(column1, column2, column3, ...)
-- SELECT column1, column2, column3, ...
-- FROM source_table
-- WHERE condition;


-- =====
-- Examples
-- =====

-- Copy Suppliers into Customers (the columns that are not filled with data, will contain NULL)

INSERT INTO Customers (CompanyName, City, Country)
SELECT CompanyName, City, Country FROM Suppliers;

-- Copy "Suppliers" into "Customers" (the job lot):

INSERT INTO Customers
SELECT * FROM Suppliers;

-- Copy only German

INSERT INTO Customers (CompanyName, City, Country)
SELECT CompanyName, City, Country FROM Suppliers
WHERE Country='Germany';