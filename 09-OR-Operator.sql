IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL OR Operator
-- =======================

-- The WHERE clause can contain one or more OR operators.

-- The OR operator is used to filter records based on more than one condition.

-- Note: The OR operator displays a record if any of the conditions are TRUE.

-- Example: select all customers where Country is "Germany" OR "Spain":

SELECT * FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';



-- =====
-- OR Syntax
-- =====

-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE condition1 OR condition2 OR condition3 ...;



-- =====
-- At Least One Condition Must Be True
-- =====

-- The following SQL selects all customers where City is "Berlin", OR ContactName starts with the letter "G", OR Country is "Norway":

SELECT * FROM Customers
WHERE City = 'Berlin'
OR ContactName LIKE 'G%'
OR Country = 'Norway';



-- =====
-- AND vs. OR
-- =====

-- The AND operator displays a record if all the conditions are TRUE.

-- The OR operator displays a record if any of the conditions are TRUE.



-- =====
-- Combining AND and OR
-- =====

-- You can also combine AND and OR operators.

-- The following SQL selects all customers from Spain that start a "G" or an "R" (make sure to use parentheses to get the correct result):

SELECT * FROM Customers
WHERE Country = 'Spain' AND (CompanyName LIKE 'G%' OR CompanyName LIKE 'R%')

-- Without parentheses, the above will return all customers from Spain that start with an "R", plus all customers that start with "R"
-- regardless of the country

SELECT * FROM Customers
WHERE Country = 'Spain' AND CompanyName LIKE 'G%' OR CompanyName LIKE 'R%'