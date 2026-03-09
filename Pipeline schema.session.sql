
{{ config(materialized='table') }}

WITH  source_data AS (

SELECT *
FROM {{ source('raw', 'raw') }}

)

SELECT 
*
    
FROM source_data