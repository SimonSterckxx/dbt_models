{%- set source_model = "stg_sat_dql_dq_test_runs" -%}
{%- set src_pk = "DQ_LANDING_HK" -%}
{%- set src_payload = ["RUN_TYPE", "TRIGGERED_BY", "STARTED_AT",
                       "ENDED_AT", "STATUS", "FK_DQ_LOAD_ID"] -%}
{%- set src_hashdiff = "SAT_DQL_DQ_TEST_RUNS_HASHDIFF" -%}
{%- set src_ldts = "load_date" -%}
{%- set src_source = "record_source" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}