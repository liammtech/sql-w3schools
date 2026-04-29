IF DB_NAME() <> 'SQL_W3Schools'
BEGIN
    USE SQL_W3Schools;
END
GO

-- =======================
-- Stored Procedures
-- =======================

-- A stored procedure is a chunk of precompiled SQL code that can be saved and reused.

-- If you have a SQL query that you write over and over again, save it as a stored procedure, and then just call it to execute it.

-- A stored procedure can also have parameters, so it can act based on the parameter value(s) that are passed


-- =====
-- Key Benefits of Stored Procedures
-- =====

-- Stored procedures are widely used in database management, and have the following benefits:

-- • Code Reusability - the same procedure can be called from various applications
-- • Improved Performance - stored procedures are precompiled and runs faster
-- • Database Security - you can set users permission to run a specific procedure (limits direct access to tables)
-- • Easy Maintenance - when updating a procedure, it's updated for whenever it is used


-- =====
-- Syntax (SQL Server)
-- =====

-- To create a stored procedure, use the CREATE PROCEDURE statement:

-- CREATE PROCEDURE procedure_name
--  @param1 datatype,
--  @param2 datatype,
-- AS
-- BEGIN
--  -- SQL statements to be executed
--  SELECT column1, column2
--  FROM table_name
--  WHERE columnN = @paramN
-- END;


-- =====
-- Execute a Stored Procedure
-- =====

-- EXEC procedure_name @param1 = 'value1', @param2 = 'value2';


-- =====
-- Drop a Stored Procedure
-- =====

-- DROP PROCEDURE procedure_name;

-- Tip: To ensure that DROP PROCEDURE does not return an error if the procedure is missing, add the IF EXISTS clause:

-- DROP PROCEDURE IF EXISTS procedure_name;


-- =====
-- Example
-- =====

DROP PROCEDURE IF EXISTS GetCustomersByCity;
GO

CREATE PROCEDURE GetCustomersByCity
    @City nvarchar(50)
AS
BEGIN
    SELECT * FROM Customers
    WHERE City = @City;
END;
GO

-- Here we execute the stored procedure by passing a city ('London') as a parameter, and the stored procedure returns the relevant details from the Customers table:

EXEC GetCustomersByCity @City = 'London';
GO

-- =====
-- Stored Procedure with Multiple Parameters
-- =====

-- Adding multiple parameters is easy. Just list each parameter and the data type separated by a comma as shown below.

DROP PROCEDURE IF EXISTS GetProductsByPriceAndStock;
GO

CREATE PROCEDURE GetProductsByPriceAndStock
    @Price nvarchar(10),
    @Stock nvarchar(10)
AS
BEGIN
    SELECT * FROM Products
    WHERE UnitPrice = @Price AND UnitsInStock = @Stock
END;
GO

EXEC GetProductsByPriceAndStock @Price = 97.00, @Stock = 29;
GO