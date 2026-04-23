IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL AND Operator
-- =======================

-- The WHERE clause can contain one or many AND operators.

-- The AND operator is used to filter records based on more than one condition.

-- Note: The AND operator displays a record only if all the conditions are TRUE.

-- Example: select all customer where Country is "Spain" and ContactName starts with the letter "A":

SELECT * FROM Customers
WHERE Country = 'Spain' AND ContactName LIKE 'A%';

-- =====
-- AND Syntax
-- =====

-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE condition1 AND condition2 AND condition3 ...;



-- =====
-- All Conditions Must Be True
-- =====

-- The following SQL selects all customers where Country is "Brazil" AND City is "Rio de Janeiro" AND CustomerID is higher
-- alphabetically than "I" (originally was numeric, but again...):

SELECT * FROM Customers
WHERE
Country = 'Brazil' AND
City = 'Rio de Janeiro' AND
CustomerID > 'I%';



-- =====
-- AND vs. OR
-- =====

-- The AND operator displays a record if all the conditions are TRUE.

-- the OR operator displays a record if any of the conditions are TRUE.



-- =====
-- Combining AND and OR
-- =====

-- You can also combine AND and OR operators.

-- The following SQL selects all customers from Spain that start with an "M" or an "E" (make sure to use parentheses to get the correct result):

SELECT * FROM Customers
WHERE Country = 'Spain'
AND (ContactName LIKE 'M%' OR ContactName like 'E%');

-- Without parentheses, this statement would return all customers from Spain that start with an "M", plus all customers that start with an "E",
-- regardless of the country value:

SELECT * FROM Customers
WHERE Country = 'Spain'
AND ContactName LIKE 'M%' OR ContactName like 'E%';