IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO



-- =======================
-- SQL SELECT DISTINCT Statement
-- =======================

-- The SELECT DISTINCT statement is used to return only distinct (unique) values.

-- In a table, a column may contain several duuplicate values - and sometimes you want to list only the unique values.

SELECT DISTINCT Country FROM Customers;



-- =====
-- SELECT DISTINCT Syntax
-- =====

-- SELECT DISTINCT column1, column2, ...
-- FROM table_name;



-- =====
-- SELECT Example Without DISTINCT
-- =====

-- If you omit the DISTINCT keyword, the SQL statement returns the "Country" value from all the records of the "Customers" table:

SELECT Country FROM Customers;



-- =====
-- Count Distinct Values
-- =====

-- By using the COUNT() function with the DISTINCT keyword, we can count the number of unique countries.

SELECT COUNT(DISTINCT Country) FROM Customers;

-- Note: The COUNT(DISTINCT column_name) is not supported in Microsoft Access databases.

-- Here is a workaround for MS Access:

-- SELECT Count(*) AS DistinctCountries
-- FROM (SELECT DISTINCT Country FROM Customers);

-- You will learn more about the COUNT() function later in this tutorial.