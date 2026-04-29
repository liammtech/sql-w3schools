IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- UNION ALL Operator
-- =======================

-- The UNION ALL operator is used to combine the result-set of two or more SELECT statements.

-- The UNION ALL operator includes all rows from each statement, including any duplicates.

-- The requirements for UNION ALL are the same as those for UNION (see lesson 33)


-- =====
-- Syntax
-- =====

-- SELECT column_name(s) FROM table1
-- UNION ALL
-- SELECT column_name(s) FROM table2

-- Note: The column names in the result-set are usually equal to the column names in the first SELECT statement


-- =====
-- Example
-- =====

SELECT Country FROM Customers
UNION ALL
SELECT Country FROM Suppliers
ORDER BY Country;


-- =====
-- UNION ALL With WHERe
-- =====

SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

