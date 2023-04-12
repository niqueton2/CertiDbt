{% snapshot base_promos %}

{{
    config(
      unique_key='PROMO_ID',
      strategy='check',
      check_cols=['DISCOUNT', 'STATUS'],
    )
}}


with pm as (
    select * from {{ source('postgres_public', 'promos') }}
)

select
PROMO_ID
,DISCOUNT
,STATUS
,_FIVETRAN_DELETED
,_FIVETRAN_SYNCED 
from pm

{% endsnapshot %}