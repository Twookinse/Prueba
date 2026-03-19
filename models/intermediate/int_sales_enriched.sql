select 
    od.ORDER_ID, 
    od.PRODUCT_ID, 
    o.ORDER_DATE, 
    od.QUANTITY, 
    od.NET_SALES_AMOUNT 
from {{ ref('stg_order_details') }} od 
join {{ ref('stg_orders') }} o 
    on od.ORDER_ID = o.ORDER_ID 