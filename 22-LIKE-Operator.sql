IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL LIKE Operator
-- =======================

-- The LIKE Operator is used in a WHERE clause to search for a specified pattern within a column's text data.

-- There are two wildcards often used in conjunction with the LIKE operator:

-- • A percent sign ( % ) represents zero, one, or multiple characters
-- • An underscore sign ( _ ) represents a single character

SELECT * FROM Customers
WHERE ContactName LIKE 'A%';


-- =====
-- Syntax
-- =====

-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE columnN LIKE pattern;


-- =====
-- The % Wildcard
-- =====

SELECT * FROM Customers
WHERE city LIKE '%on%';


-- =====
-- The _ Wildcard
-- =====

SELECT * FROM Customers
WHERE City LIKE 'L_nd__';


-- =====
-- Starts With
-- =====

-- To return records that start with a specific letter or phrase, add the % at the end of the letter or phrase:

SELECT * FROM Customers
WHERE ContactName LIKE 'La%';

-- You can also combine any number of conditions using AND or OR operators:

SELECT * FROM Customers
WHERE ContactName LIKE 'A%' OR ContactName LIKE 'B%';


-- =====
-- Ends With
-- =====

-- To return records that ends with a specific letter or phrase, add the % at the beginning of the letter or phrase:

SELECT * FROM Customers
WHERE ContactName like '%a';

-- You can also combine "starts with" and "ends with":

SELECT * FROM Customers
WHERE ContactName LIKE 'B%n';


-- =====
-- Contains
-- =====

-- To return records that contain a specific letter or phrase, add the % both before and after the letter or phrase:

SELECT * FROM Customers
WHERE ContactName LIKE '%or%';


-- =====
-- Combine Wildcards
-- =====

-- Any wildcard, like % and _, can be used in combination with other wildcards:

-- E.g. return all customers that start with 'A' and are at least 3 characters in length:

SELECT * FROM Customers
WHERE ContactName LIKE 'a__%';

-- E.g. Return all customers that have 'r' in the second position:

SELECT * FROM Customers
WHERE ContactName LIKE '_r%';


-- =====
-- Without Wildcards
-- =====

-- If no wildcard is specified, the phrase has to have an exact match to return a result

SELECT * FROM Customers
WHERE Country LIKE 'Spain';
