{%- set yaml_metadata -%}
source_model:
  BK: PRODUCT
derived_columns:
  RECORD_SOURCE: '!STG_PRODUCT'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  PRODUCT_HK: PRODUCT_ID
  SAT_BK_PRODUCT_HASHDIFF:
    is_hashdiff: true
    columns:
      - PRODUCT_CODE
      - PRODUCT_NAME
      - PRODUCT_FAMILY
      - DEFAULT_CURRENCY
  CURRENCY_HK: DEFAULT_CURRENCY
  LNK_PRODUCT_CURRENCY_HK:
    - PRODUCT_ID
    - DEFAULT_CURRENCY
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}