CREATE TABLE page_insights_async_export_run (
  id String,
  data_level Nullable(String),
  format Nullable(String),
  gen_report_date Nullable(Int64),
  report_end_date Nullable(Int64),
  report_start_date Nullable(Int64),
  status Nullable(String)
)
ENGINE = Log
