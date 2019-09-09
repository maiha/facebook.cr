CREATE TABLE product_event_stat (
  date_start Nullable(String),
  date_stop Nullable(String),
  device_type Nullable(String),
  event Nullable(String),
  total_content_ids_matched_other_catalogs Nullable(Int64),
  total_matched_content_ids Nullable(Int64),
  total_unmatched_content_ids Nullable(Int64),
  unique_content_ids_matched_other_catalogs Nullable(Int64),
  unique_matched_content_ids Nullable(Int64),
  unique_unmatched_content_ids Nullable(Int64)
)
ENGINE = Log
