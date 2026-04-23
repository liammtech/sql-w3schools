IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL Syntax
-- =======================

-- =====
-- SQL Statements
-- =====

-- Most of the actions you need to perform on a database are done with SQL statements.

-- SQL statements consist of keywords that are easy to understand.

-- The following SQL statement selects all records from the table named "Customers":

-- Example: select all records from the table named "Customers:

SELECT * FROM Customers;

-- In this tutorial we will teach you all about the different SQL statements.

-- =====
-- Database Tables
-- =====

-- A database most often contains one or more tables. Each table is identified by a name (e.g. "Customers" or "Orders"), and contain records
-- (rows) with data.

-- In this tutorial we will use the well-known Northwind sample database (included in MS Access and MS SQL Server).

-- Execute the SELECT statement above to see the Customers table used in the examples

-- =====
-- Keep in Mind That...
-- =====

-- SQL keywords are NOT case senesitive: select is the same as SELECT

-- In this tutorial we will write all SQL keywords in upper case.

-- =====
-- Semicolon after SQL Statements?
-- =====

-- Some database systems require a semicolon at the end of each SQL statement.,

-- A semicolon is the standard way to separate each SQL statement in database systems that allow more than one SQL statement to be executed
-- in the same call to the server.

-- In this tutorial, we will use semicolons at the end of each SQL statement.

-- =====
-- Some of The Most Important SQL Commands
-- =====

-- * SELECT - extracts data from a database
-- * UPDATE - updates data in a database
-- * DELETE - deletes data from a database
-- * INSERT INTO - inserts new data into a database
-- * CREATE DATABASE - creates a new database
-- * ALTER DATABASE - modifies a database
-- * CREATE TABLE - creates a new table
-- * ALTER TABLE - modifies a table
-- * DROP TABLE - deletes a table
-- * CREATE INDEX - creates an index (search key)
-- * DROP INDEX - deletes an index