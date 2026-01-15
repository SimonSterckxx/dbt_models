{%- set source_model = "stg_dqloads" -%}
{%- set src_pk = "DQLOADS_HK" -%}
{%- set src_nk = "DQLOADS_BK" -%}
{%- set src_ldts = "load_date" -%}
{%- set src_source = "record_source" -%}

{{ automate_dv.hub(source_model=source_model,
                   src_pk=src_pk,
                   src_nk=src_nk,
                   src_ldts=src_ldts,
                   src_source=src_source) }}