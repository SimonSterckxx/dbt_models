{%- set yaml_metadata -%}
source_model: ref_dq_tests
derived_columns:
  RECORD_SOURCE: '!STG_REF_DQ_TESTS'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  SAT_DQL_REF_DQ_TESTS_HASHDIFF:
    is_hashdiff: true
    columns:
      - TEST_NAME
      - TEST_QUERY
  REFDQTESTS_HK: REFDQTESTS_BK
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}