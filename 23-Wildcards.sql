IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL Wildcards
-- =======================

-- A wildcard character is used to substitute one or more characters in a string

-- Wildcard characters are used with the LIKE operator. The LIKE operator is used in a WHERE clause to search for a specified pattern in a column:

SELECT * FROM Customers
WHERE ContactName LIKE 'a%';


-- =====
-- Wildcard Characters
-- =====

-- %    Represents zero or more characters
-- _    Represents a single character
-- []   Represents any single character within the brackets *
-- ^    Represents any character not in the brackets *
-- -    Represents any single character within the specified range *
-- {}   Represents any escaped character **

-- * Not supported in PostgreSQL and MySQL
-- ** Supported only in Oracle databases


-- =====
-- Using the % Wildcard
-- =====

-- The % Wildcard represents any number of characters, even zero characters:

SELECT * FROM Customers
WHERE ContactName LIKE '%es';

SELECT * FROM Customers
WHERE ContactName LIKE '%mer%';


-- =====
-- Using the _ Wildcard
-- =====

-- The _ wildcard represents a single character

-- It can be any character or number, but each _ represents one, and only one, character

SELECT * FROM Customers
WHERE City LIKE '_ondon';

SELECT * FROM Customers
WHERE City LIKE 'L___on';


-- =====
-- Using the [] Wildcard
-- =====

-- The [] wildcard returns a result if any of the characters inside gets a match

-- E.g. Return all customers starting with either "b", "s", or "p":

SELECT * FROM Customers
WHERE ContactName LIKE '[bsp]%';


-- =====
-- Using the - Wildcard
-- =====

SELECT * FROM Customers
WHERE ContactName LIKE '[a-f]%';


-- =====
-- Combine Wildcards
-- =====

-- Any wildcard can be used in combination with other wildcards

SELECT * FROM Customers
WHERE ContactName LIKE 'C_r%';


-- =====
-- Without Wildcard
-- =====

-- If no wildcard is specified, the phrase has to have an exact match to return a result

SELECT * FROM Customers
WHERE Country LIKE 'Spain';

-- =====
-- Microsoft Access Wildcards
-- =====

-- The Microsoft Access Database has some other wildcards:

-- *    Represents zero or more characters
-- ?    Represents a single character
-- []   Represents any single character within the brackets
-- -    Represents any single character within the specified range
-- #    Represents any single numeric character


