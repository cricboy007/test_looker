view: mmxmp_production {
  sql_table_name: PUBLIC.MMXMP_PRODUCTION ;;

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

  dimension: dpages {
    type: string
    sql: ${TABLE}."DPAGES" ;;
  }

  dimension: dpages_raw {
    type: number
    sql: ${TABLE}."DPAGES_RAW" ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}."DURATION" ;;
  }

  dimension: duration_raw {
    type: number
    sql: ${TABLE}."DURATION_RAW" ;;
  }

  dimension: engaged {
    type: string
    sql: ${TABLE}."ENGAGED" ;;
  }

  dimension: engaged_raw {
    type: number
    sql: ${TABLE}."ENGAGED_RAW" ;;
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

  dimension: pages {
    type: string
    sql: ${TABLE}."PAGES" ;;
  }

  dimension: pages_raw {
    type: number
    sql: ${TABLE}."PAGES_RAW" ;;
  }

  dimension: population_id {
    type: string
    sql: ${TABLE}."POPULATION_ID" ;;
  }

  dimension: sessions {
    type: string
    sql: ${TABLE}."SESSIONS" ;;
  }

  dimension: sessions_raw {
    type: number
    sql: ${TABLE}."SESSIONS_RAW" ;;
  }

  dimension: stability {
    type: string
    sql: ${TABLE}."STABILITY" ;;
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

  dimension: visitors {
    type: string
    sql: ${TABLE}."VISITORS" ;;
  }

  dimension: visitors_raw {
    type: number
    sql: ${TABLE}."VISITORS_RAW" ;;
  }

  dimension: visits {
    type: string
    sql: ${TABLE}."VISITS" ;;
  }

  dimension: visits_raw {
    type: number
    sql: ${TABLE}."VISITS_RAW" ;;
  }

  dimension: web_id {
    type: string
    sql: ${TABLE}."WEB_ID" ;;
  }

  dimension: web_id2 {
    type: string
    sql: ${TABLE}."WEB_ID2" ;;
  }

  measure: count {
    type: count
    drill_fields: [month_name, load_type_name, locationname]
  }
}
