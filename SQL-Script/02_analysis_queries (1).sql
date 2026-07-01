-- ===================================================
-- SUPERSTORE SALES ANALYSIS - BASIC SQL QUERIES
-- Uses only: SELECT, WHERE, GROUP BY, ORDER BY, basic
-- aggregate functions (SUM, COUNT, AVG, MAX, MIN)
-- ===================================================

-- 1. View first 10 rows
SELECT * FROM Superstore LIMIT 10;

-- 2. Total sales, total orders, total customers
SELECT
    SUM(Sales) AS Total_Sales,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    COUNT(DISTINCT Customer_ID) AS Total_Customers
FROM Superstore;

-- 3. Total sales by year
SELECT Order_Year, SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Order_Year
ORDER BY Order_Year;

-- 4. Total sales by region
SELECT Region, SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 5. Total sales by state (Top 10)
SELECT State, SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;

-- 6. Total sales by city (Top 10)
SELECT City, SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;

-- 7. Total sales by category
SELECT Category, SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 8. Total sales by sub-category
SELECT Sub_Category, SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Sub_Category
ORDER BY Total_Sales DESC;

-- 9. Top 10 products by sales
SELECT Product_Name, SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- 10. Total sales by customer segment
SELECT Segment, SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- 11. Top 10 customers by total sales
SELECT Customer_Name, SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- 12. Number of orders by ship mode
SELECT Ship_Mode, COUNT(Order_ID) AS Number_of_Orders
FROM Superstore
GROUP BY Ship_Mode
ORDER BY Number_of_Orders DESC;

-- 13. Average sales per order
SELECT AVG(Sales) AS Average_Sales
FROM Superstore;

-- 14. Highest and lowest sale value
SELECT MAX(Sales) AS Highest_Sale, MIN(Sales) AS Lowest_Sale
FROM Superstore;

-- 15. Orders only from the West region
SELECT Order_ID, Customer_Name, Sales
FROM Superstore
WHERE Region = 'West'
ORDER BY Sales DESC
LIMIT 10;

-- 16. Orders with sales greater than 1000
SELECT Order_ID, Customer_Name, Product_Name, Sales
FROM Superstore
WHERE Sales > 1000
ORDER BY Sales DESC;

-- 17. Count of orders per year and region
SELECT Order_Year, Region, COUNT(Order_ID) AS Number_of_Orders
FROM Superstore
GROUP BY Order_Year, Region
ORDER BY Order_Year, Region;

-- 18. Total sales for the Technology category in the West region
SELECT SUM(Sales) AS Technology_Sales_West
FROM Superstore
WHERE Category = 'Technology' AND Region = 'West';
