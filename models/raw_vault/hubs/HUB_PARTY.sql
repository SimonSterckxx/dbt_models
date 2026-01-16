{%- set source_model = "stg_party" -%}
{%- set src_pk = "PARTY_HK" -%}
{%- set src_nk = "PARTY_BK" -%}
{%- set src_ldts = "load_date" -%}
{%- set src_source = "record_source" -%}

{{ automate_dv.hub(source_model=source_model,
                   src_pk=src_pk,
                   src_nk=src_nk,
                   src_ldts=src_ldts,
                   src_source=src_source) }}