{% snapshot orders_snapshot %}
{{
    config(
      target_schema='zurich_at_snapshots',
      unique_key='order_id',
      strategy='timestamp',
      updated_at='order_date_time'
    )
}}
    select * from {{ source('orders', 'bronze_orders') }}
{% endsnapshot %}