IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL ORDER BY Keyword
-- =======================

-- The ORDER BY keyword is used to sort the result-set in ascending or descending order.

-- The ORDER BY keyword sorts the result-set in ascending order (ASC) by default.

-- Example: sort the products from lowest to highest price:

SELECT * FROM Products
ORDER BY UnitPrice;



-- =====
-- ORDER BY Syntax
-- =====

-- SELECT column1, column2, ...
-- FROM table_name
-- ORDER BY column1, column2, ... ASC|DESC;



-- =====
-- ORDER BY DESC
-- =====

-- To sort the records in descending order, use the DESC keyword.

SELECT * FROM Products
ORDER BY UnitPrice DESC;



-- =====
-- Order Alphabetically
-- =====

-- For string values, the ORDER BY keyword will sort the values in the column alphabetically:

-- Example: sort the ProductName column in alphabetical order:

SELECT * FROM Products ORDER BY ProductName;



-- =====
-- Alphabetically DESC
-- =====

-- To sort the text values in a column in a descending order, use the DESC keyword

SELECT * FROM Products
ORDER BY ProductName DESC;



-- =====
-- ORDER BY Several Columns
-- =====

-- The following SQL statement selects all customers from the "Customers" table - and sorts it by the "Country" and the "CustomerName"
-- column.

-- This means that it sorts it first by Country, and if some records have the same Country, it sorts them by ContactName:

SELECT * FROM Customers
ORDER BY Country, ContactName;



-- =====
-- Combine ASC and DESC
-- =====

-- The following SQL statement selects all customers from the "Customers" table, and sorts it ASCENDING by the "Country" and DESCENDING by
-- the "ContactName" column:

SELECT * FROM Customers
ORDER BY Country ASC, ContactName DESC;
