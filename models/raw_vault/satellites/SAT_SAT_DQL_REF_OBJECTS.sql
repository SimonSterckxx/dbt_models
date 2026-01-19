{%- set source_model = "stg_ref_objects" -%}
{%- set src_pk = "ref_objects_HK" -%}
{%- set src_payload = ["SCHEMA_NAME", "OBJECT_TYPE"] -%}
{%- set src_hashdiff = "SAT_DQL_REF_OBJECTS_HASHDIFF" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}