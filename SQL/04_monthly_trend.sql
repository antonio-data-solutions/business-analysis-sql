-- Monthly revenue trend
SELECT
    TO_CHAR(order_date, 'YYYY-MM') AS month,
    COUNT(*) AS orders,
    SUM(quantity) AS units,
    SUM(quantity * unit_price - discount) AS revenue
FROM sales_raw
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY month;