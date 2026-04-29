IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL Case Expression
-- =======================

-- The CASE expression is used to define different results based on specified conditions in a SQL statement

-- The CASE expression goes through the conditions and stops at the first match (like a switch/if-else statement). So, once a condition is true, it will stop processing and return the result.

-- If no conditions are true, it returns the value in the ELSE clause. If there is no ELSE clause and no conditions are true, it returns NULL


-- =====
-- Syntax
-- =====

-- CASE
--   WHEN condition1 THEN result1
--   WHEN condition2 THEN result2
--   WHEN conditionN THEN resultN
--   ELSE default_result
-- END;


-- =====
-- Example
-- =====

-- Here we use the CASE expression to categorise Price, and we create a new column (PriceCategory) that shows in which price category each product is:

SELECT ProductName, UnitPrice,
CASE
    WHEN UnitPrice < 20 THEN 'Low Cost'
    WHEN UnitPrice BETWEEN 20 AND 50 THEN 'Medium Cost'
    ELSE 'High Cost'
END AS PriceCategory
FROM Products;


-- Note: this is an ephemeral column, it's not added to "Products"
SELECT * FROM Products;