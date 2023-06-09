with e as (
    select * from {{ source('heroku_postgres_events', 'events') }}
)

select 
EVENT_ID
,PAGE_URL
,EVENT_TYPE
,USER_ID
,PRODUCT_ID
,SESSION_ID
,CREATED_AT
,ORDER_ID
,_FIVETRAN_DELETED
,_FIVETRAN_SYNCED
from e