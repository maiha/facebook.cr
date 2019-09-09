CREATE TABLE ad_report_spec (
  id String,
  account_id String,
  actions_group_by Array(String),
  creation_source Nullable(String),
  data_columns Array(String),
  date_preset Nullable(String),
  export_columns Array(String),
  format_version Nullable(Int64),
  name Nullable(String),
  report_schedule_id Nullable(String),
  sort_by Nullable(String),
  sort_dir Nullable(String),
  time_increment Nullable(String)
)
ENGINE = Log
