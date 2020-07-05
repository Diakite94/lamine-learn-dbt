select *

from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF001"."CUSTOMER"

--select
   -- c_custkey,
  --  c_mktsegment,
--    {{renaming_segments(c_mktsegment)}} mkt_segment_adjusted
-- from {{ source('sample', 'customer')}}
--from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF001"."CUSTOMER"