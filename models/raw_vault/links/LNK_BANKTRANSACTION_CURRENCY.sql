{%- set source_model = "stg_bank_transaction" -%}
{%- set src_pk = "LNK_BANKTRANSACTION_CURRENCY_HK" -%}
{%- set src_fk = ["BANKTRANSACTION_HK", "CURRENCY_HK"] -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.link(source_model=source_model,
                    src_pk=src_pk,
                    src_fk=src_fk,
                    src_ldts=src_ldts,
                    src_source=src_source) }}