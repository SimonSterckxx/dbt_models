{%- set source_model = "stg_lnk_banktransaction_currency" -%}
{%- set src_pk = "LNK_BANKTRANSACTION_CURRENCY_HK" -%}
{%- set src_fk = ["LNK_BANKTRANSACTION_CURRENCY_FK1_HK", "LNK_BANKTRANSACTION_CURRENCY_FK2_HK"] -%}
{%- set src_ldts = "load_date" -%}
{%- set src_source = "record_source" -%}

{{ automate_dv.link(source_model=source_model,
                    src_pk=src_pk,
                    src_fk=src_fk,
                    src_ldts=src_ldts,
                    src_source=src_source) }}