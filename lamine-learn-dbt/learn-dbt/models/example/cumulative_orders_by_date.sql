

select sub.o_orderdate,
        sum(sub.cumulative_orders) as cumulative_orders_by_date

FROM(
    select
        o_orderdate,
        o_totalprice,
    sum(o_totalprice) OVER (PARTITION BY o_orderdate
                           ORDER BY o_orderdate rows unbounded preceding) cumulative_orders
    from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS"

    ) sub
Group by 1
Order by 1