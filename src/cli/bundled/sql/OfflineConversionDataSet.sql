CREATE TABLE offline_conversion_data_set (
  id String,
  account_id String,
  config Nullable(String),
  creation_time Nullable(String),
  description Nullable(String),
  duplicate_entries Nullable(Int64),
  enable_auto_assign_to_accounts Nullable(UInt8),
  event_stats Nullable(String),
  event_time_max Nullable(Int64),
  event_time_min Nullable(Int64),
  is_mta_use Nullable(UInt8),
  is_restricted_use Nullable(UInt8),
  is_unavailable Nullable(UInt8),
  last_upload_app Nullable(String),
  last_upload_app_changed_time Nullable(Int64),
  match_rate_approx Nullable(Int64),
  matched_entries Nullable(Int64),
  name Nullable(String),
  valid_entries Nullable(Int64),
  auto_assign_to_new_accounts_only Nullable(UInt8)
)
ENGINE = Log
