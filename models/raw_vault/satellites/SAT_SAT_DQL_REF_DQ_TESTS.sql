{%- set source_model = "stg_ref_dq_tests" -%}
{%- set src_pk = "ref_dq_tests_HK" -%}
{%- set src_payload = ["TEST_NAME", "TEST_QUERY"] -%}
{%- set src_hashdiff = "SAT_DQL_REF_DQ_TESTS_HASHDIFF" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}