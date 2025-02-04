-- Query 1: Total Sales by Category
SELECT category, SUM(sales) AS total_sales
FROM sales_data
GROUP BY category
ORDER BY total_sales DESC;

-- Query 2: Monthly Sales Trend
SELECT strftime('%Y-%m', order_date) AS month, SUM(sales) AS total_sales
FROM sales_data
GROUP BY month
ORDER BY month;

-- Query 3: Top 5 Customers by Revenue
SELECT customer_id, SUM(sales) AS total_spent
FROM sales_data
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

-- Query 4: Average Order Value (AOV) Per Customer
SELECT customer_id, AVG(sales) AS average_order_value
FROM sales_data
GROUP BY customer_id
ORDER BY average_order_value DESC;

-- Query 5: Repeat Purchase Frequency
SELECT customer_id, COUNT(order_id) AS purchase_count
FROM sales_data
GROUP BY customer_id
ORDER BY purchase_count DESC;

-- Query 6: Highest Profit Margin Categories
SELECT category, SUM(sales - (quantity * price * 0.6)) AS profit_margin
FROM sales_data
GROUP BY category
ORDER BY profit_margin DESC;
