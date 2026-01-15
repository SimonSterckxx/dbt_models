{%- set source_model = "stg_sat_sds_ref_dq_tests" -%}
{%- set src_pk = "snowflake_dq_source_HK" -%}
{%- set src_payload = ["test_name", "test_query"] -%}
{%- set src_hashdiff = "sat_sds_ref_dq_tests_HASHDIFF" -%}
{%- set src_ldts = "load_date" -%}
{%- set src_source = "record_source" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}