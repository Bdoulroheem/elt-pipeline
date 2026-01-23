
{{ config(materialized='table') }}

WITH  source_data AS (

SELECT *
FROM {{ source('raw_layer', 'sales_data') }}

)
SELECT DISTINCT ON ("Customer ID")
    "Row ID" AS row_id,
    "Customer ID" AS customer_id,
    "Customer Name" AS customer_name,
    "City" AS city,
    "State" AS state,
    "Region" AS region,
    "Country" AS country,
    "Postal Code" AS postal_code
    
FROM source_data
ORDER BY "Customer ID", "Row ID" DESC 