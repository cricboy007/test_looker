view: mmxmp_production_all_products {
  sql_table_name: PUBLIC.MMXMP_PRODUCTION_ALL_PRODUCTS ;;

  dimension: break_id {
    type: string
    sql: ${TABLE}."BREAK_ID" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }


  dimension: load_type_id {
    type: string
    sql: ${TABLE}."LOAD_TYPE_ID" ;;
  }

  dimension: load_type_name {
    type: string
    sql: ${TABLE}."LOAD_TYPE_NAME" ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}."LOCATION_ID" ;;
  }

  dimension: locationname {
    type: string
    sql: ${TABLE}."LOCATIONNAME" ;;
  }

  dimension: month_name {
    type: string
    sql: ${TABLE}."MONTH_NAME" ;;
  }


  dimension: population_id {
    type: string
    sql: ${TABLE}."POPULATION_ID" ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}."PRODUCT_ID" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."PRODUCT_NAME" ;;
  }


  dimension: time_period_id {
    type: string
    sql: ${TABLE}."TIME_PERIOD_ID" ;;
  }

  dimension: time_type {
    type: string
    sql: ${TABLE}."TIME_TYPE" ;;
  }

  dimension: time_type_text {
    type: string
    sql: ${TABLE}."TIME_TYPE_TEXT" ;;
  }


  dimension: web_id {
    type: string
    sql: ${TABLE}."WEB_ID" ;;
  }

  dimension: web_id2 {
    type: string
    sql: ${TABLE}."WEB_ID2" ;;
  }

  measure: dpages {
    type: sum
    sql: ${TABLE}."DPAGES" ;;
  }

  measure: dpages_raw {
    type: sum
    sql: ${TABLE}."DPAGES_RAW" ;;
  }

  measure: duration {
    type: sum
    sql: ${TABLE}."DURATION" ;;
  }

  measure: duration_raw {
    type: sum
    sql: ${TABLE}."DURATION_RAW" ;;
  }

  measure: engaged {
    type: sum
    sql: ${TABLE}."ENGAGED" ;;
  }

  measure: engaged_raw {
    type: sum
    sql: ${TABLE}."ENGAGED_RAW" ;;
  }

  measure: pages {
    type: sum
    sql: ${TABLE}."PAGES" ;;
  }

  measure: pages_raw {
    type: sum
    sql: ${TABLE}."PAGES_RAW" ;;
  }

  measure: sessions {
    type: sum
    sql: ${TABLE}."SESSIONS" ;;
  }

  measure: sessions_raw {
    type: sum
    sql: ${TABLE}."SESSIONS_RAW" ;;
  }

  measure: stability {
    type: sum
    sql: ${TABLE}."STABILITY" ;;
  }

  measure: visitors {
    type: sum
    sql: ${TABLE}."VISITORS" ;;
  }

  measure: visitors_raw {
    type: sum
    sql: ${TABLE}."VISITORS_RAW" ;;
  }

  measure: visits {
    type: sum
    sql: ${TABLE}."VISITS" ;;
  }

  measure: visits_raw {
    type: sum
    sql: ${TABLE}."VISITS_RAW" ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name, month_name, load_type_name, locationname]
  }
}
