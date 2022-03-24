connection: "google_forms_example"

# include all the views
include: "/views/**/*.view"

datagroup: google_forms_example_1_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: google_forms_example_1_default_datagroup

explore: google_forms_example_out {}
