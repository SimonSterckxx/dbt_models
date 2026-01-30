{%- set yaml_metadata -%}
source_model:
  BK: BRANCH
derived_columns:
  RECORD_SOURCE: '!STG_BRANCH'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  BRANCH_HK: BRANCH_ID
  SAT_BK_BRANCH_HASHDIFF:
    is_hashdiff: true
    columns:
      - BRANCH_CODE
      - BRANCH_NAME
      - COUNTRY_CODE
      - CITY
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}