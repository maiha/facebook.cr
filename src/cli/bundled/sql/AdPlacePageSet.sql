CREATE TABLE ad_place_page_set (
  id String,
  account_id String,
  location_types Array(String),
  name Nullable(String),
  pages_count Nullable(Int64)
)
ENGINE = Log
