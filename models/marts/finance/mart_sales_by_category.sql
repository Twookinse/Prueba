select
    d.CATEGORY_NAME,
    count(distinct f.ORDER_ID) as total_orders,
    sum(f.QUANTITY) as total_units_sold,
    sum(f.NET_SALES_AMOUNT) as total_revenue,
    round(div0(sum(f.NET_SALES_AMOUNT), count(distinct f.ORDER_ID)), 2) as avg_order_value
from {{ ref('fct_sales') }} f
join {{ ref('dim_products') }} d
    on f.PRODUCT_ID = d.PRODUCT_ID
group by 1
order by total_revenue desc
