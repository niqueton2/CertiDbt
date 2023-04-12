with p as (
    select * from {{ source('postgres_public', 'products') }}
)

select
PRODUCT_ID
,PRICE
,NAME
,INVENTORY
,_FIVETRAN_DELETED
,_FIVETRAN_SYNCED 
from p