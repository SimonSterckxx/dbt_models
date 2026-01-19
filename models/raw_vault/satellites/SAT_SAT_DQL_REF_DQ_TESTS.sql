{%- set source_model = "stg_sat_dql_ref_dq_tests" -%}
{%- set src_pk = "DQ_LANDING_HK" -%}
{%- set src_payload = ["TEST_NAME", "TEST_QUERY"] -%}
{%- set src_hashdiff = "SAT_DQL_REF_DQ_TESTS_HASHDIFF" -%}
{%- set src_ldts = "load_date" -%}
{%- set src_source = "record_source" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}