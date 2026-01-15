{%- set source_model = "stg_lnk_dqtestresults_refobjects" -%}
{%- set src_pk = "lnk_dqtestresults_refobjects_HK" -%}
{%- set src_fk = ["lnk_dqtestresults_refobjects_FK1_HK", "lnk_dqtestresults_refobjects_FK2_HK"] -%}
{%- set src_ldts = "load_date" -%}
{%- set src_source = "record_source" -%}

{{ automate_dv.link(source_model=source_model,
                    src_pk=src_pk,
                    src_fk=src_fk,
                    src_ldts=src_ldts,
                    src_source=src_source) }}