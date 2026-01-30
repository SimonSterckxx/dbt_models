{%- set yaml_metadata -%}
source_model:
  BK: ACCOUNT
derived_columns:
  RECORD_SOURCE: '!STG_ACCOUNT'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  ACCOUNT_HK: ACCOUNT_ID
  SAT_BK_ACCOUNT_HASHDIFF:
    is_hashdiff: true
    columns:
      - ACCOUNT_NUMBER
      - IBAN
      - ACCOUNT_TYPE
      - STATUS
      - OPEN_DATE
      - CLOSE_DATE
      - CURRENCY_CODE
      - PRODUCT_ID
      - BRANCH_ID
      - CREATED_AT
      - UPDATED_AT
  PRODUCT_HK: PRODUCT_ID
  LNK_ACCOUNT_PRODUCT_HK:
    - ACCOUNT_ID
    - PRODUCT_ID
  CURRENCY_HK: CURRENCY_CODE
  LNK_ACCOUNT_CURRENCY_HK:
    - ACCOUNT_ID
    - CURRENCY_CODE
  BRANCH_HK: BRANCH_ID
  LNK_ACCOUNT_BRANCH_HK:
    - ACCOUNT_ID
    - BRANCH_ID
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}