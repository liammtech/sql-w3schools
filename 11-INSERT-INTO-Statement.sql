IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- SQL INSERT INTO Statement
-- =======================

-- The INSERT INTO statement is used to insert new records in a table.

-- It is possible to write the INSERT INTO statement in two ways:


-- =====
-- Syntax 1
-- =====

-- Specify both the column names and the values to be inserted:

-- INSERT INTO table_name (column1, column2, column3, ...)
-- VALUES (value1, value2, value3, ...);


-- =====
-- Syntax 2
-- =====

-- If you insert values for ALL the the columns of the table, you can omit the column names.

-- However, the order of the values must be in the same order as the columns in the table:

-- INSERT INTO table_name
-- VALUES (value1, value2, value3, ...);


-- =====
-- INSERT INTO Example
-- =====

-- Here we insert values for ALL the columns of the table, so we omit the column names.

-- The following SQL inserts a new record in the "Customers" table:

--INSERT INTO Customers
--VALUES ('CARDN', 'Cardinal', 'Tom B. Erichsen', 'Flott Mann', 'Skagen 21', 'Stavanger', NULL, '4006', 'Norway', '(51)55-5555', NULL);

-- Notice that we did not insert any number into the CustomerNo field

-- The CustomerNo column is an auto-increment field and will be automatically generated when a new record is inserted.


-- =====
-- Insert Data Only in Specific Columns
-- =====

-- Here we insert values only in some specific columns of the table.

-- The following SQL inserts a new record - but only inserts data in the "CustomerName", "City", "Country" columns (CustomerID will be updated automatically):

--INSERT INTO Customers (CustomerID, CompanyName, City, Country)
--VALUES ('BLBRD', 'Bluebird', 'Trondheim', 'Norway');


-- =====
-- INSERT MULTIPLE ROWS
-- =====

-- To insert multiple rows of data, we must use the same INSERT INTO statement, but with multiple values:

INSERT INTO Customers (CustomerID, CompanyName, City, Country)
VALUES
('GRBRG','Greasy Burger','Sandnes','Norway'),
('FLFLW','Floral Flowers','Trømso','Norway'),
('TRLSV','Troll Souvenirs','Ålesund','Norway');

-- Note: make sure you separate each with a comma ( , )