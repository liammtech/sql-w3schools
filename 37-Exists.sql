IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- EXISTS Operator
-- =======================

-- The EXISTS operator is used in a WHERE clause to check whether a subquery returns any rows

-- The EXISTS operator evaludates to TRUE if the subquery returns at least one row, and FALSE otherwise


-- =====
-- Syntax
-- =====

-- SELECT column_name
-- FROM table_name
-- WHERE EXISTS (subquery);


-- =====
-- Examples
-- =====

-- Checks if any suppliers have a product with a price lower than 10. If the subquery evaluates to TRUE, list the suppliers with a product price less than 10:

SELECT Suppliers.CompanyName
FROM Suppliers
WHERE EXISTS (
    SELECT ProductName
    FROM Products
    WHERE Products.SupplierID = Suppliers.SupplierID AND UnitPrice < 10
);

-- Checks if any suppliers have a product with a price equal to 22. If the subquery evaluates to TRUE; list the suppliers with a product price equal to 22:

SELECT CompanyName
FROM Suppliers
WHERE EXISTS (
    SELECT ProductName
    FROM Products
    WHERE Products.SupplierID = Suppliers.SupplierID AND UnitPrice = 22
);