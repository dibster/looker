view: country_metrics {
  sql_table_name: public.country_metrics ;;

  dimension: airports {
    type: number
    sql: ${TABLE}."airports" ;;
  }

  dimension: borders {
    type: number
    sql: ${TABLE}."borders" ;;
  }

  dimension: conflict {
    type: number
    sql: ${TABLE}."conflict" ;;
  }

  dimension: employment_rate {
    type: number
    sql: ${TABLE}."employment_rate" ;;
  }

  dimension: infection_rate {
    type: number
    sql: ${TABLE}."infection_rate" ;;
  }

  dimension: internal_transportation {
    type: number
    sql: ${TABLE}."internal_transportation" ;;
  }

  dimension: iso {
    type: string
    sql: ${TABLE}."iso" ;;
  }

  dimension: other_metrics {
    type: string
    sql: ${TABLE}."other_metrics" ;;
  }

  dimension: ports {
    type: number
    sql: ${TABLE}."ports" ;;
  }

  dimension: state {
    type: number
    sql: ${TABLE}."state" ;;
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
