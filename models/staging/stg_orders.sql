with source as ( 
    select * from {{ source('northwind_raw', 'ORDERS') }} 
) 
 
select 
    ORDER_ID, 
    CUSTOMER_ID, 
    EMPLOYEE_ID, 
    ORDER_DATE, 
    SHIP_COUNTRY 
from source