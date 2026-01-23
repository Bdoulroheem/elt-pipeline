
{{ config(materialized='table') }}

WITH  source_data AS (

SELECT *
FROM sales_data

)

SELECT DISTINCT
    "Row ID" AS Row_ID,
    "Product ID" AS Product_id,
    "Product Name" AS Product_Name,
    "Segment" AS Segment,
    "Category" AS Category,
    "Sub-Category" AS Sub_Category




FROM source_data