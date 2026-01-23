{%- set yaml_metadata -%}
source_model:
  BK: PARTY_ADDRESS
derived_columns:
  RECORD_SOURCE: '!STG_PARTY_ADDRESS'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  PARTYADDRESS_HK: PARTY_ADDRESS_ID
  SAT_BK_PARTY_ADDRESS_HASHDIFF:
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
  PARTY_HK: PARTY_TYPE
  LNK_PARTYADDRESS_PARTY_HK:
    - PARTY_ADDRESS_ID
    - PARTY_TYPE
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}