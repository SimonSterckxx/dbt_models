{%- set yaml_metadata -%}
source_model: raw_dqloads
derived_columns:
  RECORD_SOURCE: '!STG_DQLOADS'
  LOAD_DATETIME: load_date
hashed_columns:
  SAT_DQL_DQ_LOADS_HASHDIFF:
    is_hashdiff: true
    columns:
      - STARTED_AT
      - ENDED_AT
  DQLOADS_HK: DQLOADS_BK
  LNK_DQTESTRUNS_DQLOADS_HK:
    - dqtestruns_HK
    - dqloads_HK
  dqtestruns_HK: ''
  dqloads_HK: dqloads_BK
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}