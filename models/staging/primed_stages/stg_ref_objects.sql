{%- set yaml_metadata -%}
source_model:
  SDQV: REF_OBJECTS
derived_columns:
  RECORD_SOURCE: '!STG_REF_OBJECTS'
  LOAD_DATETIME: CURRENT_TIMESTAMP()
hashed_columns:
  REFOBJECTS_HK: OBJ_NAME
  SAT_DQL_REF_OBJECTS_HASHDIFF:
    is_hashdiff: true
    columns:
      - SCHEMA_NAME
      - OBJECT_TYPE
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(source_model=metadata_dict["source_model"],
                     derived_columns=metadata_dict["derived_columns"],
                     hashed_columns=metadata_dict["hashed_columns"]) }}