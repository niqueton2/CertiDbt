with budget as (
    select * from {{ ref('base_budget') }}
)

select 
_ROW
,QUANTITY
,MONTH
,PRODUCT_ID
,_FIVETRAN_SYNCED
from budget