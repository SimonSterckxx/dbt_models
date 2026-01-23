{%- set yaml_metadata -%}
source_model: dq_test_results
derived_columns:
  RECORD_SOURCE: '!STG_DQ_TEST_RESULTS'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
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
  DQTESTRESULTS_HK: DQTESTRESULTS_BK
  LNK_DQTESTRESULTS_DQTESTRUNS_HK:
    - dqtestresults_HK
    - dqtestruns_HK
  dqtestresults_HK: ''
  dqtestruns_HK: dqtestruns_BK
  LNK_DQTESTRESULTS_REFOBJECTS_HK:
    - dqtestresults_HK
    - refobjects_HK
  refobjects_HK: refobjects_BK
  LNK_DQTESTRESULTS_REFDQTESTS_HK:
    - dqtestresults_HK
    - refdqtests_HK
  refdqtests_HK: refdqtests_BK
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}