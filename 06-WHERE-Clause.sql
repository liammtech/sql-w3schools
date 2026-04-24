IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL WHERE Clause
-- =======================

-- The WHERE clause is used to filter records.

-- The WHERE clause is used to extract only those records that fulfill a specific condition.

-- Example: here we select all customers from Mexico:

SELECT * FROM Customers
WHERE Country = 'Mexico';

-- =====
-- WHERE Syntax
-- =====

-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE condition;

-- Note: The WHERE clause is not only used in SELECT statements, it is also used in UPDATE, DELETE, etc.



-- =====
-- Text Fields vs. Numeric Fields
-- =====

-- SQL requires single quotes around text values (most database systems will also allow double quotes).

-- However, numeric fields should not be enclosed in quotes:

-- SELECT * FROM Customers
-- WHERE CustomerID = 1;

-- (Note: Northwind DB must have been updated at some point; Customers.CustomerID now a text string)



-- =====
-- Operators in The WHERE Clause
-- =====

-- You can use other operators than the = operator to filter the search.

-- Example: select all customer with a CustomerID greater than 80:

-- SELECT * FROM Customers;
-- WHERE CustomerID > 80;

-- (Note: same again - it actually turns out that it wasn't the Northwind DB that changed, rather that W3Schools adapted it to their spec

-- The following operators can be used in the WHERE clause:

-- =        Equal
-- >        Greater than
-- <        Less than
-- >=       Greater than or equal
-- <=       Less than or equal
-- <>       Not equal. Note: In some versions of SQL this operator may be written as !=
-- BETWEEN  Between a certain range
-- LIKE     Search for a pattern
-- IN       To specify multiple possible values for a column


-- PS got this to work - filter to int-compatible values first, then numerics can cast from a varchar field:
SELECT * FROM Customers
WHERE Country = 'Mexico'
AND PostalCode > 05021;