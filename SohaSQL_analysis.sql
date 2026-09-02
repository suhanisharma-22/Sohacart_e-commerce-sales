CREATE DATABASE Sohacart;
USE Sohacart;
CREATE TABLE IF NOT EXISTS sales(
Order_ID VARCHAR (20),
Order_date DATE,
Customer_ID VARCHAR(20),
Customer_type VARCHAR(20),
Region VARCHAR (20),
Category VARCHAR (50),
Product VARCHAR (100),
Quantity INT,
Unit_price DECIMAL,
Discount DECIMAL,
Sales DECIMAL,
Profit DECIMAL,
Payment_method VARCHAR (50),
Order_status VARCHAR (50)
);
DESCRIBE sales;

SELECT COUNT(*) AS total_rows FROM sales;

SELECT * FROM sales LIMIT 10;

DESCRIBE sales;

SELECT SUM(Sales) AS total_sales
FROM sales;

SELECT SUM(Profit) AS total_profit
FROM sales;

SELECT SUM(Quantity) AS total_units_sold
FROM sales;

SELECT AVG(Sales) AS average_order_value
FROM sales;

SELECT COUNT(Order_ID) AS total_orders
FROM sales;

SELECT Category, SUM(Sales) AS total_sales
FROM sales
GROUP BY Category
ORDER BY total_sales DESC;
SELECT Category, SUM(Profit) AS total_profit
FROM sales
GROUP BY Category
ORDER BY total_profit DESC;
SELECT Region, SUM(Sales) AS total_sales
FROM sales
GROUP BY Region
ORDER BY total_sales DESC;
SELECT Region, SUM(Profit) AS total_profit
FROM sales
GROUP BY Region
ORDER BY total_profit DESC;
SELECT Customer_Type, SUM(Sales) AS total_sales
FROM sales
GROUP BY Customer_Type
ORDER BY total_sales DESC;
SELECT Order_Status, COUNT(*) AS total_orders
FROM sales
GROUP BY Order_Status
ORDER BY total_orders DESC;
SELECT Payment_Method, COUNT(*) AS total_orders
FROM sales
GROUP BY Payment_Method
ORDER BY total_orders DESC;
SELECT Category, AVG(Discount) AS average_discount
FROM sales
GROUP BY Category
ORDER BY average_discount DESC;
SELECT Product, SUM(Sales) AS total_sales
FROM sales
GROUP BY Product
ORDER BY total_sales DESC
LIMIT 10;
SELECT 
    DATE_FORMAT(Order_Date, '%Y-%m') AS month,
    SUM(Sales) AS total_sales
FROM sales
GROUP BY month
ORDER BY month;
SELECT COUNT(*) AS total_orders
FROM sales;
SELECT *
FROM sales
ORDER BY Sales DESC
LIMIT 1;
SELECT *
FROM sales
ORDER BY Sales ASC
LIMIT 1;
SELECT SUM(Sales) AS electronics_sales
FROM sales
WHERE Category = 'Electronics';
SELECT SUM(Profit) AS electronics_profit
FROM sales
WHERE Category = 'Electronics';
SELECT Payment_Method, SUM(Sales) AS total_sales
FROM sales
GROUP BY Payment_Method;
SELECT Payment_Method, SUM(Profit) AS total_profit
FROM sales
GROUP BY Payment_Method;
SELECT Customer_Type, SUM(Sales) AS total_sales
FROM sales
GROUP BY Customer_Type;
SELECT Region, COUNT(*) AS total_orders
FROM sales
GROUP BY Region;
SELECT Category, COUNT(*) AS total_orders
FROM sales
GROUP BY Category;
SELECT *
FROM sales
WHERE Region = 'North';
SELECT *
FROM sales
WHERE Category = 'Electronics';
SELECT *
FROM sales
WHERE Sales > 50000;
SELECT Product, SUM(Quantity) AS total_quantity
FROM sales
GROUP BY Product
ORDER BY total_quantity DESC;
SELECT Category, SUM(Quantity) AS total_quantity
FROM sales
GROUP BY Category
ORDER BY total_quantity DESC;
SELECT COUNT(*) AS delivered_orders
FROM sales
WHERE Order_Status = 'Delivered';
SELECT COUNT(*) AS returned_orders
FROM sales
WHERE Order_Status = 'Returned';
SELECT COUNT(*) AS cancelled_orders
FROM sales
WHERE Order_Status = 'Cancelled';
SELECT Product, Unit_Price
FROM sales
ORDER BY Unit_Price DESC
LIMIT 1;
SELECT Order_ID, Product, Quantity
FROM sales
ORDER BY Quantity DESC
LIMIT 1;