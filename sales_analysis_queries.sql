-- 1. Top 5 Products by Total Revenue
SELECT 
  Product,
  SUM(Revenue) AS Total_Revenue
FROM sales_data
GROUP BY Product
ORDER BY Total_Revenue DESC
LIMIT 5;

-- 2. Monthly Revenue Trend
SELECT 
  TO_CHAR(Order_Date, 'YYYY-MM')
  SUM(Revenue) AS Monthly_Revenue
FROM sales_data
GROUP BY Month
ORDER BY Month;

-- 3. Revenue by Category and Region
SELECT 
  Category,
  Region,
  SUM(Revenue) AS Total_Revenue
FROM sales_data
GROUP BY Category, Region
ORDER BY Total_Revenue DESC;

-- 4. Average Quantity per Customer
SELECT 
  Customer_ID,
  AVG(Quantity) AS Avg_Quantity
FROM sales_data
GROUP BY Customer_ID;

