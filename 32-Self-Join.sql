IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL SELF JOIN
-- =======================

-- A self join is a regular join, but the table is joined with itself

-- =====
-- Syntax
-- =====

-- SELECT column_name(s)
-- FROM table1 T1, table1 T2
-- WHERE condition

-- T1 and T2 are different table aliases for the same table


-- =====
-- Example
-- =====

-- Match customers from the same city:

SELECT A.CompanyName AS CustomerName1, B.CompanyName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;
