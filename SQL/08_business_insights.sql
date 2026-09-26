-- Business insights

-- 1) Category with highest revenue
SELECT category, SUM(quantity * unit_price - discount) AS revenue
FROM sales_raw
GROUP BY category
ORDER BY revenue DESC
LIMIT 1;

-- 2) Month with highest revenue
SELECT TO_CHAR(order_date, 'YYYY-MM') AS month, SUM(quantity * unit_price - discount) AS revenue
FROM sales_raw
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY revenue DESC
LIMIT 1;

-- 3) Top 3 customers
SELECT customer_name, SUM(quantity * unit_price - discount) AS revenue
FROM sales_raw
GROUP BY customer_name
ORDER BY revenue DESC
LIMIT 3;

-- 4) Top 3 products
SELECT product_name, SUM(quantity * unit_price - discount) AS revenue
FROM sales_raw
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 3;