with source as ( 
    select * from {{ source('northwind_raw', 'ORDER_DETAILS') }} 
) 
 
select 
    ORDER_ID, 
    PRODUCT_ID, 
    UNIT_PRICE, 
    QUANTITY, 
    DISCOUNT, 
    round((UNIT_PRICE * QUANTITY) * (1 - DISCOUNT), 2) as NET_SALES_AMOUNT 
from source