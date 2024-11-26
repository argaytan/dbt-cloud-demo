{{
  config(
    materialized='view'
  )
}}


with customers as (

   select 
        customer_id,
        first_name,
        last_name
    from {{ ref('stg_common_customers') }}
    where first_name in ('Anna', 'Martin')
) 
select * from customers