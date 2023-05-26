with p as (
    select * from {{ source('postgres_public', 'products') }}
)

select
*
from p