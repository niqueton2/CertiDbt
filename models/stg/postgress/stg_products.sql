with p as (
    select * from {{ ref('base_products') }}
)

select
PRODUCT_ID
,PRICE
,NAME
,INVENTORY
,_FIVETRAN_DELETED
,_FIVETRAN_SYNCED 
from p