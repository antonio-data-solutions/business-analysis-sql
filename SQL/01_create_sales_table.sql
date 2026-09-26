CREATE TABLE sales_raw (
    order_id INTEGER,
    customer_name TEXT,
    email TEXT,
    order_date DATE,
    product_name TEXT,
    category TEXT,
    quantity INTEGER,
    unit_price NUMERIC(10,2),
    discount NUMERIC(10,2),
    city TEXT,
    state TEXT,
    payment_method TEXT,
    status TEXT
);