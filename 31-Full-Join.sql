IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL FULL JOIN
-- =======================

-- The FULL JOIN returns all rows when there is a match in either the left or right table.

-- If a row in the left table has no match in the right table, the result set includes the left row's data and NULL values for all columns of the right table.

-- Vice-versa

-- The FULL JOIN and FULL OUTER JOIN keywords are equal (OUTER is optional)

-- Diagram:
-- https://www.w3schools.com/sql/img_full_outer_join.png

-- Note: FULL JOIN can potentially return very large result sets!


-- =====
-- Syntax
-- =====

-- SELECT column_name(s)
-- FROM table1
-- FULL JOIN table2
-- ON table1.column_name = table2.column_name
-- WHERE condition;


-- =====
-- SQL FULL JOIN Example
-- =====

-- The following SQL statement selects all customers, and all orders:

SELECT Customers.CompanyName, Orders.OrderID
FROM Customers
FULL JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderID IS NULL;

-- Note: FULL JOIN returns all matchign records from both tables whether the other table matches or not. So, if there are rows in "Customers" that do not have matches in "Orders", or if there are rows in "Orders" that do not have matches in "Customers", those rows will be listed as well