IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- ANY Operator
-- =======================

-- The ANY Operator is used to compare a value to every value returned by a subquery

-- The ANY operator evaluates to TRUE if at least one value in the subquery result-set meets the condition


-- =====
-- Syntax
-- =====

-- SELECT column_name(s)
-- FROM table_name
-- WHERE column_name operator ANY (subquery);

-- Note: The operator must be a standard comparison operator (=, <>, !=, >, >=, <, or <=)


-- =====
-- ANY Examples
-- =====

-- Returns the ProductName if it finds ANY records in the "OrderDetails" table that has Quantity equal to 10 (this will return TRUE because the Quantity column has some values of 10):

SELECT ProductName FROM Products
WHERE ProductID = ANY (
    SELECT ProductID
    FROM OrderDetails
    WHERE Quantity = 10
);

-- Quantity > 99

SELECT ProductName FROM Products
WHERE ProductID = ANY (
    SELECT ProductID
    FROM OrderDetails
    WHERE Quantity > 99
);

-- Quantity > 1000 (Returns false/no rows: no products have had > 1000 orders)

SELECT ProductName FROM Products
WHERE ProductID = ANY (
    SELECT ProductID
    FROM OrderDetails
    WHERE Quantity > 1000
);