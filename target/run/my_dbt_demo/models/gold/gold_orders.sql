
  
    
        create or replace table `catalog-zurich-01`.`zurich_at_gold`.`gold_orders`
      
      using delta
      
      
      
      
      
      
      
      as
      WITH gold_orders AS (
    SELECT
        COUNT(order_id) AS order_count,
        1 AS id
    FROM `catalog-zurich-01`.`zurich_at_silver`.`silver_orders`
    )

SELECT *
FROM gold_orders
  