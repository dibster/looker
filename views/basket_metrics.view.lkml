view: basket_metrics {
  sql_table_name: public.basket_metrics ;;

  measure: availability {
    type: number
    sql: ${TABLE}."availability" ;;
  }

  dimension: basket_item {
    type: string
    sql: ${TABLE}."basket_item" ;;
  }

  dimension: iso {
    type: string
    sql: ${TABLE}."iso" ;;
  }

  measure: price {
    type: string
    sql: ${TABLE}."price" ;;
  }

  dimension_group: source_data_collected {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."source_data_collected" ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."updated_at" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
