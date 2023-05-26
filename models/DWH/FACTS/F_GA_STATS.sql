with a1 as (
    select 1 from {{ source('GA', 'HITS') }}
),

a2 as (
    select 1 from {{ source('GA', 'VISITS') }}
)