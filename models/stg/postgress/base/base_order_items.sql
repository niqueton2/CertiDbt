with oi as (
    select * from {{ source('postgres_public', 'order_items') }}
)

select
ORDER_ID
,PRODUCT_ID
,QUANTITY
,_FIVETRAN_DELETED
,_FIVETRAN_SYNCED
from oi