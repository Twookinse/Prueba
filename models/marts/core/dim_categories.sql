select 
    CATEGORY_ID, 
    CATEGORY_NAME 
from {{ source('northwind_raw', 'CATEGORIES') }} 