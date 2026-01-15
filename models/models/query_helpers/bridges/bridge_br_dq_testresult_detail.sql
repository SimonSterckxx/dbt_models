{%- set yaml_metadata -%}
source_model: hub_dq_loads
src_pk: dq_loads_hk
as_of_dates_table: AS_OF_DATE
bridge_walk:
  LNK_DQTESTRUNS_DQLOADS:
    bridge_link_pk: LNK_DQTESTRUNS_DQLOADS_PK
    bridge_end_date: EFF_SAT_LNK_DQTESTRUNS_DQLOADS_ENDDATE
    bridge_load_date: EFF_SAT_LNK_DQTESTRUNS_DQLOADS_LOADDATE
    link_table: LINK_LNK_DQTESTRUNS_DQLOADS
    link_pk: LNK_DQTESTRUNS_DQLOADS_PK
    link_fk1: DQ_LOADS_FK
    link_fk2: DQ_TEST_RUNS_FK
    eff_sat_table: EFF_SAT_LNK_DQTESTRUNS_DQLOADS
    eff_sat_pk: LNK_DQTESTRUNS_DQLOADS_PK
    eff_sat_end_date: END_DATE
    eff_sat_load_date: load_date
  LNK_DQTESTRESULTS_DQTESTRUNS:
    bridge_link_pk: LNK_DQTESTRESULTS_DQTESTRUNS_PK
    bridge_end_date: EFF_SAT_LNK_DQTESTRESULTS_DQTESTRUNS_ENDDATE
    bridge_load_date: EFF_SAT_LNK_DQTESTRESULTS_DQTESTRUNS_LOADDATE
    link_table: LINK_LNK_DQTESTRESULTS_DQTESTRUNS
    link_pk: LNK_DQTESTRESULTS_DQTESTRUNS_PK
    link_fk1: DQ_TEST_RESULTS_FK
    link_fk2: DQ_TEST_RUNS_FK
    eff_sat_table: EFF_SAT_LNK_DQTESTRESULTS_DQTESTRUNS
    eff_sat_pk: LNK_DQTESTRESULTS_DQTESTRUNS_PK
    eff_sat_end_date: END_DATE
    eff_sat_load_date: load_date
  LNK_DQTESTRESULTS_REFDQTESTS:
    bridge_link_pk: LNK_DQTESTRESULTS_REFDQTESTS_PK
    bridge_end_date: EFF_SAT_LNK_DQTESTRESULTS_REFDQTESTS_ENDDATE
    bridge_load_date: EFF_SAT_LNK_DQTESTRESULTS_REFDQTESTS_LOADDATE
    link_table: LINK_LNK_DQTESTRESULTS_REFDQTESTS
    link_pk: LNK_DQTESTRESULTS_REFDQTESTS_PK
    link_fk1: DQ_TEST_RESULTS_FK
    link_fk2: REF_DQ_TESTS_FK
    eff_sat_table: EFF_SAT_LNK_DQTESTRESULTS_REFDQTESTS
    eff_sat_pk: LNK_DQTESTRESULTS_REFDQTESTS_PK
    eff_sat_end_date: END_DATE
    eff_sat_load_date: load_date
  LNK_DQTESTRESULTS_REFOBJECTS:
    bridge_link_pk: LNK_DQTESTRESULTS_REFOBJECTS_PK
    bridge_end_date: EFF_SAT_LNK_DQTESTRESULTS_REFOBJECTS_ENDDATE
    bridge_load_date: EFF_SAT_LNK_DQTESTRESULTS_REFOBJECTS_LOADDATE
    link_table: LINK_LNK_DQTESTRESULTS_REFOBJECTS
    link_pk: LNK_DQTESTRESULTS_REFOBJECTS_PK
    link_fk1: DQ_TEST_RESULTS_FK
    link_fk2: REF_OBJECTS_FK
    eff_sat_table: EFF_SAT_LNK_DQTESTRESULTS_REFOBJECTS
    eff_sat_pk: LNK_DQTESTRESULTS_REFOBJECTS_PK
    eff_sat_end_date: END_DATE
    eff_sat_load_date: load_date
stage_tables_ldts:
  STG_LNK_DQTESTRUNS_DQLOADS: load_date
  STG_LNK_DQTESTRESULTS_DQTESTRUNS: load_date
  STG_LNK_DQTESTRESULTS_REFDQTESTS: load_date
  STG_LNK_DQTESTRESULTS_REFOBJECTS: load_date
src_ldts: load_date
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.bridge(source_model=metadata_dict["source_model"],
                      src_pk=metadata_dict["src_pk"],
                      as_of_dates_table=metadata_dict["as_of_dates_table"],
                      bridge_walk=metadata_dict["bridge_walk"],
                      stage_tables_ldts=metadata_dict["stage_tables_ldts"],
                      src_ldts=metadata_dict["src_ldts"]) }}