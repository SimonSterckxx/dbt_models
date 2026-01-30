{%- set yaml_metadata -%}
source_model:
  BK: ACCOUNT_HOLDER
derived_columns:
  RECORD_SOURCE: '!STG_ACCOUNT_HOLDER'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  ACCOUNTHOLDER_HK: ACCOUNT_HOLDER_ID
  SAT_BK_ACCOUNT_HOLDER_HASHDIFF:
    is_hashdiff: true
    columns:
      - ACCOUNT_ID
      - PARTY_ID
      - HOLDER_ROLE
      - ROLE_START_DATE
      - ROLE_END_DATE
  PARTY_HK: PARTY_ID
  LNK_ACCOUNTHOLDER_PARTY_HK:
    - ACCOUNT_HOLDER_ID
    - PARTY_ID
  ACCOUNT_HK: ACCOUNT_ID
  LNK_ACCOUNTHOLDER_ACCOUNT_HK:
    - ACCOUNT_HOLDER_ID
    - ACCOUNT_ID
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}