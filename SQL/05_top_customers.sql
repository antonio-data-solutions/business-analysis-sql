-- Top 10 customers by revenue
SELECT
    customer_name,
    COUNT(*) AS orders,
    SUM(quantity) AS units,
    SUM(quantity * unit_price - discount) AS revenue
FROM sales_raw
GROUP BY customer_name
ORDER BY revenue DESC
LIMIT 10;