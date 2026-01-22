{%- set yaml_metadata -%}
source_model:
  SDQV: DQ_LOADS
derived_columns:
  RECORD_SOURCE: '!STG_DQ_LOADS'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  DQLOADS_HK: ID
  SAT_DQL_DQ_LOADS_HASHDIFF:
    is_hashdiff: true
    columns:
      - STARTED_AT
      - ENDED_AT
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}