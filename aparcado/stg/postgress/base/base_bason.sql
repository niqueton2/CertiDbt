{{
    config(
        materialized='ephemeral'
    )
}}

with oi as (
    select * from {{ ref('base_order_items') }}
)

select sum(quantity) as Cantidad_total,PRODUCT_ID
from oi 
group by PRODUCT_ID