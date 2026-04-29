IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL Aliases
-- =======================

-- An alias is created with the AS keyword, and is often used to make a column name more readable.

-- An alias only exists for the duration of that query.


-- =====
-- Alias for Columns
-- =====

SELECT CustomerID AS ID, CompanyName AS Customer
FROM Customers;


-- =====
-- Syntax
-- =====

-- Alias for column:

-- SELECT column_name AS alias_name
-- FROM table_name;

-- Alias for table:

-- SELECT column_name(s)
-- FROM table_name AS alias_name;


-- =====
-- Aliases with Spaces
-- =====

-- If you want your alias to contain one or more spaces, like "My Great Products", surround the aliasname with square brackets or double quotes:

SELECT ProductName AS [My Great Products]
FROM Products;

-- Or, you can use double quotes:

SELECT ProductName AS "My Great Products"
FROM Products;

-- Note: Some database systems allow both [] and "", some only allow one of them


-- =====
-- Concatenate Columns
-- =====

-- The following SQL creates an alias named "Address" that combines four columns (Address, PostalCode, City and Country):

SELECT CompanyName, Address + ', ' + PostalCode + ', ' + City + ', ' + Country AS Address FROM Customers;

-- MySQL syntax:

-- SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address FROM Customers; 

-- Oracle syntax:

-- SELECT CustomerName, (Address || ', ' || PostalCode || ' ' || City || ', ' || Country) AS Address FROM Customers; 


-- =====
-- Alias for Tables
-- =====

-- The same rules apply when you want to use an alias for a table

SELECT * FROM Customers AS Persons;

-- At first, it might seem useless to use aliases on tables, but it makes sense when you are joining them:

SELECT c.CompanyName, o.OrderID
FROM Customers AS c
JOIN Orders AS o ON c.CustomerID = o.CustomerID;

-- Aliases are useful when:

-- • There are more than one table involved in a query
-- • Functions are used in a query
-- • Column names are long or not very readable
-- • Two or more columns are combined together