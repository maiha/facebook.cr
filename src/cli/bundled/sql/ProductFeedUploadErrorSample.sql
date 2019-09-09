CREATE TABLE product_feed_upload_error_sample (
  id String,
  retailer_id Nullable(String),
  row_number Nullable(Int64)
)
ENGINE = Log
