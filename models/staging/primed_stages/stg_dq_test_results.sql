{%- set yaml_metadata -%}
source_model:
  SDQV: DQ_TEST_RESULTS
derived_columns:
  RECORD_SOURCE: '!STG_DQ_TEST_RESULTS'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  DQTESTRESULTS_HK: ID
  SAT_DQL_DQ_TEST_RESULTS_HASHDIFF:
    is_hashdiff: true
    columns:
      - FK_TEST_RUNS_ID
      - FK_OBJ_NAME
      - FK_TEST_CODE
      - OCCURRENCES
      - RESULT
      - USED_LOAD_CYCLE_ID
      - RECORD_SOURCE
  DQTESTRUNS_HK: DQTESTRUNS_BK
  LNK_DQTESTRESULTS_DQTESTRUNS_HK:
    - ID
    - DQTESTRUNS_BK
  REFOBJECTS_HK: REFOBJECTS_BK
  LNK_DQTESTRESULTS_REFOBJECTS_HK:
    - ID
    - REFOBJECTS_BK
  REFDQTESTS_HK: REFDQTESTS_BK
  LNK_DQTESTRESULTS_REFDQTESTS_HK:
    - ID
    - REFDQTESTS_BK
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}