view: users {
  sql_table_name: "PUBLIC"."USERS"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}."AGE" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."CREATED_AT" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."FIRST_NAME" ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}."GENDER" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."LAST_NAME" ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}."TRAFFIC_SOURCE" ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}."ZIP" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, first_name, last_name, events.count, order_items.count]
  }

  measure: max {
    type: max
    drill_fields: [id]
  }

  measure: min {
    type: min
    drill_fields: [id, first_name, last_name, events.count, order_items.count]
  }

  measure: average {
    type: average
    drill_fields: [id, first_name, last_name, events.count, order_items.count]
  }

  measure: average_distinct {
    type: average_distinct
    drill_fields: [id, first_name, last_name, events.count, order_items.count]
  }

  measure: count_distinct {
    type: count_distinct
    drill_fields: [id, first_name, last_name, events.count, order_items.count]
  }

  measure: sum {
    type: sum
    drill_fields: [id, first_name, last_name, events.count, order_items.count]
  }

  measure: sum_distinct {
    type: sum_distinct
    drill_fields: [id, first_name, last_name, events.count, order_items.count]
  }
}
