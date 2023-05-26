with dimpro as (
    select * from {{ ref('dim_products') }}
),

oi as (
    select * from {{ ref('facts_order_items') }}
)


select 
p.NAME
,oi.ORDER_ID
,oi.QUANTITY
,oi.id_fecha
,oi.id_time
,oi.timestamp_carga
from dimpro p 
left join oi 
on p.PRODUCT_ID=oi.PRODUCT_ID