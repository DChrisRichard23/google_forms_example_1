view: google_forms_example_out {
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

  measure: count {
    type: count
    drill_fields: []
  }
}
