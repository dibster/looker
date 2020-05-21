view: basket_item {
  sql_table_name: public.basket_item ;;

  dimension: item {
    type: string
    sql: ${TABLE}."item" ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}."price" ;;
  }

  dimension: range {
    type: string
    sql: ${TABLE}."range" ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}."unit" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
