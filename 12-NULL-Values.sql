IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL NULL Values
-- =======================

-- If a field in a table is optional, it is possible to insert or update a record without adding any value to this field. This way, the field will be saved with a NULL value.

-- A NULL value represents an unknown, missing, or inapplicable datum in a database field. It is not a value in itself, but a placeholder to indicate the absence of data.

-- Note: A NULL value is different from zero (0) or an empty string (''). A field with a NULL value is one that had been left blank upon record creation.


-- =====
-- How to Test for NULL Values?
-- =====

-- It is not possible to test for NULL values with comparison operators, such as =, <, or <>.

-- We will have to use the IS NULL and IS NOT NULL operators instead.


-- =====
-- IS NULL Syntax
-- =====

-- SELECT column_names
-- FROM table_name
-- WHERE column_name IS NULL;


-- =====
-- IS NOT NULL Syntax
-- =====

-- SELECT column_names
-- FROM table_name
-- WHERE column_name IS NOT NULL;


-- =====
-- The IS NULL Operator
-- =====

-- The IS NULL operator is used to test for empty values (NULL values).

-- The following SQL lists all customers with a NULL value in the "Address" field:

SELECT CustomerNo, CompanyName, ContactName, Address
FROM Customers
WHERE Address IS NULL;

-- Tip: Always use IS NULL to look for NULL values.


-- =====
-- The IS NOT NULL Operator
-- =====

-- The IS NOT NULL operator is used to test for non-empty values (NOT NULL values).

SELECT CustomerNo, CompanyName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL;
