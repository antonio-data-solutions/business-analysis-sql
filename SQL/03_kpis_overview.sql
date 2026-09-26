-- General KPIs
SELECT
    COUNT(*) AS total_orders,
    SUM(quantity) AS total_units,
    SUM(quantity * unit_price - discount) AS total_revenue,
    AVG(quantity * unit_price - discount) AS avg_order_value,
    MIN(order_date) AS first_order,
    MAX(order_date) AS last_order
FROM sales_raw;