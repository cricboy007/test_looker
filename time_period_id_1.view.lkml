view: time_period_id_1 {
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
      WHERE time_period_id = {% parameter input_time_period_id1 %}
      AND population_id = {% parameter input_population_id1 %}
      AND product_id = {% parameter input_product_id1 %}
      ;;
  }
#
  parameter: input_time_period_id1 {
    type: unquoted
  }

  parameter: input_population_id1 {
    type: unquoted
  }

  parameter: input_product_id1 {
    type: unquoted
  }

#   # Define your dimensions and measures here, like this:
  dimension: product_id1 {
    description: "Unique product_id for each web site"
    type: number
    sql: ${TABLE}.product_id ;;
  }


  dimension: time_type1 {
    description: "Unique time_type for each web site"
    type: number
    sql: ${TABLE}.time_type ;;
  }

  dimension: time_period_id1 {
    description: "Unique time_period_id for each web site"
    type: number
    sql: ${TABLE}.time_period_id ;;
  }

  dimension: population_id1 {
    description: "Unique population_id for each web site"
    type: number
    sql: ${TABLE}.population_id ;;
  }

  dimension: load_type_id1 {
    description: "Unique load_type_id for each web site"
    type: number
    sql: ${TABLE}.load_type_id ;;
  }

  dimension: description1 {
    description: "Unique description for each web site"
    type: string
    sql: ${TABLE}.description ;;
  }


  dimension: web_id1 {
    description: "Unique web_id for each web site"
    type: number
    sql: ${TABLE}.web_id ;;
  }

  dimension: location_id1 {
    description: "Unique location_id for each web site"
    type: number
    sql: ${TABLE}.location_id ;;
  }

  dimension: break_id1 {
    description: "Unique break_id for each web site"
    type: number
    sql: ${TABLE}.break_id ;;
  }


  dimension: visitors1 {
    description: "Unique visitors for each web site"
    type: number
    sql: ${TABLE}.visitors ;;
  }


  dimension: str_product_id1 {
    description: "Unique product_id for each web site"
    type: string
    sql: TO_VARCHAR(${product_id1}) ;;
  }

  dimension: str_time_type1 {
    description: "Unique time_type for each web site"
    type: string
    sql: ${TABLE}.time_type ;;
  }

  dimension: str_time_period_id1 {
    description: "Unique time_period_id for each web site"
    type: string
    sql: ${TABLE}.time_period_id ;;
  }

  dimension: str_population_id1 {
    description: "Unique population_id for each web site"
    type: string
    sql: ${TABLE}.population_id ;;
  }

  dimension: str_load_type_id1 {
    description: "Unique load_type_id for each web site"
    type: string
    sql: ${TABLE}.load_type_id ;;
  }

 }
