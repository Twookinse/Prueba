select 
    p.PRODUCT_ID, 
    p.PRODUCT_NAME, 
    p.CATEGORY_ID, 
    c.CATEGORY_NAME, 
    p.UNIT_PRICE, 
    p.UNITS_IN_STOCK, 
    p.IS_DISCONTINUED 
from {{ ref('stg_products') }} p 
left join {{ ref('dim_categories') }} c 
    on p.CATEGORY_ID = c.CATEGORY_ID