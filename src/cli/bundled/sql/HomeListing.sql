CREATE TABLE home_listing (
  id String,
  ac_type Nullable(String),
  additional_fees_description Nullable(String),
  agent_company Nullable(String),
  agent_email Nullable(String),
  agent_name Nullable(String),
  agent_phone Nullable(String),
  area_size Nullable(Int64),
  area_unit Nullable(String),
  availability Nullable(String),
  currency Nullable(String),
  days_on_market Nullable(Int64),
  description Nullable(String),
  furnish_type Nullable(String),
  group_id Nullable(String),
  heating_type Nullable(String),
  home_listing_id Nullable(String),
  images Array(String),
  laundry_type Nullable(String),
  listing_type Nullable(String),
  max_currency Nullable(String),
  max_price Nullable(String),
  min_currency Nullable(String),
  min_price Nullable(String),
  name Nullable(String),
  num_baths Nullable(Float64),
  num_beds Nullable(Float64),
  num_rooms Nullable(Float64),
  num_units Nullable(Int64),
  parking_type Nullable(String),
  partner_verification Nullable(String),
  pet_policy Nullable(String),
  price Nullable(String),
  property_type Nullable(String),
  sanitized_images Array(String),
  url Nullable(String),
  year_built Nullable(Int64)
)
ENGINE = Log
