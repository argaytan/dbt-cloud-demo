with final as (
    select *
    from {{ ref('great_customers') }}
)
select * from final 