{%- set yaml_metadata -%}
source_model: dq_test_runs
derived_columns:
  RECORD_SOURCE: '!STG_DQ_TEST_RUNS'
  LOAD_DATETIME: load_date
hashed_columns:
  SAT_DQL_DQ_TEST_RUNS_HASHDIFF:
    is_hashdiff: true
    columns:
      - RUN_TYPE
      - TRIGGERED_BY
      - STARTED_AT
      - ENDED_AT
      - STATUS
      - FK_DQ_LOAD_ID
  DQTESTRUNS_HK: DQTESTRUNS_BK
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}