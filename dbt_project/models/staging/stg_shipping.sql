
{{ config(materialized='table') }}

WITH  source_data AS (

SELECT *
FROM {{ source('raw_layer', 'sales_data') }}

)

SELECT DISTINCT
    "Row ID" AS Row_ID,
    "Order ID" AS Order_ID,
    "Order Date" AS Order_Date,
    "Ship Date" AS Ship_Date,
    "Ship Mode" AS Ship_Mode,
    "Product ID" AS Product_ID,
    "City" AS City,
    "Country" AS Country
FROM source_data