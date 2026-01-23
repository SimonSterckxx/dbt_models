{%- set yaml_metadata -%}
source_model:
  BK: ACCOUNT_HOLDER
derived_columns:
  RECORD_SOURCE: '!STG_ACCOUNT_HOLDER'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  SAT_BK_ACCOUNT_HOLDER_HASHDIFF:
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
  ACCOUNTHOLDER_HK: ACCOUNT_HOLDER_ID
  ACCOUNT_HK: ACCOUNT_TYPE
  LNK_ACCOUNTHOLDER_ACCOUNT_HK:
    - ACCOUNT_HOLDER_ID
    - ACCOUNT_TYPE
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}