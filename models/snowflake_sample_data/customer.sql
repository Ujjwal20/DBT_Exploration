WITH CTE_NATION AS (
SELECT N_NationKey as C_NationKey,* FROM {{source('snowflake_sample_data','nation')}}
)


select * from {{source('snowflake_sample_data','customer')}}
left join CTE_Nation using (C_NATIONKEY)