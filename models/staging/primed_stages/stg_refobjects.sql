{%- set yaml_metadata -%}
source_model: raw_refobjects
derived_columns:
  RECORD_SOURCE: '!STG_REFOBJECTS'
  LOAD_DATETIME: load_date
hashed_columns:
  SAT_DQL_REF_OBJECTS_HASHDIFF:
    is_hashdiff: true
    columns:
      - SCHEMA_NAME
      - OBJECT_TYPE
  ref_objects_HK: ref_objects_BK
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}