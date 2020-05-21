view: country {
  sql_table_name: public.country ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: iso {
    type: string
    sql: ${TABLE}."iso" ;;
  }

  dimension: iso3 {
    type: string
    sql: ${TABLE}."iso3" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: nicename {
    type: string
    sql: ${TABLE}."nicename" ;;
  }

  dimension: numcode {
    type: number
    sql: ${TABLE}."numcode" ;;
  }

  dimension: phonecode {
    type: number
    sql: ${TABLE}."phonecode" ;;
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
    drill_fields: [id, name, nicename]
  }
}
