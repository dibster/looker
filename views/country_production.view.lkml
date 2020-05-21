view: country_production {
  sql_table_name: public.country_production ;;

  dimension: iso {
    type: string
    sql: ${TABLE}."iso" ;;
  }

  dimension: resource_type {
    type: string
    sql: ${TABLE}."resource_type" ;;
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

  dimension: yearly_quantity {
    type: number
    sql: ${TABLE}."yearly_quantity" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
