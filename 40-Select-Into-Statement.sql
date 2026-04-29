IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SELECT INTO Statement
-- =======================

-- The SELECT INTO statement is used to create a new table and fill it with data from an existing table

-- The SELECT INTO statement is useful for creating backups or creating a temporary table for analysis

-- Note: The new table will be created with the same column names and data types as defined in the source table. However, primary keys, indexes, or NOT NULL constraints are not automatically transferred.


-- =====
-- Syntax
-- =====

-- Copy entire table into a new table:

-- SELECT * INTO newtable [IN external_db]
-- FROM sourcetable
-- WHERE condition;

-- Copy only some columns into a new table:

-- SELECT column1, column2, column3, ...
-- INTO newtable [IN external_db]
-- FROM sourcetable
-- WHERE condition;


-- =====
-- SELECT INTO Examples
-- =====

DROP TABLE CustomersBackup2026;

SELECT * INTO CustomersBackup2026
FROM Customers;

-- Into another database:

-- SELECT * INTO CustomersBackup2026 IN 'Backup.mdb'
-- FROM Customers;

-- Only some columns

DROP TABLE Customers2;

SELECT CompanyName, ContactName INTO Customers2
FROM Customers;

-- Only US Customers:

DROP TABLE US_Customers;

SELECT * INTO US_Customers
FROM Customers
WHERE Country = 'USA';

SELECT * FROM US_Customers;

-- From more than one table:

DROP TABLE CustomerOrders;

SELECT Customers.CompanyName AS CustomerName, Orders.OrderID INTO CustomerOrders
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- Tip: SELECT INTO can also be used to create a new, empty table using the schema of another. Just add this WHERE clause, that causes the query to return no data:

SELECT * INTO new_table
FROM Customers
WHERE 1 = 0; -- Always evaluates to false, so returns no data

-- Again though: constraints, keys etc. must be reassigned manually