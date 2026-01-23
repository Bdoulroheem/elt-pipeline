
{{ config(materialized='table') }}

WITH  source_data AS (

SELECT *
FROM sales_data

)

SELECT *


FROM source_data