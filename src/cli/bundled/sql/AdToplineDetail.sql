CREATE TABLE ad_topline_detail (
  id String,
  account_id String,
  active_status Nullable(Int64),
  ad_account_id Nullable(String),
  flight_end_date Nullable(String),
  flight_start_date Nullable(String),
  io_number Nullable(Int64),
  line_number Nullable(Int64),
  price Nullable(Float64),
  quantity Nullable(Float64),
  sf_detail_line_id Nullable(String),
  subline_id Nullable(String),
  targets Nullable(String),
  time_created Nullable(String),
  time_updated Nullable(String)
)
ENGINE = Log
