CREATE TABLE targeting_geo_location_place (
  country Nullable(String),
  distance_unit Nullable(String),
  key Nullable(String),
  latitude Nullable(Float64),
  longitude Nullable(Float64),
  name Nullable(String),
  primary_city_id Nullable(Int64),
  radius Nullable(Float64),
  region_id Nullable(Int64)
)
ENGINE = Log
