{%- set source_model = "stg_sat_bk_party_address" -%}
{%- set src_pk = "BANKING_HK" -%}
{%- set src_payload = ["PARTY_NUMBER", "PARTY_TYPE", "FULL_NAME",
                       "DATE_OF_BIRTH", "EMAIL", "PHONE",
                       "CREATED_AT", "UPDATED_AT"] -%}
{%- set src_hashdiff = "SAT_BK_PARTY_ADDRESS_HASHDIFF" -%}
{%- set src_ldts = "load_date" -%}
{%- set src_source = "record_source" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}