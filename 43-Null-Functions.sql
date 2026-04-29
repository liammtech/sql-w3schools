IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- NULL Functions
-- =======================

-- Operations involving NULL values can sometimes lead to unexpected results.

-- SQL has some built-in functions to handle NULL values, and the most common functions are:

-- • COALESCE() - The preferred standard. (Works in MySQL, SQL Server and Oracle)
-- • IFNULL() - (MySQL)
-- • ISNULL() - (SQL Server)
-- • NVL() - (Oracle)
-- • IsNull() - (MS Access)

-- Note: A NULL value represents an unknown or missing data in a database field. It is not a value itself, but a placeholder top indicate the absence of data

-- For the sake of my sanity, I am only doing COALESCE() and ISNULL() for now


-- =====
-- The COALESCE() Function
-- =====

-- The COALESCE() function is the preferred standard for handling potential NULL values

-- The COALESCE() function returns the first non-NULL value in a list of values

-- The COALESCE() function works in MySQL(), SQL Server, and Oracle


-- =====
-- Syntax
-- =====

-- COALESCE(val1, val2, ..., val_n)

-- Example: use COALESCE() to replace NULL values with 0, so the multiplication can proceed:

SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0))
FROM Products;


-- =====
-- The ISNULL() Function (SQL Server)
-- =====

-- SQL Server's ISNULL() function replaces NULL with a specified value.


-- =====
-- Syntax
-- =====

-- ISNULL(expr, alt);

-- Example

SELECT ProductName, UnitPrice * (UnitsInStock + ISNULL(UnitsOnOrder, 0))
FROM Products;