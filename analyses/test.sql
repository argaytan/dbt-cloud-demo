select * from raw.jaffle_shop.customers 

  select * from RAW.DBT_AGAYTAN_dbt_test__audit.unique_customers_first_name

  create or replace transient table RAW.DBT_AGAYTAN_dbt_test__audit.unique_customers_first_name_second_name
         as
        (
select
    first_name || last_name as unique_field,
    count(*) as n_records

from RAW.DBT_AGAYTAN.customers
where first_name || last_name is not null
group by first_name || last_name
having count(*) > 1



        );


          select * from RAW.DBT_AGAYTAN_dbt_test__audit.unique_customers_first_name