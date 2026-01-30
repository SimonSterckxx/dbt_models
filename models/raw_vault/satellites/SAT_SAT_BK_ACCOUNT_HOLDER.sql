{%- set source_model = "stg_account_holder" -%}
{%- set src_pk = "ACCOUNTHOLDER_HK" -%}
{%- set src_payload = ["ACCOUNT_ID", "PARTY_ID", "HOLDER_ROLE",
                       "ROLE_START_DATE", "ROLE_END_DATE"] -%}
{%- set src_hashdiff = "SAT_BK_ACCOUNT_HOLDER_HASHDIFF" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}