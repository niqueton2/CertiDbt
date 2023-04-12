with addresses as (
    select * from {{ ref('stg_addresses') }}
)

select
ADDRESS_ID
,ZIPCODE
,COUNTRY
,ADDRESS
,STATE
,id_fecha
,id_time
from addresses
