SELECT SUM(Price * Quantity) AS Total_Revenue
FROM orders;

SELECT COUNT(*) AS Total_Orders
FROM orders;

SELECT CustomerName,
       SUM(Price * Quantity) AS Total_Spent
FROM orders
GROUP BY CustomerName
ORDER BY Total_Spent DESC;

SELECT Category,
       SUM(Price * Quantity) AS Revenue
FROM orders
GROUP BY Category
ORDER BY Revenue DESC;

SELECT MONTH(OrderDate) AS Month_No,
       SUM(Price * Quantity) AS Revenue
FROM orders
GROUP BY MONTH(OrderDate);