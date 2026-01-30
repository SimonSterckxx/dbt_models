{%- set yaml_metadata -%}
source_model:
  BK: CURRENCY
derived_columns:
  RECORD_SOURCE: '!STG_CURRENCY'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  CURRENCY_HK: CURRENCY_CODE
  SAT_BK_CURRENCY_HASHDIFF:
    is_hashdiff: true
    columns:
      - CURRENCY_NAME
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}