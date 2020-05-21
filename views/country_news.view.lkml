view: country_news {
  sql_table_name: public.country_news ;;

  dimension: iso {
    type: string
    sql: ${TABLE}."iso" ;;
  }

  dimension: news {
    type: string
    sql: ${TABLE}."news" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."source" ;;
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
