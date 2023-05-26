with u as (
    select * from {{ ref('base_users') }}
)

select
USER_ID
,UPDATED_AT
,ADDRESS_ID
,LAST_NAME
,CREATED_AT
,PHONE_NUMBER
,TOTAL_ORDERS
,FIRST_NAME
,EMAIL
, {{ fecha_id('_FIVETRAN_SYNCED') }} as id_fecha
, {{ time_id('_FIVETRAN_SYNCED') }} as id_time
from u
where _FIVETRAN_DELETED is null