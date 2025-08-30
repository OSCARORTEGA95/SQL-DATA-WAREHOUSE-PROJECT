/*
===============================================================================
Create Databse and Schemas
===============================================================================
Script Purpose:
   This script creates a new database named 'Data_Warehouse' after checking if it already exists.
   If the databse exists, it is dropped and recreated. Additionally, the script sets up three schemas
   within the database: 'bronze', 'silver', 'gold'.

WARNING:
   Running this script will drop the entire 'Data_Warehouse' database if it exists.
   All data in the databse will be permanetly deleted. Proceed with caution.
   and ensure you have proper backups befopre running this script.
*/

USE master;
GO

-- Drop and recreate the 'Data_Warehouse' database
IF EXIST (SELECT 1 FROM sys.databases WHERE name= 'Data_Warehouse')
BEGIN
    ALTER DATABASE Data_Warehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    CROP DATABASE Data_Warehouse;
END;
GO

-- Create the 'Data_Warehouse' database
CREATE DATABASE Data_Warehouse;
GO

USE Data_Warehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA Gold;
GO
