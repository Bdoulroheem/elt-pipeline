
-- Use the `ref` function to select from other models

select *
from {{ ref('test') }}
--where row id = 1
