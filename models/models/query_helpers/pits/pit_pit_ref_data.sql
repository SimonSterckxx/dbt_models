{%- set yaml_metadata -%}
source_model: hub_ref_dq_tests
src_pk: refdqtests_hk
as_of_dates_table: AS_OF_DATE
satellites:
  SAT_HUB_REF_OBJECTS:
    pk:
      PK: REFOBJECTS_HK
    ldts:
      LDTS: load_date
stage_tables_ldts:
  STG_HUB_REF_OBJECTS: load_date
src_ldts: load_date
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.pit(source_model=metadata_dict["source_model"],
                   src_pk=metadata_dict["src_pk"],
                   as_of_dates_table=metadata_dict["as_of_dates_table"],
                   satellites=metadata_dict["satellites"],
                   stage_tables_ldts=metadata_dict["stage_tables_ldts"],
                   src_ldts=metadata_dict["src_ldts"]) }}