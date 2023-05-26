with oi as (
    select * from {{ ref('base_order_items') }}
)

select
ORDER_ID
,PRODUCT_ID
,QUANTITY
, {{ fecha_id('_FIVETRAN_SYNCED') }} as id_fecha
, {{ time_id('_FIVETRAN_SYNCED') }} as id_time
,_FIVETRAN_SYNCED as timestamp_carga
from oi
where _FIVETRAN_DELETED is null