{%- set yaml_metadata -%}
source_model: ref_objects
derived_columns:
  RECORD_SOURCE: '!STG_REF_OBJECTS'
  LOAD_DATETIME: load_date
hashed_columns:
  SAT_DQL_REF_OBJECTS_HASHDIFF:
    is_hashdiff: true
    columns:
      - SCHEMA_NAME
      - OBJECT_TYPE
  REFOBJECTS_HK: REFOBJECTS_BK
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}