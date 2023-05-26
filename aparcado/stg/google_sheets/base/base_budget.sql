with budget as (
    select * from {{ source('google_sheets', 'budget') }}
)

select 
_ROW
,QUANTITY
,MONTH
,PRODUCT_ID
,_FIVETRAN_SYNCED
from budget