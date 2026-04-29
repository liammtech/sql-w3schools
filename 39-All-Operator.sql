IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- ALL Operator
-- =======================

-- The ALL operator is used to compare a value to every value returned by a subquery

-- The ALL operator evaluates to TRUE if every value in the subquery result-set meet the condition

-- The ALL operator is typically used with WHERE and HAVING statements


-- =====
-- Syntax
-- =====

-- SELECT column_name(s)
-- FROM table_name
-- WHERE column_name operator ALL (subquery);

-- Must be standard comparison operator (>, != etc).


-- =====
-- Example
-- =====

-- The following SQL returns the ProductName if ALL the records in the "OrderDetails" table has Quantity equal to 10. This will of course return FALSE because the Quantity column has many different values (not only the value of 10):

SELECT ProductName
FROM Products
WHERE ProductID = ALL (
    SELECT ProductID
    FROM OrderDetails
    WHERE Quantity = 10
);