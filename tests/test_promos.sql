with promos as (
    select * from {{ source('postgres_public', 'promos') }}
),

aux as (
    select 
    case 
        when discount<0 then 1
        else null
    end as Pumba
    from promos
)

select Pumba from aux where Pumba is not null