view: time_period_id_2 {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql: SELECT
          product_id
        , time_type
        , time_period_id
        , population_id
        , load_type_id
        , description
        , web_id
        , location_id
        , break_id
        , visitors
      FROM public.mmxmp_production_all_products
      --WHERE web_id = 590133 AND location_id = 0 AND break_id = 0 AND time_period_id = 229 AND population_id = 826
      ;;
  }
#
#   # Define your dimensions and measures here, like this:
  dimension: product_id2 {
    description: "Unique product_id for each web site"
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: time_type2 {
    description: "Unique time_type for each web site"
    type: number
    sql: ${TABLE}.time_type ;;
  }

  dimension: time_period_id2 {
    description: "Unique time_period_id for each web site"
    type: number
    sql: ${TABLE}.time_period_id ;;
  }

  dimension: population_id2 {
    description: "Unique population_id for each web site"
    type: number
    sql: ${TABLE}.population_id ;;
  }

  dimension: load_type_id2 {
    description: "Unique load_type_id for each web site"
    type: number
    sql: ${TABLE}.load_type_id ;;
  }

  dimension: description2 {
    description: "Unique description for each web site"
    type: string
    sql: ${TABLE}.description ;;
  }


  dimension: web_id2 {
    description: "Unique web_id for each web site"
    type: number
    sql: ${TABLE}.web_id ;;
  }

  dimension: location_id2 {
    description: "Unique location_id for each web site"
    type: number
    sql: ${TABLE}.location_id ;;
  }

  dimension: break_id2 {
    description: "Unique break_id for each web site"
    type: number
    sql: ${TABLE}.break_id ;;
  }


  dimension: visitors2 {
    description: "Unique visitors for each web site"
    type: number
    sql: ${TABLE}.visitors ;;
  }

}
