-- Top 10 products by revenue
SELECT
    product_name,
    COUNT(*) AS orders,
    SUM(quantity) AS units,
    SUM(quantity * unit_price - discount) AS revenue
FROM sales_raw
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;