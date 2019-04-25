connection: "mmxmp"

# include all the views
include: "*.view"

datagroup: mmxmp_variance_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: mmxmp_variance_default_datagroup

explore: mmxmp_production {
  join: cfd_hierarchy {
    type: inner
    relationship: many_to_one
    sql_on: ${cfd_hierarchy.month_id} = ${mmxmp_production.time_period_id}
    AND ${cfd_hierarchy.web_id} = ${mmxmp_production.web_id};;
  }
}


explore: mmxmp_production_all_products {
  join: cfd_hierarchy {
    type: inner
    relationship: many_to_one
    sql_on: ${cfd_hierarchy.month_id} = ${mmxmp_production_all_products.time_period_id}
      AND ${cfd_hierarchy.web_id} = ${mmxmp_production_all_products.web_id};;
  }
}


explore: time_period_id_1 {

}

explore: time_period_id_2 {
  join: time_period_id_1 {
    type: inner
    relationship: one_to_one
    sql_on: ${time_period_id_1.break_id1}=${time_period_id_2.break_id2}
    AND ${time_period_id_1.web_id1}=${time_period_id_2.web_id2}
    AND ${time_period_id_1.location_id1}=${time_period_id_2.location_id2};;
  }
  join: cfd_2 {
    type: inner
    relationship: many_to_one
    sql_on: ${time_period_id_2.web_id2}=${cfd_2.web_id}
      AND ${time_period_id_2.time_period_id2}=${cfd_2.month_id};;
  }
  join: cfd_1 {
    type: inner
    relationship: many_to_one
    sql_on: ${time_period_id_1.web_id1}=${cfd_1.web_id}
      AND ${time_period_id_1.time_period_id1}=${cfd_1.month_id};;
  }
}

explore: cfd_1 {
  join: time_period_id_1 {
    type: inner
    relationship: many_to_one
    sql_on: ${cfd_1.month_id}=${time_period_id_1.time_period_id1}
    AND ${cfd_1.web_id}=${time_period_id_1.web_id1};;
  }
}

explore: cfd_2 {
  join: time_period_id_2 {
    type: inner
    relationship: many_to_one
    sql_on: ${cfd_2.month_id}=${time_period_id_2.time_period_id2}
      AND ${cfd_2.web_id}=${time_period_id_2.web_id2};;
  }
}
