with ad as (
    select * from {{ source('postgres_public', 'addresses') }}
)

select
ADDRESS_ID
,ZIPCODE
,COUNTRY
,ADDRESS
,STATE
,_FIVETRAN_DELETED
,_FIVETRAN_SYNCED 
from ad