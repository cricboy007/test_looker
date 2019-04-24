view: cfd_1 {
  sql_table_name: PUBLIC.CFD_HIERARCHY ;;

  dimension: category_id {
    type: string
    sql: ${TABLE}."CATEGORY_ID" ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}."CATEGORY_NAME" ;;
  }

  dimension: depth {
    type: string
    sql: ${TABLE}."DEPTH" ;;
  }

  dimension: dictionary_type {
    type: string
    sql: ${TABLE}."DICTIONARY_TYPE" ;;
  }

  dimension: hiearchy_name {
    type: string
    sql: ${TABLE}."HIEARCHY_NAME" ;;
  }

  dimension: hierarchy_id {
    type: string
    sql: ${TABLE}."HIERARCHY_ID" ;;
  }

  dimension: l_id {
    type: string
    sql: ${TABLE}."L_ID" ;;
  }

  dimension: level_id {
    type: string
    sql: ${TABLE}."LEVEL_ID" ;;
  }

  dimension: level_name {
    type: string
    sql: ${TABLE}."LEVEL_NAME" ;;
  }

  dimension: month_id {
    type: string
    sql: ${TABLE}."MONTH_ID" ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}."PARENT_ID" ;;
  }

  dimension: parent_name {
    type: string
    sql: ${TABLE}."PARENT_NAME" ;;
  }

  dimension: r_id {
    type: string
    sql: ${TABLE}."R_ID" ;;
  }

  dimension: web_id {
    type: string
    sql: ${TABLE}."WEB_ID" ;;
  }

  dimension: web_name {
    type: string
    sql: ${TABLE}."WEB_NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [web_name, level_name, parent_name, hiearchy_name, category_name]
  }
}
