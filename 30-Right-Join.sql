IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL RIGHT JOIN
-- =======================

-- The RIGHT JOIN returns all rows from the right table (table2), and only the matched rows from the left table (table1)

-- If there is no match in the left table, the result for the columns from the left table will be NULL

-- The RIGHT JOIN and RIGHT OUTER JOIN keywords are equal - the OUTER keyword is optional

-- Diagram:
-- https://www.w3schools.com/sql/img_right_join.png


-- =====
-- Syntax
-- =====

-- SELECT column_name(s)
-- FROM table1
-- RIGHT JOIN table2
-- ON table1.column_name = table.column_namer;

-- Note: The syntax combines two tables based on a related column, and the ON keyword is used to specify the matching condition


-- =====
-- Example
-- =====

SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;


