view: country_position {
  sql_table_name: public.country_position ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: iso {
    type: string
    sql: ${TABLE}."iso" ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}."latitude" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."longitude" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
