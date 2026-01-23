
{{ config(materialized='table') }}

WITH  source_data AS (

SELECT *
FROM {{ source('raw_layer', 'sales_data') }}

)

SELECT 
"Row ID" AS Row_id,
  "Order ID" Order_id,
  "Order Date" AS order_date,
  "Ship Date" AS Ship_date,
  "Ship Mode" AS Ship_mode,
  "Customer ID" AS customer_id,
  "Customer Name" AS customer_name,
  "Segment"AS Segment,
  "Country" AS country,
  "City" AS city,
  "State" AS State,
  "Postal Code" AS Postal_code,
  "Region" AS Region,
  "Product ID" AS Product_id,
  "Category" AS Category,
  "Sub-Category" AS Sub_Category,
  "Product Name" AS Product_Name,
  "Sales" AS Sales



FROM source_data