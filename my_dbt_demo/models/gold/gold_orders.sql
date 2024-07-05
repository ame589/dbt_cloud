WITH gold_orders AS (
    SELECT
        COUNT(order_id) AS order_count,
        1 AS id
    FROM {{ ref('silver_orders') }}
    )

SELECT *
FROM gold_orders