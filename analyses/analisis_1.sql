with ave as (
    select * from {{ ref('certi') }}
)
select * from certi 