# Business Analysis with SQL

This project performs end-to-end business analysis on a retail sales dataset using PostgreSQL. It covers data ingestion, KPI calculation, trend analysis, and actionable insights.

## Project Status

Completed as part of SQL Data Analytics Portfolio.

## Dataset

- Source: `sales_raw.csv`
- Key fields: `order_id`, `customer_name`, `email`, `order_date`, `product_name`, `category`, `quantity`, `unit_price`, `discount`, `city`, `state`, `payment_method`, `status`
- Period: 2026-08-01 to 2027-02-17
- Size: 201 orders, 425 units

## How to Use

1. Create database:
   ```sql
   CREATE DATABASE business_analysis;
   ```
2. Create table (see `SQL/01_create_sales_table.sql`).
3. Import CSV:
   - Preferred: use pgAdmin **Import/Export Data** on `sales_raw` (CSV, header = true, delimiter = `,`).
   - Alternatively: adjust path in `SQL/02_import_sales_csv.sql` and run.
4. Run SQL scripts in `SQL/` in numerical order (`03` to `08`) to reproduce KPIs, trends, and insights.

## SQL Scripts

- `01_create_sales_table.sql` — creates `sales_raw`.
- `02_import_sales_csv.sql` — imports CSV (path must be updated).

- `03_kpis_overview.sql` — overall KPIs.
- `04_monthly_trend.sql` — monthly revenue trend.
- `05_top_customers.sql` — top 10 customers by revenue.
- `06_top_products.sql` — top 10 products by revenue.
- `07_category_performance.sql` — revenue by category.
- `08_business_insights.sql` — key business insights (top category, top month, top 3 customers, top 3 products).

## Key Results

### KPIs

- Total Orders: **201**
- Total Units: **425**
- Total Revenue: **37,015.80**
- Avg Order Value: **~100.85**
- First Order: **2026-08-01**
- Last Order: **2027-02-17**

### Monthly Trend (sample)

- 2026-08: 31 orders, 70 units, **5,621.00**
- 2026-09: 30 orders, 61 units, **5,558.90**
- …
- 2027-02: 17 orders, 33 units, **3,361.70**

### Top 10 Customers (by revenue)

1. Diego Alves — 1 order, 1 unit, **299.90**
2. Gabriela Nunes — 1 order, 3 units, **269.70**
3. Karina Dias — 1 order, 2 units, **259.80**
4. Yasmin Duarte — 1 order, 1 unit, **139.90**
5. Ubirajara Duarte — 1 order, 1 unit, **139.90**
*(6–10 omitted for brevity; see `05_top_customers.sql`)*

### Top 10 Products (by revenue)

1. webcam HD — 10 orders, 11 units, **1,428.90**
2. monitor light — 9 orders, 9 units, **1,259.10**
…
9. cable management — 9 orders, 45 units, **670.50**
10. USB fan — 9 orders, 18 units, **448.20**

### Category Performance

1. Electronics — **9,923.31**
2. Office Supplies — **7,269.02**
3. Sports — **6,330.01**
*(full list in `07_category_performance.sql`)*

### Business Insights

- Category with highest revenue: **Electronics** — **9,923.31**
- Month with highest revenue: **2026-08** — **4,455.33**
- Top 3 customers:
  - Diego Alves — **299.90**
  - Vanessa Azevedo — **279.93**
  - Heloísa Azevedo — **279.93**
- Top 3 products:
  - Smartwatch — **2,799.30**
  - Office Chair — **2,749.50**
  - Desk Lamp — **1,518.10**

## Notes

- `discount` is stored as 0–100; revenue calculations use `discount / 100.0`.
- All revenue formulas handle NULLs safely using `COALESCE` e `GREATEST`.

## Author

Antonio Souza

## Copyright

© 2026 Antonio Souza. This project is provided for portfolio and educational purposes.