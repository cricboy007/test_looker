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
