CREATE TABLE ad_campaign_group_activity (
  id String,
  buying_type_new Nullable(String),
  buying_type_old Nullable(String),
  event_time Nullable(String),
  event_type Nullable(String),
  is_autobid_new Nullable(UInt8),
  is_autobid_old Nullable(UInt8),
  is_average_price_pacing_new Nullable(UInt8),
  is_average_price_pacing_old Nullable(UInt8),
  name_new Nullable(String),
  name_old Nullable(String),
  objective_new Nullable(String),
  objective_old Nullable(String),
  pacing_type Nullable(Int64),
  run_status_new Nullable(String),
  run_status_old Nullable(String),
  spend_cap_new Nullable(Int64),
  spend_cap_old Nullable(Int64),
  time_created Nullable(String),
  time_updated_new Nullable(String),
  time_updated_old Nullable(String)
)
ENGINE = Log
