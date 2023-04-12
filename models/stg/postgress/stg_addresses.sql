with addresses as (
    select * from {{ ref('base_addresses') }}
)

select
ADDRESS_ID
,ZIPCODE
,COUNTRY
,ADDRESS
,STATE
,_FIVETRAN_DELETED
,_FIVETRAN_SYNCED 
from addresses
