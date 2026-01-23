{%- set yaml_metadata -%}
source_model:
  BK: BANK_TRANSACTION
derived_columns:
  RECORD_SOURCE: '!STG_BANK_TRANSACTION'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  BANKTRANSACTION_HK: TRANSACTION_ID
  SAT_BK_BANK_TRANSACTION_HASHDIFF:
    is_hashdiff: true
    columns:
      - TRANSACTION_REF
      - ACCOUNT_ID
      - BOOKING_TS
      - VALUE_DATE
      - AMOUNT
      - CURRENCY_CODE
      - DIRECTION
      - DESCRIPTION
      - MERCHANT_CATEGORY
      - COUNTERPARTY_NAME
      - COUNTERPARTY_IBAN
      - CREATED_AT
  CURRENCY_HK: CURRENCY_CODE
  LNK_BANKTRANSACTION_CURRENCY_HK:
    - TRANSACTION_ID
    - CURRENCY_CODE
  ACCOUNT_HK: ACCOUNT_ID
  LNK_BANKTRANSACTION_ACCOUNT_HK:
    - TRANSACTION_ID
    - ACCOUNT_ID
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}