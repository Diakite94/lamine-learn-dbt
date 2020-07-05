with sample_customer as (
    SELECT *
    FROM {{ source('sample', 'customer') }}
 ),
    sample_orders as (
        SELECT *
        FROM {{ source('sample', 'orders') }}
 )

SELECT
      c.c_custkey,
      c.c_name,
      c.c_nationkey as nation,
      sum(o.o_totalprice) as total_order_price
from sample_customer c
-- "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER" c
LEFT JOIN sample_orders o
ON c.C_CUSTKEY = o.O_CUSTKEY


{{group_by(3)}}
-- Group by
  --    c.c_custkey,
  --    c.c_name,
   --   c.c_nationkey