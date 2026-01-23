{%- set source_model = "stg_product" -%}
{%- set src_pk = "PRODUCT_HK" -%}
{%- set src_payload = ["PRODUCT_CODE", "PRODUCT_NAME", "PRODUCT_FAMILY",
                       "DEFAULT_CURRENCY"] -%}
{%- set src_hashdiff = "SAT_BK_PRODUCT_HASHDIFF" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}