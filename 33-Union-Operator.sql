IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL UNION Operator
-- =======================

-- The UNION operator is used to combine the result-sets of two or more SELECT statements.

-- The UNION operator automatically removes duplicate rows from the result set.

-- Requirements for UNION:

-- • Every SELECT statement within UNION must have the same number of columns
-- • The columns must also have similar data types
-- • The columns in every SELECT statement must also be in the same order


-- =====
-- Syntax
-- =====

-- SELECT column_name(s) FROM table1
-- UNION
-- SELECT column_name(s) FROM table2;


-- =====
-- Demo Database
-- =====

-- Below is a selection from the "Customers" table:

-- CustomerID 	CustomerName 	            ContactName 	Address                         City 	        PostalCode 	Country
-- 1	        Alfreds Futterkiste 	    Maria Anders 	Obere Str. 57 	                Berlin 	        12209 	    Germany
-- 2 	        Emparedados y helados 	    Ana Trujillo 	Avda. de la Constitución 2222 	México D.F. 	05021 	    Mexico
-- 3 	        Antonio Moreno Taquería 	Antonio Moreno 	Mataderos 2312 	                México D.F. 	05023 	    Mexico

-- And a selection from the Suppliers table:

-- SupplierID 	SupplierName 	            ContactName 	    Address 	    City 	        PostalCode 	Country
-- 1 	        Exotic Liquid 	            Charlotte Cooper 	49 Gilbert St. 	London 	        EC1 4SD 	UK
-- 2 	        New Orleans Cajun Delights 	Shelley Burke 	    P.O. Box 78934 	New Orleans 	70117 	    USA
-- 3 	        Grandma Kelly's Homestead 	Regina Murphy 	    707 Oxford Rd. 	Ann Arbor 	    48104 	    USA


-- =====
-- UNION Example
-- =====

-- Returns the unique (distinct) countries from both the "Customers" and the "Suppliers" table:

SELECT Country FROM Customers
UNION ALL
SELECT Country FROM Suppliers
ORDER BY Country;

-- Note: If some customers or suppliers have the same country, each country will only be listed once, because UNION selects only distinct values. Use UNION ALL to also select duplicate values


-- =====
-- UNION with WHERE
-- =====

-- Here we ass a WHERE clause to only return the unique German cities from both the tables:

SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;


-- =====
-- Another UNION Example
-- =====

-- The following SQL lists all customers and suppliers

SELECT 'Customer' AS Type, ContactName, City, Country
FROM Customers
UNION
SELECT 'Supplier', ContactName, City, Country
FROM Suppliers;

-- Notice the "AS Type" above - it is an alias. Aliases are used to give a column a temporary name. So, here we have created a temporary column named "Type", that lists whether the contact person is a "Customer" or a "Supplier" (it will factor in the other unionised table names)