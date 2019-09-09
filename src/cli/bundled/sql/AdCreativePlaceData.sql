CREATE TABLE ad_creative_place_data (
  address_string Nullable(String),
  label Nullable(String),
  latitude Nullable(Float64),
  location_source_id Nullable(String),
  longitude Nullable(Float64),
  type Nullable(String)
)
ENGINE = Log
