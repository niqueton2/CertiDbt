with pm as (
    select * from {{ ref('base_promos') }}
)

select
PROMO_ID
,DISCOUNT
,STATUS
,DBT_VALID_FROM
,DBT_VALID_TO
, {{ fecha_id('_FIVETRAN_SYNCED') }} as id_fecha
, {{ time_id('_FIVETRAN_SYNCED') }} as id_time
from pm
where _FIVETRAN_DELETED is null