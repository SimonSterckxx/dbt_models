{%- set source_model = "stg_dq_loads" -%}
{%- set src_pk = "dq_loads_HK" -%}
{%- set src_payload = ["STARTED_AT", "ENDED_AT"] -%}
{%- set src_hashdiff = "SAT_DQL_DQ_LOADS_HASHDIFF" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}