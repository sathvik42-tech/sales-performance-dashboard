-- Total Sales
SELECT SUM(sales) AS total_sales
FROM sales;

-- Total Profit
SELECT SUM(profit) AS total_profit
FROM sales;

-- Sales by Category
SELECT category,
       SUM(sales) AS total_sales
FROM sales
GROUP BY category
ORDER BY total_sales DESC;

-- Profit by Region
SELECT region,
       SUM(profit) AS total_profit
FROM sales
GROUP BY region
ORDER BY total_profit DESC;

-- Top 10 States by Sales
SELECT state,
       SUM(sales) AS total_sales
FROM sales
GROUP BY state
ORDER BY total_sales DESC
LIMIT 10;