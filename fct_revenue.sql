{{ config(materialized='table') }}

SELECT 
    city,
    SUM(amount) AS total_revenue
FROM {{ ref('int_orders_clean') }}
GROUP BY city