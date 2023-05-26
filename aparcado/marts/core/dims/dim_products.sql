with p as (
    select * from {{ ref('stg_products') }}
)

select
PRODUCT_ID
,PRICE
,NAME
,id_fecha
,id_time
from p
