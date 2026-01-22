{%- set source_model = "stg_dq_test_results" -%}
{%- set src_pk = "LNK_DQTESTRESULTS_REFDQTESTS_HK" -%}
{%- set src_fk = ["DQTESTRESULTS_HK", "REFDQTESTS_HK"] -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.link(source_model=source_model,
                    src_pk=src_pk,
                    src_fk=src_fk,
                    src_ldts=src_ldts,
                    src_source=src_source) }}