view: view_metrics {
  sql_table_name: public.view_metrics ;;

  measure: airports {
    type: sum
    sql: ${TABLE}."airports" ;;
  }

  measure: borders {
    type: sum
    sql: ${TABLE}."borders" ;;
  }

  measure: conflict {
    type: sum
    sql: ${TABLE}."conflict" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."Country" ;;
  }

  measure: employment_rate {
    type: sum
    sql: ${TABLE}."employment_rate" ;;
  }

  measure: infection_rate {
    type: sum
    sql: ${TABLE}."infection_rate" ;;
  }

  measure: internal_transportation {
    type: sum
    sql: ${TABLE}."internal_transportation" ;;
  }

  dimension: iso {
    type: string
    sql: ${TABLE}."iso" ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}."latitude" ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}."longitude" ;;
  }

  dimension: location {
    type: location
    sql_latitude:${TABLE}.latitude;;
    sql_longitude: ${TABLE}.longitude;;
  }

  dimension: other_metrics {
    type: string
    sql: ${TABLE}."other_metrics" ;;
  }

  measure: ports {
    type: sum
    sql: ${TABLE}."ports" ;;
  }

  measure: state {
    label: "Overall State"
    type: sum
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
