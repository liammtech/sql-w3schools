IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL IN Operator
-- =======================

-- The IN operator is used in the WHERE clause to check if a specified column's value matches any value within a provided list

-- The IN operator functions as a shorthand for multiple OR conditions, making queries shorter and more readable

-- The following SQL uses the IN operator to select all customers from Germany, France, or UK:

SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

-- The following SQL uses multiple OR conditions to select all customers from Germany, France, or UK... but the code is longeR:

SELECT * FROM Customers
WHERE Country = 'Germany' OR Country = 'France' OR Country = 'UK';


-- =====
-- Syntax
-- =====

-- SELECT column_names(s)
-- FROM table_name
-- WHERE column_name IN (value1, value2, ...);


-- =====
-- The NOT IN Operator
-- =====

-- By using the NOT IN operator, you return all records that are NOT any of the values in the list.

SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');


-- =====
-- IN (SELECT)
-- =====

-- You can also use IN with a subquery in the WHERE clause.

-- With a subquery you can return all records from the main query that are present in the result of the subquery

SELECT COUNT(*) FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM Orders);


-- =====
-- NOT IN (SELECT)
-- =====

-- The result in the example above returned 89 records, which would suggest that there are a few customers that haven't placed any orders

-- Let's check if that's correct, by using the NOT IN operator

-- The following SQL returns all customers who do NOT have any orders in the "Orders" table:

SELECT * FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);

-- Would ya look at that! Time to ring those customers