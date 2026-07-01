-- ===================================================
-- SUPERSTORE SALES DATA - TABLE STRUCTURE
-- Fresher-level project: one simple table, easy to understand
-- ===================================================

DROP TABLE IF EXISTS Superstore;

CREATE TABLE Superstore (
    Row_ID         INTEGER,
    Order_ID       VARCHAR(20),
    Order_Date     DATE,
    Order_Year     INTEGER,
    Ship_Date      DATE,
    Ship_Mode      VARCHAR(30),
    Customer_ID    VARCHAR(20),
    Customer_Name  VARCHAR(100),
    Segment        VARCHAR(30),
    Country        VARCHAR(50),
    City           VARCHAR(100),
    State          VARCHAR(50),
    Postal_Code    INTEGER,
    Region         VARCHAR(20),
    Product_ID     VARCHAR(20),
    Category       VARCHAR(50),
    Sub_Category   VARCHAR(50),
    Product_Name   VARCHAR(255),
    Sales          DECIMAL(10,2)
);

-- Load the data using your SQL tool's import feature,
-- pointing it to data/Superstore.csv
-- (In SQLite command line: .import data/Superstore.csv Superstore --csv --skip 1)
