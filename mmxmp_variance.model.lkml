connection: "mmxmp"

# include all the views
include: "*.view"

datagroup: mmxmp_variance_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: mmxmp_variance_default_datagroup
