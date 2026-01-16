SELECT
    c.C_CUSTKEY,
    c.C_NAME,
    c.C_ADDRESS,
    c.C_NATIONKEY,
    c.C_PHONE,
    c.C_ACCTBAL,
    c.C_MKTSEGMENT,
    c.C_COMMENT
FROM {{ source('tpch_sample', 'CUSTOMER') }} AS c