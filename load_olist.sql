CREATE OR REPLACE TABLE order_items AS SELECT * FROM read_csv_auto('dataset/olist_order_items_dataset.csv');
CREATE OR REPLACE TABLE orders AS SELECT * FROM read_csv_auto('dataset/olist_orders_dataset.csv');
CREATE OR REPLACE TABLE products AS SELECT * FROM read_csv_auto('dataset/olist_products_dataset.csv');
CREATE OR REPLACE TABLE customers AS SELECT * FROM read_csv_auto('dataset/olist_customers_dataset.csv');