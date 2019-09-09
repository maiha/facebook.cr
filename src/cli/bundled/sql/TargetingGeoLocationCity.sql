CREATE TABLE targeting_geo_location_city (
  country Nullable(String),
  distance_unit Nullable(String),
  key Nullable(String),
  name Nullable(String),
  radius Nullable(Int64),
  region_id Nullable(String)
)
ENGINE = Log
