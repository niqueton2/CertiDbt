with addresses as (
    select * from {{ ref('base_addresses') }}
)

select
ADDRESS_ID
,ZIPCODE
,COUNTRY
,ADDRESS
,STATE
, {{ fecha_id('_FIVETRAN_SYNCED') }} as id_fecha
, {{ time_id('_FIVETRAN_SYNCED') }} as id_time
from addresses
where _FIVETRAN_DELETED is null
