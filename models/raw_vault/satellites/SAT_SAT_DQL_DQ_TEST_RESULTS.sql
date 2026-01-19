{%- set source_model = "stg_dqtestresults" -%}
{%- set src_pk = "DQTESTRESULTS_HK" -%}
{%- set src_payload = ["FK_TEST_RUNS_ID", "FK_OBJ_NAME", "FK_TEST_CODE",
                       "OCCURRENCES", "RESULT", "USED_LOAD_CYCLE_ID",
                       "RECORD_SOURCE"] -%}
{%- set src_hashdiff = "SAT_DQL_DQ_TEST_RESULTS_HASHDIFF" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}