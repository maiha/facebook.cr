CREATE TABLE targeting_geo_location_zip (
  country Nullable(String),
  key Nullable(String),
  name Nullable(String),
  primary_city_id Nullable(Int64),
  region_id Nullable(Int64)
)
ENGINE = Log
