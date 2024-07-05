select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select order_date_time
from `catalog-zurich-01`.`zurich_at_bronze`.`bronze_orders`
where order_date_time is null



      
    ) dbt_internal_test