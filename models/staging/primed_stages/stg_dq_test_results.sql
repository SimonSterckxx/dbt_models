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
  DQTESTRUNS_HK: FK_TEST_RUNS_ID
  LNK_DQTESTRESULTS_DQTESTRUNS_HK:
    - ID
    - FK_TEST_RUNS_ID
  REFOBJECTS_HK: FK_OBJ_NAME
  LNK_DQTESTRESULTS_REFOBJECTS_HK:
    - ID
    - FK_OBJ_NAME
  REFDQTESTS_HK: FK_TEST_CODE
  LNK_DQTESTRESULTS_REFDQTESTS_HK:
    - ID
    - FK_TEST_CODE
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}