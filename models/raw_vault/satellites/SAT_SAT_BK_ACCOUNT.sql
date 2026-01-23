{%- set source_model = "stg_bk_account" -%}
{%- set src_pk = "bk_account_HK" -%}
{%- set src_payload = ["ACCOUNT_NUMBER", "IBAN", "ACCOUNT_TYPE",
                       "STATUS", "OPEN_DATE", "CLOSE_DATE",
                       "CURRENCY_CODE", "PRODUCT_ID", "BRANCH_ID",
                       "CREATED_AT", "UPDATED_AT"] -%}
{%- set src_hashdiff = "SAT_BK_ACCOUNT_HASHDIFF" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}