{%- set source_model = "stg_party_address" -%}
{%- set src_pk = "PARTYADDRESS_HK" -%}
{%- set src_payload = ["PARTY_ID", "ADDRESS_TYPE", "STREET",
                       "HOUSE_NUMBER", "POSTAL_CODE", "CITY",
                       "REGION", "COUNTRY_CODE", "VALID_FROM",
                       "VALID_TO"] -%}
{%- set src_hashdiff = "SAT_BK_PARTY_ADDRESS_HASHDIFF" -%}
{%- set src_ldts = "LOAD_DATETIME" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.sat(source_model=source_model,
                   src_pk=src_pk,
                   src_payload=src_payload,
                   src_hashdiff=src_hashdiff,
                   src_ldts=src_ldts,
                   src_source=src_source) }}