with p as (
    select * from {{ ref('base_products') }}
)

select
PRODUCT_ID
,PRICE
,NAME
,INVENTORY
, {{ fecha_id('_FIVETRAN_SYNCED') }} as id_fecha
, {{ time_id('_FIVETRAN_SYNCED') }} as id_time
from p
where _FIVETRAN_DELETED is null