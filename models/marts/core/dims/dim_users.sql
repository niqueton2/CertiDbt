with u as (
    select * from {{ ref('stg_users') }}
),

a as (
    select * from {{ ref('stg_addresses') }}
)

select
USER_ID
,u.UPDATED_AT
,a.ADDRESS as Main_Address
,u.LAST_NAME
,u.CREATED_AT
,u.PHONE_NUMBER
,u.TOTAL_ORDERS
,u.FIRST_NAME
,u.EMAIL
,u.id_fecha
,u.id_time
from u
left join a 
on u.ADDRESS_ID=a.ADDRESS_ID
