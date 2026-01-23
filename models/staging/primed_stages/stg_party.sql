{%- set yaml_metadata -%}
source_model:
  BK: PARTY
derived_columns:
  RECORD_SOURCE: '!STG_PARTY'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  PARTY_HK: PARTY_ID
  SAT_BK_PARTY_HASHDIFF:
    is_hashdiff: true
    columns:
      - PARTY_NUMBER
      - PARTY_TYPE
      - FULL_NAME
      - DATE_OF_BIRTH
      - EMAIL
      - PHONE
      - CREATED_AT
      - UPDATED_AT
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}