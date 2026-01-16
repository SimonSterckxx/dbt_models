{%- set source_model = "stg_sat_bk_bank_transaction" -%}
{%- set src_pk = "BANKING_HK" -%}
{%- set src_payload = ["TRANSACTION_REF", "ACCOUNT_ID", "BOOKING_TS",
                       "VALUE_DATE", "AMOUNT", "CURRENCY_CODE",
                       "DIRECTION", "DESCRIPTION", "MERCHANT_CATEGORY",
                       "COUNTERPARTY_NAME", "COUNTERPARTY_IBAN", "CREATED_AT"] -%}
{%- set src_hashdiff = "SAT_BK_BANK_TRANSACTION_HASHDIFF" -%}
{%- set src_ldts = "load_date" -%}
{%- set src_source = "record_source" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}