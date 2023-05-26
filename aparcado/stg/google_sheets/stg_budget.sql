with budget as (
    select * from {{ ref('base_budget') }}
)

select 
_ROW
,QUANTITY
,MONTH
,PRODUCT_ID
, {{ fecha_id('_FIVETRAN_SYNCED') }} as id_fecha
, {{ time_id('_FIVETRAN_SYNCED') }} as id_time
from budget