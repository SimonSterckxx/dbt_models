{%- set source_model = "stg_lnk_dqtestresults_refdqtests" -%}
{%- set src_pk = "LNK_DQTESTRESULTS_REFDQTESTS_HK" -%}
{%- set src_fk = ["LNK_DQTESTRESULTS_REFDQTESTS_FK1_HK", "LNK_DQTESTRESULTS_REFDQTESTS_FK2_HK"] -%}
{%- set src_ldts = "load_date" -%}
{%- set src_source = "record_source" -%}

{{ automate_dv.link(source_model=source_model,
                    src_pk=src_pk,
                    src_fk=src_fk,
                    src_ldts=src_ldts,
                    src_source=src_source) }}