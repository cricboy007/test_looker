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
      WHERE time_period_id = {% parameter input_time_period_id2 %}
      AND population_id = {% parameter input_population_id2 %}
      AND product_id = {% parameter input_product_id2 %}
      ;;
  }

  parameter: input_time_period_id2 {
    type: unquoted
  }

  parameter: input_population_id2 {
    type: unquoted
  }

  parameter: input_product_id2 {
    type: unquoted
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

#   dimension: str_product_id2 {
#     description: "Unique product_id for each web site"
#     type: string
#     sql: ${TABLE}.product_id ;;
#   }
#
#   dimension: str_time_type2 {
#     description: "Unique time_type for each web site"
#     type: string
#     sql: ${TABLE}.time_type ;;
#   }
#
#   dimension: str_time_period_id2 {
#     description: "Unique time_period_id for each web site"
#     type: string
#     sql: ${TABLE}.time_period_id ;;
#   }
#
#   dimension: str_population_id2 {
#     description: "Unique population_id for each web site"
#     type: string
#     sql: ${TABLE}.population_id ;;
#   }
#
#   dimension: str_load_type_id2 {
#     description: "Unique load_type_id for each web site"
#     type: string
#     sql: ${TABLE}.load_type_id ;;
#   }
#
#   dimension: str_location_id2 {
#     description: "Unique location_id for each web site"
#     type: string
#     sql: ${TABLE}.location_id ;;
#   }
#
#   dimension: str_break_id2 {
#     description: "Unique break_id for each web site"
#     type: string
#     sql: ${TABLE}.break_id ;;
#   }
}
