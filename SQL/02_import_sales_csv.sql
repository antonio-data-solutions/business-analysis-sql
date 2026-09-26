COPY sales_raw
FROM 'D:\Database Freelancer\Potifolio\sql-portifólio\project-03-business-analysis/sales_raw.csv'
WITH (FORMAT CSV, HEADER true, DELIMITER ',');