IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL NOT Operator
-- =======================

-- The NOT operator is used in the WHERE clause to return all records that DO NOT match the specified criteria. It reverses the result of a
-- condition from true to false and vice-versa.

-- The following SQL selects all customer that are NOT from Spain:

SELECT * FROM Customers
WHERE NOT Country = 'Spain'
ORDER BY Country; -- Easier to see that "Spain" is absent from Country column

-- In the example above, the NOT operator is used in combination with the = operator.

-- The NOT operator is also used in combination with other operators to exclude data, such as:

-- * NOT LIKE
-- * NOT BETWEEN
-- * NOT IN
-- * IS NOT NULL
-- * NOT EXISTS



-- =====
-- NOT Syntax
-- =====

-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE NOT condition;



-- =====
-- The NOT LIKE Operator
-- =====

-- The NOT LIKE operator is used in the WHERE clause to exclude rows that match a specified character pattern.

-- There are two wildcards often used in conjunction with the NOT LIKE operator:

-- * A percent sign ( % ) represents zero, one, or multiple characters
-- * An underscore sign ( _ ) represents a single character

-- The following SQL select all customers that do NOT start with the letter "A":

SELECT * FROM Customers
WHERE CompanyName NOT LIKE 'A%'
ORDER BY CompanyName; -- For visibility



-- =====
-- The NOT BETWEEN Operator
-- =====

-- The NOT BETWEEN operator is used in the WHERE clause to select rows where a value falls outside a specified inclusive range.

-- The NOT BETWEEN operator can be used with numeric, text, or date values.

-- The following SQL selects all customers with a CustomerNo NOT between 50000 and 80000:

SELECT * FROM Customers
WHERE CustomerNo NOT BETWEEN 10 AND 18
ORDER BY PostalCode;


-- =====
-- The NOT IN Operator
-- =====

-- The NOT IN operator is used in the WHERE clause to exclude rows that match any value in a specified list or a subquery result set.

-- The following SQL selects all customers with City NOT IN "Paris" or "London"L

SELECT * FROM Customers
WHERE City NOT IN ('London', 'Paris')
ORDER BY City;



-- =====
-- NOT Greater Than
-- =====

-- In SQL, the "NOT Greater Than" condition is most often expressed with the standard comparison (e.g. >=) operators.

-- The following SQL selects all customers with a CustomerNo not greater than 50:

SELECT * FROM Customers
WHERE NOT CustomerNo > 50;



-- =====
-- NOT Less Than
-- =====

-- In SQL, the "NOT Less Than" condition is most often expressed with the standard les than or equal to (<=) operator.

-- The following SQL selects all customers with a CustomerNo not less than 50:

SELECT * FROM Customers
WHERE NOT CustomerNo < 50;
