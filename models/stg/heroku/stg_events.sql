with e as (
    select * from {{ ref('base_events') }}
)

select 
EVENT_ID
,PAGE_URL
,EVENT_TYPE
,USER_ID
,PRODUCT_ID
,SESSION_ID
, {{ fecha_id('CREATED_AT') }} as id_fecha_PRODUCED
, {{ time_id('CREATED_AT') }} as id_time_PRODUCED
,CREATED_AT AS PRODUCED_AT
,ORDER_ID
,_FIVETRAN_DELETED
, {{ fecha_id('_FIVETRAN_SYNCED') }} as id_fecha
, {{ time_id('_FIVETRAN_SYNCED') }} as id_time
from e
where _FIVETRAN_DELETED is null