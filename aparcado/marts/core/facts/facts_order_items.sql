with oi as (
    select * from {{ ref('stg_order_items') }}
),

orders as (
    select * from {{ ref('facts_order_tracking') }}
)

select 
 oi.ORDER_ID
,oi.PRODUCT_ID
,oi.QUANTITY
,oi.id_fecha
,oi.id_time
,o.ADDRESS_ID
,timestamp_carga

from oi 
left join orders o 
on oi.ORDER_ID=o.ORDER_ID