USE retail_db;
SELECT *
FROM `clean retail data`;

#Performing EDA on Retail Dataset
#Business Queries
#Total Sales Revenue
SELECT SUM(Quantity * UnitPrice) AS Total_Revenue
FROM `clean retail data`;

#Showing the total revenue to be 2524131.6699

#Top 10 Products by Sales
SELECT Description, 
		SUM(Quantity * UnitPrice) AS Revenue
FROM `clean retail data`
GROUP BY Description
ORDER BY Revenue DESC
LIMIT 10;

#Monthly Sales Trend
SELECT DATE_FORMAT(InvoiceDate, '%Y-%m') AS Month,
		SUM(Quantity * UnitPrice) AS Revenue
FROM `clean retail data`
GROUP BY Month
ORDER BY Month;

#Sales by Country
SELECT Country,
		SUM(Quantity * UnitPrice) AS Revenue
FROM `clean retail data`
GROUP BY Country
ORDER BY Revenue DESC;

#Average Order Value
SELECT AVG(OrderValue) AS Avg_Order_Value
FROM(
	SELECT InvoiceNo, SUM(Quantity * UnitPrice) AS OrderValue
    FROM `clean retail data`
    GROUP BY InvoiceNo
) AS t;