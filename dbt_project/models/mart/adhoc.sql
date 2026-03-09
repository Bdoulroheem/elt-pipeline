{{ config(materialized='table') }}

WITH sales AS (
    
    SELECT * 
    FROM {{ ref('stg_sales') }}
)

SELECT
{# count(order_id) #}
    customer_name,
    round(SUM(sales)) as total_revenue,
    COUNT(order_id) as total_orders
FROM sales
GROUP BY 1
ORDER BY total_revenue DESC
