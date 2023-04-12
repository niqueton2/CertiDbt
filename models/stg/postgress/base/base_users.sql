with u as (
    select * from {{ source('postgres_public', 'users') }}
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
,_FIVETRAN_DELETED
,_FIVETRAN_SYNCED 
from u