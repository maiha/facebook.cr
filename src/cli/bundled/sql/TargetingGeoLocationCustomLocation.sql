CREATE TABLE targeting_geo_location_custom_location (
  address_string Nullable(String),
  country Nullable(String),
  country_group Nullable(String),
  custom_type Nullable(String),
  distance_unit Nullable(String),
  key Nullable(String),
  latitude Nullable(Float64),
  longitude Nullable(Float64),
  max_population Nullable(Int64),
  min_population Nullable(Int64),
  name Nullable(String),
  primary_city_id Nullable(Int64),
  radius Nullable(Float64),
  region_id Nullable(Int64)
)
ENGINE = Log
