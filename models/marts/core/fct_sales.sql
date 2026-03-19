{{ config(materialized='incremental') }} 
 
select 
    ORDER_ID, 
    PRODUCT_ID, 
    ORDER_DATE, 
    QUANTITY, 
    NET_SALES_AMOUNT 
from {{ ref('int_sales_enriched') }} 
 
{% if is_incremental() %} 
where ORDER_DATE > (select max(ORDER_DATE) from {{ this }}) 
{% endif %}