{%- set source_model = "stg_sat_sds_dq_test_results" -%}
{%- set src_pk = "snowflake_dq_source_HK" -%}
{%- set src_payload = ["fk_test_runs_id", "fk_obj_name", "fk_test_code",
                       "occurrences", "result", "load_timestamp",
                       "used_load_cycle_id", "record_source"] -%}
{%- set src_hashdiff = "sat_sds_dq_test_results_HASHDIFF" -%}
{%- set src_ldts = "load_date" -%}
{%- set src_source = "record_source" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}