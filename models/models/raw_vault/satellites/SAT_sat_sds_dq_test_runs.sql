{%- set source_model = "stg_sat_sds_dq_test_runs" -%}
{%- set src_pk = "snowflake_dq_source_HK" -%}
{%- set src_payload = ["run_type", "triggered_by", "started_at",
                       "ended_at", "status", "fk_dq_load_id"] -%}
{%- set src_hashdiff = "sat_sds_dq_test_runs_HASHDIFF" -%}
{%- set src_ldts = "load_date" -%}
{%- set src_source = "record_source" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}