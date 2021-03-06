CREATE TABLE ad_topline (
  id String,
  account_id String,
  client_approval_date Nullable(String),
  created_by Nullable(String),
  created_date Nullable(String),
  description Nullable(String),
  flight_end_date Nullable(String),
  flight_start_date Nullable(String),
  func_cap_amount Nullable(String),
  func_cap_amount_with_offset Nullable(String),
  func_line_amount Nullable(String),
  func_line_amount_with_offset Nullable(String),
  func_price Nullable(String),
  func_price_with_offset Nullable(String),
  gender Nullable(String),
  impressions Nullable(Int64),
  io_number Nullable(Int64),
  is_bonus_line Nullable(Int64),
  keywords Nullable(String),
  last_updated_by Nullable(String),
  last_updated_date Nullable(String),
  line_number Nullable(Int64),
  line_position Nullable(Int64),
  line_type Nullable(String),
  location Nullable(String),
  max_age Nullable(String),
  max_budget Nullable(String),
  min_age Nullable(String),
  price_per_trp Nullable(String),
  product_type Nullable(String),
  rev_assurance_approval_date Nullable(String),
  targets Nullable(String),
  trp_updated_time Nullable(Int64),
  trp_value Nullable(String),
  uom Nullable(String)
)
ENGINE = Log
