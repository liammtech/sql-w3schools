IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL LEFT JOIN
-- =======================

-- The LEFT JOIN returns all rows from the left table (table1), and only the matched rows from the right table (table2).
-- If there is no match in the right table, the rsult for the columns from the right table will be NULL
-- The LEFT JOIN and LEFT OUTER JOIN keywords are equal - the OUTER keyword is optional

-- Diagram:
-- https://www.w3schools.com/sql/img_left_join.png


-- =====
-- Syntax
-- =====

-- SELECT column_name(s)
-- FROM table1
-- LEFT JOIN table2
-- ON table1.column_name = table2.column_name;

-- Note: The syntax combines two tables based on a related column, and the ON keyword is used to specify the matching condition


-- =====
-- Examples
-- =====

SELECT Customers.CompanyName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CompanyName;

SELECT Customers.CompanyName, Orders.OrderID
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.CustomerID IS NULL;