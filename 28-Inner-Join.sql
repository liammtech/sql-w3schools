IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL INNER JOIN
-- =======================

-- The INNER JOIN returns only rows that have matching values in both tables.

-- Tip: You can use just JOIN instead of INNER JOIN, as INNER is the default join type

-- Diagram:
-- https://www.w3schools.com/sql/img_inner_join.png


-- =====
-- Syntax
-- =====

-- SELECT column_name(s)
-- FROM table1
-- INNER JOIN table2
-- ON table1.column_name = table2.column_name;

-- Note: The syntax combines two tables based on a related column, and the ON keyword is used to specify the matching condition.


-- =====
-- INNER JOIN Example
-- =====

-- Look at a product in the Products table:

-- ProductID    ProductName     *CategoryID*    Price
-- 3            Aniseed Syrup   2               10.00

-- And look at a row in the Categories table:

-- *CategoryID* CategoryName    Description
-- 2            Condiments      Sweet and savory sauces etc.

-- Here we wee that the related column between the two tables above, is the "CategoryID" column

-- Now we create an INNER JOIN on the "Products" table and the "Categories" table, via the CategoryID field:

SELECT ProductID, ProductName
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- Note: INNER JOIN returns only rows with a match in both tables. This means that if there is a product with no CategoryID, or with a CategoryID not present in the Categories table, that row will not be returned in the result.


-- =====
-- Naming the Columns
-- =====

-- It is a good practice to also include the table name when specifying columns in SQL joins:

SELECT Products.ProductID, Products.ProductName
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- The example above works without specifying table names, because none of the specified column names are present in both tables. However, if you add the CategoryID column in the SELECT statement, an error occurs, if you do not specify the table name. This is because the CategoryID column is present in both tables.


-- =====
-- JOIN or INNER JOIN
-- =====

-- JOIN and INNER JOIN will return the same result.

-- INNER is the default join type for JOIN, so when you write JOIN the parser actually writes INNER JOIN

SELECT Products.ProductID, Products.ProductName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID;


-- =====
-- JOIN Multiple Tables
-- =====

-- You can join more than two tables by adding multiple INNER JOIN clauses in your query

SELECT Orders.OrderID, Customers.CompanyName, Shippers.CompanyName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
INNER JOIN Shippers ON Orders.ShipVia = Shippers.ShipperID;