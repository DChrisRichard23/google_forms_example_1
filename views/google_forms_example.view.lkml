view: google_forms_example {
  sql_table_name: `google_forms.google_forms_example_out`
    ;;

  dimension: attend_flag {
    type: yesno
    sql: ${TABLE}.attend_flag ;;
  }

  dimension: attend_indicator {
    type: string
    sql: ${TABLE}.attend_indicator ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
    primary_key: yes
  }

  dimension_group: entry_date {
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
    sql: ${TABLE}.entry_date ;;
  }

  dimension_group: entry_datetime {
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
    datatype: datetime
    sql: ${TABLE}.entry_datetime ;;
  }

  dimension: entry_time {
    type: string
    sql: ${TABLE}.entry_time ;;
  }

  measure: entries {
    type: count
    drill_fields: []
  }

  measure: attending_count {
    type: count_distinct
    sql: email ;;
    filters: [attend_indicator: "Attending"]
    value_format_name: decimal_0
  }

  measure: not_attending_count {
    type: count_distinct
    sql: email ;;
    filters: [attend_indicator: "Not Attending"]
    value_format_name: decimal_0
  }
}
