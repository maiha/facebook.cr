CREATE TABLE recommendation (
  created_time Nullable(DateTime),
  has_rating Nullable(UInt8),
  has_review Nullable(UInt8),
  rating Nullable(Int64),
  recommendation_type Nullable(String),
  review_text Nullable(String)
)
ENGINE = Log
