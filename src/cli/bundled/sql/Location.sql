CREATE TABLE location (
  city_id Nullable(Int64),
  country Nullable(String),
  country_code Nullable(String),
  latitude Nullable(Float64),
  located_in Nullable(String),
  longitude Nullable(Float64),
  name Nullable(String),
  region_id Nullable(Int64),
  state Nullable(String),
  street Nullable(String),
  zip Nullable(String)
)
ENGINE = Log
