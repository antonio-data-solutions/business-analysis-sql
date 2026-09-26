-- Category performance
SELECT
    category,
    COUNT(*) AS orders,
    SUM(quantity) AS units,
    SUM(quantity * unit_price - discount) AS revenue
FROM sales_raw
GROUP BY category
ORDER BY revenue DESC;