-- Warehouse
CREATE OR REPLACE WAREHOUSE compute_wh
WITH WAREHOUSE_SIZE = 'XSMALL'
AUTO_SUSPEND = 60
AUTO_RESUME = TRUE;

-- Database
CREATE OR REPLACE DATABASE sales_db;

-- Schemas
CREATE OR REPLACE SCHEMA sales_db.raw;
CREATE OR REPLACE SCHEMA sales_db.analytics;

-- Table
CREATE OR REPLACE TABLE sales_db.raw.orders (
    order_id INT,
    user_id INT,
    amount FLOAT,
    city STRING,
    updated_at TIMESTAMP
);

-- Insert Data
INSERT INTO sales_db.raw.orders VALUES
(1, 101, 200, 'Mumbai', CURRENT_TIMESTAMP),
(2, 102, 500, 'Delhi', CURRENT_TIMESTAMP),
(3, 101, -100, 'Mumbai', CURRENT_TIMESTAMP),
(4, 103, 300, 'Bangalore', CURRENT_TIMESTAMP);
(5, 104, 700, 'Pune', CURRENT_TIMESTAMP);