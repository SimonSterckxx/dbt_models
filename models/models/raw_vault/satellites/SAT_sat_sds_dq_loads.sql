{%- set source_model = "stg_sat_sds_dq_loads" -%}
{%- set src_pk = "snowflake_dq_source_HK" -%}
{%- set src_payload = ["load_timestamp", "started_at", "ended_at"] -%}
{%- set src_hashdiff = "sat_sds_dq_loads_HASHDIFF" -%}
{%- set src_ldts = "load_date" -%}
{%- set src_source = "record_source" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}