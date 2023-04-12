with oi as (
    select * from {{ ref('base_order_items') }}
)

select
ORDER_ID
,PRODUCT_ID
,QUANTITY
,_FIVETRAN_DELETED
,_FIVETRAN_SYNCED
from oi