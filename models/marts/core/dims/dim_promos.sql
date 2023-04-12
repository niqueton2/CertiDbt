with pm as (
    select * from {{ ref('stg_promos') }}
)

select
PROMO_ID
,DISCOUNT
,STATUS
,DBT_VALID_FROM
,DBT_VALID_TO
,id_fecha
,id_time
from pm
