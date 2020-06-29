view: view_exports {
  sql_table_name: public.view_exports ;;

  dimension: area {
    type: string
    sql: ${TABLE}."area" ;;
  }

  dimension: area_code {
    type: number
    sql: ${TABLE}."area_code" ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}."domain" ;;
  }

  dimension: domain_code {
    type: string
    sql: ${TABLE}."domain_code" ;;
  }

  dimension: element {
    type: string
    sql: ${TABLE}."element" ;;
  }

  dimension: element_code {
    type: number
    sql: ${TABLE}."element_code" ;;
  }

  dimension: flag {
    type: string
    sql: ${TABLE}."flag" ;;
  }

  dimension: flag_description {
    type: string
    sql: ${TABLE}."flag_description" ;;
  }

  dimension: item {
    type: string
    sql: ${TABLE}."item" ;;
  }

  dimension: item_code {
    type: number
    sql: ${TABLE}."item_code" ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}."unit" ;;
  }

  measure: value {
    type: sum
    label: "Produced"
    sql: ${TABLE}."value" ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}."year" ;;
  }

  dimension: year_code {
    type: number
    sql: ${TABLE}."year_code" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
